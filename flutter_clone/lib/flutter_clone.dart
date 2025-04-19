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

  throw Exception(
    'Could not determine Flutter version. Ensure Flutter is installed and in your PATH.',
  );
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
    // dart:... library
    if (element.isInSdk!) {
      final lib = element.source!;
      if (['dart:core', 'dart:collection', 'dart:internal'].contains(lib)) {
        return null;
      }
      return lib;
    }
    // dart:ui or dart:ui_web
    final paths = path.split(source);
    if (paths.contains('sky_engine')) {
      final category = paths[paths.indexOf('lib') + 1];
      return 'dart:$category';
    }
    // package:flutter
    if (path.isRelative(source)) {
      final category = paths[paths.indexOf('src') + 1];
      return 'package:flutter/$category.dart';
    }

    // unknown
    throw ArgumentError('Unknown import path: $source');
  }
  return null;
}

// DartTypeRefSerializer -> InterfaceTypeRefSerializer -> FunctionTypeRefSerializer
Reference _buildTypeReference(AnalyzeResult result, DartTypeRefSerializer typeRef) {
  final suffix = typeRef.nullabilitySuffix;
  final type = result.fromTypeRef(typeRef, suffix)!;
  // if alias type, build type reference from type alias
  if (typeRef.alias case var alias?) {
    final typeElement = result.fromTypeAliasRef(alias.element)!;
    return TypeReference((typeBuilder) {
      typeBuilder.symbol = typeElement.name;
      typeBuilder.isNullable = suffix == '?';
      typeBuilder.url = typeElement.isInSdk! ? null : _getImportPath(typeElement);
      typeBuilder.types.addAll(alias.typeArguments.map((e) => _buildTypeReference(result, e)));
    });
  }
  // if type is function type, build type reference from function type
  if (typeRef case FunctionTypeRefSerializer typeRef) {
    return FunctionType((typeBuilder) {
      typeBuilder.isNullable = suffix == '?';
      typeBuilder.returnType = _buildTypeReference(result, typeRef.returnType);
      typeBuilder.types.addAll(
        typeRef.namedParameterTypes.values.map((e) => _buildTypeReference(result, e)),
      );
      typeBuilder.types.addAll(
        typeRef.normalParameterTypes.map((e) => _buildTypeReference(result, e)),
      );
    });
  }
  return TypeReference((typeBuilder) {
    typeBuilder.symbol = type.name;
    typeBuilder.isNullable = type.nullabilitySuffix == '?';
    typeBuilder.url = type.isInSdk! ? null : _getImportPath(type);
    if (type is InterfaceTypeSerializer) {
      typeBuilder.types.addAll(type.typeArguments.map((e) => _buildTypeReference(result, e)));
    }
  });
}

// code_builder style is unreadable, I need to refactor it
void generateWrapper(
  AnalyzeResult result,
  FileSystem fileSystem,
  File file,
  ClassElementSerializer clazz,
) {
  final emitter = DartEmitter(
    orderDirectives: true,
    useNullSafetySyntax: true,
    allocator: Allocator.simplePrefixing(),
  );
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
                  final positionalParams =
                      constructor.parameters.where((e) => e.isPositional).toList();
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
                        parameterBuilder.type = _buildTypeReference(result, parameter.type);
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
                            getInitializerCode(
                              initializer,
                              result,
                              (ref) => emitter.allocator.allocate(ref),
                            ),
                          );
                        }
                        if (parameter.name == 'onHighlightChanged') {
                          final type =
                              result.fromTypeRef(parameter.type, parameter.type.nullabilitySuffix)!;
                          print(type);
                        }
                        parameterBuilder.type = _buildTypeReference(result, parameter.type);
                      }),
                    ),
                  );
                  // Initialize super with Argument and builder
                  constructorBuilder.initializers.add(
                    InvokeExpression.newOf(
                      refer('super'),
                      [
                        InvokeExpression.newOf(refer('Argument', wrapperPath), [
                          literalMap({
                            for (final p in constructor.parameters)
                              refer('#${p.name}'): refer(p.name),
                          }),
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
                                    positionalParams
                                        .map(
                                          (parameter) => refer('args').call(
                                            [refer('#${parameter.name}')],
                                            {},
                                            [_buildTypeReference(result, parameter.type)],
                                          ),
                                        )
                                        .toList(),
                                    Map.fromEntries(
                                      namedParams.map(
                                        (parameter) => MapEntry(
                                          parameter.name,
                                          refer('args').call(
                                            [refer('#${parameter.name}')],
                                            {},
                                            [_buildTypeReference(result, parameter.type)],
                                          ),
                                        ),
                                      ),
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

String getInitializerCode(
  InitializerSerializer initializer,
  AnalyzeResult result,
  String Function(Reference) scope,
) {
  switch (initializer) {
    case NamedExpressionInitializerSerializer():
      return '${initializer.name}: ${getInitializerCode(initializer.value, result, scope)}';
    case LiteralInitializerSerializer():
      return initializer.value;
    case PrefixExpressionInitializerSerializer():
      if (initializer.operand is BinaryExpressionInitializerSerializer) {
        return '${initializer.operator}(${getInitializerCode(initializer.operand, result, scope)})';
      }
      return '${initializer.operator}${getInitializerCode(initializer.operand, result, scope)}';
    case PrefixedIdentifierInitializerSerializer():
      final target = initializer.prefixElement!;
      final element = result.fromElementRef(target)!;
      final name = scope(refer(target.name, _getImportPath(element)));
      return '$name.${initializer.identifier}';
    case SimpleIdentifierInitializerSerializer():
      return scope(refer(initializer.identifier, _getImportPath(initializer)));
    case BinaryExpressionInitializerSerializer():
      return '${getInitializerCode(initializer.left, result, scope)} ${initializer.operator} ${getInitializerCode(initializer.right, result, scope)}';
    case InstanceCreationInitializerSerializer():
      final code = StringBuffer();
      if (initializer.isConst) code.write('const ');
      final type =
          initializer.type != null
              ? result.fromTypeRef(initializer.type!, initializer.type?.nullabilitySuffix)
              : null;
      code.write(scope(refer(type!.name, _getImportPath(type))));
      if (initializer.constructorName != null) code.write('.${initializer.constructorName}');
      code.write('(');
      code.write(initializer.arguments.map((e) => getInitializerCode(e, result, scope)).join(', '));
      code.write(')');
      return code.toString();
    case ListLiteralInitializerSerializer():
      final code = StringBuffer();
      if (initializer.isConst) code.write('const ');
      code.write('[');
      code.write(initializer.elements.map((e) => getInitializerCode(e, result, scope)).join(', '));
      code.write(']');
      return code.toString();
    case SetLiteralInitializerSerializer():
      final code = StringBuffer();
      if (initializer.isConst) code.write('const ');
      code.write('{');
      code.write(initializer.elements.map((e) => getInitializerCode(e, result, scope)).join(', '));
      code.write('}');
      return code.toString();
    case MapLiteralInitializerSerializer():
      final code = StringBuffer();
      if (initializer.isConst) code.write('const ');
      code.write('{');
      code.write(initializer.elements.map((e) => getInitializerCode(e, result, scope)).join(', '));
      code.write('}');
      return code.toString();
    default:
      return throw UnimplementedError();
  }
}
