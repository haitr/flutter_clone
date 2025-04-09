part of 'analyzer.dart';

/// Enum representing different types of initializers that can be analyzed.
///
/// Each type corresponds to a specific kind of ast expression.
enum InitializerType {
  /// A literal value (e.g., null, string, number, boolean).
  @JsonValue('literal')
  literal,

  /// A prefix expression (e.g., Alignment.center).
  @JsonValue('prefix')
  prefix,

  // /// An identifier reference (e.g., variable name).
  // @JsonValue('identifier')
  // identifier,

  // /// An enum value or static class member.
  // @JsonValue('enumOrStatic')
  // enumOrStatic,

  // /// An object creation expression.
  // @JsonValue('creation')
  // creation,

  // /// A collection literal (list, set, or map).
  // @JsonValue('collection')
  // collection,

  // /// A binary expression (e.g., a + b).
  // @JsonValue('expression')
  // expression,

  // /// A named argument in a function or constructor call.
  // @JsonValue('argument')
  // argument,

  // /// A key-value pair, typically in a map.
  // @JsonValue('pair')
  // pair,
}

@JsonSerializable(explicitToJson: true, converters: [BooleanConverter()], includeIfNull: false)
class InitializerSerializer {
  /// The type classification of this default value.
  final InitializerType type;

  InitializerSerializer({required this.type});

  factory InitializerSerializer.from(Expression expression, AnalyzerContext context) {
    switch (expression) {
      case StringLiteral():
      case BooleanLiteral():
      case IntegerLiteral():
      case DoubleLiteral():
      case NullLiteral():
        return LiteralInitializerSerializer.from(expression as Literal);
      case PrefixedIdentifier():
        return PrefixedIdentifierInitializerSerializer.from(expression, context);
      default:
        throw UnimplementedError('--- ${expression.runtimeType}');
    }
  }

  factory InitializerSerializer.fromJson(Map<String, dynamic> json) {
    switch (json['_t_']) {
      case InitializerType.literal:
        return LiteralInitializerSerializer.fromJson(json);
      case InitializerType.prefix:
        return PrefixedIdentifierInitializerSerializer.fromJson(json);
    }
    throw UnimplementedError('--- ${json['type']}');
  }

  Map<String, dynamic> toJson() => throw UnimplementedError('--- $runtimeType');
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class LiteralInitializerSerializer extends InitializerSerializer {
  final String value;
  LiteralInitializerSerializer(this.value) : super(type: InitializerType.literal);

  factory LiteralInitializerSerializer.from(Literal expression) {
    return LiteralInitializerSerializer(expression.toSource());
  }

  factory LiteralInitializerSerializer.fromJson(Map<String, dynamic> json) =>
      _$LiteralInitializerSerializerFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$LiteralInitializerSerializerToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class PrefixedIdentifierInitializerSerializer extends InitializerSerializer {
  final DartTypeRefSerializer? prefixType;
  final String identifier;

  PrefixedIdentifierInitializerSerializer(this.prefixType, this.identifier) : super(type: InitializerType.prefix);

  factory PrefixedIdentifierInitializerSerializer.from(PrefixedIdentifier expression, AnalyzerContext context) {
    final prefixType = expression.prefix.staticType != null ? context.getTypeRef(expression.prefix.staticType!) : null;
    final name = expression.identifier.name;
    return PrefixedIdentifierInitializerSerializer(prefixType, name);
  }

  factory PrefixedIdentifierInitializerSerializer.fromJson(Map<String, dynamic> json) =>
      _$PrefixedIdentifierInitializerSerializerFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$PrefixedIdentifierInitializerSerializerToJson(this);
}
