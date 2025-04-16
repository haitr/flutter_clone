part of 'analyzer.dart';

enum ElementJsonType {
  @JsonValue('class')
  classElement,
  @JsonValue('mixin')
  mixinElement,
  @JsonValue('enum')
  enumElement,
  @JsonValue('extension')
  extensionTypeElement,
  @JsonValue('interface')
  interfaceElement,
}

@JsonSerializable(explicitToJson: true, converters: [BooleanConverter()], includeIfNull: false)
class InterfaceElementSerializer
    with SourceSerializer<String>, _ReferenceableSerializer
    implements InterfaceElementMetadata {
  @override
  @JsonKey(includeToJson: false, includeFromJson: false)
  final AnalyzerContext? context;

  @override
  final String ref;

  @JsonKey(name: _jsonTypeField, includeToJson: true)
  final ElementJsonType jsonType;

  @override
  final String name;
  @override
  final List<ConstructorElementSerializer> constructors;
  @override
  final List<FieldElementSerializer> fields;
  @override
  final List<MethodElementSerializer> methods;
  @override
  final List<TypeParameterElementSerializer> typeParameters;
  @override
  final List<InterfaceTypeRefSerializer> interfaces;
  @override
  final List<InterfaceTypeRefSerializer> mixins;
  @override
  final InterfaceTypeRefSerializer? supertype;
  @override
  final List<InterfaceTypeRefSerializer> allSupertypes;
  @override
  final bool isPrivate;
  @override
  final bool isPublic;
  @override
  final bool isSimplyBounded;

  @override
  List<SourceSerializer> get _refList => [
    ...constructors,
    ...fields,
    ...methods,
    ...typeParameters,
  ];

  InterfaceElementSerializer({
    this.context,
    required this.jsonType,
    required String source,
    required this.ref,
    required this.name,
    required this.isPrivate,
    required this.isPublic,
    required this.fields,
    required this.methods,
    required this.typeParameters,
    required this.isSimplyBounded,
    required this.constructors,
    required this.interfaces,
    required this.mixins,
    required this.supertype,
    required this.allSupertypes,
  }) {
    this.source = source;
  }

  InterfaceElementSerializer.placeholder()
    : context = null,
      ref = '',
      jsonType = ElementJsonType.interfaceElement,
      name = '',
      constructors = [],
      fields = [],
      methods = [],
      typeParameters = [],
      interfaces = [],
      mixins = [],
      supertype = null,
      allSupertypes = [],
      isPrivate = false,
      isPublic = false,
      isSimplyBounded = false;

  factory InterfaceElementSerializer.from(InterfaceElement element, AnalyzerContext context) {
    switch (element) {
      case ClassElement():
        return ClassElementSerializer.from(element, context);
      case MixinElement():
        return MixinElementSerializer.from(element, context);
      case EnumElement():
        return EnumElementSerializer.from(element, context);
      case ExtensionTypeElement():
        return ExtensionTypeElementSerializer.from(element, context);
      default:
        throw UnimplementedError('InterfaceElementSerializer.from: $element');
    }
  }

  factory InterfaceElementSerializer.fromJson(Map<String, dynamic> json) {
    final type =
        _$ElementJsonTypeEnumMap.entries
            .firstWhereOrNull((e) => e.value == json[_jsonTypeField])
            ?.key;
    switch (type) {
      case ElementJsonType.classElement:
        return ClassElementSerializer.fromJson(json);
      case ElementJsonType.mixinElement:
        return MixinElementSerializer.fromJson(json);
      case ElementJsonType.enumElement:
        return EnumElementSerializer.fromJson(json);
      case ElementJsonType.extensionTypeElement:
        return ExtensionTypeElementSerializer.fromJson(json);
      default:
        throw UnimplementedError('InterfaceElementSerializer.fromJson: $json');
    }
  }

  Map<String, dynamic> toJson() => _$InterfaceElementSerializerToJson(this);
}

@JsonSerializable(explicitToJson: true, converters: [BooleanConverter()], includeIfNull: false)
class ClassElementSerializer extends InterfaceElementSerializer implements ClassElementMetadata {
  @override
  final bool hasNonFinalField;
  @override
  final bool isAbstract;
  @override
  final bool isBase;
  @override
  final bool isConstructable;
  @override
  final bool isDartCoreEnum;
  @override
  final bool isDartCoreObject;
  @override
  final bool isExhaustive;
  @override
  final bool isFinal;
  @override
  final bool isInterface;
  @override
  final bool isMixinApplication;
  @override
  final bool isMixinClass;
  @override
  final bool isSealed;
  @override
  final bool isValidMixin;

  ClassElementSerializer({
    required this.hasNonFinalField,
    required this.isAbstract,
    required this.isBase,
    required this.isConstructable,
    required this.isDartCoreEnum,
    required this.isDartCoreObject,
    required this.isExhaustive,
    required this.isFinal,
    required this.isInterface,
    required this.isMixinApplication,
    required this.isMixinClass,
    required this.isSealed,
    required this.isValidMixin,
    super.context,
    required super.ref,
    required super.source,
    required super.name,
    required super.constructors,
    required super.fields,
    required super.methods,
    required super.isPrivate,
    required super.isPublic,
    required super.isSimplyBounded,
    required super.typeParameters,
    required super.interfaces,
    required super.mixins,
    required super.supertype,
    required super.allSupertypes,
  }) : super(jsonType: ElementJsonType.classElement);

  factory ClassElementSerializer.from(ClassElement element, AnalyzerContext context) {
    return ClassElementSerializer(
      context: context,
      ref: context.getElementRef(element).ref,
      constructors:
          element.constructors.map((e) => ConstructorElementSerializer.from(e, context)).toList(),
      fields: element.fields.map((e) => FieldElementSerializer.from(e, context)).toList(),
      hasNonFinalField: element.hasNonFinalField,
      isAbstract: element.isAbstract,
      isBase: element.isBase,
      isConstructable: element.isConstructable,
      isDartCoreEnum: element.isDartCoreEnum,
      isDartCoreObject: element.isDartCoreObject,
      isExhaustive: element.isExhaustive,
      isFinal: element.isFinal,
      isInterface: element.isInterface,
      isMixinApplication: element.isMixinApplication,
      isMixinClass: element.isMixinClass,
      isPrivate: element.isPrivate,
      isPublic: element.isPublic,
      isSealed: element.isSealed,
      isSimplyBounded: element.isSimplyBounded,
      isValidMixin: element.isValidMixin,
      methods: element.methods.map((e) => MethodElementSerializer.from(e, context)).toList(),
      name: element.name,
      source: context.getPath(element.source)!,
      typeParameters:
          element.typeParameters
              .map((e) => TypeParameterElementSerializer.from(e, context))
              .toList(),
      interfaces: element.interfaces.map((e) => context.getInterfaceTypeRef(e)).toList(),
      mixins: element.mixins.map((e) => context.getInterfaceTypeRef(e)).toList(),
      supertype: element.supertype != null ? context.getInterfaceTypeRef(element.supertype!) : null,
      allSupertypes: element.allSupertypes.map((e) => context.getInterfaceTypeRef(e)).toList(),
    );
  }

  factory ClassElementSerializer.fromJson(Map<String, dynamic> json) =>
      _$ClassElementSerializerFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$ClassElementSerializerToJson(this);
}

@JsonSerializable(explicitToJson: true, converters: [BooleanConverter()], includeIfNull: false)
class MixinElementSerializer extends InterfaceElementSerializer implements MixinElementMetadata {
  @override
  final List<InterfaceTypeRefSerializer> superclassConstraints;
  @override
  final bool isBase;

  MixinElementSerializer({
    required this.isBase,
    required this.superclassConstraints,
    super.context,
    required super.ref,
    required super.source,
    required super.name,
    required super.isPrivate,
    required super.isPublic,
    required super.fields,
    required super.methods,
    required super.typeParameters,
    required super.isSimplyBounded,
    required super.constructors,
    required super.interfaces,
    required super.mixins,
    required super.supertype,
    required super.allSupertypes,
  }) : super(jsonType: ElementJsonType.mixinElement);

  factory MixinElementSerializer.from(MixinElement element, AnalyzerContext context) {
    return MixinElementSerializer(
      context: context,
      ref: context.getElementRef(element).ref,
      name: element.name,
      source: context.getPath(element.source)!,
      isPrivate: element.isPrivate,
      isPublic: element.isPublic,
      fields: element.fields.map((e) => FieldElementSerializer.from(e, context)).toList(),
      methods: element.methods.map((e) => MethodElementSerializer.from(e, context)).toList(),
      typeParameters:
          element.typeParameters
              .map((e) => TypeParameterElementSerializer.from(e, context))
              .toList(),
      isSimplyBounded: element.isSimplyBounded,
      isBase: element.isBase,
      superclassConstraints:
          element.superclassConstraints.map((e) => context.getInterfaceTypeRef(e)).toList(),
      constructors:
          element.constructors.map((e) => ConstructorElementSerializer.from(e, context)).toList(),
      interfaces: element.interfaces.map((e) => context.getInterfaceTypeRef(e)).toList(),
      mixins: element.mixins.map((e) => context.getInterfaceTypeRef(e)).toList(),
      supertype: element.supertype != null ? context.getInterfaceTypeRef(element.supertype!) : null,
      allSupertypes: element.allSupertypes.map((e) => context.getInterfaceTypeRef(e)).toList(),
    );
  }

  factory MixinElementSerializer.fromJson(Map<String, dynamic> json) =>
      _$MixinElementSerializerFromJson(json);
  @override
  Map<String, dynamic> toJson() => _$MixinElementSerializerToJson(this);
}

@JsonSerializable(explicitToJson: true, converters: [BooleanConverter()], includeIfNull: false)
class EnumElementSerializer extends InterfaceElementSerializer implements EnumElementMetadata {
  EnumElementSerializer({
    super.context,
    required super.ref,
    required super.source,
    required super.name,
    required super.isPrivate,
    required super.isPublic,
    required super.fields,
    required super.methods,
    required super.typeParameters,
    required super.isSimplyBounded,
    required super.constructors,
    required super.interfaces,
    required super.mixins,
    required super.supertype,
    required super.allSupertypes,
  }) : super(jsonType: ElementJsonType.enumElement);

  factory EnumElementSerializer.from(EnumElement element, AnalyzerContext context) {
    return EnumElementSerializer(
      context: context,
      ref: context.getElementRef(element).ref,
      name: element.name,
      source: context.getPath(element.source)!,
      isPrivate: element.isPrivate,
      isPublic: element.isPublic,
      fields: element.fields.map((e) => FieldElementSerializer.from(e, context)).toList(),
      methods: element.methods.map((e) => MethodElementSerializer.from(e, context)).toList(),
      typeParameters:
          element.typeParameters
              .map((e) => TypeParameterElementSerializer.from(e, context))
              .toList(),
      isSimplyBounded: element.isSimplyBounded,
      constructors:
          element.constructors.map((e) => ConstructorElementSerializer.from(e, context)).toList(),
      interfaces: element.interfaces.map((e) => context.getInterfaceTypeRef(e)).toList(),
      mixins: element.mixins.map((e) => context.getInterfaceTypeRef(e)).toList(),
      supertype: element.supertype != null ? context.getInterfaceTypeRef(element.supertype!) : null,
      allSupertypes: element.allSupertypes.map((e) => context.getInterfaceTypeRef(e)).toList(),
    );
  }

  factory EnumElementSerializer.fromJson(Map<String, dynamic> json) =>
      _$EnumElementSerializerFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$EnumElementSerializerToJson(this);
}

@JsonSerializable(explicitToJson: true, converters: [BooleanConverter()], includeIfNull: false)
class ExtensionTypeElementSerializer extends InterfaceElementSerializer
    implements ExtensionTypeElementMetadata {
  @override
  final ConstructorElementSerializer primaryConstructor;

  @override
  final FieldElementSerializer representation;

  @override
  final DartTypeSerializer typeErasure;

  ExtensionTypeElementSerializer({
    required this.primaryConstructor,
    required this.representation,
    required this.typeErasure,
    super.context,
    required super.ref,
    required super.source,
    required super.name,
    required super.isPrivate,
    required super.isPublic,
    required super.fields,
    required super.methods,
    required super.typeParameters,
    required super.isSimplyBounded,
    required super.constructors,
    required super.interfaces,
    required super.mixins,
    required super.supertype,
    required super.allSupertypes,
  }) : super(jsonType: ElementJsonType.extensionTypeElement);

  factory ExtensionTypeElementSerializer.from(
    ExtensionTypeElement element,
    AnalyzerContext context,
  ) {
    return ExtensionTypeElementSerializer(
      primaryConstructor: ConstructorElementSerializer.from(element.primaryConstructor, context),
      representation: FieldElementSerializer.from(element.representation, context),
      typeErasure: DartTypeSerializer.from(element.typeErasure, context),
      context: context,
      ref: context.getElementRef(element).ref,
      name: element.name,
      source: context.getPath(element.source)!,
      isPrivate: element.isPrivate,
      isPublic: element.isPublic,
      fields: element.fields.map((e) => FieldElementSerializer.from(e, context)).toList(),
      methods: element.methods.map((e) => MethodElementSerializer.from(e, context)).toList(),
      typeParameters:
          element.typeParameters
              .map((e) => TypeParameterElementSerializer.from(e, context))
              .toList(),
      isSimplyBounded: element.isSimplyBounded,
      constructors:
          element.constructors.map((e) => ConstructorElementSerializer.from(e, context)).toList(),
      interfaces: element.interfaces.map((e) => context.getInterfaceTypeRef(e)).toList(),
      mixins: element.mixins.map((e) => context.getInterfaceTypeRef(e)).toList(),
      supertype: element.supertype != null ? context.getInterfaceTypeRef(element.supertype!) : null,
      allSupertypes: element.allSupertypes.map((e) => context.getInterfaceTypeRef(e)).toList(),
    );
  }

  factory ExtensionTypeElementSerializer.fromJson(Map<String, dynamic> json) =>
      _$ExtensionTypeElementSerializerFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$ExtensionTypeElementSerializerToJson(this);
}

/// Elements serializer

@JsonSerializable(explicitToJson: true, converters: [BooleanConverter()], includeIfNull: false)
class TypeAliasElementSerializer with SourceSerializer<String> implements TypeAliasElementMetadata {
  @override
  @JsonKey(includeToJson: false, includeFromJson: false)
  AnalyzerContext? context;

  @override
  final String name;
  @override
  final List<TypeParameterElementSerializer> typeParameters;
  @override
  final bool isPrivate;
  @override
  final bool isPublic;
  @override
  final bool isSimplyBounded;
  @override
  final DartTypeRefSerializer aliasedType;

  @override
  List<SourceSerializer> get _refList => [...typeParameters];

  TypeAliasElementSerializer({
    this.context,
    required String source,
    required this.name,
    required this.isPrivate,
    required this.isPublic,
    required this.isSimplyBounded,
    required this.typeParameters,
    required this.aliasedType,
  }) {
    this.source = source;
  }

  factory TypeAliasElementSerializer.from(TypeAliasElement element, AnalyzerContext context) {
    return TypeAliasElementSerializer(
      context: context,
      source: context.getPath(element.source)!,
      name: element.name,
      isPrivate: element.isPrivate,
      isPublic: element.isPublic,
      isSimplyBounded: element.isSimplyBounded,
      typeParameters:
          element.typeParameters
              .map((e) => TypeParameterElementSerializer.from(e, context))
              .toList(),
      aliasedType: context.getTypeRef(element.aliasedType),
    );
  }

  factory TypeAliasElementSerializer.fromJson(Map<String, dynamic> json) =>
      _$TypeAliasElementSerializerFromJson(json);
  Map<String, dynamic> toJson() => _$TypeAliasElementSerializerToJson(this);
}

@JsonSerializable(explicitToJson: true, converters: [BooleanConverter()], includeIfNull: false)
class ConstructorElementSerializer
    with SourceSerializer<String>
    implements ConstructorElementMetadata {
  @override
  @JsonKey(includeToJson: false, includeFromJson: false)
  final AnalyzerContext? context;

  @override
  final String name;
  @override
  final List<TypeParameterElementSerializer> typeParameters;
  @override
  final List<ParameterElementSerializer> parameters;
  @override
  final ConstructorElementSerializer? redirectedConstructor;
  @override
  final FunctionTypeRefSerializer type;
  @override
  final InterfaceTypeRefSerializer returnType;
  @override
  final ConstructorElementSerializer? superConstructor;
  @override
  final bool isPrivate;
  @override
  final bool isPublic;
  @override
  final bool isStatic;
  @override
  bool isConstantEvaluated;
  @override
  final bool isSimplyBounded;
  @override
  final bool hasImplicitReturnType;
  @override
  final bool isAbstract;
  @override
  final bool isAsynchronous;
  @override
  final bool isExtensionTypeMember;
  @override
  final bool isExternal;
  @override
  final bool isGenerator;
  @override
  final bool isOperator;
  @override
  final bool isSynchronous;
  @override
  final bool isConst;
  @override
  final bool isDefaultConstructor;
  @override
  final bool isFactory;
  @override
  final bool isGenerative;

  @override
  List<SourceSerializer> get _refList => [
    ...typeParameters,
    ...parameters,
    if (redirectedConstructor != null) ...[redirectedConstructor!],
  ];

  ConstructorElementSerializer({
    this.context,
    required String source,
    required this.name,
    required this.type,
    required this.isPrivate,
    required this.isPublic,
    required this.isStatic,
    required this.isConstantEvaluated,
    required this.isSimplyBounded,
    required this.typeParameters,
    required this.parameters,
    required this.hasImplicitReturnType,
    required this.isAbstract,
    required this.isAsynchronous,
    required this.isExtensionTypeMember,
    required this.isExternal,
    required this.isGenerator,
    required this.isOperator,
    required this.isSynchronous,
    required this.isConst,
    this.redirectedConstructor,
    required this.isDefaultConstructor,
    required this.isFactory,
    required this.isGenerative,
    required this.returnType,
    required this.superConstructor,
  }) {
    this.source = source;
  }

  factory ConstructorElementSerializer.from(ConstructorElement element, AnalyzerContext context) {
    return ConstructorElementSerializer(
      context: context,
      name: element.name,
      source: context.getPath(element.source)!,
      isPrivate: element.isPrivate,
      isPublic: element.isPublic,
      isStatic: element.isStatic,
      isConstantEvaluated: element.isConstantEvaluated,
      isSimplyBounded: element.isSimplyBounded,
      type: FunctionTypeRefSerializer.from(element.type, context),
      typeParameters:
          element.typeParameters
              .map((e) => TypeParameterElementSerializer.from(e, context))
              .toList(),
      parameters:
          element.parameters.map((e) => ParameterElementSerializer.from(e, context)).toList(),
      returnType: InterfaceTypeRefSerializer.from(element.returnType, context),
      hasImplicitReturnType: element.hasImplicitReturnType,
      isAbstract: element.isAbstract,
      isAsynchronous: element.isAsynchronous,
      isExtensionTypeMember: element.isExtensionTypeMember,
      isExternal: element.isExternal,
      isGenerator: element.isGenerator,
      isOperator: element.isOperator,
      isSynchronous: element.isSynchronous,
      isConst: element.isConst,
      redirectedConstructor:
          element.redirectedConstructor != null
              ? ConstructorElementSerializer.from(element.redirectedConstructor!, context)
              : null,
      isDefaultConstructor: element.isDefaultConstructor,
      isFactory: element.isFactory,
      isGenerative: element.isGenerative,
      superConstructor: null,
    );
  }

  factory ConstructorElementSerializer.fromJson(Map<String, dynamic> json) =>
      _$ConstructorElementSerializerFromJson(json);

  Map<String, dynamic> toJson() => _$ConstructorElementSerializerToJson(this);
}

@JsonSerializable(explicitToJson: true, converters: [BooleanConverter()], includeIfNull: false)
class FieldElementSerializer with SourceSerializer<String?> implements FieldElementMetadata {
  @override
  @JsonKey(includeToJson: false, includeFromJson: false)
  AnalyzerContext? context;

  @override
  final String name;
  @override
  final PropertyAccessorElementSerializer? getter;
  @override
  final PropertyAccessorElementSerializer? setter;
  @override
  final DartTypeRefSerializer type;
  @override
  final bool isPrivate;
  @override
  final bool isPublic;
  @override
  final bool isStatic;
  @override
  bool isConstantEvaluated;
  @override
  final bool hasImplicitType;
  @override
  final bool isConst;
  @override
  final bool isFinal;
  @override
  final bool isLate;
  @override
  final bool hasInitializer;
  @override
  final bool isAbstract;
  @override
  final bool isCovariant;
  @override
  final bool isEnumConstant;
  @override
  final bool isExternal;
  @override
  final bool isPromotable;

  @override
  List<SourceSerializer> get _refList => [
    if (getter != null) ...[getter!],
    if (setter != null) ...[setter!],
  ];

  FieldElementSerializer({
    this.context,
    String? source,
    required this.name,
    required this.isPrivate,
    required this.isPublic,
    required this.isStatic,
    required this.isConstantEvaluated,
    required this.hasImplicitType,
    required this.isConst,
    required this.isFinal,
    required this.isLate,
    required this.type,
    required this.hasInitializer,
    this.getter,
    this.setter,
    required this.isAbstract,
    required this.isCovariant,
    required this.isEnumConstant,
    required this.isExternal,
    required this.isPromotable,
  }) {
    this.source = source;
  }

  factory FieldElementSerializer.from(FieldElement element, AnalyzerContext context) {
    return FieldElementSerializer(
      context: context,
      name: element.name,
      source: context.getPath(element.source),
      isPrivate: element.isPrivate,
      isPublic: element.isPublic,
      isStatic: element.isStatic,
      isConstantEvaluated: element.isConstantEvaluated,
      hasImplicitType: element.hasImplicitType,
      isConst: element.isConst,
      isFinal: element.isFinal,
      isLate: element.isLate,
      type: context.getTypeRef(element.type),
      hasInitializer: element.hasInitializer,
      getter:
          element.getter != null
              ? PropertyAccessorElementSerializer.from(element.getter!, context)
              : null,
      setter:
          element.setter != null
              ? PropertyAccessorElementSerializer.from(element.setter!, context)
              : null,
      isAbstract: element.isAbstract,
      isCovariant: element.isCovariant,
      isEnumConstant: element.isEnumConstant,
      isExternal: element.isExternal,
      isPromotable: element.isPromotable,
    );
  }

  factory FieldElementSerializer.fromJson(Map<String, dynamic> json) =>
      _$FieldElementSerializerFromJson(json);
  Map<String, dynamic> toJson() => _$FieldElementSerializerToJson(this);
}

@JsonSerializable(explicitToJson: true, converters: [BooleanConverter()], includeIfNull: false)
class MethodElementSerializer with SourceSerializer<String> implements MethodElementMetadata {
  @override
  @JsonKey(includeToJson: false, includeFromJson: false)
  AnalyzerContext? context;

  @override
  final String name;
  @override
  final List<TypeParameterElementSerializer> typeParameters;
  @override
  final List<ParameterElementSerializer> parameters;
  @override
  final DartTypeRefSerializer returnType;
  @override
  final FunctionTypeRefSerializer type;
  @override
  final bool isPrivate;
  @override
  final bool isPublic;
  @override
  final bool isStatic;
  @override
  final bool isSimplyBounded;
  @override
  final bool hasImplicitReturnType;
  @override
  final bool isAbstract;
  @override
  final bool isAsynchronous;
  @override
  final bool isExtensionTypeMember;
  @override
  final bool isExternal;
  @override
  final bool isGenerator;
  @override
  final bool isOperator;
  @override
  final bool isSynchronous;

  @override
  List<SourceSerializer> get _refList => [...typeParameters, ...parameters];

  MethodElementSerializer({
    this.context,
    required String source,
    required this.name,
    required this.isPrivate,
    required this.isPublic,
    required this.isStatic,
    required this.isSimplyBounded,
    required this.typeParameters,
    required this.parameters,
    required this.type,
    required this.hasImplicitReturnType,
    required this.isAbstract,
    required this.isAsynchronous,
    required this.isExtensionTypeMember,
    required this.isExternal,
    required this.isGenerator,
    required this.isOperator,
    required this.isSynchronous,
    required this.returnType,
  }) {
    this.source = source;
  }

  factory MethodElementSerializer.from(MethodElement element, AnalyzerContext context) {
    return MethodElementSerializer(
      context: context,
      name: element.name,
      source: context.getPath(element.source)!,
      isPrivate: element.isPrivate,
      isPublic: element.isPublic,
      isStatic: element.isStatic,
      isSimplyBounded: element.isSimplyBounded,
      typeParameters:
          element.typeParameters
              .map((e) => TypeParameterElementSerializer.from(e, context))
              .toList(),
      parameters:
          element.parameters.map((e) => ParameterElementSerializer.from(e, context)).toList(),
      returnType: context.getTypeRef(element.returnType),
      type: FunctionTypeRefSerializer.from(element.type, context),
      hasImplicitReturnType: element.hasImplicitReturnType,
      isAbstract: element.isAbstract,
      isAsynchronous: element.isAsynchronous,
      isExtensionTypeMember: element.isExtensionTypeMember,
      isExternal: element.isExternal,
      isGenerator: element.isGenerator,
      isOperator: element.isOperator,
      isSynchronous: element.isSynchronous,
    );
  }

  factory MethodElementSerializer.fromJson(Map<String, dynamic> json) =>
      _$MethodElementSerializerFromJson(json);
  Map<String, dynamic> toJson() => _$MethodElementSerializerToJson(this);
}

@JsonSerializable(explicitToJson: true, converters: [BooleanConverter()], includeIfNull: false)
class TopLevelVariableElementSerializer
    with SourceSerializer<String?>
    implements TopLevelVariableElementMetadata {
  @override
  @JsonKey(includeToJson: false, includeFromJson: false)
  AnalyzerContext? context;

  @override
  final String name;
  @override
  final PropertyAccessorElementSerializer? getter;
  @override
  final PropertyAccessorElementSerializer? setter;
  @override
  final DartTypeRefSerializer type;
  @override
  final bool isPrivate;
  @override
  final bool isPublic;
  @override
  final bool isStatic;
  @override
  bool isConstantEvaluated;
  @override
  final bool hasImplicitType;
  @override
  final bool isConst;
  @override
  final bool isFinal;
  @override
  final bool isLate;
  @override
  final bool hasInitializer;
  @override
  final bool isExternal;

  @override
  List<SourceSerializer> get _refList => [
    if (getter != null) ...[getter!],
    if (setter != null) ...[setter!],
  ];

  TopLevelVariableElementSerializer({
    this.context,
    required this.name,
    String? source,
    required this.isPrivate,
    required this.isPublic,
    required this.isStatic,
    required this.isConstantEvaluated,
    required this.hasImplicitType,
    required this.isConst,
    required this.isFinal,
    required this.isLate,
    required this.type,
    required this.hasInitializer,
    this.getter,
    this.setter,
    required this.isExternal,
  }) {
    this.source = source;
  }

  factory TopLevelVariableElementSerializer.from(
    TopLevelVariableElement element,
    AnalyzerContext context,
  ) {
    return TopLevelVariableElementSerializer(
      context: context,
      name: element.name,
      source: context.getPath(element.source),
      isPrivate: element.isPrivate,
      isPublic: element.isPublic,
      isStatic: element.isStatic,
      isConstantEvaluated: element.isConstantEvaluated,
      hasImplicitType: element.hasImplicitType,
      isConst: element.isConst,
      isFinal: element.isFinal,
      isLate: element.isLate,
      type: context.getTypeRef(element.type),
      hasInitializer: element.hasInitializer,
      getter:
          element.getter != null
              ? PropertyAccessorElementSerializer.from(element.getter!, context)
              : null,
      setter:
          element.setter != null
              ? PropertyAccessorElementSerializer.from(element.setter!, context)
              : null,
      isExternal: element.isExternal,
    );
  }

  factory TopLevelVariableElementSerializer.fromJson(Map<String, dynamic> json) =>
      _$TopLevelVariableElementSerializerFromJson(json);
  Map<String, dynamic> toJson() => _$TopLevelVariableElementSerializerToJson(this);
}

@JsonSerializable(explicitToJson: true, converters: [BooleanConverter()], includeIfNull: false)
class FunctionElementSerializer with SourceSerializer<String> implements FunctionElementMetadata {
  @override
  @JsonKey(includeToJson: false, includeFromJson: false)
  AnalyzerContext? context;

  @override
  final String name;
  @override
  final List<TypeParameterElementSerializer> typeParameters;
  @override
  final List<ParameterElementSerializer> parameters;
  @override
  final DartTypeRefSerializer returnType;
  @override
  final FunctionTypeRefSerializer type;
  @override
  final bool isPrivate;
  @override
  final bool isPublic;
  @override
  final bool isStatic;
  @override
  final bool isSimplyBounded;
  @override
  final bool hasImplicitReturnType;
  @override
  final bool isAbstract;
  @override
  final bool isAsynchronous;
  @override
  final bool isExternal;
  @override
  final bool isGenerator;
  @override
  final bool isOperator;
  @override
  final bool isSynchronous;
  @override
  final bool isExtensionTypeMember;

  /// It isn't used in the analysis.
  @override
  final bool isDartCoreIdentical = false;
  @override
  final bool isEntryPoint = false;

  @override
  List<SourceSerializer> get _refList => [...typeParameters, ...parameters];

  FunctionElementSerializer({
    this.context,
    required String source,
    required this.name,
    required this.isPrivate,
    required this.isPublic,
    required this.isStatic,
    required this.isSimplyBounded,
    required this.typeParameters,
    required this.parameters,
    required this.returnType,
    required this.type,
    required this.hasImplicitReturnType,
    required this.isAbstract,
    required this.isAsynchronous,
    required this.isExternal,
    required this.isGenerator,
    required this.isOperator,
    required this.isSynchronous,
    required this.isExtensionTypeMember,
  }) {
    this.source = source;
  }

  factory FunctionElementSerializer.from(FunctionElement element, AnalyzerContext context) {
    return FunctionElementSerializer(
      context: context,
      name: element.name,
      source: context.getPath(element.source)!,
      isPrivate: element.isPrivate,
      isPublic: element.isPublic,
      isStatic: element.isStatic,
      isSimplyBounded: element.isSimplyBounded,
      typeParameters:
          element.typeParameters
              .map((e) => TypeParameterElementSerializer.from(e, context))
              .toList(),
      parameters:
          element.parameters.map((e) => ParameterElementSerializer.from(e, context)).toList(),
      returnType: context.getTypeRef(element.returnType),
      type: FunctionTypeRefSerializer.from(element.type, context),
      hasImplicitReturnType: element.hasImplicitReturnType,
      isAbstract: element.isAbstract,
      isAsynchronous: element.isAsynchronous,
      isExternal: element.isExternal,
      isGenerator: element.isGenerator,
      isOperator: element.isOperator,
      isSynchronous: element.isSynchronous,
      isExtensionTypeMember: element.isExtensionTypeMember,
    );
  }

  factory FunctionElementSerializer.fromJson(Map<String, dynamic> json) =>
      _$FunctionElementSerializerFromJson(json);
  Map<String, dynamic> toJson() => _$FunctionElementSerializerToJson(this);
}

@JsonSerializable(explicitToJson: true, converters: [BooleanConverter()], includeIfNull: false)
class TypeParameterElementSerializer
    with SourceSerializer<String?>
    implements TypeParameterElementMetadata {
  @override
  @JsonKey(includeToJson: false, includeFromJson: false)
  AnalyzerContext? context;

  @override
  final String name;
  @override
  final DartTypeRefSerializer? bound;
  @override
  final bool isPrivate;
  @override
  final bool isPublic;

  TypeParameterElementSerializer({
    this.context,
    required this.name,
    String? source,
    required this.isPrivate,
    required this.isPublic,
    this.bound,
  }) {
    this.source = source;
  }

  factory TypeParameterElementSerializer.from(
    TypeParameterElement element,
    AnalyzerContext context,
  ) {
    return TypeParameterElementSerializer(
      context: context,
      name: element.name,
      source: context.getPath(element.source),
      isPrivate: element.isPrivate,
      isPublic: element.isPublic,
      bound: element.bound != null ? context.getTypeRef(element.bound!) : null,
    );
  }

  factory TypeParameterElementSerializer.fromJson(Map<String, dynamic> json) =>
      _$TypeParameterElementSerializerFromJson(json);
  Map<String, dynamic> toJson() => _$TypeParameterElementSerializerToJson(this);
}

@JsonSerializable(explicitToJson: true, converters: [BooleanConverter()], includeIfNull: false)
class ParameterElementSerializer
    with SourceSerializer<String?>
    implements ParameterElementMetadata {
  @override
  @JsonKey(includeToJson: false, includeFromJson: false)
  AnalyzerContext? context;

  @override
  final String name;
  @override
  final String? defaultValueCode;
  @override
  final List<ParameterElementSerializer> parameters;
  @override
  final List<TypeParameterElementSerializer> typeParameters;
  @override
  final DartTypeRefSerializer type;
  @override
  final bool isPrivate;
  @override
  final bool isPublic;
  @override
  bool isConstantEvaluated;
  @override
  final bool hasImplicitType;
  @override
  final bool isConst;
  @override
  final bool isFinal;
  @override
  final bool isLate;
  @override
  final bool isStatic;
  @override
  final bool hasDefaultValue;
  @override
  final bool isCovariant;
  @override
  final bool isInitializingFormal;
  @override
  final bool isNamed;
  @override
  final bool isOptional;
  @override
  final bool isOptionalNamed;
  @override
  final bool isOptionalPositional;
  @override
  final bool isPositional;
  @override
  final bool isRequired;
  @override
  final bool isRequiredNamed;
  @override
  final bool isRequiredPositional;
  @override
  final bool isSuperFormal;

  final InitializerSerializer? initializer;

  @override
  List<SourceSerializer> get _refList => [...parameters, ...typeParameters];

  ParameterElementSerializer({
    this.context,
    required this.name,
    String? source,
    required this.isPrivate,
    required this.isPublic,
    required this.isConstantEvaluated,
    required this.hasImplicitType,
    required this.isConst,
    required this.isFinal,
    required this.isLate,
    required this.isStatic,
    required this.type,
    required this.hasDefaultValue,
    required this.isCovariant,
    required this.isInitializingFormal,
    required this.isNamed,
    required this.isOptional,
    required this.isOptionalNamed,
    required this.isOptionalPositional,
    required this.isPositional,
    required this.isRequired,
    required this.isRequiredNamed,
    required this.isRequiredPositional,
    required this.isSuperFormal,
    required this.parameters,
    required this.typeParameters,
    this.defaultValueCode,
    this.initializer,
  }) {
    this.source = source;
  }

  factory ParameterElementSerializer.from(ParameterElement element, AnalyzerContext context) {
    InitializerSerializer? initializer;
    if (element is DefaultFieldFormalParameterElementImpl && element.constantInitializer != null) {
      initializer = InitializerSerializer.from(element.constantInitializer!, context);
    }
    return ParameterElementSerializer(
      context: context,
      name: element.name,
      source: context.getPath(element.source),
      isPrivate: element.isPrivate,
      isPublic: element.isPublic,
      isConstantEvaluated: element.isConstantEvaluated,
      hasImplicitType: element.hasImplicitType,
      isConst: element.isConst,
      isFinal: element.isFinal,
      isLate: element.isLate,
      isStatic: element.isStatic,
      type: context.getTypeRef(element.type),
      hasDefaultValue: element.hasDefaultValue,
      isCovariant: element.isCovariant,
      isInitializingFormal: element.isInitializingFormal,
      isNamed: element.isNamed,
      isOptional: element.isOptional,
      isOptionalNamed: element.isOptionalNamed,
      isOptionalPositional: element.isOptionalPositional,
      isPositional: element.isPositional,
      isRequired: element.isRequired,
      isRequiredNamed: element.isRequiredNamed,
      isRequiredPositional: element.isRequiredPositional,
      isSuperFormal: element.isSuperFormal,
      parameters:
          element.parameters.map((e) => ParameterElementSerializer.from(e, context)).toList(),
      typeParameters:
          element.typeParameters
              .map((e) => TypeParameterElementSerializer.from(e, context))
              .toList(),
      defaultValueCode: element.defaultValueCode,
      initializer: initializer,
    );
  }

  factory ParameterElementSerializer.fromJson(Map<String, dynamic> json) =>
      _$ParameterElementSerializerFromJson(json);
  Map<String, dynamic> toJson() => _$ParameterElementSerializerToJson(this);
}

@JsonSerializable(explicitToJson: true, converters: [BooleanConverter()], includeIfNull: false)
class PropertyAccessorElementSerializer
    with SourceSerializer<String>
    implements PropertyAccessorElementMetadata {
  @override
  @JsonKey(includeToJson: false, includeFromJson: false)
  AnalyzerContext? context;

  @override
  final String name;
  @override
  final List<TypeParameterElementSerializer> typeParameters;
  @override
  final List<ParameterElementSerializer> parameters;
  @override
  final DartTypeRefSerializer returnType;
  @override
  final FunctionTypeRefSerializer type;
  @override
  final bool isPrivate;
  @override
  final bool isPublic;
  @override
  final bool isStatic;
  @override
  final bool isSimplyBounded;
  @override
  final bool hasImplicitReturnType;
  @override
  final bool isAbstract;
  @override
  final bool isAsynchronous;
  @override
  final bool isExtensionTypeMember;
  @override
  final bool isExternal;
  @override
  final bool isGenerator;
  @override
  final bool isOperator;
  @override
  final bool isSynchronous;
  @override
  final bool isGetter;
  @override
  final bool isSetter;

  @override
  List<SourceSerializer> get _refList => [...typeParameters, ...parameters];

  PropertyAccessorElementSerializer({
    this.context,
    required String source,
    required this.name,
    required this.isPrivate,
    required this.isPublic,
    required this.isStatic,
    required this.isSimplyBounded,
    required this.typeParameters,
    required this.parameters,
    required this.returnType,
    required this.type,
    required this.hasImplicitReturnType,
    required this.isAbstract,
    required this.isAsynchronous,
    required this.isExtensionTypeMember,
    required this.isExternal,
    required this.isGenerator,
    required this.isOperator,
    required this.isSynchronous,
    required this.isGetter,
    required this.isSetter,
  }) {
    this.source = source;
  }

  factory PropertyAccessorElementSerializer.from(
    PropertyAccessorElement element,
    AnalyzerContext context,
  ) {
    return PropertyAccessorElementSerializer(
      context: context,
      name: element.name,
      source: context.getPath(element.source)!,
      isPrivate: element.isPrivate,
      isPublic: element.isPublic,
      isStatic: element.isStatic,
      isSimplyBounded: element.isSimplyBounded,
      typeParameters:
          element.typeParameters
              .map((e) => TypeParameterElementSerializer.from(e, context))
              .toList(),
      parameters:
          element.parameters.map((e) => ParameterElementSerializer.from(e, context)).toList(),
      returnType: context.getTypeRef(element.returnType),
      type: FunctionTypeRefSerializer.from(element.type, context),
      hasImplicitReturnType: element.hasImplicitReturnType,
      isAbstract: element.isAbstract,
      isAsynchronous: element.isAsynchronous,
      isExtensionTypeMember: element.isExtensionTypeMember,
      isExternal: element.isExternal,
      isGenerator: element.isGenerator,
      isOperator: element.isOperator,
      isSynchronous: element.isSynchronous,
      isGetter: element.isGetter,
      isSetter: element.isSetter,
    );
  }

  factory PropertyAccessorElementSerializer.fromJson(Map<String, dynamic> json) =>
      _$PropertyAccessorElementSerializerFromJson(json);
  Map<String, dynamic> toJson() => _$PropertyAccessorElementSerializerToJson(this);
}
