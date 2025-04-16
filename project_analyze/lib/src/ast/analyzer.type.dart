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

  @JsonKey(name: '_t_')
  final TypeJsonType jsonType;

  DartTypeSerializer({
    required this.jsonType,
    this.context,
    required this.name,
    String? source,
    required this.nullabilitySuffix,
    required this.isDartCore,
  }) {
    this.source = source;
  }

  DartTypeSerializer.placeholder()
    : context = null,
      name = '',
      nullabilitySuffix = '',
      isDartCore = false,
      jsonType = TypeJsonType.$placeholder;

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
    final type = _$TypeJsonTypeEnumMap.entries.firstWhereOrNull((e) => e.value == json['_t_'])?.key;
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
  @override
  Null get context => null;

  VoidTypeSerializer()
    : super(
        context: null,
        name: 'void',
        source: null,
        jsonType: TypeJsonType.$void,
        isDartCore: true,
        nullabilitySuffix: null,
      );

  factory VoidTypeSerializer.fromJson(Map<String, dynamic> json) => _$VoidTypeSerializerFromJson(json);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class DynamicTypeSerializer extends DartTypeSerializer {
  @override
  Null get context => null;

  DynamicTypeSerializer()
    : super(
        context: null,
        name: 'dynamic',
        source: null,
        jsonType: TypeJsonType.$dynamic,
        isDartCore: true,
        nullabilitySuffix: null,
      );

  factory DynamicTypeSerializer.fromJson(Map<String, dynamic> json) => _$DynamicTypeSerializerFromJson(json);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class NeverTypeSerializer extends DartTypeSerializer {
  @override
  Null get context => null;

  NeverTypeSerializer()
    : super(
        context: null,
        name: 'Never',
        source: null,
        jsonType: TypeJsonType.$never,
        isDartCore: true,
        nullabilitySuffix: null,
      );

  factory NeverTypeSerializer.fromJson(Map<String, dynamic> json) => _$NeverTypeSerializerFromJson(json);
}

@JsonSerializable(explicitToJson: true, converters: [BooleanConverter()], includeIfNull: false)
class FunctionTypeSerializer extends DartTypeSerializer implements FunctionTypeMetadata {
  @override
  Null get context => null;

  @override
  final Map<String, DartTypeRefSerializer> namedParameterTypes;
  @override
  final List<DartTypeRefSerializer> normalParameterTypes;
  @override
  final List<DartTypeRefSerializer> optionalParameterTypes;
  @override
  final List<ParameterElementSerializer> parameters;
  @override
  final DartTypeRefSerializer returnType;
  @override
  final List<TypeParameterElementSerializer> typeFormals;

  FunctionTypeSerializer({
    super.jsonType = TypeJsonType.$function,
    required super.name,
    required super.nullabilitySuffix,
    required super.isDartCore,
    required this.namedParameterTypes,
    required this.normalParameterTypes,
    required this.optionalParameterTypes,
    required this.parameters,
    required this.returnType,
    required this.typeFormals,
  }) : super(source: null, context: null);

  factory FunctionTypeSerializer.from(FunctionType type, AnalyzerContext context) {
    return FunctionTypeSerializer(
      // ignore: deprecated_member_use
      name: type.getDisplayString(withNullability: false),
      nullabilitySuffix: nullabilitySuffixToString(type.nullabilitySuffix),
      isDartCore: type.isDartCore,
      returnType: context.getTypeRef(type.returnType),
      namedParameterTypes: type.namedParameterTypes.map((key, value) => MapEntry(key, context.getTypeRef(value))),
      normalParameterTypes: type.normalParameterTypes.map((e) => context.getTypeRef(e)).toList(),
      optionalParameterTypes: type.optionalParameterTypes.map((e) => context.getTypeRef(e)).toList(),
      parameters: type.parameters.map((e) => ParameterElementSerializer.from(e, context)).toList(),
      typeFormals: type.typeFormals.map((e) => TypeParameterElementSerializer.from(e, context)).toList(),
    );
  }

  factory FunctionTypeSerializer.fromJson(Map<String, dynamic> json) => _$FunctionTypeSerializerFromJson(json);
  @override
  Map<String, dynamic> toJson() => _$FunctionTypeSerializerToJson(this);
}

@JsonSerializable(explicitToJson: true, converters: [BooleanConverter()], includeIfNull: false)
class InterfaceTypeSerializer extends DartTypeSerializer implements InterfaceTypeMetadata {
  @override
  @JsonKey(includeToJson: false, includeFromJson: false)
  final AnalyzerContext? context;

  @override
  final List<DartTypeSerializer> typeArguments;
  @override
  final InterfaceElementRefSerializer element;

  InterfaceTypeSerializer({
    super.jsonType = TypeJsonType.$interface,
    this.context,
    required super.name,
    required super.source,
    required super.nullabilitySuffix,
    required super.isDartCore,
    required this.typeArguments,
    required this.element,
  });

  InterfaceTypeSerializer.placeholder()
    : context = null,
      typeArguments = [],
      element = InterfaceElementRefSerializer.placeholder(),
      super(name: '', source: null, nullabilitySuffix: '', isDartCore: false, jsonType: TypeJsonType.$placeholder);

  factory InterfaceTypeSerializer.from(InterfaceType type, AnalyzerContext context) {
    return InterfaceTypeSerializer(
      context: context,
      // ignore: deprecated_member_use
      name: type.getDisplayString(withNullability: false),
      source: context.getPath(type.element.source),
      nullabilitySuffix: nullabilitySuffixToString(type.nullabilitySuffix),
      isDartCore: type.isDartCore,
      typeArguments: type.typeArguments.map((e) => DartTypeSerializer.from(e, context)).toList(),
      element: context.getElementRef(type.element),
    );
  }

  factory InterfaceTypeSerializer.fromJson(Map<String, dynamic> json) => _$InterfaceTypeSerializerFromJson(json);
  @override
  Map<String, dynamic> toJson() => _$InterfaceTypeSerializerToJson(this);
}

@JsonSerializable(explicitToJson: true, converters: [BooleanConverter()], includeIfNull: false)
class TypeParameterTypeSerializer extends DartTypeSerializer implements TypeParameterTypeMetadata {
  @override
  Null get context => null;

  @override
  @JsonKey(includeToJson: false, includeFromJson: false)
  TypeParameterElementSerializer get element => throw UnimplementedError();

  @override
  final DartTypeRefSerializer bound;

  TypeParameterTypeSerializer({
    super.jsonType = TypeJsonType.$typeParameter,
    super.context,
    required super.name,
    required super.nullabilitySuffix,
    required this.bound,
  }) : super(isDartCore: true);

  factory TypeParameterTypeSerializer.from(TypeParameterType type, AnalyzerContext context) {
    return TypeParameterTypeSerializer(
      context: context,
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
  Null get context => null;

  @override
  final List<RecordTypePositionalFieldSerializer> positionalFields;
  @override
  final List<RecordTypeNamedFieldSerializer> namedFields;

  RecordTypeSerializer({
    super.jsonType = TypeJsonType.$record,
    required super.name,
    required super.nullabilitySuffix,
    required this.positionalFields,
    required this.namedFields,
  }) : super(source: null, isDartCore: true, context: null);

  factory RecordTypeSerializer.from(RecordType type, AnalyzerContext context) {
    return RecordTypeSerializer(
      // ignore: deprecated_member_use
      name: type.getDisplayString(withNullability: false),
      nullabilitySuffix: nullabilitySuffixToString(type.nullabilitySuffix),
      positionalFields: type.positionalFields.map((e) => RecordTypePositionalFieldSerializer.from(e, context)).toList(),
      namedFields: type.namedFields.map((e) => RecordTypeNamedFieldSerializer.from(e, context)).toList(),
    );
  }

  factory RecordTypeSerializer.fromJson(Map<String, dynamic> json) => _$RecordTypeSerializerFromJson(json);
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
    return RecordTypeNamedFieldSerializer(type: DartTypeSerializer.from(field.type, context), name: field.name);
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

  factory RecordTypePositionalFieldSerializer.from(RecordTypePositionalField field, AnalyzerContext context) {
    return RecordTypePositionalFieldSerializer(type: DartTypeSerializer.from(field.type, context));
  }

  factory RecordTypePositionalFieldSerializer.fromJson(Map<String, dynamic> json) =>
      _$RecordTypePositionalFieldSerializerFromJson(json);
  Map<String, dynamic> toJson() => _$RecordTypePositionalFieldSerializerToJson(this);
}
