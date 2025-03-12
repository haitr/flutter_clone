import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:args/args.dart';
import 'package:chalkdart/chalkstrings.dart';
import 'package:clone/analyze_result.dart';
import 'package:clone/extensions/extensions.dart';
import 'package:clone/helper.dart';
import 'package:console_bars/console_bars.dart';
// ignore: unused_import
import 'package:flutter/cupertino.dart';
// ignore: unused_import
import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:flutter/widgets.dart';
import 'package:path/path.dart' as path;

import 'generate.wrapper.dart';
import 'local_file_system.dart';
import 'log.dart';

final whiteList = []; // A list of files to process, if not empty

// The process is straightforward:
// 	-	Examine the flutter directory and store the analysis results in [analyzingResults].
// 	-	Create wrappers in the –output directory. The logic for generating these wrappers can be implemented in generate.wrapper.dart.
/// Main entry point for the generator
/// Takes command line arguments and orchestrates the generation process:
/// 1. Parses command line arguments
/// 2. Prepares analysis results (either from cache or fresh analysis)
/// 3. Generates wrapper classes for Flutter widgets
/// 4. Performs any additional post-generation tasks
void main(List<String> arguments) async {
  // Configuration for command line argument parsing
  // Supports various flags and options to control the generation process
  final parser = ArgParser()
    ..addFlag('verbose', abbr: 'v', help: 'Enable verbose output', negatable: false)
    ..addOption('output', abbr: 'o', help: 'Output directory', defaultsTo: './generated')
    ..addOption('input',
        abbr: 'i', help: 'Input dependencies directory', defaultsTo: './dependencies')
    ..addFlag('cache',
        abbr: 'x', help: 'Cache all parsed results', defaultsTo: true, negatable: false)
    ..addFlag('delete-outputs',
        abbr: 'd', help: 'Delete all output and cache files', negatable: false)
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
  final bool cache = cmds['cache']; // Whether to use caching

  SimpleLogger.setVerbose(verbose);

  print('Preparing...');

  final fsInput = LocalFileSystem(workingDir: input);
  final fsOutput = LocalFileSystem(workingDir: output);

  await _prepareResults(fsInput, fsOutput, clean);

  if (cache) {
    var cacheSuffix = '';
    final cacheFile = File(path.join('.cache', 'flutter$cacheSuffix.json'));
    final progress = SimpleLogger.progress('Caching Flutter structure');
    final contents = analyzingResults.fold(
      {},
      (previousValue, element) => previousValue..addAll(element.toJson()),
    );
    final jsonEncoder = const JsonEncoder.withIndent('  ');
    if (Directory(path.dirname(cacheFile.path)) case final cacheDir when !cacheDir.existsSync()) {
      cacheDir.createSync();
    }
    await cacheFile.writeAsString(jsonEncoder.convert(contents));
    progress.finish(showTiming: true);
    print('Cache size: ${(cacheFile.lengthSync() / 1024 / 1024).toStringAsFixed(2)} MB');
  }

  final progress = FillingBar(
    desc: 'Generating'.redBright,
    total: analyzingResults.length,
    percentage: true,
    fill: '█'.yellow.onBlue,
    width: 20,
  );

  // Main generating task
  final generatedPaths = <String>[];
  for (var result in analyzingResults) {
    progress.increment();
    if (whiteList.isNotEmpty && !whiteList.contains(path.split(result.filePath).last)) {
      continue;
    }
    final code = await generateWrapper(result);
    if (code.trim().isNotEmpty) {
      final pathSegments = path.split(result.filePath);
      final srcIdx = pathSegments.lastIndexOf('src');
      final file = createIfNeeded(pathSegments.sublist(srcIdx + 1), output);
      generatedPaths.add(file.path);
      file.writeAsStringSync(code);
    }
  }

  // Extra tasks if needed
  await afterGenerated(generatedPaths: generatedPaths);

  print('Done.');
}

/// Prepares the analysis results by either:
/// - Loading from cached JSON if available (.cache/flutter-{version}.json)
/// - Performing fresh analysis of Flutter source files
///
/// The results are stored in [analyzingResults] for later use in generation.
/// Also handles cleaning of output files if --delete-outputs flag is set.
Future<void> _prepareResults(LocalFileSystem input, LocalFileSystem output, bool clean) async {
  // Get the current working directory
  // Note: absolute path of Flutter's files should be prepared
  // analyzer's parsing arguments only accept absolute path
  var processResult = await Process.run('pwd', []);
  final pwd = processResult.stdout.toString().trimRight();
  AnalyzeResult.flutterPath = path.canonicalize(path.join(pwd, input, 'flutter', 'lib'));

  // Retrieve Flutter version from the input directory
  final versionFile = File(path.join(input, 'flutter', 'version'));
  var cacheSuffix = '';
  if (versionFile.existsSync()) {
    final flutterVersion = versionFile.readAsStringSync();
    print('Current Flutter version: ${flutterVersion.yellow}');
    cacheSuffix = '-$flutterVersion';
  }

  // Check for existing cache
  final cacheFile = File(path.join('.cache', 'flutter$cacheSuffix.json'));
  if (clean && cacheFile.existsSync()) cacheFile.deleteSync();

  if (cacheFile.existsSync()) {
    final size = (cacheFile.lengthSync() / 1024 / 1024).toStringAsFixed(2).redBright;
    print(
        'Found cache at ${path.relative(cacheFile.path, from: path.current).yellowBright} | Cache size: $size Mb...');
    final progress = SimpleLogger.progress('Loading from cache...');
    analyzingResults = await _loadFromCache(cacheFile);
    progress.finish(showTiming: true);
  } else {
    final progress = SimpleLogger.progress('Cache not found. Load from scratch...');
    analyzingResults = await _loadFromScratch();
    progress.finish(showTiming: true);
  }

  // Generate output files
  if (clean) {
    Directory(output)
        .listSync()
        .whereType<Directory>()
        .forEach((e) => e.deleteSync(recursive: true));
  }
}

/// Loads analysis results from a previously cached JSON file
/// This significantly speeds up subsequent runs by avoiding re-analysis
///
/// [cacheFile] - The File object pointing to the cached JSON data
/// Returns a List of [AnalyzeResult] objects reconstructed from the cache
Future<List<AnalyzeResult>> _loadFromCache(File cacheFile) async {
  final raw = jsonDecode(cacheFile.readAsStringSync()) as Map<String, dynamic>;
  final results = <AnalyzeResult>[];

  // Scan all importable files within the Flutter directory
  flutterLibraryLookUp((uri, value) {
    final classList = value.declarations.values.classDeclarations;
    if (classList.isNotEmpty) {
      results.add(AnalyzeResult.fromCache(uri.toString(), classList: classList, cache: raw));
    }
  });
  return results;
}

/// Performs fresh analysis of Flutter source files
/// This is slower than loading from cache but necessary for initial run
/// or when cache is invalidated
///
/// Returns a List of [AnalyzeResult] objects containing the analysis results
/// The results include class declarations and their analyzed structure
Future<List<AnalyzeResult>> _loadFromScratch() async {
  final results = <AnalyzeResult>[];
  // Scan all importable files within the Flutter directory
  flutterLibraryLookUp((uri, value) {
    final classList = value.declarations.values.classDeclarations;
    if (classList.isNotEmpty) {
      results.add(AnalyzeResult(uri.toString(), classList: classList));
    }
  });
  await runAnalyzeOnFiles(
    results.map((e) => e.filePath).toList(),
    onResult: (filePath, result) =>
        results.firstWhere((element) => element.filePath == filePath).addFileUnit(result.unit),
  );
  return results;
}
