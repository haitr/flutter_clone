import 'package:analyzer/dart/ast/ast.dart';
import 'package:collection/collection.dart';
import 'package:project_analyze/ast/analyzer.dart';
import 'package:project_analyze/ast/value.dart';

import 'custom_visitor.dart';

/// This file contains visitor classes used by the analyzer to extract information
/// from the Dart AST (Abstract Syntax Tree). These visitors traverse different
/// parts of the syntax tree to collect declarations, expressions, and type information.
///
/// The primary visitors include:
/// * [FileVisitor] - Analyzes entire files to extract declarations
/// * [ClassDeclVisitor] - Extracts information from class declarations
/// * [ParameterizableDeclVisitor] - Analyzes function parameters
/// * [TypeDeclVisitor] - Analyzes type declarations
/// * [ExpressionVisitor] - Processes expression nodes

// Visitor for analyzing a file and extracting declarations and directives
/// A visitor for analyzing a Dart file and extracting declarations and directives.
///
/// This visitor traverses an AST and collects information about classes, mixins,
/// parts, type aliases, top-level variables, top-level functions, and enums.
/// It distinguishes between public and private declarations.
class FileVisitor extends CustomAstVisitor {
  /// List of public class declarations found in the file
  final classes = <ClassDeclaration>[];

  /// List of public mixin declarations found in the file
  final mixins = <MixinDeclaration>[];

  /// List of part directive URIs referenced in the file
  final parts = <String>[];

  /// Set of generic type aliases declared in the file
  final aliases = <String>{};

  /// List of top-level variable declarations
  final topLevelVariables = <PropertyDeclAnalyzer>[];

  /// List of top-level function declarations
  final topLevelFunctions = <LazyDeclAnalyzer>[];

  /// Set of enum type names declared in the file
  final enums = <String>{};

  /// List of private class declarations found in the file
  final privateClasses = <ClassDeclaration>[];

  /// List of private mixin declarations found in the file
  final privateMixins = <MixinDeclaration>[];

  /// Creates a new [FileVisitor] instance.
  ///
  /// [verbose] - When true, enables verbose logging during AST traversal.
  FileVisitor({super.verbose = false});

  /// Processes a class declaration node, categorizing it as private or public.
  ///
  /// If the class name starts with an underscore, it's considered private
  /// and added to [privateClasses]. Otherwise, it's added to [classes].
  @override
  void visitClassDeclaration(ClassDeclaration node) {
    if (node.name.toString().startsWith('_')) {
      privateClasses.add(node);
      return;
    }
    classes.add(node);
  }

  /// Processes a mixin declaration node, categorizing it as private or public.
  ///
  /// If the mixin name starts with an underscore, it's considered private
  /// and added to [privateMixins]. Otherwise, it's added to [mixins].
  @override
  void visitMixinDeclaration(MixinDeclaration node) {
    if (node.name.toString().startsWith('_')) {
      privateMixins.add(node);
      return;
    }
    mixins.add(node);
  }

  /// Processes a part directive and adds its URI to the [parts] list.
  @override
  void visitPartDirective(PartDirective node) => parts.add(node.uri.stringValue!);

  /// Processes a generic type alias and adds its name to the [aliases] set.
  @override
  void visitGenericTypeAlias(GenericTypeAlias node) => aliases.add(node.name.toString());

  /// Processes top-level variable declarations and adds private ones to [topLevelVariables].
  ///
  /// Only variables whose names start with an underscore are collected.
  @override
  void visitTopLevelVariableDeclaration(TopLevelVariableDeclaration node) =>
      topLevelVariables.addAll(
        node.variables.variables
            .where((e) => e.name.toString().startsWith('_'))
            .map((e) => PropertyDeclAnalyzer.from(e, type: node.variables.type)),
      );

  /// Processes top-level function declarations and adds private ones to [topLevelFunctions].
  ///
  /// Only functions whose names start with an underscore are collected.
  @override
  void visitFunctionDeclaration(FunctionDeclaration node) {
    if (node.name.toString().startsWith('_')) {
      topLevelFunctions.add(LazyDeclAnalyzer.fromNode(node));
    }
  }

  /// Processes enum declarations and adds their names to the [enums] set.
  @override
  void visitEnumDeclaration(EnumDeclaration node) => enums.add(node.name.toString());
}

/// A visitor for analyzing class declarations and extracting their members.
///
/// This visitor collects information about constructors, properties, and methods
/// defined within a class declaration.
class ClassDeclVisitor extends CustomAstVisitor {
  /// The originating class analyzer that created this visitor
  final ClassAnalyzer origin;

  /// List of constructors found in the class
  final constructorList = <ConstructorAnalyzer>[];

  /// List of properties found in the class
  final properties = <ClassPropertyDeclAnalyzer>[];

  /// List of methods found in the class
  final methods = <MethodAnalyzer>[];

  /// Creates a new [ClassDeclVisitor] instance.
  ///
  /// [origin] - The class analyzer that created this visitor.
  /// [verbose] - When true, enables verbose logging during AST traversal.
  ClassDeclVisitor(this.origin, {super.verbose = false});

  /// Processes a constructor declaration and adds it to [constructorList].
  @override
  void visitConstructorDeclaration(ConstructorDeclaration node) =>
      constructorList.add(ConstructorAnalyzer.create(origin, node));

  /// Processes a field declaration and adds its variables to [properties].
  @override
  void visitFieldDeclaration(FieldDeclaration node) {
    for (var v in node.fields.variables) {
      properties.add(
        ClassPropertyDeclAnalyzer.from(v, isStatic: node.isStatic, type: node.fields.type),
      );
    }
  }

  /// Processes a method declaration and adds static methods to [methods].
  @override
  void visitMethodDeclaration(MethodDeclaration node) {
    if (node.isStatic) methods.add(MethodAnalyzer.fromNode(node));
  }
}

/// A visitor for analyzing parameterizable declarations and extracting parameters.
///
/// This visitor collects information about parameters in functions, methods, and constructors.
class ParameterizableDeclVisitor extends CustomAstVisitor {
  /// The originating parameterizable analyzer that created this visitor
  final ParameterizableAnalyzer origin;

  /// List of parameter analyzers collected during traversal
  final list = <ParameterDeclAnalyzer>[];

  /// Creates a new [ParameterizableDeclVisitor] instance.
  ///
  /// [origin] - The parameterizable analyzer that created this visitor.
  /// [verbose] - When true, enables verbose logging during AST traversal.
  ParameterizableDeclVisitor(this.origin, {super.verbose = false});

  /// Processes a simple formal parameter and adds it to the [list].
  @override
  void visitSimpleFormalParameter(SimpleFormalParameter node) {
    super.visitSimpleFormalParameter(node);
    final name = node.name.toString();
    String? rawDefaultValue;
    if (node.parent case DefaultFormalParameter parent) {
      if (parent.defaultValue case var def?) rawDefaultValue = def.toString();
    }
    list.add(
      ParameterDeclAnalyzer.create(
        origin,
        name,
        TypeAnalyzer.from(node.type),
        isNamed: node.isNamed,
        isRequired: node.isRequired,
        isExplicitlyTyped: node.isExplicitlyTyped,
        isExplicitlyTypeNullable: node.isExplicitlyTyped ? node.type?.question != null : null,
        rawDefaultValue: rawDefaultValue,
      ),
    );
  }

  /// Processes a field formal parameter and adds it to the [list].
  @override
  void visitFieldFormalParameter(FieldFormalParameter node) {
    super.visitFieldFormalParameter(node);
    final name = node.name.toString();
    String? rawDefaultValue;
    if (node.parent case DefaultFormalParameter parent) {
      if (parent.defaultValue case var def?) rawDefaultValue = def.toString();
    }
    list.add(
      ParameterDeclAnalyzer.create(
        origin,
        name,
        TypeAnalyzer.from(node.type),
        isNamed: node.isNamed,
        toThis: true,
        isRequired: node.isRequired,
        isExplicitlyTyped: node.isExplicitlyTyped,
        isExplicitlyTypeNullable: node.isExplicitlyTyped ? node.type?.question != null : null,
        rawDefaultValue: rawDefaultValue,
      ),
    );
  }

  /// Processes a super formal parameter and adds it to the [list].
  @override
  void visitSuperFormalParameter(SuperFormalParameter node) {
    super.visitSuperFormalParameter(node);
    final name = node.name.toString();
    String? rawDefaultValue;
    if (node.parent case DefaultFormalParameter parent) {
      if (parent.defaultValue case var def?) rawDefaultValue = def.toString();
    }
    list.add(
      ParameterDeclAnalyzer.create(
        origin,
        name,
        TypeAnalyzer.from(node.type),
        isNamed: node.isNamed,
        toSuper: true,
        isRequired: node.isRequired,
        isExplicitlyTyped: node.isExplicitlyTyped,
        isExplicitlyTypeNullable: node.isExplicitlyTyped ? node.type?.question != null : null,
        rawDefaultValue: rawDefaultValue,
      ),
    );
  }
}

/// A visitor for analyzing type declarations in the AST.
///
/// This visitor collects information about types, including record types,
/// function types, and named types.
class TypeDeclVisitor extends CustomAstVisitor {
  /// Creates a new [TypeDeclVisitor] instance.
  ///
  /// [recursive] - When true, enables recursive AST traversal.
  /// [verbose] - When true, enables verbose logging during AST traversal.
  TypeDeclVisitor({super.recursive = true, super.verbose = false});

  /// The type analyzer resulting from the traversal
  late TypeAnalyzer type;

  /// Processes a record type annotation and creates a [RecordTypeAnalyzer].
  @override
  void visitRecordTypeAnnotation(RecordTypeAnnotation node) {
    super.visitRecordTypeAnnotation(node);
    type = RecordTypeAnalyzer(nullable: node.question != null);
  }

  /// Processes a generic function type and creates a [FunctionTypeAnalyzer].
  @override
  void visitGenericFunctionType(GenericFunctionType node) {
    super.visitGenericFunctionType(node);
    type = FunctionTypeAnalyzer(
      nullable: node.question != null,
      returnType: TypeAnalyzer.from(node.returnType),
      parameters:
          node.parameters.parameters
              .cast<SimpleFormalParameter>()
              .map((e) => (e.name?.toString(), TypeAnalyzer.from(e.type)!))
              .toList(),
    );
  }

  /// Processes a named type and creates a [TypeAnalyzer].
  @override
  void visitNamedType(NamedType node) {
    super.visitNamedType(node);
    final typeIndex = node.importPrefix != null ? 1 : 0;
    final name = node.childEntities.elementAt(typeIndex).toString();
    type = TypeAnalyzer(
      name: name,
      nullable: node.question != null,
      arguments: node.typeArguments?.arguments.fold([], (previousValue, element) {
        if (TypeAnalyzer.from(element) case var analyzer?) {
          return previousValue?..add(analyzer);
        }
        return previousValue;
      }),
    );
  }
}

/// A visitor for analyzing expressions in the AST and extracting default values.
///
/// This visitor handles various types of expressions including identifiers,
/// creation expressions, method invocations, literals, and more.
class ExpressionVisitor extends CustomAstVisitor {
  /// The result of the expression analysis
  late DefaultValue result;

  /// The parent class analyzer, if any
  final ClassAnalyzer? parent;

  /// The potential type of the expression, if known
  final TypeAnalyzer? potentialType;

  /// Creates a new [ExpressionVisitor] instance.
  ///
  /// [parent] - The parent class analyzer, if any.
  /// [potentialType] - The potential type of the expression, if known.
  ExpressionVisitor(this.parent, {this.potentialType}) : super(recursive: false, verbose: false);

  /// Visits a simple identifier (e.g., top-level / current class' static instance)
  @override
  void visitSimpleIdentifier(SimpleIdentifier node) {
    super.visitSimpleIdentifier(node);
    final name = node.toString();
    if (parent?.property(name) != null || parent?.method(name) != null) {
      // Handles enum or static instance
      result = DefaultValueEnumOrStaticInstance(
        name,
        from: TypeAnalyzer.fromString(parent!.name),
        identifier: name,
      );
    } else {
      result = DefaultValueIdentifier(name); // Handles identifier
    }
  }

  /// Visits a prefixed identifier (e.g., Clip.none)
  @override
  void visitPrefixedIdentifier(PrefixedIdentifier node) {
    super.visitPrefixedIdentifier(node);
    result = DefaultValueEnumOrStaticInstance(
      node.toString(),
      from: TypeAnalyzer.fromString(node.prefix.toString()),
      identifier: node.identifier.toString(),
    );
  }

  /// Visits a property access (e.g., ui.Clip.none)
  @override
  void visitPropertyAccess(PropertyAccess node) {
    super.visitPropertyAccess(node);
    final target = node.realTarget.toString().split('.').last;
    result = DefaultValueEnumOrStaticInstance(
      node.toString(),
      from: TypeAnalyzer.fromString(target),
      identifier: node.propertyName.toString(),
    );
  }

  /// Visits an instance creation expression (e.g., constant instance creation)
  @override
  void visitInstanceCreationExpression(InstanceCreationExpression node) {
    super.visitInstanceCreationExpression(node);
    final type = node.constructorName.type;
    var constructor = node.constructorName.name?.toString();
    var typeName = type.toString();
    TypeAnalyzer.fromString(typeName);

    // Work-around for analyzer returning null constructor but type name is like EdgeInsets.all
    if (typeName.contains('.')) {
      final components = typeName.split('.');
      typeName = components[0];
      constructor = components[1];
    }

    final positionalArgs = <DefaultValue>[];
    final namedArgs = <DefaultValueNamedArgument>[];
    if (node.argumentList.arguments.isNotEmpty) {
      for (var argument in node.argumentList.arguments) {
        final def = _parseExpression(argument, parent: parent);
        if (def is DefaultValueNamedArgument) {
          namedArgs.add(def);
        } else {
          positionalArgs.add(def);
        }
      }
    }

    result = DefaultValueCreation(
      node.toString(),
      from: TypeAnalyzer.fromString(typeName),
      constructor: constructor,
      positionalArgs: positionalArgs,
      namedArgs: namedArgs,
    );
  }

  /// Visits a method invocation (e.g., Rect.fromLTWH(...) or Rect(...))
  @override
  void visitMethodInvocation(MethodInvocation node) {
    super.visitMethodInvocation(node);
    String typeName;
    String? constructor;
    if (node.realTarget != null) {
      typeName = node.realTarget.toString();
      constructor = node.methodName.toString();
    } else {
      typeName = node.methodName.toString();
    }

    final positionalArgs = <DefaultValue>[];
    final namedArgs = <DefaultValueNamedArgument>[];
    if (node.argumentList.arguments.isNotEmpty) {
      for (var argument in node.argumentList.arguments) {
        final def = _parseExpression(argument, parent: parent);
        if (def is DefaultValueNamedArgument) {
          namedArgs.add(def);
        } else {
          positionalArgs.add(def);
        }
      }
    }

    result = DefaultValueCreation(
      node.toString(),
      from: TypeAnalyzer.fromString(typeName),
      constructor: constructor,
      positionalArgs: positionalArgs,
      namedArgs: namedArgs,
    );
  }

  /// Visits a list literal (e.g., default list)
  @override
  void visitListLiteral(ListLiteral node) {
    super.visitListLiteral(node);
    result = DefaultValueCollection(
      node.toString(),
      argumentTypes: (node.typeArguments?.arguments ?? <TypeAnnotation>[]).fold(
        [],
        (previousValue, element) => previousValue..add(element.toString()),
      ),
      values: node.elements.fold(
        [],
        (previousValue, element) => previousValue..add(_parseExpression(element, parent: parent)),
      ),
      collectionType: CollectionType.list,
    );
  }

  /// Visits a set or map literal (e.g., default set or map)
  @override
  void visitSetOrMapLiteral(SetOrMapLiteral node) {
    super.visitSetOrMapLiteral(node);

    // Determines the collection type (Map, List, or Set)
    final type = switch (potentialType?.name) {
      'Map' => CollectionType.map,
      'List' => CollectionType.list,
      'Set' => CollectionType.set,
      null when node.isMap => CollectionType.map,
      null when node.isSet => CollectionType.set,
      _ => throw UnimplementedError(),
    };
    result = DefaultValueCollection(
      node.toString(),
      argumentTypes: (node.typeArguments?.arguments ?? <TypeAnnotation>[]).fold(
        [],
        (previousValue, element) => previousValue..add(element.toString()),
      ),
      values: node.elements.fold(
        [],
        (previousValue, element) => previousValue..add(_parseExpression(element, parent: parent)),
      ),
      collectionType: type,
    );
  }

  // Utility methods

  /// Visits adjacent strings and concatenates them
  @override
  void visitAdjacentStrings(AdjacentStrings node) {
    super.visitAdjacentStrings(node);
    result = DefaultValueLiteral(node.strings.join());
  }

  /// Visits a map literal entry
  @override
  void visitMapLiteralEntry(MapLiteralEntry node) {
    super.visitMapLiteralEntry(node);
    result = DefaultValuePair(
      node.toString(),
      key: _parseExpression(node.key, parent: parent),
      value: _parseExpression(node.value, parent: parent),
    );
  }

  /// Visits a parenthesized expression
  @override
  void visitParenthesizedExpression(ParenthesizedExpression node) {
    super.visitParenthesizedExpression(node);
    node.visitChildren(this);
  }

  /// Visits a binary expression
  @override
  void visitBinaryExpression(BinaryExpression node) {
    super.visitBinaryExpression(node);
    final value1 = _parseExpression(node.leftOperand, parent: parent);
    final value2 = _parseExpression(node.rightOperand, parent: parent);
    result = DefaultValueExpression(
      node.toString(),
      value1: value1,
      value2: value2,
      operator: node.operator.toString(),
    );
  }

  /// Visits a prefix expression
  @override
  void visitPrefixExpression(PrefixExpression node) {
    super.visitPrefixExpression(node);
    result = DefaultValuePrefix(
      node.toString(),
      value: _parseExpression(node.operand, parent: parent),
      operator: node.operator.toString(),
    );
  }

  /// Visits a named expression
  @override
  void visitNamedExpression(NamedExpression node) {
    super.visitNamedExpression(node);
    result = DefaultValueNamedArgument(
      node.toString(),
      label: node.name.label.toString(),
      value: _parseExpression(node.expression, parent: parent),
    );
  }

  /// Visits a simple string literal
  @override
  void visitSimpleStringLiteral(SimpleStringLiteral node) {
    super.visitSimpleStringLiteral(node);
    result = DefaultValueLiteral(node.toString());
  }

  /// Visits a boolean literal
  @override
  void visitBooleanLiteral(BooleanLiteral node) {
    super.visitBooleanLiteral(node);
    result = DefaultValueLiteral(node.toString());
  }

  /// Visits an integer literal
  @override
  void visitIntegerLiteral(IntegerLiteral node) {
    super.visitIntegerLiteral(node);
    result = DefaultValueLiteral(node.toString());
  }

  /// Visits a double literal
  @override
  void visitDoubleLiteral(DoubleLiteral node) {
    super.visitDoubleLiteral(node);
    result = DefaultValueLiteral(node.toString());
  }

  /// Visits a null literal
  @override
  void visitNullLiteral(NullLiteral node) {
    super.visitNullLiteral(node);
    result = DefaultValueIdentifier(node.toString());
  }
}

class Occurrence {
  final String name; // The name of the occurrence
  final int offset; // The starting position of the occurrence in the source code
  final int offsetEnd; // The ending position of the occurrence in the source code
  final String raw; // The raw representation of the occurrence
  final String? alias; // Optional alias if the occurrence is prefixed (e.g., ui.Gradient)
  final String? debug; // Optional debug information

  Occurrence({
    required this.name,
    required this.offset,
    required this.offsetEnd,
    required this.raw,
    this.alias,
    this.debug,
  });

  @override
  String toString() => 'occur($name, $offset -> $offsetEnd, raw: $raw)';
}

class UnsolvedTypeVisitor extends CustomAstVisitor {
  static const _globalIgnores = {'void', 'bool', 'double', 'int', 'String', 'Future'};
  static const _allowPrefixes = {'ui', 'math'};
  static const _allowMethods = {'clampDouble'};
  final Set<String> ignores;
  final occurrences = <Occurrence>[];
  final int paddingLeft;
  final int paddingRight;

  UnsolvedTypeVisitor({
    required this.ignores,
    super.verbose = false,
    this.paddingLeft = 0,
    this.paddingRight = 0,
  });

  /// Adds an occurrence to the list if it meets the criteria
  void _add({required AstNode nodeInfo, required String name, required int length, String? alias}) {
    if (!ignores.contains(name) &&
        !_globalIgnores.contains(name) &&
        (_allowMethods.contains(name) || _potentialIdentifier(name, alias: alias))) {
      final raw = nodeInfo.toString();
      final from = nodeInfo.offset - paddingLeft;
      if (occurrences.firstWhereOrNull((e) => e.offset == from) == null) {
        occurrences.add(
          Occurrence(raw: raw, name: name, offset: from, offsetEnd: from + length, alias: alias),
        );
      }
    }
  }

  /// Checks if the first character of the string is capitalized
  bool _isFirstCharCapitalized(String str) {
    if (str.isEmpty) return false;
    return str[0] == str[0].toUpperCase();
  }

  /// Determines if a string is a potential identifier based on naming conventions
  bool _potentialIdentifier(String str, {String? alias}) {
    return alias != null || str.startsWith('_') || _isFirstCharCapitalized(str);
  }

  /// Splits a string by dots, accounting for nested generics
  List<String> _split(String str) {
    final result = <String>[];
    final chars = str.split('');
    var buffer = '';
    var indent = 0;
    for (var i = 0; i < chars.length; i++) {
      switch (chars[i]) {
        case '.' when indent == 0:
          result.add(buffer);
          buffer = '';
          break;
        case '<':
          indent++;
          break;
        case '>':
          indent--;
          break;
        default:
          buffer += chars[i];
      }
    }
    result.add(buffer);
    return result;
  }

  @override
  void visitNamedType(NamedType node) {
    super.visitNamedType(node);

    var raw = node.toString();
    // Remove nullable operator if present
    if (raw.endsWith('?')) raw = raw.substring(0, raw.length - 1);

    /// Handles prefixed types, e.g., ui.Gradient or BorderRadius.all
    final split = _split(raw);
    if (split case [var prefix, var suffix]) {
      if (_allowPrefixes.contains(prefix)) {
        // Prefix is allowed (e.g., ui.Gradient)
        return _add(nodeInfo: node, name: suffix, length: '$prefix.$suffix'.length, alias: prefix);
      } else {
        // No prefix, regular type (e.g., BorderRadius.all)
        return _add(nodeInfo: node, name: prefix, length: prefix.length);
      }
    }

    var typeName = node.name2.toString();
    if (typeName.endsWith('?')) typeName = typeName.substring(0, typeName.length - 1);
    _add(nodeInfo: node, name: node.name2.toString(), length: typeName.length);
  }

  @override
  void visitMethodInvocation(MethodInvocation node) {
    super.visitMethodInvocation(node);

    /// Handles constructor calls and method calls
    if (node.realTarget?.toString() case var target? when _potentialIdentifier(target)) {
      final ids = _split(target);
      if (ids case [final prefix, final suffix, ...]) {
        if (_allowPrefixes.contains(prefix)) {
          // Prefix is allowed (e.g., ui.Rect.from)
          return _add(
            nodeInfo: node,
            name: suffix,
            length: '$prefix.$suffix'.length,
            alias: prefix,
          );
        } else {
          // No prefix, regular method (e.g., BorderRadius.all)
          return _add(nodeInfo: node, name: prefix, length: prefix.length);
        }
      } else {
        return _add(nodeInfo: node, name: ids[0], length: ids[0].length);
      }
    }

    final name = node.methodName.toString();
    return _add(nodeInfo: node, name: name, length: name.length);
  }

  @override
  void visitPrefixedIdentifier(PrefixedIdentifier node) {
    /// Handles static calls and alias imports
    final [prefix, suffix, ...] = _split(node.toString());
    if (_allowPrefixes.contains(prefix)) {
      // Prefix is allowed (e.g., ui.Gradient)
      return _add(nodeInfo: node, name: suffix, length: '$prefix.$suffix'.length, alias: prefix);
    } else {
      // No prefix, regular static call (e.g., BorderRadius.all)
      return _add(nodeInfo: node, name: prefix, length: prefix.length);
    }
  }

  @override
  void visitSimpleIdentifier(SimpleIdentifier node) {
    super.visitSimpleIdentifier(node);
    final name = '$node';
    return _add(nodeInfo: node, name: name, length: name.length);
  }
}

class ParseTypeVisitor extends CustomAstVisitor {
  ParseTypeVisitor({super.verbose = false});

  late TypeAnalyzer type;

  @override
  void visitMethodInvocation(MethodInvocation node) {
    super.visitMethodInvocation(node);
    // Create a TypeAnalyzer instance for the method invocation
    type = TypeAnalyzer(
      name: node.methodName.toString(),
      arguments: node.typeArguments?.arguments.fold([], (previousValue, element) {
        // Convert each type argument to a TypeAnalyzer instance if possible
        if (TypeAnalyzer.from(element) case var analyzer?) {
          return previousValue?..add(analyzer);
        }
        return previousValue;
      }),
    );
  }
}

// Parses an expression into a DefaultValue
DefaultValue _parseExpression(AstNode expr, {ClassAnalyzer? parent}) {
  final visitor = ExpressionVisitor(parent);
  expr.accept(visitor);
  return visitor.result;
}
