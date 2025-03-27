import 'package:analyzer/dart/analysis/results.dart';
import 'package:path/path.dart' as path;
import 'package:project_analyze/ast/analyzer.dart';
import 'package:project_analyze/visitor.dart';

/// Represents the result of analyzing Dart files for class, mixin, and other declarations.
///
/// This class stores information about classes, mixins, top-level variables, functions,
/// enums, and other declarations found during static analysis of Dart source files.
class AnalyzeResult {
  late final String filePath;

  late final List<String> parts;

  /// Map of class mirrors to their corresponding analyzers.
  late final List<ClassMetadata> classes;

  /// Map of class mirrors to their corresponding mixin analyzers.
  late final List<MixinMetadata> mixins;

  /// Set of type aliases defined in the analyzed file.
  late final Set<String> typeAliases;

  /// List of top-level variable declarations.
  // late final List<PropertyDeclAnalyzer> topLevelVariables;

  /// List of top-level function declarations.
  // late final List<LazyDeclAnalyzer> topLevelFunctions;

  /// Set of enum type names defined in the analyzed file.
  late final Set<String> enums;

  /// List of private class declarations.
  // late final List<LazyClassDeclAnalyzer> privateClasses;

  /// List of private mixin declarations.
  // late final List<LazyDeclAnalyzer> privateMixins;

  AnalyzeResult.fromElement(ResolvedLibraryResult library, String projectPath) {
    final element = library.element;

    filePath = path.relative(element.source.fullName, from: projectPath);

    // Get all parts of the file
    parts = [];
    for (final part in element.units) {
      if (part != element.definingCompilationUnit) {
        parts.add(path.relative(part.source.fullName, from: projectPath));
      }
    }

    final visitor = ElementAnalyzer(projectPath);
    library.element.accept(visitor);

    classes = visitor.classes;
    mixins = visitor.mixins;
    // privateClasses = [];
    // privateMixins = [];
    typeAliases = {};
    // topLevelVariables = [];
    // topLevelFunctions = [];
    enums = {};
  }

  /// Creates an AnalyzeResult from JSON.
  ///
  /// [importPath] is the path used for importing the file.
  /// [classList] is the list of class mirrors found in the file.
  /// [cache] is the cached data to restore from.
  AnalyzeResult.fromJson(Map<String, dynamic> data) {
    classes = [];
    // if (data['class'] case Map<String, dynamic> classData?) {
    //   for (var element in classList) {
    //     if (classData[element.name] case Map<String, dynamic> elementData?) {
    //       elementData['name'] = element.name;
    //       classDecls[element] = ClassAnalyzer.fromJson(elementData)..associateWithMirror(element);
    //     }
    //   }
    // }

    mixins = [];
    // if (data['mixin'] case Map<String, dynamic> mixinData?) {
    //   for (var element in classList) {
    //     if (mixinData[element.name] case Map<String, dynamic> elementData?) {
    //       elementData['name'] = element.name;
    //       final analyzer = MixinAnalyzer.fromJson(elementData);
    //       mixinDecls[element] = analyzer;
    //     }
    //   }
    // }

    typeAliases = {};
    if (data['alias'] case List<dynamic> aliasData?) {
      typeAliases.addAll(aliasData.cast<String>().toSet());
    }

    // topLevelVariables = [];
    // if (data['top-level-variable'] case Map<String, dynamic> topLevelData?) {
    //   for (var name in topLevelData.keys) {
    //     if (topLevelData[name] case Map<String, dynamic> data) {
    //       data['name'] = name;
    //       topLevelVariables.add(PropertyDeclAnalyzer.fromJson(data));
    //     }
    //   }
    // }

    // topLevelFunctions = [];
    // if (data['top-level-function'] case Map<String, dynamic> topLevelData?) {
    //   for (var name in topLevelData.keys) {
    //     if (topLevelData[name] case Map<String, dynamic> data) {
    //       data['name'] = name;
    //       topLevelFunctions.add(LazyDeclAnalyzer.fromJson(data));
    //     }
    //   }
    // }

    enums = {};
    if (data['enum'] case List<dynamic> enumData) {
      enums.addAll(enumData.cast<String>().toSet());
    }

    // privateClasses = [];
    // if (data['private-class'] case Map<String, dynamic> privateData?) {
    //   privateClasses.addAll(
    //     privateData.entries.map(
    //       (e) => LazyClassDeclAnalyzer.fromJson(e.value..putIfAbsent('name', () => e.key)),
    //     ),
    //   );
    // }

    // privateMixins = [];
    // if (data['private-mixin'] case Map<String, dynamic> privateData?) {
    //   privateMixins.addAll(
    //     privateData.entries.map(
    //       (e) => LazyDeclAnalyzer.fromJson(e.value..putIfAbsent('name', () => e.key)),
    //     ),
    //   );
    // }
  }

  /// Converts the analysis result to a JSON-serializable map.
  ///
  /// Returns a map representation of the analysis result.
  Map<String, dynamic> toJson() {
    return {
      if (classes.isNotEmpty) 'class': {for (var e in classes) e.name: e.toJson()..remove('name')},
      if (mixins.isNotEmpty) 'mixin': {for (var e in mixins) e.name: e.toJson()..remove('name')},
      if (typeAliases.isNotEmpty) 'alias': typeAliases.toList(),
      // if (topLevelVariables.isNotEmpty)
      //   'top-level-variable': {for (var e in topLevelVariables) e.name: e.toJson()..remove('name')},
      // if (topLevelFunctions.isNotEmpty)
      //   'top-level-function': {for (var e in topLevelFunctions) e.name: e.toJson()..remove('name')},
      // if (enums.isNotEmpty) 'enum': enums.toList(),
      // if (privateClasses.isNotEmpty)
      //   'private-class': {for (var e in privateClasses) e.name: e.toJson()..remove('name')},
      // if (privateMixins.isNotEmpty)
      //   'private-mixin': {for (var e in privateMixins) e.name: e.toJson()..remove('name')},
    };
  }
}
