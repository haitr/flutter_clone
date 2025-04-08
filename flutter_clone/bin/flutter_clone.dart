import 'package:args/args.dart';
import 'package:chalkdart/chalkstrings.dart';
import 'package:file_system/file_system.dart';
import 'package:flutter_clone/flutter_clone.dart';
import 'package:path/path.dart' as path;
import 'package:prepare/prepare.dart';
import 'package:project_analyze/project_analyze.dart';
import 'package:simple_logger/simple_logger.dart';

void main(List<String> arguments) async {
  // Configuration for command line argument parsing
  // Supports various flags and options to control the generation process
  final parser =
      ArgParser()
        ..addOption('output', abbr: 'o', help: 'Output directory', defaultsTo: './generated')
        ..addFlag('verbose', abbr: 'v', help: 'Enable verbose output', negatable: false)
        ..addFlag('no-cache', abbr: 'x', help: 'Do not cache parsed results', negatable: false)
        ..addFlag('dry-run', abbr: 'd', help: 'Dry run', negatable: false)
        ..addOption(
          'widget',
          abbr: 'w',
          help: 'Target widgets using glob pattern (e.g. Text or *Button or {Text|*Button})',
          defaultsTo: '*',
        )
        ..addFlag('help', abbr: 'h', help: 'Help command', negatable: false);

  // Parse arguments
  final cmds = parser.parse(arguments);
  if (cmds.flag('help')) {
    print(parser.usage);
    return;
  }

  final String output = path.normalize(cmds['output']); // Output directory path
  final bool dryRun = cmds['dry-run']; // Whether to dry run
  final bool noCache = cmds['no-cache']; // Whether to use caching
  final bool verbose = cmds['verbose']; // Whether to enable verbose logging
  final String patterns = cmds['widget']; // Target widgets using glob pattern

  SimpleLogger.setVerbose(verbose);

  final progress = SimpleLogger.progress('Preparing...');

  try {
    AnalyzeResult result;
    final outputFs = WorkingDirectoryFileSystem(output);

    if (outputFs.directory('.') case final outputDir when !outputDir.existsSync()) {
      outputDir.createSync(recursive: true);
    }

    var cacheSuffix = '';
    if (await getFlutterVersion() case final flutterVersion?) {
      cacheSuffix = '-$flutterVersion';
    }
    final cacheFile = outputFs.file(path.join('.cache', 'flutter$cacheSuffix.json'));

    if (!cacheFile.existsSync() || dryRun) {
      final progress = SimpleLogger.progress('Cache not found. Load from scratch...');
      // Copy Flutter and dependencies to a temporary directory
      final tempDir = outputFs.currentDirectory.createTempSync();
      final tempFs = WorkingDirectoryFileSystem(tempDir.path);
      await cloneFlutter(tempFs);

      // Retrieve Flutter version from the input directory
      final flutterFs = WorkingDirectoryFileSystem(
        path.normalize(path.join(tempFs.currentDirectory.path, 'flutter')),
      );

      result = await _loadFromScratch(flutterFs);

      // Clean up temporary directory after loading
      tempFs.currentDirectory.deleteSync(recursive: true);

      if (!dryRun && !noCache) {
        SimpleLogger.info('Saving cache...');
        if (cacheFile.existsSync()) {
          cacheFile.deleteSync();
        }
        cacheFile.createSync(recursive: true);
        await saveToCache(result, cacheFile, encoder: SelectiveIndentJsonEncoder());
        final size = (await cacheFile.stat()).size / 1024 / 1024;
        SimpleLogger.info(
          'Saved at ${path.relative(cacheFile.path, from: path.current).yellowBright} | Cache size: ${size.toStringAsFixed(2).yellowBright} Mb...',
        );
      }

      progress.finish(showTiming: true);
    } else {
      final size = (await cacheFile.stat()).size / 1024 / 1024;
      SimpleLogger.info(
        'Found cache at ${path.relative(cacheFile.path, from: path.current).yellowBright} | Cache size: ${size.toStringAsFixed(2).yellowBright} Mb...',
      );
      final progress = SimpleLogger.progress('Loading from cache...');
      result = await _loadFromCache(cacheFile);
      progress.finish(showTiming: true);
    }

    process(outputFs, result, patterns);

    // analyze project
  } catch (e, trace) {
    SimpleLogger.error(e.toString());
    SimpleLogger.error(trace.toString());
    progress.cancel();
  }

  progress.finish(showTiming: true);

  SimpleLogger.info('Done.');
}

/// Loads analysis results from a previously cached JSON file
/// This significantly speeds up subsequent runs by avoiding re-analysis
///
/// [cacheFile] - The File object pointing to the cached JSON data
/// Returns a List of [FileAnalyzeResult] objects reconstructed from the cache
Future<AnalyzeResult> _loadFromCache(File cacheFile) async => loadFromCache(cacheFile);

/// Performs fresh analysis of project source files
/// This is slower than loading from cache but necessary for initial run
/// or when cache is invalidated
///
/// Returns a List of [FileAnalyzeResult] objects containing the analysis results
/// The results include class declarations and their analyzed structure
Future<AnalyzeResult> _loadFromScratch(FileSystem input) =>
    analyzeProjectWithSymbolResolution(input);
