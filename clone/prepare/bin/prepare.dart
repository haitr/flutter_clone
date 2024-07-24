// ignore_for_file: depend_on_referenced_packages

import 'dart:io';

import 'package:analyzer/dart/analysis/utilities.dart';
import 'package:args/args.dart';
import 'package:code_builder/code_builder.dart';
import 'package:dart_style/dart_style.dart';
import 'package:path/path.dart' as path;
import 'package:yaml/yaml.dart';
import 'package:yaml_edit/yaml_edit.dart';

import 'visitor.dart';

final parser = ArgParser()
  ..addFlag('verbose', abbr: 'v', help: 'Enable verbose output', negatable: false)
  ..addOption('output', abbr: 'o', help: 'Output directory', defaultsTo: './dependencies')
  ..addFlag('help', abbr: 'h', help: 'Help command', negatable: false);

late ArgResults cmds;

String get output => cmds.option('output')!;
bool get help => cmds['help']!;

void main(List<String> args) async {
  // Parse arguments
  cmds = parser.parse(args);

  if (help) {
    print(parser.usage);
    return;
  }

  // get absolute path of Fluter
  try {
    await _copyDeps(await _getFlutterDirectoryPath());
    _modifySkyEngine();
    _modifyFlutter();
    _modifyPubspec();
  } catch (e) {
    print(e.toString());
  } finally {
    print('Prepared.');
  }
}

/// As the function name
Future<String> _getFlutterDirectoryPath() async {
  var whereCmd = 'which';
  if (Platform.isWindows) {
    whereCmd = 'where.exe';
  }
  var processResult = await Process.run(whereCmd, ['flutter']);
  var flutterBinPath = processResult.stdout.toString().trim();
  final link = Link(flutterBinPath);
  if (link.existsSync()) {
    flutterBinPath = link.resolveSymbolicLinksSync();
  }
  final flutterPath = path.canonicalize(path.join(path.dirname(flutterBinPath), '..'));
  return flutterPath;
}

/// Generate flutter and sky_engine into output directory
Future<void> _copyDeps(String flutterBinPath) async {
  // remove old files
  if (Directory(output) case final dir when dir.existsSync()) {
    dir.deleteSync(recursive: true);
  }
  Directory(output).createSync();
  // copy flutter
  await _copyPath(
    path.join(flutterBinPath, 'packages', 'flutter'),
    path.join(output, 'flutter'),
  );
  Directory(path.join(output, 'flutter')).listSync().forEach((entity) {
    final baseName = path.basename(entity.path);
    if (entity is Directory) {
      if (baseName != 'lib') entity.deleteSync(recursive: true);
    }
    if (entity is File) {
      if (baseName != 'pubspec.yaml' && baseName != 'analysis_options.yaml') {
        entity.deleteSync(recursive: true);
      }
    }
  });

  // make version file
  if (File(path.join(flutterBinPath, 'version')) case var versionFile
      when versionFile.existsSync()) {
    versionFile.copy(path.join(output, 'flutter', 'version'));
  }

  // copy sky_engine
  // this sky_engine is actually a dummy unusable library so many redundant files will be removed
  // only lib/ui and lib/ui_web are needed
  await _copyPath(
    path.join(flutterBinPath, 'bin', 'cache', 'pkg', 'sky_engine'),
    path.join(output, 'sky_engine'),
  );
  Directory(path.join(output, 'sky_engine')).listSync().forEach((entity) {
    if (entity is Directory) {
      if (path.basename(entity.path) == 'lib') {
        entity.listSync().forEach((entity) {
          final dirName = path.basename(entity.path);
          if (dirName == 'ui') {
            return;
          }
          if (dirName == 'ui_web') {
            (entity as Directory).listSync(recursive: true).forEach((entity) {
              if (entity is Directory) return;
              if (!['images', 'platform_view_registry', 'testing', 'browser_detection', 'ui_web']
                  .contains(path.basenameWithoutExtension(entity.path))) {
                entity.deleteSync(recursive: false);
              }
            });
            return;
          }
          entity.deleteSync(recursive: true);
        });
      } else {
        entity.deleteSync(recursive: true);
      }
    } else {
      if (path.basename(entity.path) != 'pubspec.yaml') entity.deleteSync(recursive: true);
    }
  });
}

///
Future<void> _modifyFlutter() async {
  final outputPath = path.join(output, 'flutter');
  // edit pubspec.yaml
  final file = File(path.join(outputPath, 'pubspec.yaml'));
  final yamlEditor = YamlEditor(await file.readAsString());
  yamlEditor.remove(['dependencies', 'sky_engine']);
  yamlEditor.update([
    'dependencies'
  ], {
    ...(yamlEditor.parseAt(['dependencies']) as YamlMap).nodes,
    'cooked_sky_engine': {'path': '../sky_engine'}
  });
  await file.writeAsString(yamlEditor.toString());

  // edit dart:ui and dart:ui_web imports
  final directory = Directory(path.join(outputPath, 'lib'));
  for (final entity in directory.listSync(recursive: true).whereType<File>()) {
    if (path.extension(entity.path).toLowerCase() == '.dart') {
      final file = File(entity.path);
      final contents = await file.readAsString();
      final updatedContents = _replaceFlutterImport(entity.path, contents)
          .replaceFirst(
            'export \'dart:ui\'',
            'export \'${['package:cooked_sky_engine', 'ui', 'ui.dart'].join('/')}\'',
          )
          .replaceFirst(
            'import \'dart:ui_web\'',
            'import \'${['package:cooked_sky_engine', 'ui_web', 'ui_web.dart'].join('/')}\'',
          )
          .replaceFirst(
            'export \'dart:ui_web\'',
            'export \'${['package:cooked_sky_engine', 'ui_web', 'ui_web.dart'].join('/')}\'',
          );
      if (updatedContents != contents) {
        await file.writeAsString(updatedContents);
      }
    }
  }
}

/// Redirect all 'dart:ui' import statements to the modified sky_engine, so-called 'cooked_sky_engine'
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

Future<void> _modifySkyEngine() async {
  final outputPath = path.join(output, 'sky_engine');
  // edit pubspec.yaml
  final file = File(path.join(outputPath, 'pubspec.yaml'));
  final yamlEditor = YamlEditor(await file.readAsString());
  yamlEditor.update(['name'], 'cooked_sky_engine');
  await file.writeAsString(yamlEditor.toString());
  // edit ui
  final dir = Directory(path.join(outputPath, 'lib'));
  for (final entity in dir.listSync(recursive: true).whereType<File>()) {
    if (path.extension(entity.path).toLowerCase() == '.dart') {
      final file = File(entity.path);
      var contents = await file.readAsString();
      // final skip = entity.path.endsWith('hooks.dart');
      final skip = false;
      if (!skip) {
        final parsedUnit = parseString(content: contents).unit;
        final visitor = Visitor(entity.path, verbose: false);
        parsedUnit.accept(visitor);

        final emitter = DartEmitter(orderDirectives: true, useNullSafetySyntax: true);
        final library = Library((builder) {
          // Directives
          builder.directives.addAll(visitor.partOfs.map((e) => switch (e) {
                'dart.ui' => Directive.partOf('ui.dart'),
                'dart.ui_web' => Directive.partOf('../ui_web.dart'),
                _ => throw 'Invalid import url!',
              }));
          builder.directives
              .addAll(visitor.imports.map((e) => Directive.import(e.uri, as: e.alias)));
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
          builder.body.addAll(visitor.enums.map((e) => Code(e)));
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
                code.write(constructor.declaration);
                if (constructor.initializer.isNotEmpty) {
                  code.write(' : ');
                  code.write(constructor.initializer.join(','));
                }
                if (constructor.factory) code.write(' => throw UnimplementedError()');
                code.write(';');
                return code.toString();
              }),
              ...clazz.fields,
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

      file.writeAsStringSync(contents);
    }
  }
}

Future<void> _copyPath(String from, String to) async {
  await Directory(to).create(recursive: true);
  await for (final file in Directory(from).list(recursive: true)) {
    final copyTo = path.join(to, path.relative(file.path, from: from));
    if (file is Directory) {
      await Directory(copyTo).create(recursive: true);
    } else if (file is File) {
      await File(file.path).copy(copyTo);
    } else if (file is Link) {
      await Link(copyTo).create(await file.target(), recursive: true);
    }
  }
}

///
Future<void> _modifyPubspec() async {
  // print(path.current);
  // edit pubspec.yaml
  final file = File('pubspec.yaml');
  final yamlEditor = YamlEditor(await file.readAsString());
  final currentDeps = (yamlEditor.parseAt(['dependencies']) as YamlMap).nodes;
  yamlEditor.update([
    'dependencies'
  ], {
    'flutter': {'path': '$output/flutter'},
    ...Map.from(currentDeps)..remove('flutter'),
  });
  await file.writeAsString(yamlEditor.toString());
}
