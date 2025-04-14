part of 'analyzer.dart';

const refJsonType = '__type_ref__';
const refJsonElement = '__element_ref__';
const refJsonInternalElement = '__internal_element_ref__';
const _placeholderJsonType = '__placeholder__';

const _voidJsonType = '__void_type__';
const _dynamicJsonType = '__dynamic_type__';
const _neverJsonType = '__never_type__';
const _functionJsonType = '__function_type__';
const _interfaceJsonType = '__interface_type__';
const _typeParameterJsonType = '__type_parameter_type__';
const _recordJsonType = '__record_type__';

mixin ReferenceableSerializer {
  String get ref;
}

@JsonSerializable(explicitToJson: true, includeIfNull: false, converters: [BooleanConverter()])
class InterfaceElementRefSerializer extends InterfaceElementSerializer with ReferenceableSerializer {
  @override
  @JsonKey(includeToJson: false, includeFromJson: false)
  AnalyzerContext? context;

  @override
  final String ref;
  final String jsonType;

  InterfaceElementRefSerializer({
    this.context,
    required this.ref,
    required this.jsonType,
    required super.source,
    required super.name,
    required super.interfaces,
    required super.mixins,
    required super.supertype,
    required super.allSupertypes,
  }) : super(
         context: context,
         isPrivate: false,
         isPublic: false,
         fields: [],
         methods: [],
         typeParameters: [],
         isSimplyBounded: false,
         constructors: [],
       );

  factory InterfaceElementRefSerializer.fromJson(Map<String, dynamic> json) =>
      _$InterfaceElementRefSerializerFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$InterfaceElementRefSerializerToJson(this);
}

/// Note: in analyzer 7.3.0,
/// [DartType]s with different nullability suffixes are same hash code.
/// So we need to explicitly specify the nullability suffix in the serializer.
@JsonSerializable(explicitToJson: true, includeIfNull: false)
class DartTypeRefSerializer extends DartTypeSerializer with ReferenceableSerializer {
  @override
  @JsonKey(includeToJson: false, includeFromJson: false)
  AnalyzerContext? get context => throw UnimplementedError();

  @override
  final String ref;

  DartTypeRefSerializer({required this.ref, required super.nullabilitySuffix, super.jsonType = refJsonType})
    : super(name: '', source: null, isDartCore: false);

  factory DartTypeRefSerializer.fromJson(Map<String, dynamic> json) => _$DartTypeRefSerializerFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$DartTypeRefSerializerToJson(this);
}

/// Notes: See [DartTypeRefSerializer] note
@JsonSerializable(explicitToJson: true, includeIfNull: false)
class InterfaceTypeRefSerializer extends InterfaceTypeSerializer with ReferenceableSerializer {
  @override
  @JsonKey(includeToJson: false, includeFromJson: false)
  AnalyzerContext? get context => throw UnimplementedError();

  @override
  final String ref;

  InterfaceTypeRefSerializer({required this.ref, required super.nullabilitySuffix, super.jsonType = refJsonType})
    : super(
        name: '',
        source: null,
        typeArguments: [],
        element: InterfaceElementRefSerializer(
          ref: '',
          jsonType: refJsonElement,
          source: '',
          name: '',
          interfaces: [],
          mixins: [],
          supertype: null,
          allSupertypes: [],
        ),
        isDartCore: false,
      );

  factory InterfaceTypeRefSerializer.from(InterfaceType type, AnalyzerContext context) => InterfaceTypeRefSerializer(
    ref: context.getTypeRef(type).ref,
    nullabilitySuffix: nullabilitySuffixToString(type.nullabilitySuffix),
  );

  factory InterfaceTypeRefSerializer.fromJson(Map<String, dynamic> json) => _$InterfaceTypeRefSerializerFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$InterfaceTypeRefSerializerToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class FunctionTypeRefSerializer extends FunctionTypeSerializer with ReferenceableSerializer {
  @override
  @JsonKey(includeToJson: false, includeFromJson: false)
  AnalyzerContext? get context => throw UnimplementedError();

  @override
  final String ref;

  FunctionTypeRefSerializer({required this.ref, required super.nullabilitySuffix, super.jsonType = refJsonType})
    : super(
        name: '',
        namedParameterTypes: {},
        normalParameterTypes: [],
        optionalParameterTypes: [],
        parameters: [],
        returnType: DartTypeRefSerializer(ref: '', jsonType: refJsonType, nullabilitySuffix: null),
        typeFormals: [],
        isDartCore: false,
      );

  factory FunctionTypeRefSerializer.from(FunctionType type, AnalyzerContext context) => FunctionTypeRefSerializer(
    ref: context.getTypeRef(type).ref,
    nullabilitySuffix: nullabilitySuffixToString(type.nullabilitySuffix),
  );

  factory FunctionTypeRefSerializer.fromJson(Map<String, dynamic> json) => _$FunctionTypeRefSerializerFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$FunctionTypeRefSerializerToJson(this);
}

@JsonSerializable(explicitToJson: true, converters: [BooleanConverter()], includeIfNull: false)
class DartTypeSerializer with SourceSerializer<String?> implements DartTypeMetadata {
  @override
  @JsonKey(includeToJson: false, includeFromJson: false)
  AnalyzerContext? context;

  @override
  final String name;

  @override
  final String? source;

  @override
  List<SourceSerializer> get _refList => [];

  /// why not final? See [DartTypeRefSerializer] note
  @override
  String? nullabilitySuffix;

  @override
  final bool isDartCore;

  @JsonKey(name: '_t_')
  final String jsonType;

  DartTypeSerializer({
    this.jsonType = refJsonType,
    required this.name,
    required this.source,
    required this.nullabilitySuffix,
    required this.isDartCore,
    this.context,
  });

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
          jsonType: type.getDisplayString(withNullability: false),
        );
    }
  }

  factory DartTypeSerializer.fromJson(Map<String, dynamic> json) {
    switch (json['_t_']) {
      case _voidJsonType:
        return VoidTypeSerializer.fromJson(json);
      case _dynamicJsonType:
        return DynamicTypeSerializer.fromJson(json);
      case _neverJsonType:
        return NeverTypeSerializer.fromJson(json);
      case _functionJsonType:
        return FunctionTypeSerializer.fromJson(json);
      case _interfaceJsonType:
        return InterfaceTypeSerializer.fromJson(json);
      case _typeParameterJsonType:
        return TypeParameterTypeSerializer.fromJson(json);
      case _recordJsonType:
        return RecordTypeSerializer.fromJson(json);
    }
    return _$DartTypeSerializerFromJson(json);
  }
  Map<String, dynamic> toJson() => _$DartTypeSerializerToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class VoidTypeSerializer extends DartTypeSerializer {
  @override
  @JsonKey(includeToJson: false, includeFromJson: false)
  AnalyzerContext? get context => throw UnimplementedError();

  VoidTypeSerializer()
    : super(name: 'void', source: null, jsonType: _voidJsonType, isDartCore: true, nullabilitySuffix: null);

  factory VoidTypeSerializer.fromJson(Map<String, dynamic> json) => _$VoidTypeSerializerFromJson(json);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class DynamicTypeSerializer extends DartTypeSerializer {
  @override
  @JsonKey(includeToJson: false, includeFromJson: false)
  AnalyzerContext? get context => throw UnimplementedError();

  DynamicTypeSerializer()
    : super(name: 'dynamic', source: null, jsonType: _dynamicJsonType, isDartCore: true, nullabilitySuffix: null);

  factory DynamicTypeSerializer.fromJson(Map<String, dynamic> json) => _$DynamicTypeSerializerFromJson(json);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class NeverTypeSerializer extends DartTypeSerializer {
  @override
  @JsonKey(includeToJson: false, includeFromJson: false)
  AnalyzerContext? get context => throw UnimplementedError();

  NeverTypeSerializer()
    : super(name: 'Never', source: null, jsonType: _neverJsonType, isDartCore: true, nullabilitySuffix: null);

  factory NeverTypeSerializer.fromJson(Map<String, dynamic> json) => _$NeverTypeSerializerFromJson(json);
}

@JsonSerializable(explicitToJson: true, converters: [BooleanConverter()], includeIfNull: false)
class FunctionTypeSerializer extends DartTypeSerializer implements FunctionTypeMetadata {
  @override
  @JsonKey(includeToJson: false, includeFromJson: false)
  AnalyzerContext? get context => throw UnimplementedError();

  @override
  Null get source => null;
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
    super.jsonType = _functionJsonType,
    required super.name,
    required super.nullabilitySuffix,
    required super.isDartCore,
    required this.namedParameterTypes,
    required this.normalParameterTypes,
    required this.optionalParameterTypes,
    required this.parameters,
    required this.returnType,
    required this.typeFormals,
  }) : super(source: null);

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
  AnalyzerContext? get context => throw UnimplementedError();

  @override
  final List<DartTypeSerializer> typeArguments;
  @override
  final InterfaceElementRefSerializer element;

  InterfaceTypeSerializer({
    super.jsonType = _interfaceJsonType,
    required super.name,
    required super.source,
    required super.nullabilitySuffix,
    required super.isDartCore,
    required this.typeArguments,
    required this.element,
  });

  factory InterfaceTypeSerializer.from(InterfaceType type, AnalyzerContext context) {
    return InterfaceTypeSerializer(
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
  @JsonKey(includeToJson: false, includeFromJson: false)
  AnalyzerContext? get context => throw UnimplementedError();

  @override
  final DartTypeRefSerializer bound;
  @override
  @JsonKey(includeToJson: false, includeFromJson: false)
  TypeParameterElementSerializer get element => throw UnimplementedError();

  TypeParameterTypeSerializer({
    super.jsonType = _typeParameterJsonType,
    required super.name,
    required super.source,
    required super.nullabilitySuffix,
    required this.bound,
    // required this.element,
  }) : super(isDartCore: true);

  factory TypeParameterTypeSerializer.from(TypeParameterType type, AnalyzerContext context) {
    return TypeParameterTypeSerializer(
      // ignore: deprecated_member_use
      name: type.getDisplayString(withNullability: false),
      source: context.getPath(type.element.source),
      nullabilitySuffix: nullabilitySuffixToString(type.nullabilitySuffix),
      // element: TypeParameterElementSerializer.from(type.element, projectPath),
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
  @JsonKey(includeToJson: false, includeFromJson: false)
  AnalyzerContext? get context => throw UnimplementedError();

  @override
  Null get source => null;
  @override
  final List<RecordTypePositionalFieldSerializer> positionalFields;
  @override
  final List<RecordTypeNamedFieldSerializer> namedFields;

  RecordTypeSerializer({
    super.jsonType = _recordJsonType,
    required super.name,
    required super.nullabilitySuffix,
    required this.positionalFields,
    required this.namedFields,
  }) : super(source: null, isDartCore: true);

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
