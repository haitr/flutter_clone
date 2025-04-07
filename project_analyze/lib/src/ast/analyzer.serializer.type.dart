part of 'analyzer.dart';

const _refJsonType = '__type_ref__';
const _refJsonElement = '__element_ref__';
const _refJsonInternalElement = '__internal_element_ref__';
const _placeholderJsonType = '__placeholder__';

@JsonSerializable(explicitToJson: true, includeIfNull: false, converters: [BooleanConverter()])
class InterfaceElementRefSerializer extends InterfaceElementSerializer {
  final String ref;
  final String jsonType;

  InterfaceElementRefSerializer({
    required this.ref,
    required this.jsonType,
    required super.source,
    required super.name,
    required super.interfaces,
    required super.mixins,
    required super.supertype,
    required super.allSupertypes,
  }) : super(
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

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class DartTypeRefSerializer extends DartTypeSerializer {
  final String ref;

  DartTypeRefSerializer({required this.ref, super.jsonType = _refJsonType})
    : super(nullabilitySuffix: NullabilitySuffix.none, isDartCore: false, isDartAsync: false);

  factory DartTypeRefSerializer.fromJson(Map<String, dynamic> json) =>
      _$DartTypeRefSerializerFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$DartTypeRefSerializerToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class InterfaceTypeRefSerializer extends InterfaceTypeSerializer {
  final String ref;

  InterfaceTypeRefSerializer({required this.ref, super.jsonType = _refJsonType})
    : super(
        typeArguments: [],
        element: InterfaceElementRefSerializer(
          ref: '',
          jsonType: _refJsonElement,
          source: '',
          name: '',
          interfaces: [],
          mixins: [],
          supertype: null,
          allSupertypes: [],
        ),
        nullabilitySuffix: NullabilitySuffix.none,
        isDartCore: false,
        isDartAsync: false,
      );

  factory InterfaceTypeRefSerializer.from(InterfaceType type, AnalyzerContext context) =>
      InterfaceTypeRefSerializer(ref: context.getTypeRef(type).ref);

  factory InterfaceTypeRefSerializer.fromJson(Map<String, dynamic> json) =>
      _$InterfaceTypeRefSerializerFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$InterfaceTypeRefSerializerToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class FunctionTypeRefSerializer extends FunctionTypeSerializer {
  final String ref;

  FunctionTypeRefSerializer({required this.ref, super.jsonType = _refJsonType})
    : super(
        namedParameterTypes: {},
        normalParameterTypes: [],
        optionalParameterTypes: [],
        parameters: [],
        returnType: DartTypeRefSerializer(ref: '', jsonType: _refJsonType),
        typeFormals: [],
        nullabilitySuffix: NullabilitySuffix.none,
        isDartCore: false,
        isDartAsync: false,
      );

  factory FunctionTypeRefSerializer.from(FunctionType type, AnalyzerContext context) =>
      FunctionTypeRefSerializer(ref: context.getTypeRef(type).ref);

  factory FunctionTypeRefSerializer.fromJson(Map<String, dynamic> json) =>
      _$FunctionTypeRefSerializerFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$FunctionTypeRefSerializerToJson(this);
}

@JsonSerializable(
  explicitToJson: true,
  converters: [BooleanConverter(), NullabilitySuffixConverter()],
  includeIfNull: false,
)
class DartTypeSerializer implements DartTypeMetadata {
  @override
  final String? name;
  @override
  final NullabilitySuffix nullabilitySuffix;
  @override
  final bool isDartCore;
  @override
  final bool isDartAsync;

  @JsonKey(name: '_t_')
  final String jsonType;

  DartTypeSerializer({
    this.jsonType = _refJsonType,
    this.name,
    required this.nullabilitySuffix,
    required this.isDartCore,
    required this.isDartAsync,
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
          // ignore: deprecated_member_use
          name: type.getDisplayString(withNullability: false),
          nullabilitySuffix: type.nullabilitySuffix,
          isDartCore: type.isDartCore,
          isDartAsync: type.isDartAsync,
          // ignore: deprecated_member_use
          jsonType: type.getDisplayString(withNullability: false),
        );
    }
  }

  factory DartTypeSerializer.fromJson(Map<String, dynamic> json) =>
      _$DartTypeSerializerFromJson(json);
  Map<String, dynamic> toJson() => _$DartTypeSerializerToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class VoidTypeSerializer extends DartTypeSerializer {
  VoidTypeSerializer()
    : super(
        jsonType: '__void_type__',
        isDartCore: true,
        isDartAsync: false,
        nullabilitySuffix: NullabilitySuffix.none,
      );
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class DynamicTypeSerializer extends DartTypeSerializer {
  DynamicTypeSerializer()
    : super(
        jsonType: '__dynamic_type__',
        isDartCore: true,
        isDartAsync: false,
        nullabilitySuffix: NullabilitySuffix.none,
      );
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class NeverTypeSerializer extends DartTypeSerializer {
  NeverTypeSerializer()
    : super(
        jsonType: '__never_type__',
        isDartCore: true,
        isDartAsync: false,
        nullabilitySuffix: NullabilitySuffix.none,
      );
}

@JsonSerializable(
  explicitToJson: true,
  converters: [BooleanConverter(), NullabilitySuffixConverter()],
  includeIfNull: false,
)
class FunctionTypeSerializer extends DartTypeSerializer implements FunctionTypeMetadata {
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
    super.jsonType = '__function_type__',
    super.name,
    required super.nullabilitySuffix,
    required super.isDartCore,
    required super.isDartAsync,
    required this.namedParameterTypes,
    required this.normalParameterTypes,
    required this.optionalParameterTypes,
    required this.parameters,
    required this.returnType,
    required this.typeFormals,
  });

  factory FunctionTypeSerializer.from(FunctionType type, AnalyzerContext context) {
    return FunctionTypeSerializer(
      // ignore: deprecated_member_use
      name: type.getDisplayString(withNullability: false),
      nullabilitySuffix: type.nullabilitySuffix,
      isDartCore: type.isDartCore,
      isDartAsync: type.isDartAsync,
      returnType: context.getTypeRef(type.returnType),
      namedParameterTypes: type.namedParameterTypes.map(
        (key, value) => MapEntry(key, context.getTypeRef(value)),
      ),
      normalParameterTypes: type.normalParameterTypes.map((e) => context.getTypeRef(e)).toList(),
      optionalParameterTypes:
          type.optionalParameterTypes.map((e) => context.getTypeRef(e)).toList(),
      parameters: type.parameters.map((e) => ParameterElementSerializer.from(e, context)).toList(),
      typeFormals:
          type.typeFormals.map((e) => TypeParameterElementSerializer.from(e, context)).toList(),
    );
  }

  factory FunctionTypeSerializer.fromJson(Map<String, dynamic> json) =>
      _$FunctionTypeSerializerFromJson(json);
  @override
  Map<String, dynamic> toJson() => _$FunctionTypeSerializerToJson(this);
}

@JsonSerializable(
  explicitToJson: true,
  converters: [BooleanConverter(), NullabilitySuffixConverter()],
  includeIfNull: false,
)
class InterfaceTypeSerializer extends DartTypeSerializer implements InterfaceTypeMetadata {
  @override
  final List<DartTypeSerializer> typeArguments;
  @override
  final InterfaceElementRefSerializer element;

  InterfaceTypeSerializer({
    super.jsonType = '__interface_type__',
    super.name,
    required super.nullabilitySuffix,
    required super.isDartCore,
    required super.isDartAsync,
    required this.typeArguments,
    required this.element,
  });

  factory InterfaceTypeSerializer.from(InterfaceType type, AnalyzerContext context) {
    return InterfaceTypeSerializer(
      // ignore: deprecated_member_use
      name: type.getDisplayString(withNullability: false),
      nullabilitySuffix: type.nullabilitySuffix,
      isDartCore: type.isDartCore,
      isDartAsync: type.isDartAsync,
      typeArguments: type.typeArguments.map((e) => DartTypeSerializer.from(e, context)).toList(),
      element: context.getElementRef(type.element),
    );
  }

  factory InterfaceTypeSerializer.fromJson(Map<String, dynamic> json) =>
      _$InterfaceTypeSerializerFromJson(json);
  @override
  Map<String, dynamic> toJson() => _$InterfaceTypeSerializerToJson(this);
}

@JsonSerializable(
  explicitToJson: true,
  converters: [BooleanConverter(), NullabilitySuffixConverter()],
  includeIfNull: false,
)
class TypeParameterTypeSerializer extends DartTypeSerializer implements TypeParameterTypeMetadata {
  @override
  final DartTypeRefSerializer bound;
  @override
  // final TypeParameterElementSerializer element;
  @JsonKey(includeToJson: false, includeFromJson: false)
  TypeParameterElementSerializer get element => throw UnimplementedError();

  TypeParameterTypeSerializer({
    super.jsonType = '__type_parameter_type__',
    super.name,
    required super.nullabilitySuffix,
    required super.isDartCore,
    required super.isDartAsync,
    required this.bound,
    // required this.element,
  });

  factory TypeParameterTypeSerializer.from(TypeParameterType type, AnalyzerContext context) {
    return TypeParameterTypeSerializer(
      // ignore: deprecated_member_use
      name: type.getDisplayString(withNullability: false),
      nullabilitySuffix: type.nullabilitySuffix,
      isDartCore: type.isDartCore,
      isDartAsync: type.isDartAsync,
      // element: TypeParameterElementSerializer.from(type.element, projectPath),
      bound: context.getTypeRef(type.bound),
    );
  }

  factory TypeParameterTypeSerializer.fromJson(Map<String, dynamic> json) =>
      _$TypeParameterTypeSerializerFromJson(json);
  @override
  Map<String, dynamic> toJson() => _$TypeParameterTypeSerializerToJson(this);
}

@JsonSerializable(
  explicitToJson: true,
  converters: [BooleanConverter(), NullabilitySuffixConverter()],
  includeIfNull: false,
)
class RecordTypeSerializer extends DartTypeSerializer implements RecordTypeMetadata {
  @override
  final List<RecordTypePositionalFieldSerializer> positionalFields;
  @override
  final List<RecordTypeNamedFieldSerializer> namedFields;

  RecordTypeSerializer({
    super.jsonType = '__record_type__',
    super.name,
    required super.nullabilitySuffix,
    required super.isDartCore,
    required super.isDartAsync,
    required this.positionalFields,
    required this.namedFields,
  });

  factory RecordTypeSerializer.from(RecordType type, AnalyzerContext context) {
    return RecordTypeSerializer(
      // ignore: deprecated_member_use
      name: type.getDisplayString(withNullability: false),
      nullabilitySuffix: type.nullabilitySuffix,
      isDartCore: type.isDartCore,
      isDartAsync: type.isDartAsync,
      positionalFields:
          type.positionalFields
              .map((e) => RecordTypePositionalFieldSerializer.from(e, context))
              .toList(),
      namedFields:
          type.namedFields.map((e) => RecordTypeNamedFieldSerializer.from(e, context)).toList(),
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
