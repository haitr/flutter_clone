part of 'analyzer.dart';

/// Enum representing different types of initializers that can be analyzed.
///
/// Each type corresponds to a specific kind of ast expression.
enum InitializerType {
  /// A literal value (e.g., null, string, number, boolean).
  @JsonValue('literal')
  literal,

  /// A prefix expression (e.g., -10).
  @JsonValue('prefix')
  prefix,

  /// A prefix expression (e.g., Alignment.center or math.pi).
  @JsonValue('prefix_identifier')
  prefixIdentifier,

  /// An identifier reference (e.g., variable name).
  @JsonValue('identifier')
  identifier,

  /// An object creation expression.
  @JsonValue('creation')
  creation,

  /// A named argument in a function or constructor call.
  @JsonValue('named')
  named,

  /// A list literal
  @JsonValue('list')
  list,

  /// A set literal
  @JsonValue('set')
  set,

  /// A map literal
  @JsonValue('map')
  map,

  /// A binary expression (e.g., a + b).
  @JsonValue('binary')
  binary,
}

@JsonSerializable(explicitToJson: true, converters: [BooleanConverter()], includeIfNull: false)
class InitializerSerializer {
  /// The type classification of this default value.
  @JsonKey(name: _jsonTypeField)
  final InitializerType jsonType;

  InitializerSerializer({required this.jsonType});

  factory InitializerSerializer.from(Expression expression, AnalyzerContext context) {
    switch (expression) {
      case PrefixExpression():
        return PrefixExpressionInitializerSerializer.from(expression, context);
      case BinaryExpression():
        return BinaryExpressionInitializerSerializer.from(expression, context);
      case StringLiteral():
      case BooleanLiteral():
      case IntegerLiteral():
      case DoubleLiteral():
      case NullLiteral():
        return LiteralInitializerSerializer.from(expression as Literal);
      case ListLiteral():
        return ListLiteralInitializerSerializer.from(expression, context);
      case SetOrMapLiteral(isSet: true):
        return SetLiteralInitializerSerializer.from(expression, context);
      case SetOrMapLiteral(isMap: true):
        return MapLiteralInitializerSerializer.from(expression, context);
      case InstanceCreationExpression():
        return InstanceCreationInitializerSerializer.from(expression, context);
      case SimpleIdentifier():
        return SimpleIdentifierInitializerSerializer.fromSimpleIdentifier(expression, context);
      case PrefixedIdentifier(prefix: var prefix) when prefix.staticElement is PrefixElement:
        return SimpleIdentifierInitializerSerializer.fromPrefixedIdentifier(expression, context);
      case PrefixedIdentifier(prefix: var prefix) when prefix.staticElement is InterfaceElement:
        return PrefixedIdentifierInitializerSerializer.fromPrefixedIdentifier(expression, context);
      case PropertyAccess():
        return PrefixedIdentifierInitializerSerializer.fromPropertyAccess(expression, context);
      // internal use only
      case NamedExpression():
        return NamedExpressionInitializerSerializer.from(expression, context);
      default:
        throw UnimplementedError('--- ${expression.runtimeType}');
    }
  }

  factory InitializerSerializer.fromJson(Map<String, dynamic> json) {
    final type = _$InitializerTypeEnumMap.entries.firstWhereOrNull((e) => e.value == json[_jsonTypeField])?.key;
    switch (type) {
      case InitializerType.prefix:
        return PrefixExpressionInitializerSerializer.fromJson(json);
      case InitializerType.literal:
        return LiteralInitializerSerializer.fromJson(json);
      case InitializerType.list:
        return ListLiteralInitializerSerializer.fromJson(json);
      case InitializerType.set:
        return SetLiteralInitializerSerializer.fromJson(json);
      case InitializerType.map:
        return MapLiteralInitializerSerializer.fromJson(json);
      case InitializerType.creation:
        return InstanceCreationInitializerSerializer.fromJson(json);
      case InitializerType.identifier:
        return SimpleIdentifierInitializerSerializer.fromJson(json);
      case InitializerType.prefixIdentifier:
        return PrefixedIdentifierInitializerSerializer.fromJson(json);
      case InitializerType.named:
        return NamedExpressionInitializerSerializer.fromJson(json);
      case InitializerType.binary:
        return BinaryExpressionInitializerSerializer.fromJson(json);
      default:
        throw UnimplementedError('--- ${json[_jsonTypeField]}');
    }
  }

  Map<String, dynamic> toJson() => throw UnimplementedError('--- $runtimeType');
}

/// See [NamedExpression]
@JsonSerializable(explicitToJson: true, includeIfNull: false)
final class NamedExpressionInitializerSerializer extends InitializerSerializer {
  final String name;
  final InitializerSerializer value;

  NamedExpressionInitializerSerializer({required this.name, required this.value, required super.jsonType});

  factory NamedExpressionInitializerSerializer.from(NamedExpression expression, AnalyzerContext context) {
    return NamedExpressionInitializerSerializer(
      name: expression.name.label.toString(),
      value: InitializerSerializer.from(expression.expression, context),
      jsonType: InitializerType.named,
    );
  }

  factory NamedExpressionInitializerSerializer.fromJson(Map<String, dynamic> json) =>
      _$NamedExpressionInitializerSerializerFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$NamedExpressionInitializerSerializerToJson(this);
}

/// See [BinaryExpression]
@JsonSerializable(explicitToJson: true, includeIfNull: false)
final class BinaryExpressionInitializerSerializer extends InitializerSerializer {
  final String operator;
  final InitializerSerializer left;
  final InitializerSerializer right;

  BinaryExpressionInitializerSerializer({
    required this.operator,
    required this.left,
    required this.right,
    required super.jsonType,
  });

  factory BinaryExpressionInitializerSerializer.from(BinaryExpression expression, AnalyzerContext context) {
    return BinaryExpressionInitializerSerializer(
      operator: expression.operator.toString(),
      left: InitializerSerializer.from(expression.leftOperand, context),
      right: InitializerSerializer.from(expression.rightOperand, context),
      jsonType: InitializerType.binary,
    );
  }

  factory BinaryExpressionInitializerSerializer.fromJson(Map<String, dynamic> json) =>
      _$BinaryExpressionInitializerSerializerFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$BinaryExpressionInitializerSerializerToJson(this);
}

/// See [PrefixExpression]
@JsonSerializable(explicitToJson: true, includeIfNull: false)
final class PrefixExpressionInitializerSerializer extends InitializerSerializer {
  final String operator;
  final InitializerSerializer operand;

  PrefixExpressionInitializerSerializer({required this.operator, required this.operand, required super.jsonType});

  factory PrefixExpressionInitializerSerializer.from(PrefixExpression expression, AnalyzerContext context) {
    return PrefixExpressionInitializerSerializer(
      jsonType: InitializerType.prefix,
      operator: expression.operator.toString(),
      operand: InitializerSerializer.from(expression.operand, context),
    );
  }

  factory PrefixExpressionInitializerSerializer.fromJson(Map<String, dynamic> json) =>
      _$PrefixExpressionInitializerSerializerFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$PrefixExpressionInitializerSerializerToJson(this);
}

/// See [SetOrMapLiteral]
@JsonSerializable(explicitToJson: true, includeIfNull: false)
final class SetLiteralInitializerSerializer extends InitializerSerializer {
  final List<DartTypeRefSerializer>? typeArguments;
  final bool isConst;
  final List<InitializerSerializer> elements;

  SetLiteralInitializerSerializer({
    required this.typeArguments,
    required this.isConst,
    required this.elements,
    required super.jsonType,
  });

  factory SetLiteralInitializerSerializer.from(SetOrMapLiteral expression, AnalyzerContext context) {
    final isConst = expression.isConst;
    final typeArguments =
        expression.typeArguments?.arguments.map((e) => e.type).nonNulls.map((e) => context.getTypeRef(e)).toList();
    final elements = expression.elements.map((e) => InitializerSerializer.from(e as Expression, context)).toList();
    return SetLiteralInitializerSerializer(
      jsonType: InitializerType.set,
      typeArguments: typeArguments,
      isConst: isConst,
      elements: elements,
    );
  }

  factory SetLiteralInitializerSerializer.fromJson(Map<String, dynamic> json) =>
      _$SetLiteralInitializerSerializerFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$SetLiteralInitializerSerializerToJson(this);
}

/// See [SetOrMapLiteral]
@JsonSerializable(explicitToJson: true, includeIfNull: false)
final class MapLiteralInitializerSerializer extends InitializerSerializer {
  final List<DartTypeRefSerializer>? typeArguments;
  final bool isConst;
  final List<InitializerSerializer> elements;

  MapLiteralInitializerSerializer({
    required this.typeArguments,
    required this.isConst,
    required this.elements,
    required super.jsonType,
  });

  factory MapLiteralInitializerSerializer.from(SetOrMapLiteral expression, AnalyzerContext context) {
    final isConst = expression.isConst;
    final typeArguments =
        expression.typeArguments?.arguments.map((e) => e.type).nonNulls.map((e) => context.getTypeRef(e)).toList();
    final elements = expression.elements.map((e) => InitializerSerializer.from(e as Expression, context)).toList();
    return MapLiteralInitializerSerializer(
      typeArguments: typeArguments,
      isConst: isConst,
      elements: elements,
      jsonType: InitializerType.map,
    );
  }

  factory MapLiteralInitializerSerializer.fromJson(Map<String, dynamic> json) =>
      _$MapLiteralInitializerSerializerFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$MapLiteralInitializerSerializerToJson(this);
}

/// See [ListLiteral]
@JsonSerializable(explicitToJson: true, includeIfNull: false)
final class ListLiteralInitializerSerializer extends InitializerSerializer {
  final List<DartTypeRefSerializer>? typeArguments;
  final bool isConst;
  final List<InitializerSerializer> elements;

  ListLiteralInitializerSerializer({
    required this.typeArguments,
    required this.isConst,
    required this.elements,
    required super.jsonType,
  });

  factory ListLiteralInitializerSerializer.from(ListLiteral expression, AnalyzerContext context) {
    final isConst = expression.isConst;
    final typeArguments =
        expression.typeArguments?.arguments.map((e) => e.type).nonNulls.map((e) => context.getTypeRef(e)).toList();
    final elements = expression.elements.map((e) => InitializerSerializer.from(e as Expression, context)).toList();
    return ListLiteralInitializerSerializer(
      typeArguments: typeArguments,
      isConst: isConst,
      elements: elements,
      jsonType: InitializerType.list,
    );
  }

  factory ListLiteralInitializerSerializer.fromJson(Map<String, dynamic> json) =>
      _$ListLiteralInitializerSerializerFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$ListLiteralInitializerSerializerToJson(this);
}

/// See [Literal]
@JsonSerializable(explicitToJson: true, includeIfNull: false)
final class LiteralInitializerSerializer extends InitializerSerializer {
  final String value;

  LiteralInitializerSerializer({required this.value, required super.jsonType});

  factory LiteralInitializerSerializer.from(Literal expression) {
    return LiteralInitializerSerializer(value: expression.toSource(), jsonType: InitializerType.literal);
  }

  factory LiteralInitializerSerializer.fromJson(Map<String, dynamic> json) =>
      _$LiteralInitializerSerializerFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$LiteralInitializerSerializerToJson(this);
}

/// See [InstanceCreationExpression]
@JsonSerializable(explicitToJson: true, includeIfNull: false)
final class InstanceCreationInitializerSerializer extends InitializerSerializer {
  final DartTypeRefSerializer? type;
  final String? constructorName;
  final bool isConst;
  final List<InitializerSerializer> arguments;

  InstanceCreationInitializerSerializer({
    required this.type,
    required this.constructorName,
    required this.isConst,
    required this.arguments,
    required super.jsonType,
  });

  factory InstanceCreationInitializerSerializer.from(InstanceCreationExpression expression, AnalyzerContext context) {
    final type = expression.staticType != null ? context.getTypeRef(expression.staticType!) : null;
    final constructorName = expression.constructorName.name?.name;
    final isConst = expression.isConst;
    final arguments = expression.argumentList.arguments.map((e) => InitializerSerializer.from(e, context)).toList();
    return InstanceCreationInitializerSerializer(
      type: type,
      constructorName: constructorName,
      isConst: isConst,
      arguments: arguments,
      jsonType: InitializerType.creation,
    );
  }

  factory InstanceCreationInitializerSerializer.fromJson(Map<String, dynamic> json) =>
      _$InstanceCreationInitializerSerializerFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$InstanceCreationInitializerSerializerToJson(this);
}

/// See [SimpleIdentifier]
@JsonSerializable(explicitToJson: true, includeIfNull: false)
final class SimpleIdentifierInitializerSerializer extends InitializerSerializer with SourceSerializer<String?> {
  @override
  @JsonKey(includeToJson: false, includeFromJson: false)
  AnalyzerContext? context;

  final String identifier;

  SimpleIdentifierInitializerSerializer({
    required this.identifier,
    String? source,
    required super.jsonType,
    this.context,
  }) {
    this.source = source;
  }

  factory SimpleIdentifierInitializerSerializer.fromSimpleIdentifier(
    SimpleIdentifier expression,
    AnalyzerContext context,
  ) {
    final source = context.getPath(expression.staticElement?.source);
    return SimpleIdentifierInitializerSerializer(
      context: context,
      identifier: expression.toSource(),
      source: source,
      jsonType: InitializerType.identifier,
    );
  }

  /// See 'package:analyzer/src/dart/element/display_string_builder.dart' [ElementDisplayStringBuilder._writeDirectiveUri]
  factory SimpleIdentifierInitializerSerializer.fromPrefixedIdentifier(
    PrefixedIdentifier expression,
    AnalyzerContext context,
  ) {
    final name = expression.identifier.name;
    final element = expression.prefix.staticElement as PrefixElement;
    if (element.imports.length == 1) {
      final uri = element.imports.last.uri;
      var source = '<unknown>';
      if (uri is DirectiveUriWithUnit) {
        source = 'unit ${uri.unit.source.uri}';
      } else if (uri is DirectiveUriWithSource) {
        source = context.getPath(uri.source)!;
      }
      return SimpleIdentifierInitializerSerializer(
        context: context,
        jsonType: InitializerType.identifier,
        identifier: name,
        source: source,
      );
    }
    throw ArgumentError('--- ${expression.toSource()}');
  }

  factory SimpleIdentifierInitializerSerializer.fromJson(Map<String, dynamic> json) =>
      _$SimpleIdentifierInitializerSerializerFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$SimpleIdentifierInitializerSerializerToJson(this);
}

/// See [PrefixedIdentifier]
@JsonSerializable(explicitToJson: true, includeIfNull: false)
final class PrefixedIdentifierInitializerSerializer extends InitializerSerializer {
  final InterfaceElementRefSerializer? prefixElement;
  final String identifier;

  PrefixedIdentifierInitializerSerializer({this.prefixElement, required this.identifier, required super.jsonType});

  factory PrefixedIdentifierInitializerSerializer.fromPrefixedIdentifier(
    PrefixedIdentifier expression,
    AnalyzerContext context,
  ) {
    final name = expression.identifier.name;

    if (expression.prefix.staticElement case InterfaceElement element) {
      final prefixElement = context.getElementRef(element);
      return PrefixedIdentifierInitializerSerializer(
        jsonType: InitializerType.prefixIdentifier,
        prefixElement: prefixElement,
        identifier: name,
      );
    }

    throw UnimplementedError('--- ${expression.toSource()}');
  }

  factory PrefixedIdentifierInitializerSerializer.fromPropertyAccess(
    PropertyAccess expression,
    AnalyzerContext context,
  ) {
    if (expression.realTarget case PrefixedIdentifierImpl(:final staticElement)) {
      final prefixElement = staticElement != null ? context.getElementRef(staticElement as InterfaceElement) : null;
      final name = expression.propertyName.name;
      return PrefixedIdentifierInitializerSerializer(
        jsonType: InitializerType.prefixIdentifier,
        prefixElement: prefixElement,
        identifier: name,
      );
    }
    throw UnimplementedError('--- ${expression.toSource()}');
  }

  factory PrefixedIdentifierInitializerSerializer.fromJson(Map<String, dynamic> json) =>
      _$PrefixedIdentifierInitializerSerializerFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$PrefixedIdentifierInitializerSerializerToJson(this);
}
