import 'package:args/args.dart';
import 'package:file/file.dart';
import 'package:file/local.dart';
import 'package:path/path.dart' as path;
import 'package:project_analyze/project_analyze.dart';
import 'package:project_analyze/src/utils/local_file_system.dart';
import 'package:project_analyze/src/utils/selective_indent_json_encoder.dart';
import 'package:simple_logger/simple_logger.dart';

// The process is straightforward:
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
        ..addOption('output', abbr: 'o', help: 'Output json file', defaultsTo: './generated.json')
        ..addOption('input', abbr: 'i', help: 'Input dependencies', defaultsTo: './dependencies')
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

  SimpleLogger.setVerbose(verbose);

  final progress = SimpleLogger.progress('Caching Flutter structure...');

  final inputFs = WorkingDirectoryFileSystem(path.normalize(input));
  final result = await _loadFromScratch(inputFs);
  final outputFs = LocalFileSystem();
  final cacheFile = outputFs.currentDirectory.childFile(output);

  if (cacheFile.existsSync()) {
    cacheFile.deleteSync();
  } else {
    cacheFile.createSync();
  }

  await saveToCache(result, cacheFile, encoder: const SelectiveIndentJsonEncoder());
  progress.finish(showTiming: true);
  SimpleLogger.info('Cache size: ${(cacheFile.lengthSync() / 1024 / 1024).toStringAsFixed(2)} MB');
}

/// Performs fresh analysis of project source files
/// This is slower than loading from cache but necessary for initial run
/// or when cache is invalidated
///
/// Returns a List of [AnalyzeResult] objects containing the analysis results
/// The results include class declarations and their analyzed structure
Future<AnalyzeResult> _loadFromScratch(FileSystem input) =>
    analyzeProjectWithSymbolResolution(input);
