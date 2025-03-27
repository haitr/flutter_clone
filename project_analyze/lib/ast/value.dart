import 'package:json_annotation/json_annotation.dart';

import 'analyzer.dart';

/// Enum representing different collection types in Dart.
///
/// Used to classify collections as lists, sets, or maps when analyzing default values.
enum CollectionType {
  /// Represents a Dart List collection.
  @JsonValue('list')
  list,

  /// Represents a Dart Set collection.
  @JsonValue('set')
  set,

  /// Represents a Dart Map collection.
  @JsonValue('map')
  map,
}

/// Enum representing different types of default values that can be analyzed.
///
/// Each type corresponds to a specific kind of Dart expression or value.
enum DefaultValueType {
  /// A literal value (e.g., string, number, boolean).
  @JsonValue('literal')
  literal,

  /// An identifier reference (e.g., variable name).
  @JsonValue('identifier')
  identifier,

  /// An enum value or static class member.
  @JsonValue('enumOrStatic')
  enumOrStatic,

  /// An object creation expression.
  @JsonValue('creation')
  creation,

  /// A collection literal (list, set, or map).
  @JsonValue('collection')
  collection,

  /// A binary expression (e.g., a + b).
  @JsonValue('expression')
  expression,

  /// A prefix expression (e.g., !isValid).
  @JsonValue('prefix')
  prefix,

  /// A named argument in a function or constructor call.
  @JsonValue('argument')
  argument,

  /// A key-value pair, typically in a map.
  @JsonValue('pair')
  pair,
}

/// Base class representing a default value in Dart code.
///
/// Provides common functionality for all types of default values
/// and serves as the parent class for more specific default value implementations.
class DefaultValue {
  /// The raw string representation of the default value.
  final String raw;

  /// The type classification of this default value.
  final DefaultValueType type;

  /// Creates a new [DefaultValue] with the specified raw string and type.
  const DefaultValue(this.raw, {required this.type});

  @override
  bool operator ==(covariant DefaultValue other) => raw == other.raw && type == other.type;

  @override
  int get hashCode => Object.hash(raw, type);
}

/// Represents a literal default value like a string, number, or boolean.
///
/// Examples: "hello", 42, true
class DefaultValueLiteral extends DefaultValue {
  /// Creates a new literal default value.
  ///
  /// [raw] is the string representation of the literal.
  DefaultValueLiteral(super.raw) : super(type: DefaultValueType.literal);

  @override
  String toString() => 'value:literal($raw)';
}

/// Represents an identifier used as a default value.
///
/// An identifier typically refers to a variable, constant, or parameter.
class DefaultValueIdentifier extends DefaultValue {
  /// Creates a new identifier default value.
  ///
  /// [raw] is the name of the identifier.
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

/// Represents an enum value or static class member used as a default value.
///
/// Examples: Colors.red, HttpStatus.ok
class DefaultValueEnumOrStaticInstance extends DefaultValue {
  /// The type that contains this enum value or static member.
  final TypeDefiningMetadata from;

  /// The identifier name of the enum value or static member.
  final String identifier;

  /// Creates a new enum or static instance default value.
  ///
  /// [raw] is the string representation of the value.
  /// [from] is the type that contains this value.
  /// [identifier] is the name of the enum value or static member.
  DefaultValueEnumOrStaticInstance(super.raw, {required this.from, required this.identifier})
    : super(type: DefaultValueType.enumOrStatic);

  @override
  String toString() => 'value:enum||static($raw)';
}

/// Represents an object creation expression used as a default value.
///
/// Examples: DateTime.now(), User(), Point(1, 2)
class DefaultValueCreation extends DefaultValue {
  /// The type being created.
  final TypeDefiningMetadata from;

  /// The name of the constructor, or null for the default constructor.
  final String? constructor;

  /// List of positional arguments passed to the constructor.
  final List<DefaultValue> positionalArgs;

  /// List of named arguments passed to the constructor.
  final List<DefaultValueNamedArgument> namedArgs;

  /// Creates a new object creation default value.
  ///
  /// [raw] is the string representation of the creation expression.
  /// [from] is the type being created.
  /// [constructor] is the name of the constructor, or null for the default constructor.
  /// [positionalArgs] is the list of positional arguments.
  /// [namedArgs] is the list of named arguments.
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

/// Represents a collection literal used as a default value.
///
/// Examples: [1, 2, 3], {1, 2, 3}, {'key': 'value'}
class DefaultValueCollection extends DefaultValue {
  /// The type of collection (list, set, or map).
  final CollectionType collectionType;

  /// The types of arguments in the collection.
  final List<String> argumentTypes;

  /// The values contained in the collection.
  final List<DefaultValue> values;

  /// Creates a new collection default value.
  ///
  /// [raw] is the string representation of the collection.
  /// [collectionType] specifies whether this is a list, set, or map.
  /// [argumentTypes] are the types of arguments in the collection.
  /// [values] are the values contained in the collection.
  DefaultValueCollection(
    super.raw, {
    required this.collectionType,
    this.argumentTypes = const [],
    this.values = const [],
  }) : super(type: DefaultValueType.collection);

  @override
  String toString() => 'value:collection($raw)';
}

/// Represents a binary expression used as a default value.
///
/// Examples: a + b, x * y, foo || bar
class DefaultValueExpression extends DefaultValue {
  /// The left operand of the expression.
  final DefaultValue value1;

  /// The right operand of the expression.
  final DefaultValue value2;

  /// The operator used in the expression (e.g., +, -, *, /).
  final String operator;

  /// Creates a new expression default value.
  ///
  /// [raw] is the string representation of the expression.
  /// [value1] is the left operand.
  /// [value2] is the right operand.
  /// [operator] is the operator used in the expression.
  DefaultValueExpression(
    super.raw, {
    required this.value1,
    required this.value2,
    required this.operator,
  }) : super(type: DefaultValueType.expression);

  @override
  String toString() => 'value:expression($raw)';
}

/// Represents a prefix expression used as a default value.
///
/// Examples: !isValid, -count, ++index
class DefaultValuePrefix extends DefaultValue {
  /// The value that the prefix operator is applied to.
  final DefaultValue value;

  /// The prefix operator (e.g., !, -, ++).
  final String operator;

  /// Creates a new prefix default value.
  ///
  /// [raw] is the string representation of the prefix expression.
  /// [value] is the value that the prefix operator is applied to.
  /// [operator] is the prefix operator.
  DefaultValuePrefix(super.raw, {required this.value, required this.operator})
    : super(type: DefaultValueType.prefix);

  @override
  String toString() => 'value:prefix($raw)';
}

/// Represents a named argument in a function or constructor call.
///
/// Examples: name: 'John', age: 30
class DefaultValueNamedArgument extends DefaultValue {
  /// The label or name of the argument.
  final String label;

  /// The value assigned to the argument.
  final DefaultValue value;

  /// Creates a new named argument default value.
  ///
  /// [raw] is the string representation of the named argument.
  /// [label] is the name of the argument.
  /// [value] is the value assigned to the argument.
  DefaultValueNamedArgument(super.raw, {required this.label, required this.value})
    : super(type: DefaultValueType.argument);
}

/// Represents a key-value pair, typically used in maps.
///
/// Examples: 'key': 'value', 1: 'one'
class DefaultValuePair extends DefaultValue {
  /// The key in the key-value pair.
  final DefaultValue key;

  /// The value in the key-value pair.
  final DefaultValue value;

  /// Creates a new pair default value.
  ///
  /// [raw] is the string representation of the key-value pair.
  /// [key] is the key in the pair.
  /// [value] is the value in the pair.
  DefaultValuePair(super.raw, {required this.key, required this.value})
    : super(type: DefaultValueType.pair);
}
