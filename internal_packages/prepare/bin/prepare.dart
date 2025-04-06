// ignore_for_file: depend_on_referenced_packages

import 'package:args/args.dart';
import 'package:file_system/file_system.dart';
import 'package:prepare/prepare.dart';

void main(List<String> args) async {
  // Command line argument parser configuration
  final parser = ArgParser()
    ..addFlag('verbose', abbr: 'v', help: 'Enable verbose output', negatable: false)
    ..addOption('output', abbr: 'o', help: 'Output directory', defaultsTo: './dependencies')
    ..addFlag('help', abbr: 'h', help: 'Help command', negatable: false);

  // Parse arguments
  final cmds = parser.parse(args);
  final String output = cmds.option('output')!;
  final bool help = cmds['help']!;

  if (help) {
    print(parser.usage);
    return;
  }

  try {
    // copy dependencies
    final outputFs = WorkingDirectoryFileSystem(output);
    await cloneFlutter(outputFs);
  } catch (e) {
    print(e.toString());
  } finally {
    print('Prepared.');
  }
}
