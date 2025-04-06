import 'package:analyzer/dart/analysis/utilities.dart';
import 'package:prepare/src/visitor.dart';
import 'package:test/test.dart';

void main() {
  group('FileVisitor', () {
    test('Can parse simple class declarations', () {
      const simpleClass = '''
      class TestClass {
        final String name;
        TestClass(this.name);
        String sayHello() => 'Hello \$name';
      }
      ''';

      final parsedUnit = parseString(content: simpleClass).unit;
      final visitor = FileVisitor('');
      parsedUnit.accept(visitor);

      // Check class declarations
      expect(visitor.classes, hasLength(1));
      expect(visitor.classes[0].name, equals('TestClass'));
      expect(visitor.classes[0].fieldDeclarations, contains('final String name;'));
      expect(visitor.classes[0].constructors, hasLength(1));
      expect(visitor.classes[0].methods, hasLength(1));
    });

    test('Can parse enums', () {
      const enumCode = '''
      enum Color {
        red,
        green,
        blue
      }
      ''';

      final parsedUnit = parseString(content: enumCode).unit;
      final visitor = FileVisitor('');
      parsedUnit.accept(visitor);

      expect(visitor.enumDeclarations, hasLength(1));
      print(visitor.enumDeclarations[0]);
      expect(visitor.enumDeclarations[0], startsWith('enum Color'));
      expect(visitor.enumDeclarations[0], contains('red'));
      expect(visitor.enumDeclarations[0], contains('green'));
      expect(visitor.enumDeclarations[0], contains('blue'));
    });

    test('Can parse top-level functions', () {
      const code = '''
      void main() {
        print('Hello world');
      }
      
      String greet(String name) => 'Hello \$name';

      external int add(int a, int b);
      ''';

      final parsedUnit = parseString(content: code).unit;
      final visitor = FileVisitor('');
      parsedUnit.accept(visitor);

      expect(visitor.funcs, hasLength(3));

      // Check main function
      expect(visitor.funcs[0].declaration, startsWith('void main()'));

      // Check greet function
      expect(visitor.funcs[1].declaration, startsWith('String greet(String name)'));

      // Check add function
      expect(visitor.funcs[2].declaration, startsWith('external int add(int a, int b)'));
      expect(visitor.funcs[2].external, isTrue);
    });

    test('Can parse imports', () {
      const code = '''
      import 'dart:io';
      import 'package:path/path.dart' as path;
      import 'dart:ui';
      
      void main() {}
      ''';

      final parsedUnit = parseString(content: code).unit;
      final visitor = FileVisitor('');
      parsedUnit.accept(visitor);

      expect(visitor.imports, hasLength(3));

      // Check for expected imports
      final importUris = visitor.imports.map((i) => i.uri).toList();
      expect(importUris, contains('dart:io'));
      expect(importUris, contains('package:path/path.dart'));

      expect(importUris, contains('../ui/ui.dart'));

      // Check for alias
      final pathImport = visitor.imports.firstWhere((i) => i.uri == 'package:path/path.dart');
      expect(pathImport.alias, equals('path'));
    });

    test('Can handle multiple classes in single file', () {
      const code = '''
      class A {
        void methodA() {}
      }
      
      class B extends A {
        void methodB() {}
      }
      ''';

      final parsedUnit = parseString(content: code).unit;
      final visitor = FileVisitor('test.dart');
      parsedUnit.accept(visitor);

      expect(visitor.classes, hasLength(2));

      // Check class names
      expect(visitor.classes[0].name, equals('A'));
      expect(visitor.classes[1].name, equals('B'));

      // Check inheritance
      expect(visitor.classes[1].extendClause, contains('extends A'));
    });
  });
}
