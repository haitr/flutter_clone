import 'dart:convert';
import 'dart:io' as io;

import 'package:analyzer/dart/analysis/utilities.dart';
import 'package:analyzer/dart/ast/ast.dart' hide Directive;
import 'package:code_builder/code_builder.dart';
import 'package:dart_style/dart_style.dart';
import 'package:file_system/file_system.dart';
import 'package:json2yaml/json2yaml.dart';
import 'package:path/path.dart' as path;
import 'package:prepare/src/copy_path.dart';
import 'package:prepare/src/visitor.dart';
import 'package:yaml/yaml.dart';

/// The output directory where Flutter will be cloned
final String output = 'output';

/// Entry point of the preparation script.
/// This script performs the following tasks:
/// 1. Copies required Flutter dependencies
/// 2. Modifies sky_engine package
/// 3. Updates Flutter package references
/// 4. Updates project pubspec.yaml
Future<void> cloneFlutter(FileSystem fs) async {
  await copyDependencies(fs);

  // modify sky_engine
  final skyEngineDir = fs.directory(path.join(fs.currentDirectory.path, 'sky_engine'));
  modifySkyEngine(skyEngineDir);

  // modify flutter
  final flutterDir = fs.directory(path.join(fs.currentDirectory.path, 'flutter'));
  modifyFlutter(flutterDir);
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
Future<void> copyDependencies(FileSystem fs) async {
  final flutterPath = await _getFlutterDirectoryPath();

  // create output directory
  if (await fs.currentDirectory.exists()) {
    await fs.currentDirectory.delete(recursive: true);
  }
  await fs.currentDirectory.create(recursive: true);

  // copy flutter
  await copyPath(
    fs.directory(path.join(flutterPath, 'packages', 'flutter')),
    fs.directory(path.join(fs.currentDirectory.path, 'flutter')),
    includes: [
      'lib/**',
      'pubspec.yaml',
      'analysis_options.yaml',
    ],
  );

  // make version file
  final inputFs = WorkingDirectoryFileSystem(flutterPath);
  if (inputFs.file('version') case var versionFile when await versionFile.exists()) {
    await versionFile.copy(fs.file('flutter/version').path);
  }

  // copy sky_engine
  // this sky_engine is actually a dummy unusable library so many redundant files will be removed
  // only lib/ui and lib/ui_web are needed
  await copyPath(
    fs.directory(path.join(flutterPath, 'bin', 'cache', 'pkg', 'sky_engine')),
    fs.directory(path.join(fs.currentDirectory.path, 'sky_engine')),
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
Future<void> modifyFlutter(Directory flutterDir) async {
  // edit pubspec.yaml
  final file = flutterDir.childFile('pubspec.yaml');
  if (await file.exists()) {
    final pubspec = loadYaml(await file.readAsString()) as YamlMap;
    final mutablePubspec = _convertYamlMapToMutableMap(pubspec);
    mutablePubspec['dependencies'].remove('sky_engine');
    mutablePubspec['dependencies']['cooked_sky_engine'] = {'path': '../sky_engine'};
    await file.writeAsString(json2yaml(mutablePubspec, yamlStyle: YamlStyle.pubspecYaml));
  }

  // edit dart:ui and dart:ui_web imports
  final list = flutterDir
      .list(recursive: true)
      .where((e) => e is File && path.extension(e.path).toLowerCase() == '.dart');
  await for (final entity in list) {
    // Filter for files only and check if they are dart files
    final file = flutterDir.childFile(entity.path);
    final contents = await file.readAsString();
    final updatedContents = _replaceFlutterImport(entity.path, contents);
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
String _replaceFlutterImport(String filePath, String dartCode) {
  final paths = path.split(filePath);
  final category = paths[paths.indexOf('src') + 1];

  /// Both flutter/painting and dart:ui have the TextStyle class name,
  /// It may leads to ambiguous class name issue if we replace carelessly.
  /// Here, if the file is not in the painting directory,
  /// we replace 'dart:ui' and hide TextStyle if needed.
  /// Otherwise, we don't touch it to avoid breaking the code
  String makeStatement(
    String modified,
    String path,
    bool isDeferred,
    String? prefix,
    Set<String> shows,
    Set<String> hides,
  ) {
    var statement = '$modified \'$path\'';
    if (isDeferred) {
      statement += ' deferred';
    }
    if (prefix case var prefix?) {
      statement += ' as $prefix';
    }
    if (shows.isNotEmpty) {
      statement += ' show ${shows.join(', ')}';
    }
    if (hides.isNotEmpty) {
      statement += ' hide ${hides.join(', ')}';
    }
    statement += ';';
    return statement;
  }

  (Set<String> shows, Set<String> hides) extractCombinators(List<Combinator> combinators) {
    var shows = <String>{};
    var hides = <String>{};
    for (var e in combinators) {
      if (e is ShowCombinator) {
        shows.addAll(e.shownNames.map((e) => e.name));
      }
      if (e is HideCombinator) {
        hides.addAll(e.hiddenNames.map((e) => e.name));
      }
    }
    return (shows, hides);
  }

  var parsedUnit = parseString(content: dartCode).unit;

  // Instead of modifying lines, we'll make direct replacements in the full text
  // Store replacements as (offset, length, replacement text) tuples
  final replacements = <(int, int, String)>[];

  for (final directive in parsedUnit.directives) {
    // Get the full directive's text range
    final offset = directive.offset;
    final length = directive.length;

    if (directive is ImportDirective) {
      final (shows, hides) = extractCombinators(directive.combinators);

      if (directive.uri.stringValue! == 'dart:ui') {
        // Here comes the tricky part
        // We need to hide TextStyle if it is not in the shows list
        // and show TextStyle if it is in the shows list
        if (category != 'painting') {
          if (!shows.contains('TextStyle')) {
            hides.add('TextStyle');
          }
          if (!shows.contains('Canvas')) {
            hides.add('Canvas');
          }
        }

        final newDirective = makeStatement(
            'import',
            ['package:cooked_sky_engine', 'ui', 'ui.dart'].join('/'),
            directive.deferredKeyword != null,
            directive.prefix?.toString(),
            shows,
            hides);

        replacements.add((offset, length, newDirective));
      }
      if (directive.uri.stringValue! == 'dart:ui_web') {
        final newDirective = makeStatement(
            'import',
            ['package:cooked_sky_engine', 'ui_web', 'ui_web.dart'].join('/'),
            directive.deferredKeyword != null,
            directive.prefix?.toString(),
            shows,
            hides);

        replacements.add((offset, length, newDirective));
      }
    }
    if (directive is ExportDirective) {
      final (shows, hides) = extractCombinators(directive.combinators);

      if (directive.uri.stringValue! == 'dart:ui') {
        final newDirective = makeStatement(
          'export',
          ['package:cooked_sky_engine', 'ui', 'ui.dart'].join('/'),
          false,
          null,
          shows,
          hides,
        );

        replacements.add((offset, length, newDirective));
      }

      if (directive.uri.stringValue! == 'dart:ui_web') {
        final newDirective = makeStatement(
          'export',
          ['package:cooked_sky_engine', 'ui_web', 'ui_web.dart'].join('/'),
          false,
          null,
          shows,
          hides,
        );

        replacements.add((offset, length, newDirective));
      }
    }
  }

  // Apply replacements in reverse order to maintain correct offsets
  replacements.sort((a, b) => b.$1.compareTo(a.$1));

  // Make a mutable copy of the original code
  var result = dartCode;

  // Apply each replacement
  for (final (offset, length, replacement) in replacements) {
    result = result.substring(0, offset) + replacement + result.substring(offset + length);
  }

  return result;
}

/// Modifies the sky_engine package to create a dummy implementation.
///
/// Changes made:
/// 1. Renames package to cooked_sky_engine in pubspec.yaml
/// 2. Creates stub implementations of all APIs
/// 3. Preserves type definitions and interfaces
/// 4. Makes all method implementations throw UnimplementedError
Future<void> modifySkyEngine(Directory skyEngineDir) async {
  // edit pubspec.yaml
  final file = skyEngineDir.childFile('pubspec.yaml');
  final pubspec = loadYaml(await file.readAsString()) as YamlMap;
  final mutablePubspec = _convertYamlMapToMutableMap(pubspec);
  mutablePubspec['name'] = 'cooked_sky_engine';
  await file.writeAsString(json2yaml(mutablePubspec, yamlStyle: YamlStyle.pubspecYaml));

  // edit ui
  final list = skyEngineDir
      .list(recursive: true)
      .where((e) => e is File && path.extension(e.path).toLowerCase() == '.dart');

  await for (final entity in list) {
    // Filter for files only and check if they are dart files
    final file = skyEngineDir.childFile(entity.path);
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
      contents = DartFormatter(
        pageWidth: 160,
        languageVersion: DartFormatter.latestLanguageVersion,
      ).format(library.accept(emitter).toString());
    }

    await file.writeAsString(contents);
  }
}

Map<String, dynamic> _convertYamlMapToMutableMap(YamlMap yamlMap) {
  final mutableMap = Map<String, dynamic>.from(yamlMap);

  // Recursively convert nested YamlMaps to mutable Maps
  mutableMap.forEach((key, value) {
    if (value is YamlMap) {
      mutableMap[key] = _convertYamlMapToMutableMap(value);
    } else if (value is YamlList) {
      // Convert YamlLists to Lists
      mutableMap[key] = value.map((item) {
        if (item is YamlMap) {
          return _convertYamlMapToMutableMap(item);
        } else {
          return item;
        }
      }).toList();
    }
  });

  return mutableMap;
}
