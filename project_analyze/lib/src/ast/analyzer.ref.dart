part of 'analyzer.dart';

enum RefJsonType {
  @JsonValue('__element_ref__')
  element,
  @JsonValue('__internal_element_ref__')
  internalElement,
  @JsonValue('__type_ref__')
  type,
  @JsonValue('__interface_type_ref__')
  interfaceType,
  @JsonValue('__function_type_ref__')
  functionType,
  @JsonValue('__alias_ref__')
  alias,
  // internal use only
  @JsonValue('__placeholder__')
  placeholder,
}

mixin ReferenceableSerializer {
  String get ref;

  @JsonKey(name: _jsonTypeField)
  RefJsonType get jsonType;
}

@JsonSerializable(explicitToJson: true, includeIfNull: false, converters: [BooleanConverter()])
class InterfaceElementRefSerializer with ReferenceableSerializer implements InterfaceElementMetadata {
  @override
  final String source;

  @override
  final String ref;
  @override
  final RefJsonType jsonType;
  @override
  final String name;

  InterfaceElementRefSerializer({required this.ref, required this.jsonType, required this.name, required this.source});

  InterfaceElementRefSerializer.placeholder() : ref = '', jsonType = RefJsonType.placeholder, name = '', source = '';

  factory InterfaceElementRefSerializer.fromJson(Map<String, dynamic> json) =>
      _$InterfaceElementRefSerializerFromJson(json);

  Map<String, dynamic> toJson() => _$InterfaceElementRefSerializerToJson(this);

  @override
  List<InterfaceTypeMetadata> get allSupertypes => throw UnimplementedError();

  @override
  List<InterfaceTypeMetadata> get interfaces => throw UnimplementedError();

  @override
  List<InterfaceTypeMetadata> get mixins => throw UnimplementedError();

  @override
  InterfaceTypeMetadata? get supertype => throw UnimplementedError();

  @override
  bool get isPrivate => throw UnimplementedError();

  @override
  bool get isPublic => throw UnimplementedError();

  @override
  List<FieldElementMetadata> get fields => throw UnimplementedError();

  @override
  List<MethodElementMetadata> get methods => throw UnimplementedError();

  @override
  List<TypeParameterElementMetadata> get typeParameters => throw UnimplementedError();

  @override
  bool get isSimplyBounded => throw UnimplementedError();
  @override
  List<ConstructorElementMetadata> get constructors => throw UnimplementedError();
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class TypeAliasElementRefSerializer with ReferenceableSerializer implements TypeAliasElementMetadata {
  @override
  final String source;

  @override
  final RefJsonType jsonType;

  @override
  final String name;

  @override
  final String ref;

  @override
  final List<TypeParameterElementSerializer> typeParameters;

  TypeAliasElementRefSerializer({
    required this.source,
    required this.jsonType,
    required this.name,
    required this.ref,
    required this.typeParameters,
  });

  factory TypeAliasElementRefSerializer.from(TypeAliasElement element, AnalyzerContext context) =>
      TypeAliasElementRefSerializer(
        source: context.getPath(element.source)!,
        jsonType: RefJsonType.alias,
        name: element.name,
        ref: context.getTypeAliasRef(element).ref,
        typeParameters: element.typeParameters.mapWithContext(context, TypeParameterElementSerializer.from),
      );

  factory TypeAliasElementRefSerializer.fromJson(Map<String, dynamic> json) =>
      _$TypeAliasElementRefSerializerFromJson(json);

  Map<String, dynamic> toJson() => _$TypeAliasElementRefSerializerToJson(this);

  @override
  bool get isPrivate => throw UnimplementedError();

  @override
  bool get isPublic => throw UnimplementedError();

  @override
  bool get isSimplyBounded => throw UnimplementedError();

  @override
  DartTypeMetadata get aliasedType => throw UnimplementedError();
}

/// Note: in analyzer 7.3.0,
/// [DartType]s with different nullability suffixes are same hash code.
/// So we need to explicitly specify the nullability suffix in the serializer.
@JsonSerializable(explicitToJson: true, includeIfNull: false)
class DartTypeRefSerializer with ReferenceableSerializer implements DartTypeMetadata {
  @override
  final InstantiatedTypeAliasElementSerializer? alias;

  @override
  @JsonKey(name: _jsonTypeField, includeToJson: true)
  RefJsonType get jsonType => RefJsonType.type;

  @override
  final String ref;

  @override
  final bool isDartCore;

  @override
  final String? name;

  @override
  final String? nullabilitySuffix;

  @override
  final String? source;

  DartTypeRefSerializer({
    required this.ref,
    required this.nullabilitySuffix,
    required this.name,
    required this.isDartCore,
    this.alias,
    this.source,
  });

  factory DartTypeRefSerializer.from(DartType type, AnalyzerContext context, {String? ref}) => DartTypeRefSerializer(
    ref: ref ?? context.getTypeRef(type).ref,
    nullabilitySuffix: nullabilitySuffixToString(type.nullabilitySuffix),
    // ignore: deprecated_member_use
    name: type.name,
    isDartCore: type.isDartCore,
    alias: type.alias != null ? InstantiatedTypeAliasElementSerializer.from(type.alias!, context) : null,
  );

  factory DartTypeRefSerializer.fromJson(Map<String, dynamic> json) {
    final type = _$RefJsonTypeEnumMap.entries.firstWhere((e) => e.value == json[_jsonTypeField]).key;
    return switch (type) {
      RefJsonType.interfaceType => _$InterfaceTypeRefSerializerFromJson(json),
      RefJsonType.functionType => _$FunctionTypeRefSerializerFromJson(json),
      _ => _$DartTypeRefSerializerFromJson(json),
    };
  }

  Map<String, dynamic> toJson() => _$DartTypeRefSerializerToJson(this);

  @override
  String toString() {
    return '(type) $ref: $name|$nullabilitySuffix';
  }
}

/// Notes: See [DartTypeRefSerializer] note
@JsonSerializable(explicitToJson: true, includeIfNull: false)
class InterfaceTypeRefSerializer extends DartTypeRefSerializer
    with ReferenceableSerializer
    implements InterfaceTypeMetadata {
  @override
  RefJsonType get jsonType => RefJsonType.interfaceType;

  @override
  final List<DartTypeRefSerializer> typeArguments;

  @override
  InterfaceElementMetadata get element => throw UnimplementedError();

  InterfaceTypeRefSerializer({
    required super.ref,
    required super.nullabilitySuffix,
    required super.name,
    required super.isDartCore,
    super.alias,
    required this.typeArguments,
  });

  factory InterfaceTypeRefSerializer.from(InterfaceType type, AnalyzerContext context, {String? ref}) =>
      InterfaceTypeRefSerializer(
        ref: ref ?? context.getTypeRef(type).ref,
        nullabilitySuffix: nullabilitySuffixToString(type.nullabilitySuffix),
        // ignore: deprecated_member_use
        name: type.name!,
        isDartCore: type.isDartCore,
        alias: type.alias != null ? InstantiatedTypeAliasElementSerializer.from(type.alias!, context) : null,
        typeArguments: type.typeArguments.map(context.getTypeRef).toList(),
      );

  factory InterfaceTypeRefSerializer.fromJson(Map<String, dynamic> json) => _$InterfaceTypeRefSerializerFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$InterfaceTypeRefSerializerToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class FunctionTypeRefSerializer extends DartTypeRefSerializer
    with ReferenceableSerializer
    implements FunctionTypeMetadata {
  @override
  RefJsonType get jsonType => RefJsonType.functionType;

  @override
  final Map<String, DartTypeRefSerializer> namedParameterTypes;
  @override
  final List<DartTypeRefSerializer> normalParameterTypes;
  @override
  final List<DartTypeRefSerializer> optionalParameterTypes;
  @override
  final DartTypeRefSerializer returnType;

  @override
  List<ParameterElementMetadata> get parameters => throw UnimplementedError();

  @override
  List<TypeParameterElementMetadata> get typeFormals => throw UnimplementedError();

  FunctionTypeRefSerializer({
    required super.ref,
    required super.nullabilitySuffix,
    required super.name,
    required super.isDartCore,
    super.alias,
    required this.namedParameterTypes,
    required this.normalParameterTypes,
    required this.optionalParameterTypes,
    required this.returnType,
  });

  factory FunctionTypeRefSerializer.from(FunctionType type, AnalyzerContext context, {String? ref}) {
    // if (type.getDisplayString(withNullability: false).startsWith('void Function(bool)')) {
    //   print('${type.hashCode}: ${type.getDisplayString(withNullability: false)}');
    // }
    return FunctionTypeRefSerializer(
      ref: ref ?? context.getTypeRef(type).ref,
      nullabilitySuffix: nullabilitySuffixToString(type.nullabilitySuffix),
      // ignore: deprecated_member_use
      name: type.getDisplayString(withNullability: false),
      isDartCore: type.isDartCore,
      alias: type.alias != null ? InstantiatedTypeAliasElementSerializer.from(type.alias!, context) : null,
      returnType: context.getTypeRef(type.returnType),
      normalParameterTypes: type.normalParameterTypes.map(context.getTypeRef).toList(),
      namedParameterTypes: type.namedParameterTypes.map((key, value) => MapEntry(key, context.getTypeRef(value))),
      optionalParameterTypes: type.optionalParameterTypes.map(context.getTypeRef).toList(),
    );
  }

  factory FunctionTypeRefSerializer.fromJson(Map<String, dynamic> json) => _$FunctionTypeRefSerializerFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$FunctionTypeRefSerializerToJson(this);

  @override
  String toString() {
    return '(function)$ref: $name|$nullabilitySuffix';
  }
}
