import 'package:analyzer/dart/analysis/analysis_context_collection.dart';
import 'package:analyzer/dart/analysis/results.dart';
import 'package:file/file.dart';
import 'package:glob/glob.dart';
import 'package:glob/list_local_fs.dart';
import 'package:path/path.dart' as path;
import 'package:project_analyze/utils/log.dart';
import 'package:yaml/yaml.dart';

import 'analyze_result.dart';

List<String> _getLocalPackages(FileSystem input) {
  final file = input.file('pubspec.yaml');
  final pubspec = loadYaml(file.readAsStringSync()) as YamlMap;
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

Future<List<AnalyzeResult>> analyzeProjectWithSymbolResolution(FileSystem input) async {
  final localPackages = _getLocalPackages(input);

  SimpleLogger.info('Analyzing project at: ${input.currentDirectory.path}');

  // Find sky_engine path
  final includePaths = [input.currentDirectory.path, ...localPackages].map(path.normalize).toList();

  // Create the analysis context with all required paths
  final collection = AnalysisContextCollection(includedPaths: includePaths);

  SimpleLogger.info('Analysis context created with paths:');
  collection.contexts
      .map((context) => ' - ${context.contextRoot.root.path}')
      .forEach(SimpleLogger.info);

  final dartFiles =
      Glob(
        '**/*.dart',
      ).listSync(root: includePaths[0]).whereType<File>().map((file) => file.path).toList();

  SimpleLogger.info('Found ${dartFiles.length} Dart files');

  final results = <AnalyzeResult>[];

  for (final filePath in dartFiles) {
    // if (path.basename(filePath) != 'text_painter.dart') {
    //   continue;
    // }

    // Open the file for analysis first
    final context = collection.contextFor(filePath);
    final library = await context.currentSession.getResolvedLibrary(filePath);

    if (library is ResolvedLibraryResult) {
      // final element = library.element;
      // final libraryPath = element.source.fullName;
      // SimpleLogger.progress(
      //   '\nAnalyzing library: ${path.relative(libraryPath, from: includePaths[0])}',
      // );

      // Let the visitor analyze classes and track dependencies
      results.add(AnalyzeResult.fromElement(library, includePaths[0]));

      //   for (final part in element.units) {
      //     if (part != element.definingCompilationUnit) {
      //       final partPath = part.source.fullName;
      //       SimpleLogger.info(' - Part: ${path.relative(partPath, from: includePaths[0])}');
      //     }
      //   }
    }
  }

  return results;
}
