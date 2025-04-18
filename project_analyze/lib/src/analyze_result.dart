import 'package:analyzer/dart/analysis/results.dart';
import 'package:collection/collection.dart';
import 'package:path/path.dart' as path;
import 'package:project_analyze/src/ast/visitor.dart';

import 'ast/analyzer.dart';
import 'ast/context.dart';

/// Represents the result of analyzing Dart files for class, mixin, and other declarations.
///
/// This class stores information about classes, mixins, top-level variables, functions,
/// enums, and other declarations found during static analysis of Dart source files.
class FileAnalyzeResult {
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

  /// Set of extension type names defined in the analyzed file.
  late final List<ExtensionTypeElementSerializer> extensions;

  FileAnalyzeResult.fromElement(ResolvedLibraryResult library, AnalyzerContext context) {
    final element = library.element;
    filePath = context.currentFilePath;

    // Get all parts of the file
    parts = [];
    for (final part in element.units) {
      if (part != element.definingCompilationUnit) {
        parts.add(path.relative(part.source.fullName, from: context.projectPath));
      }
    }

    final visitor = ElementAnalyzer(context);
    library.element.accept(visitor);

    classes = visitor.classes;
    mixins = visitor.mixins;
    enums = visitor.enums;
    extensions = visitor.extensions;
    typeAliases = visitor.typeAliases;
    topLevelVariables = visitor.topLevelVariables;
    topLevelFunctions = visitor.topLevelFunctions;
  }

  /// Creates an AnalyzeResult from JSON.
  ///
  /// [data] is the JSON data to create the result from.
  FileAnalyzeResult.fromJson(Map<String, dynamic> data) {
    // Get the first key as filePath
    filePath = data.keys.first;
    final fileData = data[filePath] as Map<String, dynamic>;

    classes = [];
    if (fileData['class'] case Map<String, dynamic> classData) {
      classes.addAll(
        classData.entries.map(
          (e) => ClassElementSerializer.fromJson({...e.value, 'name': e.key})..setSourceRef(filePath),
        ),
      );
    }

    mixins = [];
    if (fileData['mixin'] case Map<String, dynamic> mixinData) {
      mixins.addAll(
        mixinData.entries.map(
          (e) => MixinElementSerializer.fromJson({...e.value, 'name': e.key})..setSourceRef(filePath),
        ),
      );
    }

    typeAliases = [];
    if (fileData['alias'] case Map<String, dynamic> aliasData) {
      typeAliases.addAll(
        aliasData.entries.map(
          (e) => TypeAliasElementSerializer.fromJson({...e.value, 'name': e.key})..setSourceRef(filePath),
        ),
      );
    }

    topLevelVariables = [];
    if (fileData['top-level-variable'] case Map<String, dynamic> topLevelData) {
      topLevelVariables.addAll(
        topLevelData.entries.map(
          (e) => TopLevelVariableElementSerializer.fromJson({...e.value, 'name': e.key})..setSourceRef(filePath),
        ),
      );
    }

    topLevelFunctions = [];
    if (fileData['top-level-function'] case Map<String, dynamic> topLevelData) {
      topLevelFunctions.addAll(
        topLevelData.entries.map(
          (e) => FunctionElementSerializer.fromJson({...e.value, 'name': e.key})..setSourceRef(filePath),
        ),
      );
    }

    enums = [];
    if (fileData['enum'] case Map<String, dynamic> enumData) {
      enums.addAll(
        enumData.entries.map(
          (e) => EnumElementSerializer.fromJson({...e.value, 'name': e.key})..setSourceRef(filePath),
        ),
      );
    }

    extensions = [];
    if (fileData['extension'] case Map<String, dynamic> extensionData) {
      extensions.addAll(
        extensionData.entries.map(
          (e) => ExtensionTypeElementSerializer.fromJson({...e.value, 'name': e.key})..setSourceRef(filePath),
        ),
      );
    }
  }

  /// Converts the analysis result to a JSON-serializable map.
  ///
  /// Returns a map representation of the analysis result.
  Map<String, dynamic> toJson() {
    final key = path.toUri(filePath).path;
    return {
      key: {
        if (classes.isNotEmpty)
          'class': {for (final e in classes) e.name: (e..setSourceRef(key)).toJson()..remove('name')},
        if (mixins.isNotEmpty)
          'mixin': {for (final e in mixins) e.name: (e..setSourceRef(key)).toJson()..remove('name')},
        if (enums.isNotEmpty) 'enum': {for (final e in enums) e.name: (e..setSourceRef(key)).toJson()..remove('name')},
        if (extensions.isNotEmpty)
          'extension': {for (final e in extensions) e.name: (e..setSourceRef(key)).toJson()..remove('name')},
        if (typeAliases.isNotEmpty)
          'alias': {for (final e in typeAliases) e.name: (e..setSourceRef(key)).toJson()..remove('name')},
        if (topLevelVariables.isNotEmpty)
          'top-level-variable': {
            for (var e in topLevelVariables) e.name: (e..setSourceRef(key)).toJson()..remove('name'),
          },
        if (topLevelFunctions.isNotEmpty)
          'top-level-function': {
            for (var e in topLevelFunctions) e.name: (e..setSourceRef(key)).toJson()..remove('name'),
          },
      },
    };
  }
}

class AnalyzeResult {
  final List<FileAnalyzeResult> files;
  final Map<int, DartTypeSerializer> typeRef;
  final Map<int, InterfaceElementSerializer> elementRef;
  final Map<int, TypeAliasElementSerializer> aliasRef;
  AnalyzeResult({required this.files, required this.typeRef, required this.elementRef, required this.aliasRef});

  factory AnalyzeResult.fromJson(Map<String, dynamic> data) {
    return AnalyzeResult(
      files: (data['files'] as List).map((e) => FileAnalyzeResult.fromJson(e)).toList(),
      typeRef: (data['type_ref'] as Map).map(
        (key, value) => MapEntry(int.parse(key), DartTypeSerializer.fromJson(value)),
      ),
      elementRef: (data['element_ref'] as Map).map(
        (key, value) => MapEntry(int.parse(key), InterfaceElementSerializer.fromJson(value)),
      ),
      aliasRef: (data['alias_ref'] as Map).map(
        (key, value) => MapEntry(int.parse(key), TypeAliasElementSerializer.fromJson(value)),
      ),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'files': files.map((e) => e.toJson()).toList(),
      'type_ref': {for (var entry in typeRef.entries) entry.key.toString(): entry.value.toJson()},
      'element_ref': {for (var entry in elementRef.entries) entry.key.toString(): entry.value.toJson()},
      'alias_ref': {for (var entry in aliasRef.entries) entry.key.toString(): entry.value.toJson()},
    };
  }

  DartTypeSerializer? fromTypeRef(ReferenceableSerializer fromRef, String? nullabilitySuffix) {
    final ref = int.parse(fromRef.ref.substring(1));
    if (typeRef.containsKey(ref)) {
      return typeRef[ref]?..nullabilitySuffix = nullabilitySuffix;
    }
    return null;
  }

  InterfaceElementSerializer? fromElementRef(InterfaceElementRefSerializer fromRef) {
    InterfaceElementSerializer? element;
    if (fromRef.jsonType == RefJsonType.internalElement) {
      final fileResult = files.firstWhere((e) => e.filePath == fromRef.path);
      element =
          fileResult.classes.firstWhereOrNull((e) => e.ref == fromRef.ref) ??
          fileResult.mixins.firstWhereOrNull((e) => e.ref == fromRef.ref) ??
          fileResult.enums.firstWhereOrNull((e) => e.ref == fromRef.ref) ??
          fileResult.extensions.firstWhereOrNull((e) => e.ref == fromRef.ref);
    } else {
      final ref = int.parse(fromRef.ref.substring(1));
      element = elementRef[ref];
    }
    return element;
  }
}
