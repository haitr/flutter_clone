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

  /// An identifier reference (e.g., variable name).
  @JsonValue('identifier')
  identifier,

  // /// An enum value or static class member.
  // @JsonValue('enumOrStatic')
  // enumOrStatic,

  /// An object creation expression.
  @JsonValue('creation')
  creation,

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
  @JsonKey(name: '_t_')
  final InitializerType jsonType;

  InitializerSerializer({required this.jsonType});

  factory InitializerSerializer.from(Expression expression, AnalyzerContext context) {
    switch (expression) {
      case StringLiteral():
      case BooleanLiteral():
      case IntegerLiteral():
      case DoubleLiteral():
      case NullLiteral():
        return LiteralInitializerSerializer.from(expression as Literal);
      case InstanceCreationExpression():
        return InstanceCreationInitializerSerializer.from(expression, context);
      case SimpleIdentifier():
        return SimpleIdentifierInitializerSerializer.from(expression, context);
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
      case InitializerType.identifier:
        return SimpleIdentifierInitializerSerializer.fromJson(json);
      case InitializerType.creation:
        return InstanceCreationInitializerSerializer.fromJson(json);
    }
    throw UnimplementedError('--- ${json['_t_']}');
  }

  Map<String, dynamic> toJson() => throw UnimplementedError('--- $runtimeType');
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class InstanceCreationInitializerSerializer extends InitializerSerializer {
  final DartTypeRefSerializer? type;
  final String? constructorName;
  final bool isConst;

  InstanceCreationInitializerSerializer(this.type, this.constructorName, this.isConst)
    : super(jsonType: InitializerType.creation);

  factory InstanceCreationInitializerSerializer.from(
    InstanceCreationExpression expression,
    AnalyzerContext context,
  ) {
    final type = expression.staticType != null ? context.getTypeRef(expression.staticType!) : null;
    final constructorName = expression.constructorName.name?.name;
    return InstanceCreationInitializerSerializer(type, constructorName, expression.isConst);
  }

  factory InstanceCreationInitializerSerializer.fromJson(Map<String, dynamic> json) =>
      _$InstanceCreationInitializerSerializerFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$InstanceCreationInitializerSerializerToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class SimpleIdentifierInitializerSerializer extends InitializerSerializer {
  final String identifier;
  final String? source;

  SimpleIdentifierInitializerSerializer(this.identifier, this.source)
    : super(jsonType: InitializerType.identifier);

  factory SimpleIdentifierInitializerSerializer.from(
    SimpleIdentifier expression,
    AnalyzerContext context,
  ) {
    final source = _getNullablePath(expression.staticElement?.source, context.projectPath);
    return SimpleIdentifierInitializerSerializer(expression.toSource(), source);
  }

  factory SimpleIdentifierInitializerSerializer.fromJson(Map<String, dynamic> json) =>
      _$SimpleIdentifierInitializerSerializerFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$SimpleIdentifierInitializerSerializerToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class LiteralInitializerSerializer extends InitializerSerializer {
  final String value;
  LiteralInitializerSerializer(this.value) : super(jsonType: InitializerType.literal);

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

  PrefixedIdentifierInitializerSerializer(this.prefixType, this.identifier)
    : super(jsonType: InitializerType.prefix);

  factory PrefixedIdentifierInitializerSerializer.from(
    PrefixedIdentifier expression,
    AnalyzerContext context,
  ) {
    final prefixType =
        expression.prefix.staticType != null
            ? context.getTypeRef(expression.prefix.staticType!)
            : null;
    final name = expression.identifier.name;
    return PrefixedIdentifierInitializerSerializer(prefixType, name);
  }

  factory PrefixedIdentifierInitializerSerializer.fromJson(Map<String, dynamic> json) =>
      _$PrefixedIdentifierInitializerSerializerFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$PrefixedIdentifierInitializerSerializerToJson(this);
}
