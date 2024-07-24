import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'dart:mirrors';

import 'package:args/args.dart';
import 'package:chalkdart/chalkstrings.dart';
import 'package:cli_util/cli_logging.dart';
import 'package:clone/helper.dart';
import 'package:clone/result.dart';
import 'package:console_bars/console_bars.dart';
// ignore: unused_import, depend_on_referenced_packages
import 'package:flutter/cupertino.dart';
// ignore: unused_import, depend_on_referenced_packages
import 'package:flutter/material.dart';
// ignore: unused_import, depend_on_referenced_packages
import 'package:flutter/widgets.dart';
import 'package:path/path.dart' as path;

import 'generate.wrapper.dart';

final whiteList = []; // A list of files to process, if not empty

// Argument parser configuration
final parser = ArgParser()
  ..addFlag('verbose', abbr: 'v', help: 'Enable verbose output', negatable: false)
  ..addOption('output', abbr: 'o', help: 'Output directory', defaultsTo: defaultOutputDirectory)
  ..addOption('input',
      abbr: 'i', help: 'Input dependencies directory', defaultsTo: defaultDependenciesDirectory)
  ..addFlag('cache',
      abbr: 'x', help: 'Cache all parsed results', defaultsTo: true, negatable: false)
  ..addFlag('delete-outputs',
      abbr: 'd', help: 'Delete all output and cache files', negatable: false)
  ..addFlag('help', abbr: 'h', help: 'Help command', negatable: false);

late ArgResults cmds; // Parsed command line arguments
bool get verbose => cmds['verbose'];
String get input => cmds['input'];
String get output => cmds['output'];
bool get clean => cmds['delete-outputs'];
bool get cache => cmds['cache'];

// The process is straightforward:
// 	-	Examine the flutter directory and store the analysis results in [analyzingResults].
// 	-	Create wrappers in the –output directory. The logic for generating these wrappers can be implemented in generate.wrapper.dart.
void main(List<String> arguments) async {
  mirrorSystem = currentMirrorSystem();

  // Parse arguments
  cmds = parser.parse(arguments);
  if (cmds.flag('help')) {
    print(parser.usage);
    return;
  }

  logger = verbose ? Logger.verbose() : Logger.standard();

  print('Preparing...');

  await _prepareResults();

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
      final file = createIfNeeded(pathSegments.sublist(srcIdx + 1), outputDirectory: output);
      generatedPaths.add(file.path);
      file.writeAsStringSync(code);
    }
  }

  // Extra tasks if needed
  await afterGenerated(generatedPaths: generatedPaths);

  print('Done.');
}

// Examine the flutter directory and store the analysis results in [analyzingResults]
//  - Load from cached json if .cache/flutter-{flutterVersion}.json existed
//  - If not, load directly from flutter directory found in --output argument and store into a cached json format
Future<void> _prepareResults() async {
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
    final progress = logger.progress('Loading from cache...');
    analyzingResults = await _loadFromCache(cacheFile);
    progress.finish(showTiming: true);
  } else {
    final progress = logger.progress('Cache not found. Load from scratch...');
    analyzingResults = await _loadFromScratch();
    // Write results to cache file
    if (cache) {
      final progress = logger.progress('Caching Flutter structure');
      final contents = analyzingResults
          .fold({}, (previousValue, element) => previousValue..addAll(element.toJson()));
      final jsonEncoder = JsonEncoder.withIndent('  ');
      if (Directory(path.dirname(cacheFile.path)) case final cacheDir when !cacheDir.existsSync()) {
        cacheDir.createSync();
      }
      await cacheFile.writeAsString(jsonEncoder.convert(contents));
      progress.finish(showTiming: true);
      print('Cache size: ${(cacheFile.lengthSync() / 1024 / 1024).toStringAsFixed(2)} MB');
    }
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

// Load analysis results from cache
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

// Load analysis results from scratch
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
