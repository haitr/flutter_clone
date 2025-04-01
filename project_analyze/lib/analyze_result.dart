import 'package:analyzer/dart/analysis/results.dart';
import 'package:path/path.dart' as path;
import 'package:project_analyze/visitor.dart';

import 'ast/analyzer.dart';

/// Represents the result of analyzing Dart files for class, mixin, and other declarations.
///
/// This class stores information about classes, mixins, top-level variables, functions,
/// enums, and other declarations found during static analysis of Dart source files.
class AnalyzeResult {
  late final String filePath;

  late final List<String> parts;

  /// Map of class mirrors to their corresponding analyzers.
  late final List<ClassElementSerializer> classes;

  /// Map of class mirrors to their corresponding mixin analyzers.
  late final List<MixinElementSerializer> mixins;

  /// Set of type aliases defined in the analyzed file.
  late final List<TypeAliasElementSerializer> typeAliases;

  /// List of top-level variable declarations.
  late final List<TopLevelVariableElementSerializer> topLevelVariables;

  /// List of top-level function declarations.
  late final List<FunctionElementSerializer> topLevelFunctions;

  /// Set of enum type names defined in the analyzed file.
  late final List<EnumElementSerializer> enums;

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
    enums = visitor.enums;
    typeAliases = visitor.typeAliases;
    topLevelVariables = visitor.topLevelVariables;
    topLevelFunctions = visitor.topLevelFunctions;
  }

  /// Creates an AnalyzeResult from JSON.
  ///
  /// [data] is the JSON data to create the result from.
  AnalyzeResult.fromJson(Map<String, dynamic> data) {
    // Get the first key as filePath
    filePath = data.keys.first;
    final fileData = data[filePath] as Map<String, dynamic>;

    classes = [];
    if (fileData['class'] case Map<String, dynamic> classData) {
      classes.addAll(
        classData.entries.map((e) => ClassElementSerializer.fromJson({...e.value, 'name': e.key})),
      );
    }

    mixins = [];
    if (fileData['mixin'] case Map<String, dynamic> mixinData) {
      mixins.addAll(
        mixinData.entries.map((e) => MixinElementSerializer.fromJson({...e.value, 'name': e.key})),
      );
    }

    typeAliases = [];
    if (fileData['alias'] case Map<String, dynamic> aliasData) {
      typeAliases.addAll(
        aliasData.entries.map(
          (e) => TypeAliasElementSerializer.fromJson({...e.value, 'name': e.key}),
        ),
      );
    }

    topLevelVariables = [];
    if (fileData['top-level-variable'] case Map<String, dynamic> topLevelData) {
      topLevelVariables.addAll(
        topLevelData.entries.map(
          (e) => TopLevelVariableElementSerializer.fromJson({...e.value, 'name': e.key}),
        ),
      );
    }

    topLevelFunctions = [];
    if (fileData['top-level-function'] case Map<String, dynamic> topLevelData) {
      topLevelFunctions.addAll(
        topLevelData.entries.map(
          (e) => FunctionElementSerializer.fromJson({...e.value, 'name': e.key}),
        ),
      );
    }

    enums = [];
    if (fileData['enum'] case Map<String, dynamic> enumData) {
      enums.addAll(
        enumData.entries.map((e) => EnumElementSerializer.fromJson({...e.value, 'name': e.key})),
      );
    }
  }

  /// Converts the analysis result to a JSON-serializable map.
  ///
  /// Returns a map representation of the analysis result.
  Map<String, dynamic> toJson() {
    return {
      filePath: {
        if (classes.isNotEmpty)
          'class': {for (final e in classes) e.name: e.toJson()..remove('name')},
        if (mixins.isNotEmpty)
          'mixin': {for (final e in mixins) e.name: e.toJson()..remove('name')},
        if (enums.isNotEmpty) 'enum': {for (final e in enums) e.name: e.toJson()..remove('name')},
        if (typeAliases.isNotEmpty)
          'alias': {for (final e in typeAliases) e.name: e.toJson()..remove('name')},
        if (topLevelVariables.isNotEmpty)
          'top-level-variable': {
            for (var e in topLevelVariables) e.name: e.toJson()..remove('name'),
          },
        if (topLevelFunctions.isNotEmpty)
          'top-level-function': {
            for (var e in topLevelFunctions) e.name: e.toJson()..remove('name'),
          },
      },
    };
  }
}
