import 'package:project_analyze/ast/analyzer.dart';

/// Represents the result of analyzing Dart files for class, mixin, and other declarations.
///
/// This class stores information about classes, mixins, top-level variables, functions,
/// enums, and other declarations found during static analysis of Dart source files.
class AnalyzeResult {
  /// The import path as a string.
  final String importPath;

  /// Map of class mirrors to their corresponding analyzers.
  late final List<ClassAnalyzer> classDecls;

  /// Map of class mirrors to their corresponding mixin analyzers.
  late final List<MixinAnalyzer> mixinDecls;

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
  AnalyzeResult(this.importPath) {
    classDecls = [];
    mixinDecls = [];
    privateClassDecls = [];
    privateMixinDecls = [];
    aliases = {};
    topLevelVariables = [];
    topLevelFunctions = [];
    enums = {};
  }

  /// Adds analysis data from a compilation unit.
  ///
  /// [unit] is the compilation unit to analyze.
  /// This method populates all the declaration collections with data from the compilation unit.
  // Future<void> addFileUnit(CompilationUnit unit) async {
  //   final visitor = FileVisitor();
  //   unit.accept(visitor);
  //   // have to analyze part files either
  //   if (visitor.parts.isNotEmpty) {
  //     await runAnalyzeOnFiles(
  //       visitor.parts.map((e) => path.join(path.dirname(filePath), e)).toList(),
  //       onResult: (filePath, result) => result.unit.accept(visitor),
  //     );
  //   }

  //   // Update class and mixin declarations with real analyzers
  //   for (var classDecl in visitor.classes) {
  //     final mirror = classDecls.keys.firstWhereOrNull(
  //       (element) => element.name == classDecl.name.toString(),
  //     );
  //     if (mirror != null) {
  //       classDecls[mirror] = ClassAnalyzer.create(classDecl)..associateWithMirror(mirror);
  //     }
  //   }
  //   classDecls.removeWhere((key, value) => value == _dummyClassAnalyer);

  //   for (var mixinDecl in visitor.mixins) {
  //     final mirror = mixinDecls.keys.firstWhereOrNull(
  //       (element) => element.name == mixinDecl.name.toString(),
  //     );
  //     if (mirror != null) {
  //       mixinDecls[mirror] = MixinAnalyzer.create(mixinDecl);
  //     }
  //   }
  //   mixinDecls.removeWhere((key, value) => value == _dummyMixinAnalyer);

  //   // Collect other declarations and properties
  //   privateClassDecls.addAll(visitor.privateClasses.map(LazyClassDeclAnalyzer.fromNode));
  //   privateMixinDecls.addAll(visitor.privateMixins.map(LazyDeclAnalyzer.fromNode));
  //   aliases.addAll(visitor.aliases);
  //   topLevelVariables.addAll(visitor.topLevelVariables);
  //   topLevelFunctions.addAll(visitor.topLevelFunctions);
  //   enums.addAll(visitor.enums);
  // }

  /// Creates an AnalyzeResult from cached data.
  ///
  /// [importPath] is the path used for importing the file.
  /// [classList] is the list of class mirrors found in the file.
  /// [cache] is the cached data to restore from.
  AnalyzeResult.fromCache(this.importPath, {required Map<String, dynamic> cache}) {
    if (cache[importPath] case Map<String, dynamic> data?) {
      classDecls = [];
      // if (data['class'] case Map<String, dynamic> classData?) {
      //   for (var element in classList) {
      //     if (classData[element.name] case Map<String, dynamic> elementData?) {
      //       elementData['name'] = element.name;
      //       classDecls[element] = ClassAnalyzer.fromJson(elementData)..associateWithMirror(element);
      //     }
      //   }
      // }

      mixinDecls = [];
      // if (data['mixin'] case Map<String, dynamic> mixinData?) {
      //   for (var element in classList) {
      //     if (mixinData[element.name] case Map<String, dynamic> elementData?) {
      //       elementData['name'] = element.name;
      //       final analyzer = MixinAnalyzer.fromJson(elementData);
      //       mixinDecls[element] = analyzer;
      //     }
      //   }
      // }

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
            (e) => LazyClassDeclAnalyzer.fromJson(e.value..putIfAbsent('name', () => e.key)),
          ),
        );
      }

      privateMixinDecls = [];
      if (data['private-mixin'] case Map<String, dynamic> privateData?) {
        privateMixinDecls.addAll(
          privateData.entries.map(
            (e) => LazyDeclAnalyzer.fromJson(e.value..putIfAbsent('name', () => e.key)),
          ),
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
          'class': {for (var e in classDecls) e.name: e.toJson()..remove('name')},
        if (mixinDecls.isNotEmpty)
          'mixin': {for (var e in mixinDecls) e.name: e.toJson()..remove('name')},
        if (aliases.isNotEmpty) 'alias': aliases.toList(),
        if (topLevelVariables.isNotEmpty)
          'top-level-variable': {
            for (var e in topLevelVariables) e.name: e.toJson()..remove('name'),
          },
        if (topLevelFunctions.isNotEmpty)
          'top-level-function': {
            for (var e in topLevelFunctions) e.name: e.toJson()..remove('name'),
          },
        if (enums.isNotEmpty) 'enum': enums.toList(),
        if (privateClassDecls.isNotEmpty)
          'private-class': {for (var e in privateClassDecls) e.name: e.toJson()..remove('name')},
        if (privateMixinDecls.isNotEmpty)
          'private-mixin': {for (var e in privateMixinDecls) e.name: e.toJson()..remove('name')},
      },
    };
  }
}
