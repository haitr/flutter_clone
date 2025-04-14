import 'dart:convert';
import 'dart:io' as io;

import 'package:code_builder/code_builder.dart';
import 'package:dart_style/dart_style.dart';
import 'package:file_system/file_system.dart';
import 'package:glob/glob.dart';
import 'package:path/path.dart' as path;
import 'package:project_analyze/project_analyze.dart';
import 'package:simple_logger/simple_logger.dart';

final formatter = DartFormatter(languageVersion: DartFormatter.latestLanguageVersion);

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
            // ignore private classes
            !e.name.startsWith('_') &&
            // match the pattern
            glob.matches(e.name) &&
            // implement Widget
            e.allSupertypes
                .map((e) => result.fromTypeRef(e, e.nullabilitySuffix))
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

String? _getImportPath(SourceSerializer element) {
  if (element.source case var source?) {
    if (element is DartTypeSerializer) {
      if (element.isDartCore) return null;
    }
    final paths = path.split(source);
    if (paths.contains('sky_engine')) {
      final category = paths[paths.indexOf('lib') + 1];
      return 'dart:$category';
    }
    if (path.isRelative(source)) {
      final category = paths[paths.indexOf('src') + 1];
      return 'package:flutter/$category.dart';
    }
    throw ArgumentError('Unknown import path: $source');
  }
  return null;
}

// code_builder style is unreadable, I need to refactor it
void generateWrapper(AnalyzeResult result, FileSystem fileSystem, File file, ClassElementSerializer clazz) {
  final emitter = DartEmitter(orderDirectives: true, useNullSafetySyntax: true, allocator: Allocator.simplePrefixing());
  final library = Library((libraryBuilder) {
    final wrapperFile = fileSystem.file('wrapper.dart');
    final wrapperPath = Uri.file(path.relative(wrapperFile.path, from: file.parent.path)).path;
    //
    libraryBuilder.body.add(
      Class((classBuilder) {
        // Add shortcut to original class
        final classRef = emitter.allocator.allocate(refer(clazz.name, _getImportPath(clazz)));
        classBuilder.docs.add('/// See [$classRef]');
        // Add generated class name
        classBuilder.name = '\$${clazz.name}';
        // extend from Wrapper
        classBuilder.extend = TypeReference((typeBuilder) {
          typeBuilder.symbol = 'Wrapper';
          typeBuilder.url = wrapperPath;
        });
        // constructor
        classBuilder.constructors.addAll(
          clazz.constructors
              // ignore private constructors
              .where((e) => !e.name.startsWith('_'))
              .map(
                (constructor) => Constructor((constructorBuilder) {
                  final constructorName = constructor.name.isEmpty ? null : constructor.name;
                  final positionalParams = constructor.parameters.where((e) => e.isPositional).toList();
                  final namedParams = constructor.parameters.where((e) => e.isNamed).toList();
                  // Move 'child' parameter to the end of the list if it exists
                  namedParams.sort((a, b) => a.name == 'child' ? 1 : 0);
                  // final optionalParams = constructor.parameters.where((e) => e.isOptional).toList();

                  // Put constructor name if it exists
                  constructorBuilder.name = constructorName;

                  /// Add parameters
                  // [ConstructorBuilder.requiredParameters] and [ConstructorBuilder.optionalParameters] are NOT similar to [Constructor.parameters]
                  constructorBuilder.requiredParameters.addAll(
                    positionalParams.map(
                      (parameter) => Parameter((parameterBuilder) {
                        parameterBuilder.name = parameter.name;
                        final type = result.fromTypeRef(parameter.type, parameter.type.nullabilitySuffix)!;
                        parameterBuilder.type = TypeReference((typeBuilder) {
                          typeBuilder.symbol = type.name;
                          typeBuilder.isNullable = type.nullabilitySuffix == '?';
                          typeBuilder.url = type.source == null ? null : _getImportPath(type);
                        });
                      }),
                    ),
                  );
                  constructorBuilder.optionalParameters.addAll(
                    namedParams.map(
                      (parameter) => Parameter((parameterBuilder) {
                        parameterBuilder.name = parameter.name;
                        if (parameter.name == 'key') {
                          parameterBuilder.toSuper = true;
                          return;
                        }
                        parameterBuilder.required = parameter.isRequired;
                        parameterBuilder.named = parameter.isNamed;
                        if (parameter.initializer case var initializer?) {
                          // parameterBuilder.defaultTo = Code(parameter.defaultValueCode!);
                          parameterBuilder.defaultTo = Code(
                            _getInitializerCode(initializer, result, (ref) => emitter.allocator.allocate(ref)),
                          );
                        }
                        final type = result.fromTypeRef(parameter.type, parameter.type.nullabilitySuffix)!;
                        parameterBuilder.type = TypeReference((typeBuilder) {
                          typeBuilder.symbol = type.name;
                          typeBuilder.isNullable = type.nullabilitySuffix == '?';
                          typeBuilder.url = type.source == null ? null : _getImportPath(type);
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
                                    refer(clazz.name, _getImportPath(clazz)),
                                    positionalParams.map((parameter) {
                                      final type =
                                          result.fromTypeRef(parameter.type, parameter.type.nullabilitySuffix)!;
                                      final url = type.source == null ? null : _getImportPath(type);
                                      return refer(
                                        'args',
                                      ).call([refer('#${parameter.name}')], {}, [refer(type.name, url)]);
                                    }).toList(),
                                    Map.fromEntries(
                                      namedParams.map((parameter) {
                                        final type =
                                            result.fromTypeRef(parameter.type, parameter.type.nullabilitySuffix)!;
                                        final url = type.source == null ? null : _getImportPath(type);
                                        return MapEntry(
                                          parameter.name,
                                          refer(
                                            'args',
                                          ).call([refer('#${parameter.name}')], {}, [refer(type.name, url)]),
                                        );
                                      }),
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
  var code = library.accept(emitter).toString();
  try {
    final str = formatter.format(code);
    file.writeAsStringSync(str, mode: FileMode.write);
  } catch (e) {
    SimpleLogger.error('Error formatting code: ${file.path}');
    SimpleLogger.error(e.toString());
    file.writeAsStringSync(code, mode: FileMode.write);
  }
}

String _getInitializerCode(InitializerSerializer initializer, AnalyzeResult result, String Function(Reference) scope) {
  switch (initializer) {
    case NamedExpressionInitializerSerializer():
      return '${initializer.name}: ${_getInitializerCode(initializer.value, result, scope)}';
    case LiteralInitializerSerializer():
      return initializer.value;
    case PrefixExpressionInitializerSerializer():
      if (initializer.operand is BinaryExpressionInitializerSerializer) {
        return '${initializer.operator}(${_getInitializerCode(initializer.operand, result, scope)})';
      }
      return '${initializer.operator}${_getInitializerCode(initializer.operand, result, scope)}';
    case PrefixedIdentifierInitializerSerializer():
      final target = initializer.prefixElement!;
      final name = scope(refer(target.name, _getImportPath(target)));
      return '$name.${initializer.identifier}';
    case SimpleIdentifierInitializerSerializer():
      return scope(refer(initializer.identifier, _getImportPath(initializer)));
    case BinaryExpressionInitializerSerializer():
      return '${_getInitializerCode(initializer.left, result, scope)} ${initializer.operator} ${_getInitializerCode(initializer.right, result, scope)}';
    case InstanceCreationInitializerSerializer():
      final code = StringBuffer();
      if (initializer.isConst) code.write('const ');
      final type =
          initializer.type != null ? result.fromTypeRef(initializer.type!, initializer.type?.nullabilitySuffix) : null;
      code.write(scope(refer(type!.name, _getImportPath(type))));
      if (initializer.constructorName != null) code.write('.${initializer.constructorName}');
      code.write('(');
      code.write(initializer.arguments.map((e) => _getInitializerCode(e, result, scope)).join(', '));
      code.write(')');
      return code.toString();
    case ListLiteralInitializerSerializer():
      final code = StringBuffer();
      if (initializer.isConst) code.write('const ');
      code.write('[');
      code.write(initializer.elements.map((e) => _getInitializerCode(e, result, scope)).join(', '));
      code.write(']');
      return code.toString();
    case SetLiteralInitializerSerializer():
      final code = StringBuffer();
      if (initializer.isConst) code.write('const ');
      code.write('{');
      code.write(initializer.elements.map((e) => _getInitializerCode(e, result, scope)).join(', '));
      code.write('}');
      return code.toString();
    case MapLiteralInitializerSerializer():
      final code = StringBuffer();
      if (initializer.isConst) code.write('const ');
      code.write('{');
      code.write(initializer.elements.map((e) => _getInitializerCode(e, result, scope)).join(', '));
      code.write('}');
      return code.toString();
    default:
      return throw UnimplementedError();
  }
}
