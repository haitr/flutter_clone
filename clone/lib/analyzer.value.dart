part of 'analyzer.dart';

// Enum representing different collection types
enum CollectionType {
  @JsonValue('list')
  list,
  @JsonValue('set')
  set,
  @JsonValue('map')
  map;
}

// Enum representing different types of default values
enum DefaultValueType {
  @JsonValue('literal')
  literal,
  @JsonValue('identifier')
  identifier,
  @JsonValue('enumOrStatic')
  enumOrStatic,
  @JsonValue('creation')
  creation,
  @JsonValue('collection')
  collection,
  @JsonValue('expression')
  expression,
  @JsonValue('prefix')
  prefix,
  @JsonValue('argument')
  argument,
  @JsonValue('pair')
  pair,
}

// Base class representing a default value
class DefaultValue {
  final String raw;
  final DefaultValueType type;

  const DefaultValue(this.raw, {required this.type});

  @override
  bool operator ==(covariant DefaultValue other) => raw == other.raw && type == other.type;

  @override
  int get hashCode => Object.hash(raw, type);
}

// Class representing a literal default value
class DefaultValueLiteral extends DefaultValue {
  DefaultValueLiteral(super.raw) : super(type: DefaultValueType.literal);

  @override
  String toString() => 'value:literal($raw)';
}

// Class representing an identifier default value
class DefaultValueIdentifier extends DefaultValue {
  DefaultValueIdentifier(super.raw) : super(type: DefaultValueType.identifier);

  @override
  String toString() => 'value:identifier($raw)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is DefaultValueIdentifier && raw == other.raw;
  }

  @override
  int get hashCode => raw.hashCode;
}

// Class representing an enum or static instance default value
class DefaultValueEnumOrStaticInstance extends DefaultValue {
  final TypeAnalyzer from;
  final String identifier;

  DefaultValueEnumOrStaticInstance(
    super.raw, {
    required this.from,
    required this.identifier,
  }) : super(type: DefaultValueType.enumOrStatic);

  @override
  String toString() => 'value:enum||static($raw)';
}

// Class representing a creation default value
class DefaultValueCreation extends DefaultValue {
  final TypeAnalyzer from;
  final String? constructor;
  final List<DefaultValue> positionalArgs;
  final List<DefaultValueNamedArgument> namedArgs;

  DefaultValueCreation(
    super.raw, {
    required this.from,
    this.constructor,
    this.positionalArgs = const [],
    this.namedArgs = const [],
  }) : super(type: DefaultValueType.creation);

  @override
  String toString() => 'value:creation($raw)';
}

// Class representing a collection default value
class DefaultValueCollection extends DefaultValue {
  final CollectionType collectionType;
  final List<String> argumentTypes;
  final List<DefaultValue> values;

  DefaultValueCollection(
    super.raw, {
    required this.collectionType,
    this.argumentTypes = const [],
    this.values = const [],
  }) : super(type: DefaultValueType.collection);

  @override
  String toString() => 'value:collection($raw)';
}

// Class representing an expression default value
class DefaultValueExpression extends DefaultValue {
  final DefaultValue value1;
  final DefaultValue value2;
  final String operator;

  DefaultValueExpression(
    super.raw, {
    required this.value1,
    required this.value2,
    required this.operator,
  }) : super(type: DefaultValueType.expression);

  @override
  String toString() => 'value:expression($raw)';
}

// Class representing a prefix default value
class DefaultValuePrefix extends DefaultValue {
  final DefaultValue value;
  final String operator;

  DefaultValuePrefix(
    super.raw, {
    required this.value,
    required this.operator,
  }) : super(type: DefaultValueType.prefix);

  @override
  String toString() => 'value:prefix($raw)';
}

// Class representing a named argument default value
class DefaultValueNamedArgument extends DefaultValue {
  final String label;
  final DefaultValue value;

  DefaultValueNamedArgument(
    super.raw, {
    required this.label,
    required this.value,
  }) : super(type: DefaultValueType.argument);
}

// Class representing a pair default value
class DefaultValuePair extends DefaultValue {
  final DefaultValue key;
  final DefaultValue value;

  DefaultValuePair(
    super.raw, {
    required this.key,
    required this.value,
  }) : super(type: DefaultValueType.pair);
}

// Parses an expression into a DefaultValue
DefaultValue _parseExpression(AstNode expr, {ClassAnalyzer? parent}) {
  final visitor = ExpressionVisitor(parent);
  expr.accept(visitor);
  return visitor.result;
}
