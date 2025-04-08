import 'dart:convert';
import 'dart:io' as io;

import 'package:code_builder/code_builder.dart';
import 'package:dart_style/dart_style.dart';
import 'package:file_system/file_system.dart';
import 'package:glob/glob.dart';
import 'package:path/path.dart' as path;
import 'package:project_analyze/project_analyze.dart';

Future<String?> getFlutterVersion() async {
  try {
    // We'll use dart:io's Process to run a single command that works across platforms
    // The command prints the Flutter SDK path
    const flutterCommand = 'flutter';
    const args = ['--version', '--machine'];

    // Try to run the command (should work if flutter is in PATH)
    final result = await io.Process.run(flutterCommand, args, runInShell: true);

    if (result.exitCode == 0) {
      // Parse the JSON output
      final Map<String, dynamic> versionInfo = jsonDecode(result.stdout.toString());
      if (versionInfo.containsKey('flutterVersion')) {
        return versionInfo['flutterVersion'];
      }
    }
  } catch (e) {
    // Command failed or flutter not in PATH
    print(e.toString());
  }

  throw Exception('Could not determine Flutter version. Ensure Flutter is installed and in your PATH.');
}

void process(FileSystem fileSystem, AnalyzeResult result, String pattern) {
  final glob = Glob(pattern);
  final clazzes = <ClassElementSerializer>[];

  for (var file in result.files) {
    // ignore private files
    if (path.basename(file.filePath).startsWith('_')) continue;

    // collect all classes that match the pattern and implement Widget
    clazzes.addAll(
      file.classes.where(
        (e) =>
            glob.matches(e.name) &&
            e.allSupertypes
                .map((e) => result.fromTypeRef(e))
                .nonNulls
                .whereType<InterfaceTypeSerializer>()
                .any((e) => e.name == 'Widget'),
      ),
    );
  }

  // create a directory for each class
  for (var clazz in clazzes) {
    final file = fileSystem.file(path.relative(clazz.source, from: path.join('lib', 'src')));
    if (!file.existsSync()) {
      file.createSync(recursive: true);
    }
    generateWrapper(result, fileSystem, file, clazz);
  }
}

void generateWrapper(AnalyzeResult result, FileSystem fileSystem, File file, ClassElementSerializer clazz) {
  final emitter = DartEmitter(orderDirectives: true, useNullSafetySyntax: true, allocator: Allocator.simplePrefixing());
  final library = Library((libraryBuilder) {
    final wrapperFile = fileSystem.file('wrapper.dart');
    final wrapperPath = path.relative(wrapperFile.path, from: file.parent.path);
    //
    libraryBuilder.body.add(
      Class((classBuilder) {
        // Add shortcut to original class
        classBuilder.docs.add('/// See [${clazz.name}]');
        // Add generated class name
        classBuilder.name = '\$${clazz.name}';
        // extend from Wrapper
        classBuilder.extend = TypeReference((typeBuilder) {
          typeBuilder.symbol = 'Wrapper';
          typeBuilder.url = wrapperPath;
        });
        // constructor
        classBuilder.constructors.addAll(
          clazz.constructors.map(
            (constructor) => Constructor((constructorBuilder) {
              final constructorName = constructor.name.isEmpty ? null : constructor.name;
              final positionalParams = constructor.parameters.where((e) => e.isPositional).toList();
              final namedParams = constructor.parameters.where((e) => e.isNamed).toList();
              final optionalParams = constructor.parameters.where((e) => e.isOptional).toList();

              // Put constructor name if it exists
              constructorBuilder.name = constructorName;

              /// [ConstructorBuilder.requiredParameters] and [ConstructorBuilder.optionalParameters] are NOT similar to [Constructor.parameters]
              /// Add parameters
              ///
              constructorBuilder.requiredParameters.addAll(
                positionalParams.map(
                  (parameter) => Parameter((parameterBuilder) {
                    parameterBuilder.name = parameter.name;
                    final type = result.fromTypeRef(parameter.type)!;
                    parameterBuilder.type = TypeReference((typeBuilder) {
                      typeBuilder.symbol = type.name;
                      typeBuilder.isNullable = type.nullabilitySuffix == '?';
                    });
                  }),
                ),
              );
              constructorBuilder.optionalParameters.addAll(
                namedParams.map(
                  (parameter) => Parameter((parameterBuilder) {
                    parameterBuilder.required = parameter.isRequired;
                    parameterBuilder.named = parameter.isNamed;
                    parameterBuilder.name = parameter.name;
                    print('${parameter.name} ${parameter.type.ref}');
                    final type = result.fromTypeRef(parameter.type)!;
                    parameterBuilder.type = TypeReference((typeBuilder) {
                      print('${type.name} ${type.nullabilitySuffix}');
                      typeBuilder.symbol = type.name;
                      typeBuilder.isNullable = type.nullabilitySuffix == '?';
                    });
                  }),
                ),
              );
              // Initialize super with Argument and builder
              constructorBuilder.initializers.add(
                InvokeExpression.newOf(
                  refer('super'),
                  [
                    InvokeExpression.newOf(refer('Argument', wrapperPath), [
                      literalMap({for (final p in constructor.parameters) refer('#${p.name}'): refer(p.name)}),
                    ]),
                  ],
                  {
                    'builder':
                        Method((builder) {
                          builder.lambda = true;
                          builder.requiredParameters.add(
                            Parameter((builder) {
                              builder.name = 'args';
                              builder.named = false;
                            }),
                          );
                          builder.body =
                              InvokeExpression.newOf(
                                refer(clazz.name, 'package:flutter/widgets.dart'),
                                positionalParams.map((e) => refer('args').call([refer('#${e.name}')])).toList(),
                                Map.fromEntries(
                                  namedParams.map((e) => MapEntry(e.name, refer('args').call([refer('#${e.name}')]))),
                                ),
                                [],
                                constructorName,
                              ).code;
                        }).closure,
                  },
                ).code,
              );
            }),
          ),
        );
      }),
    );
  });
  var code = library.accept(emitter);
  final str = DartFormatter(languageVersion: DartFormatter.latestLanguageVersion).format(code.toString());
  file.writeAsStringSync(str, mode: FileMode.write);
}
