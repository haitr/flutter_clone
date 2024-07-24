part of 'analyzer.dart';

// Visitor for analyzing a file and extracting declarations and directives
class FileVisitor extends CustomAstVisitor {
  final classes = <ClassDeclaration>[]; // List of class declarations
  final mixins = <MixinDeclaration>[]; // List of mixin declarations
  final parts = <String>[]; // List of part directives
  final aliases = <String>{}; // Set of generic type aliases
  final topLevelVariables = <PropertyDeclAnalyzer>[]; // List of top-level variables
  final topLevelFunctions = <LazyDeclAnalyzer>[]; // List of top-level variables
  final enums = <String>{}; // Set of enum declarations
  final privateClasses = <ClassDeclaration>[]; // List of private class declarations
  final privateMixins = <MixinDeclaration>[]; // List of private mixin declarations

  // Constructor with optional verbose flag
  FileVisitor({super.verbose = false});

  // Visits class declarations and categorizes them as private or public
  @override
  void visitClassDeclaration(ClassDeclaration node) {
    if (node.name.toString().startsWith('_')) {
      privateClasses.add(node); // Add to private classes if name starts with '_'
      return;
    }
    classes.add(node); // Add to public classes
  }

  // Visits mixin declarations and categorizes them as private or public
  @override
  void visitMixinDeclaration(MixinDeclaration node) {
    if (node.name.toString().startsWith('_')) {
      privateMixins.add(node); // Add to private mixins if name starts with '_'
      return;
    }
    mixins.add(node); // Add to public mixins
  }

  // Visits part directives and adds them to the parts list
  @override
  void visitPartDirective(PartDirective node) => parts.add(node.uri.stringValue!);

  // Visits generic type aliases and adds them to the aliases set
  @override
  void visitGenericTypeAlias(GenericTypeAlias node) => aliases.add(node.name.toString());

  // Visits top-level variable declarations and adds private variables to the list
  @override
  void visitTopLevelVariableDeclaration(TopLevelVariableDeclaration node) =>
      topLevelVariables.addAll(node.variables.variables
          .where((e) =>
              e.name.toString().startsWith('_')) // Only care about private top-level variables
          .map((e) => PropertyDeclAnalyzer.from(e, type: node.variables.type)));

  @override
  void visitFunctionDeclaration(FunctionDeclaration node) {
    if (node.name.toString().startsWith('_')) {
      topLevelFunctions.add(LazyDeclAnalyzer.fromNode(node));
    }
  }

  // Visits enum declarations and adds them to the enums set
  @override
  void visitEnumDeclaration(EnumDeclaration node) => enums.add(node.name.toString());
}

// Visitor for analyzing class declarations and extracting constructors, properties, and methods
class ClassDeclVisitor extends CustomAstVisitor {
  final ClassAnalyzer origin; // Originating class analyzer
  final constructorList = <ConstructorAnalyzer>[]; // List of constructors
  final properties = <ClassPropertyDeclAnalyzer>[]; // List of properties
  final methods = <MethodAnalyzer>[]; // List of methods

  // Constructor accepting an origin class analyzer and optional verbose flag
  ClassDeclVisitor(this.origin, {super.verbose = false});

  // Visits constructor declarations and adds them to the constructor list
  @override
  void visitConstructorDeclaration(ConstructorDeclaration node) =>
      constructorList.add(ConstructorAnalyzer.create(origin, node));

  // Visits field declarations and adds them to the properties list
  @override
  void visitFieldDeclaration(FieldDeclaration node) {
    for (var v in node.fields.variables) {
      properties.add(ClassPropertyDeclAnalyzer.from(
        v,
        isStatic: node.isStatic,
        type: node.fields.type,
      ));
    }
  }

  // Visits method declarations and adds static methods to the methods list
  @override
  void visitMethodDeclaration(MethodDeclaration node) {
    if (node.isStatic) methods.add(MethodAnalyzer.fromNode(node));
  }
}

// Visitor for analyzing parameterizable declarations and extracting parameters
class ParameterizableDeclVisitor extends CustomAstVisitor {
  final ParameterizableAnalyzer origin; // Originating parameterizable analyzer
  final list = <ParameterDeclAnalyzer>[]; // List of parameter analyzers

  // Constructor accepting an origin parameterizable analyzer and optional verbose flag
  ParameterizableDeclVisitor(this.origin, {super.verbose = false});

  // Visits simple formal parameters and adds them to the list
  @override
  void visitSimpleFormalParameter(SimpleFormalParameter node) {
    super.visitSimpleFormalParameter(node);
    final name = node.name.toString();
    String? rawDefaultValue;
    if (node.parent case DefaultFormalParameter parent) {
      if (parent.defaultValue case var def?) rawDefaultValue = def.toString();
    }
    list.add(ParameterDeclAnalyzer.create(
      origin,
      name,
      TypeAnalyzer.from(node.type),
      isNamed: node.isNamed,
      isRequired: node.isRequired,
      isExplicitlyTyped: node.isExplicitlyTyped,
      isExplicitlyTypeNullable: node.isExplicitlyTyped ? node.type?.question != null : null,
      rawDefaultValue: rawDefaultValue,
    ));
  }

  // Visits field formal parameters and adds them to the list
  @override
  void visitFieldFormalParameter(FieldFormalParameter node) {
    super.visitFieldFormalParameter(node);
    final name = node.name.toString();
    String? rawDefaultValue;
    if (node.parent case DefaultFormalParameter parent) {
      if (parent.defaultValue case var def?) rawDefaultValue = def.toString();
    }
    list.add(ParameterDeclAnalyzer.create(
      origin,
      name,
      TypeAnalyzer.from(node.type),
      isNamed: node.isNamed,
      toThis: true,
      isRequired: node.isRequired,
      isExplicitlyTyped: node.isExplicitlyTyped,
      isExplicitlyTypeNullable: node.isExplicitlyTyped ? node.type?.question != null : null,
      rawDefaultValue: rawDefaultValue,
    ));
  }

  // Visits super formal parameters and adds them to the list
  @override
  void visitSuperFormalParameter(SuperFormalParameter node) {
    super.visitSuperFormalParameter(node);
    final name = node.name.toString();
    String? rawDefaultValue;
    if (node.parent case DefaultFormalParameter parent) {
      if (parent.defaultValue case var def?) rawDefaultValue = def.toString();
    }
    list.add(ParameterDeclAnalyzer.create(
      origin,
      name,
      TypeAnalyzer.from(node.type),
      isNamed: node.isNamed,
      toSuper: true,
      isRequired: node.isRequired,
      isExplicitlyTyped: node.isExplicitlyTyped,
      isExplicitlyTypeNullable: node.isExplicitlyTyped ? node.type?.question != null : null,
      rawDefaultValue: rawDefaultValue,
    ));
  }
}

class TypeDeclVisitor extends CustomAstVisitor {
  TypeDeclVisitor({super.recursive = true, super.verbose = false});

  late TypeAnalyzer type;

  @override
  void visitRecordTypeAnnotation(RecordTypeAnnotation node) {
    super.visitRecordTypeAnnotation(node);
    // Analyze RecordTypeAnnotation to determine if it is nullable
    type = RecordTypeAnalyzer(
      nullable: node.question != null,
    );
  }

  @override
  void visitGenericFunctionType(GenericFunctionType node) {
    super.visitGenericFunctionType(node);
    // Analyze GenericFunctionType to determine if it is nullable, its return type, and its parameters
    type = FunctionTypeAnalyzer(
      nullable: node.question != null,
      returnType: TypeAnalyzer.from(node.returnType),
      parameters: node.parameters.parameters
          .cast<SimpleFormalParameter>()
          .map((e) => (e.name?.toString(), TypeAnalyzer.from(e.type)!))
          .toList(),
    );
  }

  @override
  void visitNamedType(NamedType node) {
    super.visitNamedType(node);
    // Determine the type name, considering if it has an alias (e.g., ui.TextHeightBehavior)
    final typeIndex = node.importPrefix != null ? 1 : 0;
    final name = node.childEntities.elementAt(typeIndex).toString();
    // Analyze NamedType to determine its name, nullability, and type arguments
    type = TypeAnalyzer(
      name: name,
      nullable: node.question != null,
      arguments: node.typeArguments?.arguments.fold([], (previousValue, element) {
        if (TypeAnalyzer.from(element) case var analyzer?) {
          return previousValue!..add(analyzer);
        }
        return previousValue;
      }),
    );
  }
}

class ExpressionVisitor extends CustomAstVisitor {
  late DefaultValue result;
  final ClassAnalyzer? parent;
  final TypeAnalyzer? potentialType;

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
      node.argumentList.arguments.forEach((argument) {
        final def = _parseExpression(argument, parent: parent);
        if (def is DefaultValueNamedArgument) {
          namedArgs.add(def);
        } else {
          positionalArgs.add(def);
        }
      });
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
      node.argumentList.arguments.forEach((argument) {
        final def = _parseExpression(argument, parent: parent);
        if (def is DefaultValueNamedArgument) {
          namedArgs.add(def);
        } else {
          positionalArgs.add(def);
        }
      });
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
      argumentTypes: (node.typeArguments?.arguments ?? <TypeAnnotation>[])
          .fold([], (previousValue, element) => previousValue..add(element.toString())),
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
      argumentTypes: (node.typeArguments?.arguments ?? <TypeAnnotation>[])
          .fold([], (previousValue, element) => previousValue..add(element.toString())),
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

class _UnsolvedTypeVisitor extends CustomAstVisitor {
  static const _globalIgnores = {'void', 'bool', 'double', 'int', 'String', 'Future'};
  static const _allowPrefixes = {'ui', 'math'};
  static const _allowMethods = {'clampDouble'};
  final Set<String> ignores;
  final occurrences = <Occurrence>[];
  final int paddingLeft;
  final int paddingRight;

  _UnsolvedTypeVisitor({
    required this.ignores,
    super.verbose = false,
    this.paddingLeft = 0,
    this.paddingRight = 0,
  });

  /// Adds an occurrence to the list if it meets the criteria
  void _add({
    required AstNode nodeInfo,
    required String name,
    required int length,
    String? alias,
  }) {
    if (!ignores.contains(name) &&
        !_globalIgnores.contains(name) &&
        (_allowMethods.contains(name) || _potentialIdentifier(name, alias: alias))) {
      final raw = nodeInfo.toString();
      final from = nodeInfo.offset - paddingLeft;
      if (occurrences.firstWhereOrNull((e) => e.offset == from) == null) {
        occurrences.add(Occurrence(
          raw: raw,
          name: name,
          offset: from,
          offsetEnd: from + length,
          alias: alias,
        ));
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
              nodeInfo: node, name: suffix, length: '$prefix.$suffix'.length, alias: prefix);
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

class _ParseTypeVisitor extends CustomAstVisitor {
  _ParseTypeVisitor({super.verbose = false});

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
          return previousValue!..add(analyzer);
        }
        return previousValue;
      }),
    );
  }
}
