import 'dart:mirrors';

import 'package:clone/ast/value.dart';
import 'package:clone/extensions/extensions.dart';
import 'package:code_builder/code_builder.dart';
import 'package:collection/collection.dart';

import 'ast/analyzer.dart';
import 'helper.dart';

// const _skyEnginePath = 'package:cooked_sky_engine/ui/ui.dart';
const _skyEnginePath = 'dart:ui';

/// The current active allocator instance
late PrefixedAllocator _currentAllocator;

/// A custom allocator that manages import prefixes for generated Dart code.
///
/// This allocator handles import statements and their aliases, specifically:
///  - Mapping dart:ui as ui
///  - Mapping dart:math as math
///  - Excluding dart:core and dart:async by default
class PrefixedAllocator implements Allocator {
  final _imports = <String, String?>{}; // Stores imports with their aliases
  final _prefixAlias = {
    // Default aliases for specific imports
    _skyEnginePath: 'ui',
    'dart:math': 'math',
  };

  var _keys = 1; // Counter for generating unique aliases

  /// Returns the next unique key for generating aliases
  int get _nextKey => _keys++;

  /// Set of imports to ignore aliasing (dart:core, dart:async by default)
  final Set<String> ignoreAlias;

  /// Creates a new [PrefixedAllocator] with optional imports to ignore.
  ///
  /// The [ignoreAlias] parameter allows specifying imports that should not
  /// receive an alias prefix. By default, 'dart:core' and 'dart:async' are
  /// always ignored.
  PrefixedAllocator({this.ignoreAlias = const {}}) {
    _currentAllocator = this;
    // Always ignore these core Dart imports by default
    ignoreAlias.addAll([
      'dart:core',
      'dart:async',
    ]);
  }

  /// Generates a unique alias based on the provided index.
  String _alias(int index) => '_i$index';

  /// Manually adds an import with appropriate alias if not already present.
  ///
  /// This method will add an import using either a predefined alias from
  /// [_prefixAlias] or generate a new unique alias.
  void _manuallyAddImport(String url) {
    if (!_imports.containsKey(url)) {
      // Use predefined alias if available, otherwise generate a new alias
      if (_prefixAlias[url] case var alias?) {
        _imports.putIfAbsent(url, () => alias);
        return;
      }
      _imports.putIfAbsent(url, () => _alias(_nextKey));
    }
  }

  /// Allocates a symbol with appropriate import prefix according to the allocator's rules.
  ///
  /// This is used to ensure symbols in the generated code properly reflect their import paths.
  @override
  String allocate(Reference reference) {
    final symbol = reference.symbol;
    final url = reference.url;
    if (url == null) {
      return symbol!;
    }
    if (ignoreAlias.contains(url)) {
      _imports.putIfAbsent(url, () => null);
      return symbol!;
    }
    if (_prefixAlias[url] case var alias?) {
      _imports.putIfAbsent(url, () => alias);
      return '$alias.$symbol';
    }
    final alias = _imports.putIfAbsent(url, () => _alias(_nextKey));
    return alias != null ? '$alias.${symbol!}' : symbol!;
  }

  /// Returns the import directives for all tracked imports.
  @override
  Iterable<Directive> get imports {
    // Convert stored imports to Directive objects for use in code generation
    return _imports.entries.map((entry) => Directive.import(entry.key, as: entry.value));
  }
}

/// Helper class for managing import paths during code generation.
class _ImportHelper {
  /// Finds the import path for a type alias.
  static String? _aliasImportPathFinder(String typeName) {
    // Check if the type name requires a special alias
    if ({
      'VoidCallback',
    }.contains(typeName)) {
      return _skyEnginePath;
    }
    // Iterate over analyzing results to find matching alias
    for (var result in analyzingResults) {
      if (result.aliases.contains(typeName)) {
        return flutterImportPath(result.importPath);
      }
    }
    return null;
  }

  /// Finds the import path for a class name.
  static String? _classImportPathFinder(String className) {
    // Return predefined paths for specific class names
    if ({
      'BoxHeightStyle',
      'BoxWidthStyle',
      'BlendMode',
      'Brightness',
      'Clip',
      'Color',
      'Offset',
      'Locale',
      'Radius',
      'Rect',
      'Paint',
      'Image',
      'FontWeight',
      'Path',
      'RRect',
      'Gradient',
    }.contains(className)) {
      return _skyEnginePath;
    }
    if ({
      'Uint8List',
    }.contains(className)) {
      return 'dart:typed_data';
    }
    if ({
      'FutureOr',
    }.contains(className)) {
      return 'dart:async';
    }
    final rawPath = classFinder(className);
    return rawPath != null ? flutterImportPath(rawPath) : null;
  }

  /// Finds the import path for an enum name.
  static String? _enumImportPathFinder(String enumName) {
    // Return predefined paths for specific enum names
    if ({
      'TextAlign',
      'FilterQuality',
      'Size',
      'Offset',
      'TileMode',
      'PaintingStyle',
      'BlurStyle',
      'TextBaseline',
    }.contains(enumName)) {
      return _skyEnginePath;
    }
    final rawPath = enumFinder(enumName);
    return rawPath != null ? flutterImportPath(rawPath) : null;
  }

  /// Finds the import path for an identifier.
  static String? _identifierImportPathFinder(String identifier) {
    // Return predefined paths for specific identifiers
    if ({
      'clampDouble',
    }.contains(identifier)) {
      return _skyEnginePath;
    }
    if ({
      'pi',
    }.contains(identifier)) {
      return 'dart:math';
    }
    final rawPath = idenfierFinder(identifier);
    return rawPath != null ? flutterImportPath(rawPath) : null;
  }

  /// Finds the appropriate import path for a given name by checking various sources.
  ///
  /// This method checks if the name is an alias, class, enum, or identifier and returns
  /// the corresponding import path.
  static String? _findImportPath(String name) =>
      _aliasImportPathFinder(name) ??
      _classImportPathFinder(name) ??
      _enumImportPathFinder(name) ??
      _identifierImportPathFinder(name);
}

/// The current active library building session
late LibraryBuildingSession _currentLibSession;

/// Manages the building process of a Dart library.
///
/// This class handles library-level dependencies and code generation during
/// the code building process.
class LibraryBuildingSession {
  /// Creates a new library building session and sets it as the current active session.
  LibraryBuildingSession() {
    _currentLibSession = this;
  }
  // A set of private dependencies
  final _privateDeps = <String>{};

  /// Assigns a property declaration to an expression and returns the corresponding code statement.
  ///
  /// This method handles generating code for property declarations, including
  /// handling const, final, and var declarations with appropriate types and initializers.
  Code _assignProperty(PropertyDeclAnalyzer decl) {
    late Expression expr;

    // Declare const, final, or var based on the property declaration
    // Note: (code_builder: 4.10.0) have a problem with generic types
    // Generic types are handled by displaying only non-generic types as a workaround
    Reference? typeRef;
    if (decl.type case final type? when type.arguments == null) {
      typeRef = _typeArgumentReference(TypeAnalyzer(name: type.name, nullable: type.nullable));
    }
    if (decl.isConst) {
      expr = declareConst(decl.name, type: typeRef);
    } else if (decl.isFinal) {
      expr = declareFinal(decl.name, late: decl.isLate, type: typeRef);
    } else {
      expr = declareVar(decl.name, late: decl.isLate, type: typeRef);
    }

    // If there is an initializer, assign it to the expression
    if (decl.initializer case var initializer?) {
      final def = parseInitializerString(initializer, potentialType: decl.type);
      expr = expr.assign(defaultValue(def)!);
    }

    return expr.statement;
  }

  /// Manually adds a private dependency to the session.
  ///
  /// This is used to track dependencies that need to be included in the generated code.
  void manuallyAddDependence(String dep) => _privateDeps.add(dep);

  /// Returns a list of code statements for all tracked private dependencies.
  ///
  /// This generates the necessary code statements for all private dependencies
  /// that need to be included in the library.
  Iterable<Code> get dependencies sync* {
    for (var i = 0; i < _privateDeps.length; i++) {
      final dep = _privateDeps.elementAt(i);
      for (var result in analyzingResults) {
        if (result.topLevelVariables.firstWhereOrNull((e) => e.name == dep) case var decl?) {
          yield _assignProperty(decl);
          break;
        }
        if (result.topLevelFunctions.firstWhereOrNull((e) => e.name == dep) case var decl?) {
          yield _resolveLazyAnalyzer(decl);
          break;
        }
        if (result.privateClassDecls.firstWhereOrNull((e) => e.name == dep) case var decl?) {
          yield _resolveLazyAnalyzer(decl);
          break;
        }
        if (result.privateMixinDecls.firstWhereOrNull((e) => e.name == dep) case var decl?) {
          yield _resolveLazyAnalyzer(decl);
          break;
        }
      }
    }
  }
}

/// The current active class building session
late ClassBuildingSession _currentClassSession;

/// Manages the building process of a Dart class.
///
/// This class handles class-level dependencies, type variables, and code generation
/// during the class building process.
class ClassBuildingSession {
  /// Creates a new class building session and sets it as the current active session.
  ClassBuildingSession() {
    _currentClassSession = this;
  }

  final _typeVariableMap = <TypeVariableMirror, String>{};

  // A set of dependencies for class-level static fields and methods
  final _classLevelDeps = <DefaultValueEnumOrStaticInstance>{};

  /// Adds a mapping between a type variable mirror and its name in the analyzer.
  ///
  /// This is used to resolve type variables correctly during code generation.
  void addTypeVariableMap(TypeVariableMirror type, String nameInAnalyzer) =>
      _typeVariableMap[type] = nameInAnalyzer;

  /// Generates a reference for a type based on its mirror and analyzer type.
  ///
  /// This method handles various cases such as function types, typedefs, and
  /// generic types, resolving them to the appropriate references with proper imports.
  ///
  /// [mirror] - The type mirror to generate a reference for
  /// [analyzerType] - Optional analyzer type information
  Reference typeReference({required TypeMirror mirror, TypeAnalyzer? analyzerType}) {
    if (mirror is FunctionTypeMirror) {
      if (analyzerType case FunctionTypeAnalyzer analyzerType?) {
        // Handling anonymous function type declaration
        return FunctionType(
          (builder) {
            builder
              ..isNullable = analyzerType.nullable
              ..returnType =
                  typeReference(mirror: mirror.returnType, analyzerType: analyzerType.returnType);
            // Adding parameters to the function type
            if (analyzerType.parameters case var analyzedParameters
                when analyzedParameters.isNotEmpty) {
              analyzedParameters.forEachIndexed((index, element) {
                final paramMirror = mirror.parameters.elementAtOrNull(index);
                if (paramMirror != null) {
                  if (paramMirror.name.isNotEmpty) {
                    builder.requiredParameters
                        .add(typeReference(analyzerType: element.$2, mirror: paramMirror.type));
                  } else {
                    builder.namedRequiredParameters.addAll({
                      paramMirror.name:
                          typeReference(analyzerType: element.$2, mirror: paramMirror.type)
                    });
                  }
                }
              });
            }
          },
        );
      } else {
        // Handling typedef usage
        return TypeReference((builder) {
          builder
            ..symbol = analyzerType?.name
            ..isNullable = analyzerType?.nullable
            ..types.addAll((analyzerType?.arguments ?? []).map((e) => _typeArgumentReference(e)));
          if (analyzerType?.name case var name?) {
            if (_ImportHelper._aliasImportPathFinder(name) case var raw) builder.url = raw;
          }
        });
      }
    }
    return TypeReference(
      (builder) {
        builder
          ..isNullable = analyzerType?.nullable
          ..symbol = switch (mirror) {
            TypeVariableMirror() when _typeVariableMap[mirror] != null => _typeVariableMap[mirror],
            ClassMirror() => mirror.name,
            _ => analyzerType?.name,
          };
        if (analyzerType?.arguments case var analyzedArguments? when analyzedArguments.isNotEmpty) {
          analyzedArguments.forEachIndexed((index, arg) {
            final argMirror = mirror.typeArguments.elementAtOrNull(index);
            if (argMirror != null) {
              builder.types.add(typeReference(analyzerType: arg, mirror: argMirror));
            } else {
              builder.types.add(refer(arg.name));
            }
          });
        }
        // Add type's reference URL if necessary
        if (builder.symbol == 'FutureOr') {
          // Manually add 'FutureOr' reference since dart:mirrors cannot resolve it correctly
          builder.url = 'dart:async';
          return;
        }
        if (mirror.location?.sourceUri case var locationUri?) {
          final location = locationUri.pathSegments;
          final scheme = locationUri.scheme;
          if (scheme == 'package') {
            if (location case [final packageName, ...final _]) {
              if (packageName == 'flutter') {
                builder.url = flutterImportPath(locationUri.toString());
                return;
              }
              if (packageName == 'cooked_sky_engine') {
                builder.url = _skyEnginePath;
                return;
              }
              if (packageName == 'vector_math') {
                builder.url = 'package:flutter/rendering.dart';
                return;
              }
            }
          }
          if (scheme == 'dart') {
            if (location case [final packageName, ...] when packageName != 'core') {
              builder.url = 'dart:$packageName';
              return;
            }
          }
        }
      },
    );
  }

  /// Generates a list of Field objects for class-level dependencies.
  ///
  /// This method creates Field objects for all class-level dependencies tracked
  /// in the session, based on their properties in the root class analyzer.
  ///
  /// [root] - The class analyzer containing property information
  List<Field> classLevelFieldDeps(ClassAnalyzer root) =>
      _classLevelDeps.fold(<Field>[], (prev, value) {
        if (root.property(value.raw) case var property?) {
          return prev
            ..add(Field((builder) {
              builder.static = property.isStatic;
              builder.name = property.name;
              if (property.type case final type?) {
                builder.type = _typeArgumentReference(type);
              }
              if (property.isConst) {
                builder.modifier = FieldModifier.constant;
              } else if (property.isFinal) {
                builder.modifier = FieldModifier.final$;
              } else {
                builder.modifier = FieldModifier.var$;
              }
              builder.late = property.isLate;
              if (property.initializer case var initializer?) {
                final def = parseInitializerString(initializer);
                builder.assignment = defaultValue(def)!.code;
              }
            }));
        }
        return prev;
      });

  /// Generates a list of Method objects for class-level dependencies.
  ///
  /// This method creates Method objects for all class-level method dependencies tracked
  /// in the session, based on their definitions in the root class analyzer.
  ///
  /// [root] - The class analyzer containing method information
  List<Method> classLevelMethodDeps(ClassAnalyzer root) =>
      _classLevelDeps.fold(<Method>[], (prev, value) {
        if (root.method(value.raw) case var method?) {
          return prev
            ..add(Method((builder) {
              builder
                ..static = method.isStatic
                ..name = method.name
                ..requiredParameters.addAll((method.parameters ?? [])
                    .where((e) => !e.isNamed)
                    .map((e) => Parameter((builder) {
                          builder.named = false;
                          builder.name = e.name;
                          if (e.declaratedType case var decl?) {
                            builder.type = _typeArgumentReference(decl);
                          }
                          if (e.defaultValue case var val?) {
                            builder.defaultTo = defaultValue(val)?.code;
                          }
                        })))
                ..optionalParameters.addAll((method.parameters ?? [])
                    .where((e) => e.isNamed)
                    .map((e) => Parameter((builder) {
                          builder.named = true;
                          builder.name = e.name;
                          if (e.declaratedType case var decl?) {
                            builder.type = _typeArgumentReference(decl);
                          }
                          builder.required = e.isRequired;
                          if (e.defaultValue case var val?) {
                            builder.defaultTo = defaultValue(val)?.code;
                          }
                        })))
                ..body = _resolveLazyAnalyzer(method);
              if (method.returnType case var analyzer?) {
                builder.returns = _typeArgumentReference(analyzer);
              }
            }));
        }
        return prev;
      });
}

/// Resolves a LazyAnalyzer declaration and returns the corresponding code.
///
/// This function processes a LazyAnalyzer and resolves any unresolved types,
/// adding import statements and dependencies as needed.
///
/// [decl] - The LazyAnalyzer declaration to resolve
Code _resolveLazyAnalyzer(LazyAnalyzer decl) {
  final ignores = switch (decl) {
    LazyDeclAnalyzer(name: var name) => {name},
    _ => <String>{},
  };
  final occurrences = decl.parseUnresolvedTypes(ignores: ignores);
  var result = decl.decode;
  var offsetShift = 0;

  for (var occurrence in occurrences) {
    var identifier = occurrence.name;
    if (identifier.startsWith('_')) {
      _currentLibSession._privateDeps.add(identifier);
    } else {
      // Find and add the import path if necessary
      if (_ImportHelper._findImportPath(identifier) case var importPath?) {
        if (!_currentAllocator._imports.containsKey(importPath)) {
          _currentAllocator._manuallyAddImport(importPath);
        }
        if (_currentAllocator._imports[importPath] case final alias?) {
          identifier = '$alias.${occurrence.name}';
        }
        // Adjust the result string with the new identifier
        final adjustedStart = occurrence.offset + offsetShift;
        final adjustedEnd = occurrence.offsetEnd + offsetShift;
        final lengthDiff = identifier.length - (occurrence.offsetEnd - occurrence.offset);
        result = result.replaceRange(adjustedStart, adjustedEnd, identifier);
        offsetShift += lengthDiff;
      }
    }
  }

  // Ignore class annotations in the result
  if (RegExp(r'(class.*?{.*})', dotAll: true).firstMatch(result) case var match?) {
    result = match.group(1)!;
  }

  return Code(result);
}

/// Creates a type reference for a TypeAnalyzer with optional URL.
///
/// This function builds a TypeReference for a given TypeAnalyzer, setting the
/// symbol, URL, nullability, and recursively handling type arguments.
///
/// [analyzerType] - The TypeAnalyzer to create a reference for
/// [url] - Optional URL override for the type
Reference _typeArgumentReference(TypeAnalyzer analyzerType, {String? url}) {
  return TypeReference((builder) {
    builder.symbol = analyzerType.name;
    // Set the URL for the type if it doesn't start with an underscore
    if (!analyzerType.name.startsWith('_')) {
      builder.url = url ?? _ImportHelper._findImportPath(analyzerType.name);
    }
    builder.isNullable = analyzerType.nullable;
    // Recursively add type arguments
    builder.types.addAll((analyzerType.arguments ?? []).map((e) => _typeArgumentReference(e)));
  });
}

/// Converts a DefaultValue to an Expression for use in code generation.
///
/// This function handles various types of default values, including collections,
/// object creations, enums, static instances, expressions, identifiers, literals,
/// and prefixed values.
///
/// [analyzed] - The DefaultValue to convert to an Expression
Expression? defaultValue(DefaultValue analyzed) {
  if (analyzed case DefaultValueCollection val when val.collectionType == CollectionType.map) {
    final pairs = val.values.cast<DefaultValuePair>();
    // Create a constant map
    return literalConstMap({
      for (var pair in pairs) defaultValue(pair.key): defaultValue(pair.value),
    });
  }

  if (analyzed case DefaultValueCollection val when val.collectionType == CollectionType.set) {
    // Create a constant set
    return literalConstSet(val.values.map((e) => defaultValue(e)).toSet());
  }

  if (analyzed case DefaultValueCollection val when val.collectionType == CollectionType.list) {
    // Create a constant list
    return literalConstList(val.values.map((e) => defaultValue(e)).toList());
  }

  if (analyzed case DefaultValueCreation val) {
    // Handle the creation of a new instance
    final skipImportAlias = val.from.name.startsWith('_');
    if (skipImportAlias) {
      _currentLibSession._privateDeps.add(val.from.name);
    }

    return InvokeExpression.constOf(
      _typeArgumentReference(val.from,
          url: skipImportAlias ? null : _ImportHelper._classImportPathFinder(val.from.name)),
      // Positional arguments
      val.positionalArgs.map((e) => defaultValue(e)!).toList(),
      // Named arguments
      {for (final arg in val.namedArgs) arg.label: defaultValue(arg.value)!},
      [],
      val.constructor,
    );
  }

  if (analyzed case DefaultValueEnumOrStaticInstance val) {
    // Handle enums or static instances
    if (val.from.name.startsWith('_')) {
      _currentLibSession._privateDeps.add(val.from.name);
      return refer(val.from.name).property(val.identifier);
    }
    if (val.identifier.startsWith('_')) {
      _currentClassSession._classLevelDeps.add(val);
      return refer(val.identifier);
    }

    final importPath = _ImportHelper._enumImportPathFinder(val.from.name) ??
        _ImportHelper._classImportPathFinder(val.from.name);
    return _typeArgumentReference(val.from, url: importPath).property(val.identifier);
  }

  if (analyzed case DefaultValueExpression val) {
    // Handle expressions
    return switch (val.operator) {
      '*' => defaultValue(val.value1)!.operatorMultiply(defaultValue(val.value2)!),
      '-' => defaultValue(val.value1)!.operatorSubtract(defaultValue(val.value2)!),
      _ => throw 'Unsupported operator ${val.operator}',
    };
  }

  if (analyzed case DefaultValueIdentifier val) {
    // Ignore private variables/functions
    if (val.raw.startsWith('_')) {
      _currentLibSession._privateDeps.add(val.raw);
      return refer(val.raw);
    }

    final importPath = _ImportHelper._identifierImportPathFinder(val.raw);
    return refer(val.raw, importPath);
  }

  if (analyzed case DefaultValueLiteral val) {
    // Handle literals
    return refer(val.raw);
  }

  if (analyzed case DefaultValuePrefix val) {
    // Handle prefix operators
    return switch (val.operator) {
      '-' => defaultValue(val.value)!.operatorUnaryMinus(),
      _ => throw 'Unsupported operator! ${val.operator} handler need to be implemented.',
    };
  }
  return null;
}
