part of 'analyzer.dart';

mixin ReferenceableSerializer {
  String get ref;
  String get jsonType;
}

@JsonSerializable(explicitToJson: true, includeIfNull: false, converters: [BooleanConverter()])
class InterfaceElementRefSerializer
    with ReferenceableSerializer, SourceSerializer<String>
    implements InterfaceElementMetadata {
  @override
  @JsonKey(includeToJson: false, includeFromJson: false)
  final AnalyzerContext? context;

  @override
  final String ref;
  @override
  final String jsonType;
  @override
  final String name;
  @override
  final String source;

  InterfaceElementRefSerializer({
    this.context,
    required this.ref,
    required this.jsonType,
    required this.source,
    required this.name,
  });

  InterfaceElementRefSerializer.placeholder()
    : ref = '',
      jsonType = refJsonElement,
      name = '',
      source = '',
      context = null;

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

/// Note: in analyzer 7.3.0,
/// [DartType]s with different nullability suffixes are same hash code.
/// So we need to explicitly specify the nullability suffix in the serializer.
@JsonSerializable(explicitToJson: true, includeIfNull: false)
class DartTypeRefSerializer with ReferenceableSerializer, SourceSerializer<String> implements DartTypeMetadata {
  @override
  Null get context => null;

  @override
  final String jsonType;

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
    this.jsonType = refJsonType,
    required this.name,
    required this.isDartCore,
  });

  factory DartTypeRefSerializer.fromJson(Map<String, dynamic> json) => _$DartTypeRefSerializerFromJson(json);

  Map<String, dynamic> toJson() => _$DartTypeRefSerializerToJson(this);
}

/// Notes: See [DartTypeRefSerializer] note
@JsonSerializable(explicitToJson: true, includeIfNull: false)
class InterfaceTypeRefSerializer
    with ReferenceableSerializer, SourceSerializer<String>
    implements InterfaceTypeMetadata {
  @override
  Null get context => null;

  @override
  final String ref;

  @override
  final String jsonType;

  @override
  final String? nullabilitySuffix;

  @override
  InterfaceElementMetadata get element => throw UnimplementedError();

  @override
  bool get isDartCore => throw UnimplementedError();

  @override
  String get name => throw UnimplementedError();

  @override
  List<DartTypeMetadata> get typeArguments => throw UnimplementedError();

  InterfaceTypeRefSerializer({required this.ref, required this.nullabilitySuffix}) : jsonType = refJsonType;

  factory InterfaceTypeRefSerializer.from(InterfaceType type, AnalyzerContext context) => InterfaceTypeRefSerializer(
    ref: context.getTypeRef(type).ref,
    nullabilitySuffix: nullabilitySuffixToString(type.nullabilitySuffix),
  );

  factory InterfaceTypeRefSerializer.fromJson(Map<String, dynamic> json) => _$InterfaceTypeRefSerializerFromJson(json);

  Map<String, dynamic> toJson() => _$InterfaceTypeRefSerializerToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class FunctionTypeRefSerializer extends FunctionTypeSerializer with ReferenceableSerializer {
  @override
  Null get context => null;

  @override
  final String ref;

  FunctionTypeRefSerializer({required this.ref, required super.nullabilitySuffix, super.jsonType = refJsonType})
    : super(
        name: '',
        namedParameterTypes: {},
        normalParameterTypes: [],
        optionalParameterTypes: [],
        parameters: [],
        returnType: DartTypeRefSerializer(
          ref: '',
          jsonType: refJsonType,
          nullabilitySuffix: null,
          name: '',
          isDartCore: false,
        ),
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
