// ignore_for_file: depend_on_referenced_packages

import 'dart:convert' show jsonDecode;
import 'dart:io' as io;

import 'package:analyzer/dart/analysis/utilities.dart';
import 'package:args/args.dart';
import 'package:code_builder/code_builder.dart';
import 'package:dart_style/dart_style.dart';
import 'package:fs_shim/fs.dart';
import 'package:path/path.dart' as path;
import 'package:yaml/yaml.dart';
import 'package:yaml_edit/yaml_edit.dart';

import 'copy_path.dart';
import 'local_file_system.dart';
import 'visitor.dart';

/// Entry point of the preparation script.
/// This script performs the following tasks:
/// 1. Copies required Flutter dependencies
/// 2. Modifies sky_engine package
/// 3. Updates Flutter package references
/// 4. Updates project pubspec.yaml
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

  // get absolute path of Fluter
  try {
    // copy dependencies
    final outputFs = LocalFileSystem(workingDir: output);
    await _copyDependencies(outputFs);

    // modify sky_engine
    final skyEngineFs = LocalFileSystem(workingDir: '$output/sky_engine');
    modifySkyEngine(skyEngineFs);

    // modify flutter
    final flutterFs = LocalFileSystem(workingDir: '$output/flutter');
    modifyFlutter(flutterFs);

    // modify pubspec.yaml
    final currentFs = LocalFileSystem();
    modifyPubspec(currentFs, flutterFs);
  } catch (e) {
    print(e.toString());
  } finally {
    print('Prepared.');
  }
}

/// Determines the Flutter SDK installation directory path.
///
/// Uses the 'flutter --version --machine' command to get JSON output
/// containing the Flutter root directory path.
///
/// Throws an exception if Flutter is not found in PATH or command fails.
Future<String> _getFlutterDirectoryPath() async {
  try {
    // We'll use dart:io's Process to run a single command that works across platforms
    // The command prints the Flutter SDK path
    const flutterCommand = 'flutter';
    const args = ['--version', '--machine'];

    // Try to run the command (should work if flutter is in PATH)
    final result = await io.Process.run(flutterCommand, args, runInShell: true);

    if (result.exitCode == 0) {
      // Parse the JSON output
      final Map<String, dynamic> versionInfo = jsonDecode(result.stdout.toString());
      if (versionInfo.containsKey('flutterRoot')) {
        return versionInfo['flutterRoot'];
      }
    }
  } catch (e) {
    // Command failed or flutter not in PATH
    print(e.toString());
  }

  throw Exception(
      'Could not determine Flutter SDK path. Ensure Flutter is installed and in your PATH.');
}

/// Copies required Flutter dependencies to the output directory.
///
/// This includes:
/// - Flutter framework package (only lib/ directory and config files)
/// - sky_engine package (only ui/ and ui_web/ directories)
Future<void> _copyDependencies(FileSystem fs) async {
  final flutterPath = await _getFlutterDirectoryPath();

  // create output directory
  if (await fs.currentDirectory.exists()) {
    await fs.currentDirectory.delete(recursive: true);
  }
  await fs.currentDirectory.create(recursive: true);

  // copy flutter
  await copyPath(
    path.join(flutterPath, 'packages', 'flutter'),
    path.join(fs.currentDirectory.path, 'flutter'),
    includes: [
      'lib/**',
      'pubspec.yaml',
      'analysis_options.yaml',
    ],
  );

  // make version file
  final inputFs = LocalFileSystem(workingDir: flutterPath);
  if (inputFs.file('version') case var versionFile when await versionFile.exists()) {
    await versionFile.copy(fs.file('flutter/version').path);
  }

  // copy sky_engine
  // this sky_engine is actually a dummy unusable library so many redundant files will be removed
  // only lib/ui and lib/ui_web are needed
  await copyPath(
    path.join(flutterPath, 'bin', 'cache', 'pkg', 'sky_engine'),
    path.join(fs.currentDirectory.path, 'sky_engine'),
    includes: [
      'lib/ui/**',
      'lib/ui_web/ui_web.dart',
      'lib/ui_web/ui_web/browser_detection.dart',
      'lib/ui_web/ui_web/images.dart',
      'lib/ui_web/ui_web/platform_view_registry.dart',
      'lib/ui_web/ui_web/testing.dart',
      'pubspec.yaml',
    ],
  );
}

/// Modifies the Flutter framework package to use the local sky_engine.
///
/// Changes made:
/// 1. Updates pubspec.yaml to depend on local cooked_sky_engine
/// 2. Replaces dart:ui imports with package:cooked_sky_engine
/// 3. Updates UI-related imports to use the modified sky_engine
Future<void> modifyFlutter(FileSystem flutterFs) async {
  // edit pubspec.yaml
  final pubspec = flutterFs.file('pubspec.yaml');
  final yamlEditor = YamlEditor(await pubspec.readAsString());
  yamlEditor.remove(['dependencies', 'sky_engine']);
  yamlEditor.update([
    'dependencies'
  ], {
    ...(yamlEditor.parseAt(['dependencies']) as YamlMap).nodes,
    'cooked_sky_engine': {'path': '../sky_engine'}
  });
  await pubspec.writeAsString(yamlEditor.toString());

  // edit dart:ui and dart:ui_web imports
  final list = flutterFs
      .directory('lib')
      .list(recursive: true)
      .where((e) => e is File && path.extension(e.path).toLowerCase() == '.dart');
  await for (final entity in list) {
    // Filter for files only and check if they are dart files
    final file = flutterFs.file(entity.path);
    final contents = await file.readAsString();
    final updatedContents = _replaceFlutterImport(entity.path, contents)
        .replaceFirst(
          'export \'dart:ui\'',
          'export \'${['package:cooked_sky_engine', 'ui', 'ui.dart'].join('/')}\'',
        )
        .replaceFirst(
          'import \'dart:ui_web\'',
          'import \'${['package:cooked_sky_engine', 'ui_web', 'ui_web.dart'].join('/')}\'',
        );
    if (updatedContents != contents) {
      await file.writeAsString(updatedContents);
    }
  }
}

/// Replaces dart:ui imports with references to the modified sky_engine package.
///
/// Special handling is done for painting/ directory to avoid naming conflicts
/// with TextStyle class that exists in both dart:ui and painting/.
///
/// @param filePath Path to the Dart file being processed
/// @param contents Original file contents
/// @returns Modified file contents with updated imports
String _replaceFlutterImport(String filePath, String contents) {
  final paths = path.split(filePath);
  final category = paths[paths.indexOf('src') + 1];

  /// in both flutter/painting and dart:ui have the class called TextStyle
  /// if we tried to replace 'dart:ui' in flutter/painting
  /// it can leads to ambitious class name issue
  /// this logic need to be improved later
  if (category != 'painting') {
    return contents.replaceFirstMapped(RegExp(r"import '(dart:ui)'(.*?);", dotAll: true), (match) {
      String? vAs;
      String? vShow;
      String? vHide = 'TextStyle';
      if (match.group(2) case var importModifier? when importModifier.isNotEmpty) {
        final asStatement = RegExp(r"as\s+(.*?)(\s|$)", dotAll: true).firstMatch(importModifier);
        vAs = asStatement?.group(1);
        final hideStatement =
            RegExp(r"hide\s+(.*?)(show|$)", dotAll: true).firstMatch(importModifier);
        vHide = hideStatement?.group(1);
        final showStatement =
            RegExp(r"show\s+(.*?)(hide|$)", dotAll: true).firstMatch(importModifier);
        vShow = showStatement?.group(1);
      }
      var modified = "import '${['package:cooked_sky_engine', 'ui', 'ui.dart'].join('/')}'";
      if (vAs != null) {
        modified += ' as $vAs';
      }
      var shouldAddHide = false;
      if (vShow != null) {
        modified += ' show $vShow';
        shouldAddHide = !vShow.contains('TextStyle');
      }
      if (vHide != null) {
        modified += ' hide $vHide';
        if (shouldAddHide) modified += ', TextStyle';
      }

      return '$modified;';
    });
  }
  return contents.replaceFirst(
    'import \'dart:ui\'',
    'import \'${['package:cooked_sky_engine', 'ui', 'ui.dart'].join('/')}\'',
  );
}

/// Modifies the sky_engine package to create a dummy implementation.
///
/// Changes made:
/// 1. Renames package to cooked_sky_engine in pubspec.yaml
/// 2. Creates stub implementations of all APIs
/// 3. Preserves type definitions and interfaces
/// 4. Makes all method implementations throw UnimplementedError
Future<void> modifySkyEngine(FileSystem skyEngineFs) async {
  // edit pubspec.yaml
  final file = skyEngineFs.file('pubspec.yaml');
  final yamlEditor = YamlEditor(await file.readAsString());
  yamlEditor.update(['name'], 'cooked_sky_engine');
  await file.writeAsString(yamlEditor.toString());

  // edit ui
  final list = skyEngineFs
      .directory('lib')
      .list(recursive: true)
      .where((e) => e is File && path.extension(e.path).toLowerCase() == '.dart');

  await for (final entity in list) {
    // Filter for files only and check if they are dart files
    final file = skyEngineFs.file(entity.path);
    var contents = await file.readAsString();
    final skip = false;
    if (!skip) {
      final parsedUnit = parseString(content: contents).unit;
      final visitor = FileVisitor(entity.path, verbose: false);
      parsedUnit.accept(visitor);

      final emitter = DartEmitter(orderDirectives: true, useNullSafetySyntax: true);
      final library = Library((builder) {
        // Directives
        builder.directives.addAll(visitor.partOfs.map((e) => switch (e) {
              'dart.ui' => Directive.partOf('ui.dart'),
              'dart.ui_web' => Directive.partOf('../ui_web.dart'),
              _ => throw 'Invalid import url!',
            }));
        builder.directives.addAll(visitor.imports.map((e) => Directive.import(e.uri, as: e.alias)));
        builder.directives.addAll(visitor.parts.map((e) => Directive.part(e)));
        // top-level variables
        builder.body.addAll(visitor.vars.map((e) => Code(e)));
        // Functions
        builder.body.addAll(visitor.funcs.map((e) => e.external
            ? Code('${e.declaration};')
            : Code('${e.declaration}=> throw UnimplementedError();')));
        // Typedef
        builder.body.addAll(visitor.typeAliases.map((e) => Code(e)));
        // Enums
        builder.body.addAll(visitor.enumDeclarations.map((e) => Code(e)));
        // Classes
        builder.body.addAll(visitor.classes.map((clazz) {
          final code = StringBuffer();
          code.writeAll([
            if (clazz.abstract) 'abstract ',
            if (clazz.base) 'base ',
            if (clazz.sealed) 'sealed ',
            'class ${clazz.name} ',
            if (clazz.extendClause != null) '${clazz.extendClause} ',
            if (clazz.implementClause != null) '${clazz.implementClause} ',
            '{',
            ...clazz.constructors.map((constructor) {
              final code = StringBuffer();
              if (constructor.isConst) code.write('const ');
              if (constructor.factory) code.write('factory ');
              code.write(clazz.name);
              if (constructor.name case final name?) code.write('.$name');
              code.write(constructor.parameterDeclaration);
              if (constructor.initializerDeclarations.isNotEmpty) {
                code.write(' : ');
                code.write(constructor.initializerDeclarations.join(','));
              }
              if (constructor.factory) code.write(' => throw UnimplementedError()');
              code.write(';');
              return code.toString();
            }),
            ...clazz.fieldDeclarations,
            ...clazz.methods.map((e) => e.external
                ? Code('${e.declaration};')
                : Code('${e.declaration}=> throw UnimplementedError();')),
            '}',
          ]);
          return Code(code.toString());
        }));
      });
      contents = DartFormatter(pageWidth: 160).format(library.accept(emitter).toString());
    }

    await file.writeAsString(contents);
  }
}

/// Updates the project's pubspec.yaml to use the local Flutter package.
///
/// Replaces the flutter dependency with a path reference to the
/// locally modified Flutter framework package.
Future<void> modifyPubspec(FileSystem fs, FileSystem flutterFs) async {
  // edit pubspec.yaml
  final file = fs.file('pubspec.yaml');
  final yamlEditor = YamlEditor(await file.readAsString());
  final currentDeps = (yamlEditor.parseAt(['dependencies']) as YamlMap).nodes;
  yamlEditor.update([
    'dependencies'
  ], {
    'flutter': {
      'path': path.relative(flutterFs.currentDirectory.path, from: fs.currentDirectory.path)
    },
    ...Map.from(currentDeps)..remove('flutter'),
  });
  await file.writeAsString(yamlEditor.toString());
}
