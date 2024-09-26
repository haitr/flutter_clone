import 'dart:async';
import 'dart:mirrors';

import 'package:clone/helper.builder.dart';
import 'package:clone/helper.dart';
import 'package:clone/result.dart';
import 'package:code_builder/code_builder.dart';
import 'package:collection/collection.dart';
import 'package:dart_style/dart_style.dart';
import 'package:flutter/widgets.dart';
import 'package:path/path.dart' as path;

import 'generate.dart';

const libName = 'rxflutterify';

extension _MapExt<K, V> on Map<K, V> {
  Map<K, V> filteredByKey(bool Function(K key) filter) =>
      Map.fromEntries(entries.where((entry) => filter(entry.key)));
}

bool _accept(ClassMirror classMirror) {
  // Only process subclasses of Widget
  if (!classMirror.isSubclassOf(reflectClass(Widget))) return false;

  // Ignore private classes
  final className = classMirror.name;
  if (className.startsWith('_')) return false;

  var constructorList = classMirror.declarations.values
      .where((decl) =>
          decl is MethodMirror &&
          decl.isConstructor &&
          (decl.constructorName == Symbol.empty || !decl.constructorName.name.startsWith('_')))
      .cast<MethodMirror>();

  // Only process abstract classes with factory constructors
  if (classMirror.isAbstract) {
    constructorList = constructorList.where((element) => element.isFactoryConstructor);
    if (constructorList.isEmpty) return false;
  }

  return true;
}

// After generated
FutureOr<void> afterGenerated({List<String>? generatedPaths}) async {
  // Create barrel files
  final map = generatedPaths!.fold(<String, List<String>>{}, (previousValue, element) {
    final relatedPath = path.relative(element, from: output);
    final [category, ...] = path.split(relatedPath);
    if (!previousValue.containsKey(category)) {
      previousValue[category] = [];
    }
    previousValue[category]!.add(relatedPath);
    return previousValue;
  });

  // Generate simple barrel files
  // map.forEach((category, filePath) {
  //   final file = createIfNeeded(['$category.dart'], outputDirectory: output);
  //   //
  //   final emitter = DartEmitter(orderDirectives: true, useNullSafetySyntax: true);
  //   var library = Library((builder) {
  //     builder.name = 'rxflutter';
  //     builder.directives.addAll(filePath.map((e) => Directive.export(e)));
  //   });
  //   var code = library.accept(emitter);
  //   //
  //   file.writeAsStringSync(DartFormatter(pageWidth: 160).format(code.toString()));
  // });

  // Generate barrel files including typedef
  map.forEach((category, filePath) {
    final file = createIfNeeded(['rx_$category.dart'], outputDirectory: output);
    //
    final emitter = DartEmitter(orderDirectives: true, useNullSafetySyntax: true);
    var library = Library((builder) {
      builder.name = libName;
      builder.directives.addAll(filePath.map((e) => Directive.import(e)));
      builder.directives.add(Directive.export('package:rxdart/rxdart.dart'));
      builder.directives.add(Directive.export('wrapper.dart',
          show: ['ReactableObjectExt', 'ListenableExt', 'Wrapper']));
      filePath
          .map((p) => analyzingResults.firstWhere((result) => result.filePath.endsWith(p)))
          .expand((result) => result.classDecls.filteredByKey(_accept).values)
          .map((e) => TypeDef((builder) {
                final name = e.name;
                builder.definition = refer(name);
                builder.name = '\$$name';
              }))
          .forEach(builder.body.add);
    });
    var code = library.accept(emitter);
    //
    file.writeAsStringSync(DartFormatter(pageWidth: 160).format(code.toString()));
  });
  return null;
}

// Generate wrapper code for a given analysis result
FutureOr<String> generateWrapper(AnalyzeResult result) async {
  final libSession = LibraryBuildingSession();

  final wrapperPath = '../wrapper.dart';
  final emitter = DartEmitter(
      allocator: PrefixedAllocator(ignoreAlias: {wrapperPath}),
      orderDirectives: true,
      useNullSafetySyntax: true);
  var isEmpty = true;
  var library = Library((builder) {
    builder.name = libName;
    final clazzCodes = <Class>[];

    result.classDecls.forEach((classDecl, classAnalyzer) {
      if (!_accept(classDecl)) return;

      final className = classDecl.name;
      final constructorList = classDecl.declarations.values
          .where((decl) =>
              decl is MethodMirror &&
              decl.isConstructor &&
              (decl.constructorName == Symbol.empty || !decl.constructorName.name.startsWith('_')))
          .cast<MethodMirror>();

      final clazzCode = Class((b) {
        final classSession = ClassBuildingSession();

        b
          ..modifier = ClassModifier.final$
          ..name = className
          // Extend from Wrapper
          ..extend = refer('Wrapper', wrapperPath);

        // Add type parameters
        if (classAnalyzer.typeParameters case var typeParameters?) {
          b.types.addAll(typeParameters.mapIndexed((i, e) {
            if (e.extend case var extendedType?) {
              final mirror = classDecl.typeVariables[i];
              return TypeReference((b) {
                classSession.addTypeVariableMap(mirror, e.name);
                b.bound = classSession.typeReference(
                    mirror: mirror.upperBound, analyzerType: extendedType);
                b.symbol = e.name;
              });
            }
            return refer(e.name);
          }));
        }

        // Add constructors
        b.constructors.addAll(constructorList.map((constructorMirror) => Constructor((builder) {
              final constructorName = constructorMirror.constructorName == Symbol.empty
                  ? null
                  : constructorMirror.constructorName.name;
              builder.name = constructorName;
              final constructorAnalyzer = classAnalyzer.constructor(constructorName)!;

              // Add Goto annotation
              builder.annotations.add(InvokeExpression.newOf(
                refer('Goto', wrapperPath),
                [
                  constructorMirror.constructorName == Symbol.empty
                      ? refer(
                          constructorMirror.simpleName.name,
                          flutterImportPath(result.importPath),
                        ).property('new')
                      : refer(
                          constructorMirror.simpleName.name,
                          flutterImportPath(result.importPath),
                        )
                ],
              ));

              // Add constructor parameters
              final positionalParams = constructorMirror.parameters.where((p) => !p.isNamed);
              final namedParams = constructorMirror.parameters.where((p) => p.isNamed);

              // Add original parameter's declarations
              builder.requiredParameters.addAll(positionalParams.map((p) => Parameter((builder) {
                    final parameterAnalyzer = constructorAnalyzer[p.name]!;
                    builder.name = p.name;
                    builder.type = classSession.typeReference(
                      mirror: p.type,
                      analyzerType: parameterAnalyzer.declaratedType,
                    );
                  })));

              builder.optionalParameters.addAll(namedParams.map((p) => Parameter((builder) {
                    final parameterAnalyzer = constructorAnalyzer[p.name]!;
                    builder.named = true;
                    builder.name = p.name;
                    builder.type = classSession.typeReference(
                      mirror: p.type,
                      analyzerType: parameterAnalyzer.declaratedType,
                    );
                    final req = parameterAnalyzer.isRequired;
                    builder.required = req;
                    // Required parameters cannot have default value
                    if (parameterAnalyzer.defaultValue case var val? when !req) {
                      builder.defaultTo = defaultValue(val)?.code;
                    }
                  })));

              // Add streams
              builder.optionalParameters.addAll(constructorMirror.parameters.map(
                (p) => Parameter((builder) => builder
                  ..docs.add('\n\t// Associate with ${p.name}')
                  ..named = true
                  ..name = '\$${p.name}'
                  ..type = TypeReference((builder) => builder
                    ..isNullable = true
                    ..symbol = 'Stream'
                    ..types.add(classSession.typeReference(
                      mirror: p.type,
                      analyzerType: constructorAnalyzer[p.name]!.declaratedType,
                    )))),
              ));

              /// In redirecting constructors, Dart allows non-nullable parameters without default values,
              /// which is not possible in other method declarations. This can lead to incorrect parameter types,
              /// especially with nullable/non-nullable discrepancies. The solution is to directly reference the actual
              /// class constructor, copying the class declaration if necessary.
              Reference creatingTypeRef;
              String? creatingConstructorName;
              if (constructorAnalyzer.redirectConstructor case var analyzer?) {
                if (analyzer.type.name.startsWith('_')) {
                  libSession.manuallyAddDependence(analyzer.type.name);
                  creatingTypeRef = refer(analyzer.type.name);
                } else {
                  creatingTypeRef = refer(analyzer.type.name, classFinder(analyzer.type.name));
                }
                creatingConstructorName = analyzer.name;
              } else {
                creatingTypeRef = classSession.typeReference(
                  mirror: classDecl,
                  analyzerType: classAnalyzer.type,
                );
                creatingConstructorName = constructorName;
              }

              builder.initializers.add(
                InvokeExpression.newOf(
                  CodeExpression(Code('super')),
                  [
                    InvokeExpression.newOf(
                      refer('Argument'),
                      [
                        literalMap(
                          {
                            for (final p in constructorMirror.parameters)
                              literalString(p.name): refer(p.name)
                          },
                        )
                      ],
                      {
                        'stream': literalMap(
                          {
                            for (final p in constructorMirror.parameters)
                              literalString(p.name): refer('\$${p.name}')
                          },
                        )
                      },
                    ),
                  ],
                  {
                    'builder': Method(
                      (builder) => builder
                        ..lambda = true
                        ..requiredParameters.add(Parameter(
                          (builder) => builder
                            ..name = 'args'
                            ..named = false,
                        ))
                        ..body = InvokeExpression.newOf(
                                creatingTypeRef,
                                positionalParams
                                    .map((e) => refer('args').call([literalString(e.name)]))
                                    .toList(),
                                Map.fromEntries(namedParams.map((e) => MapEntry(
                                      e.name,
                                      refer('args').call([literalString(e.name)]),
                                    ))),
                                [],
                                creatingConstructorName)
                            .code,
                    ).closure,
                  },
                  [],
                ).code,
              );
            })));

        // Add methods and fields
        b.methods.addAll(classSession.classLevelMethodDeps(classAnalyzer));
        b.fields.addAll(classSession.classLevelFieldDeps(classAnalyzer));
      });
      clazzCodes.add(clazzCode);
    });

    isEmpty = clazzCodes.isEmpty;
    clazzCodes.forEach(builder.body.add);
  });

  var code = library.accept(emitter);

  // Add missing dependencies
  library = library.rebuild((builder) {
    final deps = libSession.dependencies;
    isEmpty &= deps.isEmpty;
    deps.forEach(builder.body.add);
  });

  if (isEmpty) return '';
  code = library.accept(emitter);
  return DartFormatter(pageWidth: 160).format(code.toString());
}
