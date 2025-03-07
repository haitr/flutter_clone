import 'dart:async';
import 'dart:mirrors' show ClassMirror, currentMirrorSystem;

import 'package:analyzer/dart/analysis/analysis_context_collection.dart';
import 'package:analyzer/dart/analysis/results.dart';
import 'package:analyzer/dart/ast/ast.dart';
import 'package:clone/ast/analyzer.dart';
import 'package:clone/ast/visitor.dart';
import 'package:clone/extensions/extensions.dart';
import 'package:clone/helper.dart';
import 'package:collection/collection.dart';
import 'package:path/path.dart' as path;

// Dummy analyzers used as placeholders
final _dummyClassAnalyer = ClassAnalyzer('', constructors: []);
final _dummyMixinAnalyer = MixinAnalyzer('');

/// Represents the result of analyzing Dart files for class, mixin, and other declarations.
///
/// This class stores information about classes, mixins, top-level variables, functions,
/// enums, and other declarations found during static analysis of Dart source files.
class AnalyzeResult {
  static final _mirrorSystem = currentMirrorSystem();

  /// The path to the Flutter framework used for analysis.
  static late final String flutterPath;

  /// The URI used for importing the analyzed file.
  late final Uri importUri;

  /// The import path as a string.
  final String importPath;

  /// The absolute file path to the analyzed file.
  late final String filePath;

  /// Map of class mirrors to their corresponding analyzers.
  late final Map<ClassMirror, ClassAnalyzer> classDecls;

  /// Map of class mirrors to their corresponding mixin analyzers.
  late final Map<ClassMirror, MixinAnalyzer> mixinDecls;

  /// Set of type aliases defined in the analyzed file.
  late final Set<String> aliases;

  /// List of top-level variable declarations.
  late final List<PropertyDeclAnalyzer> topLevelVariables;

  /// List of top-level function declarations.
  late final List<LazyDeclAnalyzer> topLevelFunctions;

  /// Set of enum type names defined in the analyzed file.
  late final Set<String> enums;

  /// List of private class declarations.
  late final List<LazyClassDeclAnalyzer> privateClassDecls;

  /// List of private mixin declarations.
  late final List<LazyDeclAnalyzer> privateMixinDecls;

  /// Constructor to initialize AnalyzeResult with class list.
  ///
  /// [importPath] is the path used for importing the file.
  /// [classList] is the list of class mirrors found in the file.
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

  /// Factory method to create AnalyzeResult from a path.
  ///
  /// [importPath] is the path used for importing the file.
  /// Returns an AnalyzeResult if classes are found, null otherwise.
  static AnalyzeResult? fromPath(String importPath) {
    final importUri = Uri.parse(importPath);
    final classList = _mirrorSystem.libraries.containsKey(importUri)
        ? lookingForClassAtImportPath(importUri)
        : <ClassMirror>[];
    if (classList.isNotEmpty) return AnalyzeResult(importPath, classList: classList);
    return null;
  }

  /// Initialize paths and URIs used by this analyzer.
  void _init() {
    importUri = Uri.parse(importPath);
    final [_, ...paths] = importUri.pathSegments;
    filePath = path.joinAll([flutterPath, ...paths]);
  }

  /// Adds analysis data from a compilation unit.
  ///
  /// [unit] is the compilation unit to analyze.
  /// This method populates all the declaration collections with data from the compilation unit.
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
    for (var classDecl in visitor.classes) {
      final mirror =
          classDecls.keys.firstWhereOrNull((element) => element.name == classDecl.name.toString());
      if (mirror != null) {
        classDecls[mirror] = ClassAnalyzer.create(classDecl)..associateWithMirror(mirror);
      }
    }
    classDecls.removeWhere((key, value) => value == _dummyClassAnalyer);

    for (var mixinDecl in visitor.mixins) {
      final mirror =
          mixinDecls.keys.firstWhereOrNull((element) => element.name == mixinDecl.name.toString());
      if (mirror != null) {
        mixinDecls[mirror] = MixinAnalyzer.create(mixinDecl);
      }
    }
    mixinDecls.removeWhere((key, value) => value == _dummyMixinAnalyer);

    // Collect other declarations and properties
    privateClassDecls.addAll(visitor.privateClasses.map(LazyClassDeclAnalyzer.fromNode));
    privateMixinDecls.addAll(visitor.privateMixins.map(LazyDeclAnalyzer.fromNode));
    aliases.addAll(visitor.aliases);
    topLevelVariables.addAll(visitor.topLevelVariables);
    topLevelFunctions.addAll(visitor.topLevelFunctions);
    enums.addAll(visitor.enums);
  }

  /// Creates an AnalyzeResult from cached data.
  ///
  /// [importPath] is the path used for importing the file.
  /// [classList] is the list of class mirrors found in the file.
  /// [cache] is the cached data to restore from.
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
        for (var name in topLevelData.keys) {
          if (topLevelData[name] case Map<String, dynamic> data) {
            data['name'] = name;
            topLevelVariables.add(PropertyDeclAnalyzer.fromJson(data));
          }
        }
      }

      topLevelFunctions = [];
      if (data['top-level-function'] case Map<String, dynamic> topLevelData?) {
        for (var name in topLevelData.keys) {
          if (topLevelData[name] case Map<String, dynamic> data) {
            data['name'] = name;
            topLevelFunctions.add(LazyDeclAnalyzer.fromJson(data));
          }
        }
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

  /// Converts the analysis result to a JSON-serializable map.
  ///
  /// Returns a map representation of the analysis result.
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

/// Retrieves a list of class declarations from a given import URI.
///
/// [uri] is the URI to search for class declarations.
/// Returns a list of ClassMirror objects representing the classes found.
List<ClassMirror> lookingForClassAtImportPath(Uri uri) =>
    currentMirrorSystem().libraries[uri]!.declarations.values.classDeclarations;

/// Runs analysis on a list of file paths.
///
/// [filePaths] is the list of file paths to analyze.
/// [onResult] is a callback function that is called for each resolved unit.
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
