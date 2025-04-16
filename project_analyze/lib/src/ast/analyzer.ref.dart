part of 'analyzer.dart';

enum RefJsonType {
  @JsonValue('__element_ref__')
  element,
  @JsonValue('__type_ref__')
  type,
  @JsonValue('__internal_element_ref__')
  internalElement,
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
class InterfaceElementRefSerializer
    with ReferenceableSerializer
    implements InterfaceElementMetadata {
  final String? path;

  @override
  final String ref;
  @override
  final RefJsonType jsonType;
  @override
  final String name;

  InterfaceElementRefSerializer({
    required this.ref,
    required this.jsonType,
    required this.name,
    this.path,
  });

  InterfaceElementRefSerializer.placeholder()
    : ref = '',
      jsonType = RefJsonType.placeholder,
      name = '',
      path = null;

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

  @override
  String get source => throw UnimplementedError();
}

/// Note: in analyzer 7.3.0,
/// [DartType]s with different nullability suffixes are same hash code.
/// So we need to explicitly specify the nullability suffix in the serializer.
@JsonSerializable(explicitToJson: true, includeIfNull: false)
class DartTypeRefSerializer with ReferenceableSerializer implements DartTypeMetadata {
  @override
  final RefJsonType jsonType;

  @override
  final String ref;

  @override
  final bool isDartCore;

  @override
  final String name;

  @override
  final String? nullabilitySuffix;

  DartTypeRefSerializer({
    required this.ref,
    required this.nullabilitySuffix,
    required this.name,
    required this.isDartCore,
  }) : jsonType = RefJsonType.type;

  factory DartTypeRefSerializer.fromJson(Map<String, dynamic> json) =>
      _$DartTypeRefSerializerFromJson(json);

  Map<String, dynamic> toJson() => _$DartTypeRefSerializerToJson(this);

  @override
  String? get source => throw UnimplementedError();
}

/// Notes: See [DartTypeRefSerializer] note
@JsonSerializable(explicitToJson: true, includeIfNull: false)
class InterfaceTypeRefSerializer with ReferenceableSerializer implements InterfaceTypeMetadata {
  @override
  final String ref;

  @override
  final RefJsonType jsonType;

  @override
  final String? nullabilitySuffix;

  @override
  InterfaceElementMetadata get element => throw UnimplementedError();

  @override
  bool get isDartCore => throw UnimplementedError();

  @override
  String get name => throw UnimplementedError();

  @override
  String? get source => throw UnimplementedError();

  @override
  List<DartTypeMetadata> get typeArguments => throw UnimplementedError();

  InterfaceTypeRefSerializer({required this.ref, required this.nullabilitySuffix})
    : jsonType = RefJsonType.type;

  factory InterfaceTypeRefSerializer.from(InterfaceType type, AnalyzerContext context) =>
      InterfaceTypeRefSerializer(
        ref: context.getTypeRef(type).ref,
        nullabilitySuffix: nullabilitySuffixToString(type.nullabilitySuffix),
      );

  factory InterfaceTypeRefSerializer.fromJson(Map<String, dynamic> json) =>
      _$InterfaceTypeRefSerializerFromJson(json);

  Map<String, dynamic> toJson() => _$InterfaceTypeRefSerializerToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class FunctionTypeRefSerializer with ReferenceableSerializer implements FunctionTypeMetadata {
  @override
  final String ref;

  @override
  final RefJsonType jsonType;

  @override
  final String? nullabilitySuffix;

  FunctionTypeRefSerializer({required this.ref, required this.nullabilitySuffix})
    : jsonType = RefJsonType.type;

  factory FunctionTypeRefSerializer.from(FunctionType type, AnalyzerContext context) =>
      FunctionTypeRefSerializer(
        ref: context.getTypeRef(type).ref,
        nullabilitySuffix: nullabilitySuffixToString(type.nullabilitySuffix),
      );

  factory FunctionTypeRefSerializer.fromJson(Map<String, dynamic> json) =>
      _$FunctionTypeRefSerializerFromJson(json);

  Map<String, dynamic> toJson() => _$FunctionTypeRefSerializerToJson(this);

  @override
  bool get isDartCore => throw UnimplementedError();

  @override
  String get name => throw UnimplementedError();

  @override
  Map<String, DartTypeMetadata> get namedParameterTypes => throw UnimplementedError();

  @override
  List<DartTypeMetadata> get normalParameterTypes => throw UnimplementedError();

  @override
  List<DartTypeMetadata> get optionalParameterTypes => throw UnimplementedError();

  @override
  List<ParameterElementMetadata> get parameters => throw UnimplementedError();

  @override
  DartTypeMetadata get returnType => throw UnimplementedError();

  @override
  String? get source => throw UnimplementedError();

  @override
  List<TypeParameterElementMetadata> get typeFormals => throw UnimplementedError();
}
