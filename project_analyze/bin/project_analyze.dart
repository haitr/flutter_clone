import 'dart:convert';

import 'package:args/args.dart';
import 'package:chalkdart/chalkstrings.dart';
import 'package:file/file.dart';
import 'package:path/path.dart' as path;
import 'package:project_analyze/analyze_result.dart';
import 'package:project_analyze/project_analyze.dart';
import 'package:project_analyze/utils/local_file_system.dart';
import 'package:project_analyze/utils/log.dart';

// The process is straightforward:
// 	-	Examine the flutter directory and store the analysis results in [analyzingResults].
// 	-	Create wrappers in the –output directory. The logic for generating these wrappers can be implemented in generate.wrapper.dart.
/// Main entry point for the generator
/// Takes command line arguments and orchestrates the generation process:
/// 1. Parses command line arguments
/// 2. Prepares analysis results (either from cache or fresh analysis)
/// 3. Generates wrapper classes for Flutter widgets
/// 4. Performs any additional post-generation tasks
Future<void> main(List<String> arguments) async {
  // Configuration for command line argument parsing
  // Supports various flags and options to control the generation process
  final parser =
      ArgParser()
        ..addFlag('verbose', abbr: 'v', help: 'Enable verbose output', negatable: false)
        ..addOption('output', abbr: 'o', help: 'Output directory', defaultsTo: './generated')
        ..addOption(
          'input',
          abbr: 'i',
          help: 'Input dependencies directory',
          defaultsTo: './dependencies',
        )
        ..addFlag(
          'delete-outputs',
          abbr: 'd',
          help: 'Delete all output and cache files',
          negatable: false,
        )
        ..addFlag('help', abbr: 'h', help: 'Help command', negatable: false);

  // Parse arguments
  final cmds = parser.parse(arguments);
  if (cmds.flag('help')) {
    print(parser.usage);
    return;
  }

  // Store parsed command line arguments and provide convenient getters
  final bool verbose = cmds['verbose']; // Whether to enable verbose logging
  final String input = cmds['input']; // Input directory path
  final String output = cmds['output']; // Output directory path
  final bool clean = cmds['delete-outputs']; // Whether to clean output files

  SimpleLogger.setVerbose(verbose);

  print('Preparing...');

  final fsInput = WorkingDirectoryFileSystem(input);
  final fsOutput = WorkingDirectoryFileSystem(output);

  await _parseResult(fsInput, fsOutput, clean);
}

/// Prepares the analysis results by either:
/// - Loading from cached JSON if available (.cache/flutter-{version}.json)
/// - Performing fresh analysis of Flutter source files
///
/// The results are stored in [analyzingResults] for later use in generation.
/// Also handles cleaning of output files if --delete-outputs flag is set.
Future<List<AnalyzeResult>> _parseResult(FileSystem input, FileSystem output, bool clean) async {
  var result = <AnalyzeResult>[];

  // Retrieve Flutter version from the input directory
  final versionFile = input.file(path.join('flutter', 'version'));
  var cacheSuffix = '';
  if (await versionFile.exists()) {
    final flutterVersion = await versionFile.readAsString();
    print('Current Flutter version: ${flutterVersion.yellow}');
    cacheSuffix = '-$flutterVersion';
  }

  // Check for existing cache
  final cacheFile = output.file(path.join('.cache', 'flutter$cacheSuffix.json'));
  if (clean && await cacheFile.exists()) await cacheFile.delete();

  if (await cacheFile.exists()) {
    final size = (await cacheFile.stat()).size / 1024 / 1024;
    print(
      'Found cache at ${path.relative(cacheFile.path, from: path.current).yellowBright} | Cache size: $size Mb...',
    );
    final progress = SimpleLogger.progress('Loading from cache...');
    result = await _loadFromCache(cacheFile);
    progress.finish(showTiming: true);
  } else {
    final progress = SimpleLogger.progress('Cache not found. Load from scratch...');
    result = await _loadFromScratch(input);
    progress.finish(showTiming: true);
  }

  return result;
}

/// Loads analysis results from a previously cached JSON file
/// This significantly speeds up subsequent runs by avoiding re-analysis
///
/// [cacheFile] - The File object pointing to the cached JSON data
/// Returns a List of [AnalyzeResult] objects reconstructed from the cache
Future<List<AnalyzeResult>> _loadFromCache(File cacheFile) async {
  final raw = jsonDecode(cacheFile.readAsStringSync()) as Map<String, dynamic>;
  return raw.entries.map((e) => AnalyzeResult.fromCache(e.key, cache: e.value)).toList();
}

/// Performs fresh analysis of Flutter source files
/// This is slower than loading from cache but necessary for initial run
/// or when cache is invalidated
///
/// Returns a List of [AnalyzeResult] objects containing the analysis results
/// The results include class declarations and their analyzed structure
Future<List<AnalyzeResult>> _loadFromScratch(FileSystem input) async {
  final result = await analyzeProjectWithSymbolResolution(input);
  return result;
}
