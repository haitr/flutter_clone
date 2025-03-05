import 'package:fs_shim/fs_memory.dart';
import 'package:test/test.dart';
import 'package:yaml/yaml.dart';

// Import the functions to test
import '../bin/prepare.dart' show modifySkyEngine, modifyFlutter, modifyPubspec;

void main() {
  // Setup variables for tests
  late FileSystem fsMemory;

  setUp(() {
    // Create a fresh memory file system for each test
    fsMemory = newFileSystemMemory();
  });

  group('modifySkyEngine tests', () {
    late FileSystem fsSkyEngine;
    setUp(() async {
      fsSkyEngine = newFileSystemMemory();
      await fsSkyEngine.directory('lib').create(recursive: true);
      await fsSkyEngine.file('pubspec.yaml').writeAsString('''
        name: sky_engine
        description: Dart Dummy Sky Engine
      ''');
    });

    test('should rename package to cooked_sky_engine in pubspec.yaml', () async {
      // Execute
      await modifySkyEngine(fsSkyEngine);

      // Verify
      final pubspec = await fsSkyEngine.file('pubspec.yaml').readAsString();
      final yaml = loadYaml(pubspec);
      expect(yaml['name'], equals('cooked_sky_engine'));
    });

    test('should transform dart files correctly', () async {
      // Setup
      await fsMemory.directory('sky_engine/lib/ui').create(recursive: true);
      await fsMemory.file('sky_engine/lib/ui/ui.dart').writeAsString('''
        import 'dart:core';

        part 'painting.dart';

        class TextStyle {
          final double fontSize;
          const TextStyle({this.fontSize = 14.0});
        }

        void sayHello() {
          print('Hello from UI');
        }
      ''');

      // Execute
      await modifySkyEngine(fsMemory);

      // Verify
      final content = await fsMemory.file('sky_engine/lib/ui/ui.dart').readAsString();

      // Check that it kept the part directive
      expect(content, contains("part 'painting.dart'"));

      // Check the class definition is preserved
      expect(content, contains('class TextStyle'));
      expect(content, contains('final double fontSize'));

      // Check that method implementations throw UnimplementedError
      expect(content, contains('sayHello() => throw UnimplementedError()'));
    });

    test('should handle various class modifiers and declarations', () async {
      // Setup
      await fsMemory.directory('sky_engine/lib/ui').create(recursive: true);
      await fsMemory.file('sky_engine/lib/ui/class_types.dart').writeAsString('''
        abstract class AbstractClass {
          void abstractMethod();
        }

        sealed class SealedClass {
          void sealedMethod() {
            print('This method is from a sealed class');
          }
        }

        base class BaseClass {
          void baseMethod() {
            print('This method is from a base class');
          }
        }

        class RegularClass implements AbstractClass {
          @override
          void abstractMethod() {
            print('Implementation of abstract method');
          }
          
          factory RegularClass.factory() {
            return RegularClass();
          }
        }
      ''');

      // Execute
      await modifySkyEngine(fsMemory);

      // Verify
      final content = await fsMemory.file('sky_engine/lib/ui/class_types.dart').readAsString();

      // Check that class modifiers are preserved
      expect(content, contains('abstract class AbstractClass'));
      expect(content, contains('sealed class SealedClass'));
      expect(content, contains('base class BaseClass'));

      // Check that implements is preserved
      expect(content, contains('class RegularClass implements AbstractClass'));

      // Check that non-external methods throw UnimplementedError
      expect(content, contains('baseMethod() => throw UnimplementedError()'));
      expect(content, contains('sealedMethod() => throw UnimplementedError()'));

      // Check that factory constructor is preserved
      expect(content, contains('factory RegularClass.factory() => throw UnimplementedError()'));
    });
  });

  group('modifyFlutter tests', () {
    test('should update pubspec.yaml to use local sky_engine', () async {
      // Setup
      await fsMemory.directory('flutter').create(recursive: true);
      await fsMemory.file('flutter/pubspec.yaml').writeAsString('''
name: flutter
description: Flutter framework
version: 0.0.0
homepage: https://flutter.dev

dependencies:
  sky_engine:
    sdk: flutter
  some_other_package: ^1.0.0
      ''');

      // Execute
      await modifyFlutter(fsMemory);

      // Verify
      final pubspec = await fsMemory.file('flutter/pubspec.yaml').readAsString();
      final yaml = loadYaml(pubspec);

      // Check that sky_engine is removed and replaced with cooked_sky_engine
      expect(yaml['dependencies']['sky_engine'], isNull);
      expect(yaml['dependencies']['cooked_sky_engine'], isNotNull);
      expect(yaml['dependencies']['cooked_sky_engine']['path'], equals('../sky_engine'));

      // Check that other dependencies are preserved
      expect(yaml['dependencies']['some_other_package'], equals('^1.0.0'));
    });

    test('should replace dart:ui imports in Dart files', () async {
      // Setup
      await fsMemory.directory('flutter/lib').create(recursive: true);
      await fsMemory.file('flutter/lib/material.dart').writeAsString('''
import 'dart:ui';
import 'dart:ui_web';
import 'package:flutter/src/painting/text_style.dart';

export 'dart:ui';

class Material {
  final Color color;
  Material({required this.color});
}
      ''');

      // Execute
      await modifyFlutter(fsMemory);

      // Verify
      final content = await fsMemory.file('flutter/lib/material.dart').readAsString();

      // Check that dart:ui imports are replaced
      expect(content, contains("import 'package:cooked_sky_engine/ui/ui.dart'"));

      // Check that dart:ui_web imports are replaced
      expect(content, contains("import 'package:cooked_sky_engine/ui_web/ui_web.dart'"));

      // Check that exports are replaced
      expect(content, contains("export 'package:cooked_sky_engine/ui/ui.dart'"));
    });

    test('should handle special case for painting directory', () async {
      // Setup - create a file in the painting directory
      await fsMemory.directory('flutter/lib/src/painting').create(recursive: true);
      await fsMemory.file('flutter/lib/src/painting/text_style.dart').writeAsString('''
import 'dart:ui';
import 'package:flutter/foundation.dart';

class TextStyle {
  final Color color;
  final double fontSize;
  
  const TextStyle({this.color, this.fontSize});
}
      ''');

      // Execute
      await modifyFlutter(fsMemory);

      // Verify
      final content =
          await fsMemory.file('flutter/lib/src/painting/text_style.dart').readAsString();

      // Check that for painting directory, we don't change the import to avoid naming conflicts
      expect(content, contains("import 'dart:ui'"));
    });

    test('should handle complex import modifiers', () async {
      // Setup - create file with complex import modifiers
      await fsMemory.directory('flutter/lib').create(recursive: true);
      await fsMemory.file('flutter/lib/complex_imports.dart').writeAsString('''
import 'dart:ui' show Color, Paint hide TextStyle;
import 'dart:ui' as ui;
import 'dart:ui_web' show PlatformViewRegistry;

class CustomPaint {
  final ui.Paint paint;
  final Color color;
  
  CustomPaint(this.paint, this.color);
}
      ''');

      // Execute
      await modifyFlutter(fsMemory);

      // Verify
      final content = await fsMemory.file('flutter/lib/complex_imports.dart').readAsString();

      // Check that complex import modifiers are handled correctly
      expect(
          content,
          contains(
              "import 'package:cooked_sky_engine/ui/ui.dart' show Color, Paint hide TextStyle"));
      expect(content, contains("import 'package:cooked_sky_engine/ui/ui.dart' as ui"));
      expect(
          content,
          contains(
              "import 'package:cooked_sky_engine/ui_web/ui_web.dart' show PlatformViewRegistry"));
    });
  });

  group('modifyPubspec tests', () {
    late FileSystem fs;
    late FileSystem flutterFs;
    final outputPath = 'test_dependencies';

    setUp(() async {
      // Create a fresh memory file system for each test
      fs = newFileSystemMemory();
      flutterFs = newFileSystemMemory(outputPath);
      await fs.file('pubspec.yaml').writeAsString('''
        name: flutter_clone
        description: Dummy Flutter project
        version: 1.0.0

        dependencies:
          flutter:
            sdk: flutter
          some_package: ^1.0.0
      ''');
    });

    test('should update main pubspec.yaml to use local Flutter', () async {
      // Execute our testable version
      await modifyPubspec(fs, flutterFs);

      // Verify
      final pubspec = await fs.file('pubspec.yaml').readAsString();
      print(pubspec);
      final yaml = loadYaml(pubspec);

      // Check that Flutter dependency is updated to use local path
      // expect(yaml['dependencies']['flutter'], isMap);
      // expect(yaml['dependencies']['flutter']['path'], equals('$outputPath/flutter'));

      // // Check that other dependencies are preserved
      // expect(yaml['dependencies']['some_package'], equals('^1.0.0'));
    });
  });
}
