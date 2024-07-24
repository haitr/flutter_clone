// ignore_for_file: depend_on_referenced_packages

import 'dart:async';
import 'dart:mirrors';

import 'package:analyzer/dart/analysis/analysis_context_collection.dart';
import 'package:analyzer/dart/analysis/results.dart';
import 'package:analyzer/dart/ast/ast.dart';
import 'package:collection/collection.dart';
import 'package:path/path.dart' as path;

import 'analyzer.dart';
import 'helper.dart';

// Dummy analyzers used as placeholders
final _dummyClassAnalyer = ClassAnalyzer('', constructors: []);
final _dummyMixinAnalyer = MixinAnalyzer('');

// AnalyzeResult class to store analysis results
class AnalyzeResult {
  static late final String flutterPath;

  late final Uri importUri;
  final String importPath;

  late final String filePath;
  late final Map<ClassMirror, ClassAnalyzer> classDecls;
  late final Map<ClassMirror, MixinAnalyzer> mixinDecls;
  late final Set<String> aliases;
  late final List<PropertyDeclAnalyzer> topLevelVariables;
  late final List<LazyDeclAnalyzer> topLevelFunctions;
  late final Set<String> enums;
  late final List<LazyClassDeclAnalyzer> privateClassDecls;
  late final List<LazyDeclAnalyzer> privateMixinDecls;

  // Constructor to initialize AnalyzeResult with class list
  AnalyzeResult(this.importPath, {required List<ClassMirror> classList}) {
    _init();
    classDecls = {for (var c in classList) c: _dummyClassAnalyer};
    mixinDecls = {for (var c in classList) c: _dummyMixinAnalyer};
    privateClassDecls = [];
    privateMixinDecls = [];
    aliases = {};
    topLevelVariables = [];
    topLevelFunctions = [];
    enums = {};
  }

  // Factory method to create AnalyzeResult from a path
  static AnalyzeResult? fromPath(String importPath) {
    final importUri = Uri.parse(importPath);
    final classList = mirrorSystem.libraries.containsKey(importUri)
        ? lookingForClassAtImportPath(importUri)
        : <ClassMirror>[];
    if (classList.isNotEmpty) return AnalyzeResult(importPath, classList: classList);
    return null;
  }

  // Initialize paths and URIs
  void _init() {
    importUri = Uri.parse(importPath);
    final [_, ...paths] = importUri.pathSegments;
    filePath = path.joinAll([flutterPath, ...paths]);
  }

  Future<void> addFileUnit(CompilationUnit unit) async {
    final visitor = FileVisitor();
    unit.accept(visitor);
    // have to analyze part files either
    if (visitor.parts.isNotEmpty) {
      await runAnalyzeOnFiles(
        visitor.parts.map((e) => path.join(path.dirname(filePath), e)).toList(),
        onResult: (filePath, result) => result.unit.accept(visitor),
      );
    }

    // Update class and mixin declarations with real analyzers
    visitor.classes.forEach((classDecl) {
      final mirror =
          classDecls.keys.firstWhereOrNull((element) => element.name == classDecl.name.toString());
      if (mirror != null) {
        classDecls[mirror] = ClassAnalyzer.create(classDecl)..associateWithMirror(mirror);
      }
    });
    classDecls.removeWhere((key, value) => value == _dummyClassAnalyer);

    visitor.mixins.forEach((mixinDecl) {
      final mirror =
          mixinDecls.keys.firstWhereOrNull((element) => element.name == mixinDecl.name.toString());
      if (mirror != null) {
        mixinDecls[mirror] = MixinAnalyzer.create(mixinDecl);
      }
    });
    mixinDecls.removeWhere((key, value) => value == _dummyMixinAnalyer);

    // Collect other declarations and properties
    privateClassDecls.addAll(visitor.privateClasses.map(LazyClassDeclAnalyzer.fromNode));
    privateMixinDecls.addAll(visitor.privateMixins.map(LazyDeclAnalyzer.fromNode));
    aliases.addAll(visitor.aliases);
    topLevelVariables.addAll(visitor.topLevelVariables);
    topLevelFunctions.addAll(visitor.topLevelFunctions);
    enums.addAll(visitor.enums);
  }

  // Deserialize from cache
  AnalyzeResult.fromCache(this.importPath,
      {required List<ClassMirror> classList, required Map<String, dynamic> cache}) {
    _init();
    if (cache[importPath] case Map<String, dynamic> data?) {
      classDecls = {};
      if (data['class'] case Map<String, dynamic> classData?) {
        for (var element in classList) {
          if (classData[element.name] case Map<String, dynamic> elementData?) {
            elementData['name'] = element.name;
            classDecls[element] = ClassAnalyzer.fromJson(elementData)..associateWithMirror(element);
          }
        }
      }

      mixinDecls = {};
      if (data['mixin'] case Map<String, dynamic> mixinData?) {
        for (var element in classList) {
          if (mixinData[element.name] case Map<String, dynamic> elementData?) {
            elementData['name'] = element.name;
            final analyzer = MixinAnalyzer.fromJson(elementData);
            mixinDecls[element] = analyzer;
          }
        }
      }

      aliases = {};
      if (data['alias'] case List<dynamic> aliasData?) {
        aliases.addAll(aliasData.cast<String>().toSet());
      }

      topLevelVariables = [];
      if (data['top-level-variable'] case Map<String, dynamic> topLevelData?) {
        topLevelData.keys.forEach((name) {
          if (topLevelData[name] case Map<String, dynamic> data) {
            data['name'] = name;
            topLevelVariables.add(PropertyDeclAnalyzer.fromJson(data));
          }
        });
      }

      topLevelFunctions = [];
      if (data['top-level-function'] case Map<String, dynamic> topLevelData?) {
        topLevelData.keys.forEach((name) {
          if (topLevelData[name] case Map<String, dynamic> data) {
            data['name'] = name;
            topLevelFunctions.add(LazyDeclAnalyzer.fromJson(data));
          }
        });
      }

      enums = {};
      if (data['enum'] case List<dynamic> enumData) {
        enums.addAll(enumData.cast<String>().toSet());
      }

      privateClassDecls = [];
      if (data['private-class'] case Map<String, dynamic> privateData?) {
        privateClassDecls.addAll(
          privateData.entries.map(
              (e) => LazyClassDeclAnalyzer.fromJson(e.value..putIfAbsent('name', () => e.key))),
        );
      }

      privateMixinDecls = [];
      if (data['private-mixin'] case Map<String, dynamic> privateData?) {
        privateMixinDecls.addAll(
          privateData.entries
              .map((e) => LazyDeclAnalyzer.fromJson(e.value..putIfAbsent('name', () => e.key))),
        );
      }
    }
  }

  // Serialize to JSON
  Map<String, dynamic> toJson() {
    return {
      importPath: {
        if (classDecls.isNotEmpty)
          'class': {for (var e in classDecls.values) e.name: e.toJson()..remove('name')},
        if (mixinDecls.isNotEmpty)
          'mixin': {for (var e in mixinDecls.values) e.name: e.toJson()..remove('name')},
        if (aliases.isNotEmpty) 'alias': aliases.toList(),
        if (topLevelVariables.isNotEmpty)
          'top-level-variable': {
            for (var e in topLevelVariables) e.name: e.toJson()..remove('name')
          },
        if (topLevelFunctions.isNotEmpty)
          'top-level-function': {
            for (var e in topLevelFunctions) e.name: e.toJson()..remove('name')
          },
        if (enums.isNotEmpty) 'enum': enums.toList(),
        if (privateClassDecls.isNotEmpty)
          'private-class': {for (var e in privateClassDecls) e.name: e.toJson()..remove('name')},
        if (privateMixinDecls.isNotEmpty)
          'private-mixin': {for (var e in privateMixinDecls) e.name: e.toJson()..remove('name')},
      }
    };
  }
}

// Function to get list of classes from a given URI
List<ClassMirror> lookingForClassAtImportPath(Uri uri) =>
    mirrorSystem.libraries[uri]!.declarations.values.classDeclarations;

// Function to run analysis on files
Future<void> runAnalyzeOnFiles(
  List<String> filePaths, {
  required FutureOr<void> Function(String filePath, ResolvedUnitResult resolved) onResult,
}) async {
  final collection = AnalysisContextCollection(includedPaths: filePaths);
  for (var context in collection.contexts) {
    final session = context.currentSession;
    for (var filePath in context.contextRoot.analyzedFiles()) {
      final result = await session.getResolvedUnit(filePath);
      if (result is ResolvedUnitResult) {
        onResult(filePath, result);
      }
    }
  }
}
