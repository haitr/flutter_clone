import 'package:args/args.dart';
import 'package:file_system/file_system.dart';
import 'package:prepare/prepare.dart';
import 'package:simple_logger/simple_logger.dart';

void main(List<String> arguments) async {
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
          'cache',
          abbr: 'x',
          help: 'Cache all parsed results',
          defaultsTo: true,
          negatable: false,
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
  final bool cache = cmds['cache']; // Whether to use caching

  SimpleLogger.setVerbose(verbose);

  final progress = SimpleLogger.progress('Preparing...');

  try {
    // copy dependencies
    final outputFs = WorkingDirectoryFileSystem(output);
    await cloneFlutter(outputFs);
  } catch (e) {
    print(e.toString());
  } finally {
    progress.finish(showTiming: true);
  }

  SimpleLogger.info('Done.');
}
