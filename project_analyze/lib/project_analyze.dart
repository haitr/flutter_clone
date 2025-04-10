import 'dart:convert';

import 'package:analyzer/dart/analysis/analysis_context_collection.dart';
import 'package:analyzer/dart/analysis/results.dart';
import 'package:file/file.dart';
import 'package:glob/glob.dart';
import 'package:glob/list_local_fs.dart';
import 'package:path/path.dart' as path;
import 'package:simple_logger/simple_logger.dart';
import 'package:yaml/yaml.dart';

import 'src/analyze_result.dart';
import 'src/ast/analyzer.dart';

export 'src/analyze_result.dart';
export 'src/ast/analyzer.dart';
export 'src/utils/selective_indent_json_encoder.dart';

YamlMap _loadPubspec(FileSystem input) {
  final file = input.file('pubspec.yaml');
  final pubspec = loadYaml(file.readAsStringSync()) as YamlMap;
  return pubspec;
}

String _getProjectName(FileSystem input) {
  final pubspec = _loadPubspec(input);
  return pubspec['name'] as String;
}

List<String> _getLocalPackages(FileSystem input) {
  final pubspec = _loadPubspec(input);
  final dependencies = pubspec['dependencies'] as YamlMap?;
  final overrides = pubspec['dependency_overrides'] as YamlMap?;

  final localPackages = <String>{};

  void checkSection(YamlMap section) {
    for (final entry in section.entries) {
      final value = entry.value;

      if (value is YamlMap) {
        if (value['path'] case String p?) {
          if (path.isRelative(p)) {
            p = path.normalize(path.join(input.currentDirectory.path, p));
          }
          localPackages.add(p);
        }
      }
    }
  }

  if (dependencies != null) checkSection(dependencies);
  if (overrides != null) checkSection(overrides);

  return localPackages.toList()..sort();
}

AnalyzeResult loadFromCache(File cacheFile) {
  return AnalyzeResult.fromJson(jsonDecode(cacheFile.readAsStringSync()) as Map<String, dynamic>);
}

Future<void> saveToCache(
  AnalyzeResult result,
  File cacheFile, {
  Converter<Object?, String> encoder = const JsonEncoder(),
}) async => await cacheFile.writeAsString(encoder.convert(result.toJson()));

Future<AnalyzeResult> analyzeProjectWithSymbolResolution(FileSystem input) async {
  final localPackages = _getLocalPackages(input);

  SimpleLogger.info('Analyzing project at: ${input.currentDirectory.path}');

  // Find sky_engine path
  final includePaths = [input.currentDirectory.path, ...localPackages].map(path.normalize).toList();

  // Create the analysis context with all required paths
  final collection = AnalysisContextCollection(includedPaths: includePaths);

  SimpleLogger.info('Analysis context created with paths:');
  collection.contexts.map((context) => ' - ${context.contextRoot.root.path}').forEach(SimpleLogger.info);

  final dartFiles =
      Glob('**/*.dart').listSync(root: includePaths[0]).whereType<File>().map((file) => file.path).toList();

  SimpleLogger.info('Found ${dartFiles.length} Dart files');

  final results = <FileAnalyzeResult>[];
  final parsingContext = AnalyzerContext(projectPath: includePaths[0], projectName: _getProjectName(input));

  for (final filePath in dartFiles) {
    // if (path.basename(filePath) != 'button.dart') {
    //   continue;
    // }

    // Open the file for analysis first
    final context = collection.contextFor(filePath);
    final library = await context.currentSession.getResolvedLibrary(filePath);

    if (library is ResolvedLibraryResult) {
      final libraryPath = library.element.source.fullName;

      parsingContext.currentFilePath = path.normalize(path.relative(libraryPath, from: parsingContext.projectPath));

      // SimpleLogger.progress('\nAnalyzing library: ${path.relative(libraryPath, from: includePaths[0])}');

      // Let the visitor analyze classes and track dependencies
      results.add(FileAnalyzeResult.fromElement(library, parsingContext));
    }
  }

  return AnalyzeResult(files: results, typeRef: parsingContext.typeRef, elementRef: parsingContext.elementRef);
}
