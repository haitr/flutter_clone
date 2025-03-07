import 'dart:io';
import 'dart:mirrors';

import 'package:analyzer/dart/analysis/utilities.dart';
import 'package:analyzer/dart/ast/ast.dart';
import 'package:clone/extensions/extensions.dart';
import 'package:collection/collection.dart';
import 'package:path/path.dart' as path;

import 'analyze_result.dart';
import 'ast/analyzer.dart';
import 'ast/custom_visitor.dart';
import 'ast/value.dart';
import 'ast/visitor.dart';

/// Late initialized list of analysis results
late final List<AnalyzeResult> analyzingResults;

/// Generates the correct Flutter import path from a raw string
///
/// Takes a raw URI string and converts it to a proper Flutter package import path
/// @param raw The raw URI string to convert
/// @return The normalized Flutter import path
String flutterImportPath(String raw) {
  final pathSegments = Uri.parse(raw).pathSegments;
  if (pathSegments.isNotEmpty && pathSegments.first == 'flutter') {
    final category = pathSegments[2];
    return 'package:flutter/$category.dart';
  }
  return raw;
}

/// Creates a file if it doesn't exist, or returns the existing file
///
/// @param paths List of path segments to join
/// @param outputDirectory Base directory where the file should be created
/// @return The created or existing File object
File createIfNeeded(List<String> paths, String outputDirectory) {
  final filePath = path.joinAll([outputDirectory, ...paths]);
  final file = File(filePath);
  if (!file.existsSync()) {
    file.createSync(recursive: true);
  }
  return file;
}

/// Parses an initializer string into a DefaultValue object
///
/// @param initializer The string representation of the initializer
/// @param parent Optional ClassAnalyzer for context
/// @param potentialType Optional TypeAnalyzer for type information
/// @return A DefaultValue object representing the parsed initializer
DefaultValue parseInitializerString(
  String initializer, {
  ClassAnalyzer? parent,
  TypeAnalyzer? potentialType,
}) {
  final result = parseString(content: 'const x = $initializer;');
  final visitor = _AssignExpressionVisitor(parent, potentialType: potentialType);
  result.unit.visitChildren(visitor);
  return visitor.result;
}

/// Visitor class to handle assignment expressions and extract DefaultValue
class _AssignExpressionVisitor extends CustomAstVisitor {
  /// The result of the expression visit
  late DefaultValue result;

  /// Parent class analyzer for context
  final ClassAnalyzer? parent;

  /// Potential type of the variable being assigned
  final TypeAnalyzer? potentialType;

  _AssignExpressionVisitor(this.parent, {this.potentialType})
      : super(recursive: true, verbose: false);

  @override
  void visitVariableDeclaration(VariableDeclaration node) {
    final visitor = ExpressionVisitor(parent, potentialType: potentialType);
    node.initializer!.accept(visitor);
    result = visitor.result;
  }
}

/// Extension to associate ClassAnalyzer with ClassMirror and retrieve mirrors
extension ClassAnalyzerWithMirror on ClassAnalyzer {
  /// Internal cache for class mirrors
  static final Map<ClassAnalyzer, ClassMirror> _map = {};

  /// Associates a ClassMirror with the current ClassAnalyzer
  void associateWithMirror(ClassMirror mirror) => _map[this] = mirror;

  /// Retrieves the associated ClassMirror, looking up if necessary
  ClassMirror get mirror {
    if (_map[this] case var mirror?) return mirror;
    ClassMirror? mirror;

    for (final result in analyzingResults) {
      if (result.classDecls.entries.firstWhereOrNull((entry) => entry.value.name == name)
          case var entry?) {
        mirror = entry.key;
        break;
      }
    }

    if (mirror == null) {
      flutterLibraryLookUp((uri, libraryMirror) {
        libraryMirror.declarations.values.classDeclarations.forEachWhile((element) {
          if (element.name == name) {
            mirror = element;
            return false;
          }
          return true;
        });
      });
    }

    associateWithMirror(mirror!);
    return mirror!;
  }
}

/// Extension for resolving actual analyzers, especially for constructors
extension ParameterizableAnalyzerExt on ParameterizableAnalyzer {
  /// Returns the actual analyzer, resolving redirected constructors if necessary
  ParameterizableAnalyzer get actual {
    if (this case ConstructorAnalyzer constructor) {
      if (constructor.redirectConstructor case var redirect?) {
        ClassAnalyzer? classAnalyzer;

        for (final result in analyzingResults) {
          if (result.classDecls.values.firstWhereOrNull((clazz) => clazz.name == redirect.name)
              case var analyzed?) {
            classAnalyzer = analyzed;
            break;
          }

          if (result.privateClassDecls.firstWhereOrNull((clazz) => clazz.name == redirect.type.name)
              case var lazyAnalyzed?) {
            classAnalyzer = lazyAnalyzed.analyze();
            break;
          }
        }

        if (classAnalyzer?.constructor(redirect.name) case var analyzed?) return analyzed;
        throw 'Cannot find redirect constructor $redirect';
      }
    }
    return this;
  }
}

/// Extension for analyzing parameter declarations and resolving types, nullability, and default values
extension ParameterDeclAnalyzerWithMirror on ParameterDeclAnalyzer {
  /// Cache for parent types during type resolution
  static final _parentTypes = <ClassAnalyzer>[];

  /// Resolves the declared type of the parameter
  TypeAnalyzer? get declaratedType {
    final parameter = parent.actual[name]!;

    if (parameter.isExplicitlyTyped) {
      _parentTypes.clear();
      return parameter.type;
    }

    if (parameter.toThis) {
      if (parameter.parent.parent.property(name) case var property?) {
        if (property.type case var type?) {
          final classAnalyzer = parameter.parent.parent;
          var result = type.copyWith();

          /// Helper function to search for type in parent hierarchy
          TypeAnalyzer? searchTypeInParents(TypeAnalyzer arg) {
            int? indexInClassDecl;

            classAnalyzer.typeParameters?.forEachIndexedWhile((index, classArg) {
              if (arg.name == classArg.name) {
                indexInClassDecl = index;
              }
              return arg.name != classArg.name;
            });

            TypeAnalyzer? replacingType;
            if (indexInClassDecl != null) {
              TypeAnalyzer? loopType;

              _parentTypes.forEachWhile((element) {
                if (element.superclass case var superclass?) {
                  loopType = superclass.arguments?.elementAtOrNull(indexInClassDecl!);
                  element.typeParameters?.forEachIndexedWhile((index, element) {
                    indexInClassDecl = index;
                    return element.name != loopType!.name;
                  });
                  if (loopType != null) replacingType = loopType;
                }
                return loopType == null;
              });
            }
            return replacingType;
          }

          final replacingType = searchTypeInParents(result);
          if (replacingType != null) result = replacingType.copyWith(nullable: result.nullable);

          result.arguments?.forEachIndexedWhile((index, arg) {
            final replacingType = searchTypeInParents(arg);
            if (replacingType != null) {
              result.arguments![index] = replacingType;
            }
            return true;
          });

          _parentTypes.clear();
          return result;
        }
        return null;
      }
      throw 'Unhandled type of parameter $name!';
    }

    if (parameter.toSuper) {
      _parentTypes.add(parameter.parent.parent);
      if (_parameterInSuper case var parameter?) {
        return parameter.declaratedType;
      }
    }

    throw 'Unhandled exception: type of $name!';
  }

  /// Determines if the parameter is nullable
  bool get nullable {
    final parameter = parent.actual[name]!;
    if (parameter.isExplicitlyTyped) return parameter.isExplicitlyTypeNullable!;
    if (parameter.toThis) {
      if (parameter.parent.parent.property(name) case var property?) return property.nullable;
      throw 'Unhandled parameter $name!';
    }
    if (parameter.toSuper) {
      if (_parameterInSuper case var parameter?) return parameter.nullable;
    }
    throw 'Unhandled exception: $name!';
  }

  /// Retrieves the default value of the parameter if any
  DefaultValue? get defaultValue {
    var parameter = parent.actual[name]!;
    var expr = parameter.rawDefaultValue;
    var referToSuper = parameter.toSuper;

    while (expr == null && referToSuper) {
      if (parameter._parameterInSuper case var p?) {
        expr = p.rawDefaultValue;
        referToSuper = p.toSuper;
        parameter = p;
      }
    }

    if (expr case var expr?) {
      return parseInitializerString(
        expr,
        parent: parameter.parent.parent,
        potentialType: parameter.declaratedType,
      );
    }
    return null;
  }

  /// Helper to retrieve parameter declaration from superclass
  ParameterDeclAnalyzer? get _parameterInSuper {
    final constructor = parent.actual;
    final superclass = constructor.parent.mirror.trueSuperclass;

    if (superclass case var superclass?) {
      ClassAnalyzer? classAnalyzer;

      analyzingResults.forEachWhile((result) {
        if (result.classDecls.values.firstWhereOrNull((e) => e.name == superclass.name)
            case var clazz?) {
          classAnalyzer = clazz;
          return false;
        } else if (result.privateClassDecls.firstWhereOrNull((e) => e.name == superclass.name)
            case var analyzer?) {
          classAnalyzer = analyzer.analyze();
          return false;
        }
        return true;
      });

      if (classAnalyzer!.constructor(null)![name] case var parameter?) {
        return parameter;
      }
    }
    return null;
  }
}

/// Executes a given action on all Flutter library mirrors
///
/// @param action A function to execute for each Flutter library found
void flutterLibraryLookUp(void Function(Uri uri, LibraryMirror libraryMirror) action) {
  currentMirrorSystem().libraries.forEach((uri, value) {
    if (uri.scheme == 'package') {
      if (uri.pathSegments case [var first, ...] when first == 'flutter') action(uri, value);
    }
  });
}

/// Finds an identifier declaration in Flutter libraries
///
/// @param identifier The identifier name to find
/// @return The source URI of the identifier or null if not found
String? idenfierFinder(String identifier) {
  String? result;
  flutterLibraryLookUp((uri, libMirror) {
    final instanceMirror = libMirror.declarations.values.firstWhereOrNull((mirror) =>
        (mirror is VariableMirror || mirror is MethodMirror || mirror is ClassMirror) &&
        mirror.name == identifier);
    result ??= instanceMirror?.location?.sourceUri.toString();
  });
  return result;
}

/// Finds an enum declaration in Flutter libraries
///
/// @param name The enum name to find
/// @return The source URI of the enum or null if not found
String? enumFinder(String name) {
  String? result;
  flutterLibraryLookUp((uri, libMirror) {
    final instanceMirror = libMirror.declarations.values.firstWhereOrNull(
        (mirror) => mirror is ClassMirror && mirror.isEnum && mirror.name == name);
    result ??= instanceMirror?.location?.sourceUri.toString();
  });
  return result;
}

/// Finds a class declaration in Flutter libraries
///
/// @param name The class name to find
/// @return The source URI of the class or null if not found
String? classFinder(String name) {
  String? result;
  flutterLibraryLookUp((uri, libMirror) {
    final instanceMirror = libMirror.declarations.values.firstWhereOrNull(
        (mirror) => mirror is ClassMirror && !mirror.isEnum && mirror.name == name);
    result ??= instanceMirror?.location?.sourceUri.toString();
  });
  return result;
}
