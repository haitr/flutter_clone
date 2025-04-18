part of 'analyzer.dart';

enum TypeJsonType {
  @JsonValue('__type_ref__')
  $type,
  @JsonValue('__void_type__')
  $void,
  @JsonValue('__dynamic_type__')
  $dynamic,
  @JsonValue('__never_type__')
  $never,
  @JsonValue('__function_type__')
  $function,
  @JsonValue('__interface_type__')
  $interface,
  @JsonValue('__type_parameter_type__')
  $typeParameter,
  @JsonValue('__record_type__')
  $record,
  // internal use only
  @JsonValue('__placeholder__')
  $placeholder,
}

@JsonSerializable(explicitToJson: true, converters: [BooleanConverter()], includeIfNull: false)
class DartTypeSerializer with SourceSerializer<String?> implements DartTypeMetadata {
  @override
  @JsonKey(includeToJson: false, includeFromJson: false)
  final AnalyzerContext? context;

  @override
  final String name;

  /// why not final? See [DartTypeRefSerializer] note
  @override
  String? nullabilitySuffix;

  @override
  final bool isDartCore;

  @JsonKey(name: _jsonTypeField, includeToJson: true)
  final TypeJsonType jsonType;

  @override
  final InstantiatedTypeAliasElementSerializer? alias;

  DartTypeSerializer({
    required this.jsonType,
    this.context,
    required this.name,
    String? source,
    required this.nullabilitySuffix,
    required this.isDartCore,
    this.alias,
  }) {
    this.source = source;
  }

  DartTypeSerializer.placeholder()
    : context = null,
      name = '',
      nullabilitySuffix = '',
      isDartCore = false,
      jsonType = TypeJsonType.$placeholder,
      alias = null;

  factory DartTypeSerializer.from(DartType type, AnalyzerContext context) {
    switch (type) {
      case VoidType():
        return VoidTypeSerializer();
      case DynamicType():
        return DynamicTypeSerializer();
      case NeverType():
        return NeverTypeSerializer();
      case RecordType():
        return RecordTypeSerializer.from(type, context);
      case FunctionType():
        return FunctionTypeSerializer.from(type, context);
      case TypeParameterType():
        return TypeParameterTypeSerializer.from(type, context);
      case InterfaceType():
        return InterfaceTypeSerializer.from(type, context);
      case DartType():
        return DartTypeSerializer(
          context: context,
          // ignore: deprecated_member_use
          name: type.getDisplayString(withNullability: false),
          source: context.getPath(type.element?.source),
          nullabilitySuffix: nullabilitySuffixToString(type.nullabilitySuffix),
          isDartCore: type.isDartCore,
          // ignore: deprecated_member_use
          jsonType: TypeJsonType.$type,
        );
    }
  }

  factory DartTypeSerializer.fromJson(Map<String, dynamic> json) {
    final type =
        _$TypeJsonTypeEnumMap.entries.firstWhereOrNull((e) => e.value == json[_jsonTypeField])?.key;
    switch (type) {
      case TypeJsonType.$void:
        return VoidTypeSerializer.fromJson(json);
      case TypeJsonType.$dynamic:
        return DynamicTypeSerializer.fromJson(json);
      case TypeJsonType.$never:
        return NeverTypeSerializer.fromJson(json);
      case TypeJsonType.$function:
        return FunctionTypeSerializer.fromJson(json);
      case TypeJsonType.$interface:
        return InterfaceTypeSerializer.fromJson(json);
      case TypeJsonType.$typeParameter:
        return TypeParameterTypeSerializer.fromJson(json);
      case TypeJsonType.$record:
        return RecordTypeSerializer.fromJson(json);
      default:
        throw UnimplementedError();
    }
  }

  Map<String, dynamic> toJson() => _$DartTypeSerializerToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class VoidTypeSerializer extends DartTypeSerializer {
  VoidTypeSerializer()
    : super(
        name: 'void',
        source: null,
        jsonType: TypeJsonType.$void,
        isDartCore: true,
        nullabilitySuffix: null,
      );

  factory VoidTypeSerializer.fromJson(Map<String, dynamic> json) =>
      _$VoidTypeSerializerFromJson(json);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class DynamicTypeSerializer extends DartTypeSerializer {
  DynamicTypeSerializer()
    : super(
        name: 'dynamic',
        source: null,
        jsonType: TypeJsonType.$dynamic,
        isDartCore: true,
        nullabilitySuffix: null,
      );

  factory DynamicTypeSerializer.fromJson(Map<String, dynamic> json) =>
      _$DynamicTypeSerializerFromJson(json);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class NeverTypeSerializer extends DartTypeSerializer {
  NeverTypeSerializer()
    : super(
        context: null,
        name: 'Never',
        source: null,
        jsonType: TypeJsonType.$never,
        isDartCore: true,
        nullabilitySuffix: null,
      );

  factory NeverTypeSerializer.fromJson(Map<String, dynamic> json) =>
      _$NeverTypeSerializerFromJson(json);
}

@JsonSerializable(explicitToJson: true, converters: [BooleanConverter()], includeIfNull: false)
class FunctionTypeSerializer extends DartTypeSerializer implements FunctionTypeMetadata {
  @override
  final Map<String, DartTypeRefSerializer> namedParameterTypes;
  @override
  final List<DartTypeRefSerializer> normalParameterTypes;
  @override
  final List<DartTypeRefSerializer> optionalParameterTypes;
  @override
  final DartTypeRefSerializer returnType;
  @override
  final List<ParameterElementSerializer> parameters;
  @override
  final List<TypeParameterElementSerializer> typeFormals;

  FunctionTypeSerializer({
    required super.name,
    super.alias,
    required super.nullabilitySuffix,
    required super.isDartCore,
    required this.namedParameterTypes,
    required this.normalParameterTypes,
    required this.optionalParameterTypes,
    required this.parameters,
    required this.returnType,
    required this.typeFormals,
  }) : super(source: null, context: null, jsonType: TypeJsonType.$function);

  factory FunctionTypeSerializer.from(FunctionType type, AnalyzerContext context) {
    return FunctionTypeSerializer(
      // ignore: deprecated_member_use
      name: type.getDisplayString(withNullability: false),
      alias:
          type.alias != null
              ? InstantiatedTypeAliasElementSerializer.from(type.alias!, context)
              : null,
      nullabilitySuffix: nullabilitySuffixToString(type.nullabilitySuffix),
      isDartCore: type.isDartCore,
      returnType: context.getTypeRef(type.returnType),
      normalParameterTypes: type.normalParameterTypes.map(context.getTypeRef).toList(),
      namedParameterTypes: type.namedParameterTypes.map(
        (key, value) => MapEntry(key, context.getTypeRef(value)),
      ),
      optionalParameterTypes: type.optionalParameterTypes.map(context.getTypeRef).toList(),
      parameters: type.parameters.mapWithContext(context, ParameterElementSerializer.from),
      typeFormals: type.typeFormals.mapWithContext(context, TypeParameterElementSerializer.from),
    );
  }

  factory FunctionTypeSerializer.fromJson(Map<String, dynamic> json) =>
      _$FunctionTypeSerializerFromJson(json);
  @override
  Map<String, dynamic> toJson() => _$FunctionTypeSerializerToJson(this);

  @override
  String toString() {
    return '(function_type): $name|$nullabilitySuffix';
  }
}

@JsonSerializable(explicitToJson: true, converters: [BooleanConverter()], includeIfNull: false)
class InterfaceTypeSerializer extends DartTypeSerializer implements InterfaceTypeMetadata {
  @override
  final List<DartTypeSerializer> typeArguments;
  @override
  final InterfaceElementRefSerializer element;

  InterfaceTypeSerializer({
    super.context,
    required super.name,
    super.alias,
    required super.source,
    required super.nullabilitySuffix,
    required super.isDartCore,
    required this.typeArguments,
    required this.element,
  }) : super(jsonType: TypeJsonType.$interface);

  InterfaceTypeSerializer.placeholder()
    : typeArguments = [],
      element = InterfaceElementRefSerializer.placeholder(),
      super(
        name: '',
        source: null,
        nullabilitySuffix: '',
        isDartCore: false,
        jsonType: TypeJsonType.$placeholder,
      );

  factory InterfaceTypeSerializer.from(InterfaceType type, AnalyzerContext context) {
    return InterfaceTypeSerializer(
      context: context,
      // ignore: deprecated_member_use
      name: type.getDisplayString(withNullability: false),
      alias:
          type.alias != null
              ? InstantiatedTypeAliasElementSerializer.from(type.alias!, context)
              : null,
      source: context.getPath(type.element.source),
      nullabilitySuffix: nullabilitySuffixToString(type.nullabilitySuffix),
      isDartCore: type.isDartCore,
      typeArguments: type.typeArguments.mapWithContext(context, DartTypeSerializer.from),
      element: context.getElementRef(type.element),
    );
  }

  factory InterfaceTypeSerializer.fromJson(Map<String, dynamic> json) =>
      _$InterfaceTypeSerializerFromJson(json);
  @override
  Map<String, dynamic> toJson() => _$InterfaceTypeSerializerToJson(this);
}

@JsonSerializable(explicitToJson: true, converters: [BooleanConverter()], includeIfNull: false)
class TypeParameterTypeSerializer extends DartTypeSerializer implements TypeParameterTypeMetadata {
  @override
  @JsonKey(includeToJson: false, includeFromJson: false)
  TypeParameterElementSerializer get element => throw UnimplementedError();

  @override
  final DartTypeRefSerializer bound;

  TypeParameterTypeSerializer({
    super.context,
    required super.name,
    super.alias,
    required super.nullabilitySuffix,
    required this.bound,
  }) : super(isDartCore: true, jsonType: TypeJsonType.$typeParameter);

  factory TypeParameterTypeSerializer.from(TypeParameterType type, AnalyzerContext context) {
    return TypeParameterTypeSerializer(
      context: context,
      alias:
          type.alias != null
              ? InstantiatedTypeAliasElementSerializer.from(type.alias!, context)
              : null,
      // ignore: deprecated_member_use
      name: type.getDisplayString(withNullability: false),
      nullabilitySuffix: nullabilitySuffixToString(type.nullabilitySuffix),
      bound: context.getTypeRef(type.bound),
    );
  }

  factory TypeParameterTypeSerializer.fromJson(Map<String, dynamic> json) =>
      _$TypeParameterTypeSerializerFromJson(json);
  @override
  Map<String, dynamic> toJson() => _$TypeParameterTypeSerializerToJson(this);
}

@JsonSerializable(explicitToJson: true, converters: [BooleanConverter()], includeIfNull: false)
class RecordTypeSerializer extends DartTypeSerializer implements RecordTypeMetadata {
  @override
  final List<RecordTypePositionalFieldSerializer> positionalFields;
  @override
  final List<RecordTypeNamedFieldSerializer> namedFields;

  RecordTypeSerializer({
    super.alias,
    required super.name,
    required super.nullabilitySuffix,
    required this.positionalFields,
    required this.namedFields,
  }) : super(source: null, isDartCore: true, context: null, jsonType: TypeJsonType.$record);

  factory RecordTypeSerializer.from(RecordType type, AnalyzerContext context) {
    return RecordTypeSerializer(
      alias:
          type.alias != null
              ? InstantiatedTypeAliasElementSerializer.from(type.alias!, context)
              : null,
      // ignore: deprecated_member_use
      name: type.getDisplayString(withNullability: false),
      nullabilitySuffix: nullabilitySuffixToString(type.nullabilitySuffix),
      positionalFields: type.positionalFields.mapWithContext(
        context,
        RecordTypePositionalFieldSerializer.from,
      ),
      namedFields: type.namedFields.mapWithContext(context, RecordTypeNamedFieldSerializer.from),
    );
  }

  factory RecordTypeSerializer.fromJson(Map<String, dynamic> json) =>
      _$RecordTypeSerializerFromJson(json);
  @override
  Map<String, dynamic> toJson() => _$RecordTypeSerializerToJson(this);
}

@JsonSerializable(explicitToJson: true, converters: [BooleanConverter()], includeIfNull: false)
class RecordTypeNamedFieldSerializer implements RecordTypeNamedFieldMetadata {
  @override
  final DartTypeSerializer type;
  @override
  final String name;

  RecordTypeNamedFieldSerializer({required this.type, required this.name});

  factory RecordTypeNamedFieldSerializer.from(RecordTypeNamedField field, AnalyzerContext context) {
    return RecordTypeNamedFieldSerializer(
      type: DartTypeSerializer.from(field.type, context),
      name: field.name,
    );
  }

  factory RecordTypeNamedFieldSerializer.fromJson(Map<String, dynamic> json) =>
      _$RecordTypeNamedFieldSerializerFromJson(json);
  Map<String, dynamic> toJson() => _$RecordTypeNamedFieldSerializerToJson(this);
}

@JsonSerializable(explicitToJson: true, converters: [BooleanConverter()], includeIfNull: false)
class RecordTypePositionalFieldSerializer implements RecordTypePositionalFieldMetadata {
  @override
  final DartTypeSerializer type;

  RecordTypePositionalFieldSerializer({required this.type});

  factory RecordTypePositionalFieldSerializer.from(
    RecordTypePositionalField field,
    AnalyzerContext context,
  ) {
    return RecordTypePositionalFieldSerializer(type: DartTypeSerializer.from(field.type, context));
  }

  factory RecordTypePositionalFieldSerializer.fromJson(Map<String, dynamic> json) =>
      _$RecordTypePositionalFieldSerializerFromJson(json);
  Map<String, dynamic> toJson() => _$RecordTypePositionalFieldSerializerToJson(this);
}
