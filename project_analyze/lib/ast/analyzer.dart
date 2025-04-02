import 'package:analyzer/dart/element/element.dart';
import 'package:analyzer/dart/element/nullability_suffix.dart';
import 'package:analyzer/dart/element/type.dart';
import 'package:analyzer/source/source.dart';
// ignore: implementation_imports
import 'package:analyzer/src/dart/constant/evaluation.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:path/path.dart' as path;
import 'package:project_analyze/extensions/extensions.dart';

part 'analyzer.element.dart';
part 'analyzer.g.dart';
part 'analyzer.json.dart';
part 'analyzer.type.dart';
part 'analyzer.util.dart';

@JsonSerializable(
  explicitToJson: true,
  converters: [
    _BooleanConverter(),
    _ConstructorElementListConverter(),
    _FieldElementListConverter(),
    _MethodElementListConverter(),
    _TypeParameterListSerializerConverter(),
  ],
  includeIfNull: false,
)
class ClassElementSerializer with _SourceSerializer<String> implements ClassElementMetadata {
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
  final bool isPrivate;
  @override
  final bool isPublic;
  @override
  final bool isSealed;
  @override
  final bool isSimplyBounded;
  @override
  final bool isValidMixin;

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  final List<InterfaceElementMetadata> interfaces = [];
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  final List<InterfaceElementMetadata> mixins = [];
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  final InterfaceElementMetadata? supertype = null;

  @override
  List<_SourceSerializer> get _refList => [
    ...constructors,
    ...fields,
    ...methods,
    ...typeParameters,
  ];

  ClassElementSerializer({
    required String source,
    required this.name,
    required this.constructors,
    required this.fields,
    required this.methods,
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
    required this.isPrivate,
    required this.isPublic,
    required this.isSealed,
    required this.isSimplyBounded,
    required this.isValidMixin,
    required this.typeParameters,
  }) {
    setSource(source);
  }

  factory ClassElementSerializer.from(ClassElement element, String projectPath) {
    print('- ${element.name}');
    return ClassElementSerializer(
      constructors:
          element.constructors
              .map((e) => ConstructorElementSerializer.from(e, projectPath))
              .toList(),
      fields: element.fields.map((e) => FieldElementSerializer.from(e, projectPath)).toList(),
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
      methods: element.methods.map((e) => MethodElementSerializer.from(e, projectPath)).toList(),
      name: element.name,
      source: _getPath(element.source, projectPath),
      typeParameters:
          element.typeParameters
              .map((e) => TypeParameterElementSerializer.from(e, projectPath))
              .toList(),
    );
  }

  factory ClassElementSerializer.fromJson(Map<String, dynamic> json) =>
      _$ClassElementSerializerFromJson(json);

  Map<String, dynamic> toJson() {
    final json = _$ClassElementSerializerToJson(this);
    // Remove boolean fields that are false
    json.removeWhere((key, value) => value is bool && !value);
    return json;
  }
}

@JsonSerializable(
  explicitToJson: true,
  converters: [
    _BooleanConverter(),
    _ConstructorElementListConverter(),
    _FieldElementListConverter(),
    _MethodElementListConverter(),
    _TypeParameterListSerializerConverter(),
  ],
  includeIfNull: false,
)
class InterfaceElementSerializer
    with _SourceSerializer<String>
    implements InterfaceElementMetadata {
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
  final bool isPrivate;
  @override
  final bool isPublic;
  @override
  final bool isSimplyBounded;

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  final List<InterfaceElementMetadata> interfaces = [];
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  final List<InterfaceElementMetadata> mixins = [];
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  final InterfaceElementMetadata? supertype = null;

  @override
  List<_SourceSerializer> get _refList => [
    ...constructors,
    ...fields,
    ...methods,
    ...typeParameters,
  ];

  InterfaceElementSerializer({
    required String source,
    required this.name,
    required this.isPrivate,
    required this.isPublic,
    required this.fields,
    required this.methods,
    required this.typeParameters,
    required this.isSimplyBounded,
    required this.constructors,
  }) {
    setSource(source);
  }

  factory InterfaceElementSerializer.from(InterfaceElement element, String projectPath) {
    return InterfaceElementSerializer(
      name: element.name,
      source: _getPath(element.source, projectPath),
      isPrivate: element.isPrivate,
      isPublic: element.isPublic,
      fields: element.fields.map((e) => FieldElementSerializer.from(e, projectPath)).toList(),
      methods: element.methods.map((e) => MethodElementSerializer.from(e, projectPath)).toList(),
      typeParameters:
          element.typeParameters
              .map((e) => TypeParameterElementSerializer.from(e, projectPath))
              .toList(),
      isSimplyBounded: element.isSimplyBounded,
      constructors:
          element.constructors
              .map((e) => ConstructorElementSerializer.from(e, projectPath))
              .toList(),
    );
  }

  factory InterfaceElementSerializer.fromJson(Map<String, dynamic> json) =>
      _$InterfaceElementSerializerFromJson(json);
  Map<String, dynamic> toJson() => _$InterfaceElementSerializerToJson(this);
}

@JsonSerializable(
  explicitToJson: true,
  converters: [
    _BooleanConverter(),
    _ConstructorElementListConverter(),
    _FieldElementListConverter(),
    _MethodElementListConverter(),
    _TypeParameterListSerializerConverter(),
  ],
  includeIfNull: false,
)
class MixinElementSerializer with _SourceSerializer<String> implements MixinElementMetadata {
  @override
  final String name;
  @override
  final List<FieldElementSerializer> fields;
  @override
  final List<MethodElementSerializer> methods;
  @override
  final List<TypeParameterElementSerializer> typeParameters;
  @override
  final List<ConstructorElementSerializer> constructors;
  @override
  final bool isPrivate;
  @override
  final bool isPublic;
  @override
  final bool isSimplyBounded;
  @override
  final bool isBase;

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  final List<InterfaceTypeMetadata> superclassConstraints = [];
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  final List<InterfaceElementMetadata> interfaces = [];
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  final List<InterfaceElementMetadata> mixins = [];
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  final InterfaceElementMetadata? supertype = null;

  @override
  List<_SourceSerializer> get _refList => [
    ...constructors,
    ...fields,
    ...methods,
    ...typeParameters,
  ];

  MixinElementSerializer({
    required String source,
    required this.name,
    required this.isPrivate,
    required this.isPublic,
    required this.fields,
    required this.methods,
    required this.typeParameters,
    required this.isSimplyBounded,
    required this.isBase,
    required this.constructors,
  }) {
    setSource(source);
  }

  factory MixinElementSerializer.from(MixinElement element, String projectPath) {
    return MixinElementSerializer(
      name: element.name,
      source: _getPath(element.source, projectPath),
      isPrivate: element.isPrivate,
      isPublic: element.isPublic,
      fields: element.fields.map((e) => FieldElementSerializer.from(e, projectPath)).toList(),
      methods: element.methods.map((e) => MethodElementSerializer.from(e, projectPath)).toList(),
      typeParameters:
          element.typeParameters
              .map((e) => TypeParameterElementSerializer.from(e, projectPath))
              .toList(),
      isSimplyBounded: element.isSimplyBounded,
      isBase: element.isBase,
      constructors:
          element.constructors
              .map((e) => ConstructorElementSerializer.from(e, projectPath))
              .toList(),
    );
  }

  factory MixinElementSerializer.fromJson(Map<String, dynamic> json) =>
      _$MixinElementSerializerFromJson(json);
  Map<String, dynamic> toJson() => _$MixinElementSerializerToJson(this);
}

@JsonSerializable(
  explicitToJson: true,
  converters: [
    _BooleanConverter(),
    _ConstructorElementListConverter(),
    _FieldElementListConverter(),
    _MethodElementListConverter(),
    _TypeParameterListSerializerConverter(),
  ],
  includeIfNull: false,
)
class EnumElementSerializer with _SourceSerializer<String> implements EnumElementMetadata {
  @override
  final String name;
  @override
  final List<FieldElementSerializer> fields;
  @override
  final List<MethodElementSerializer> methods;
  @override
  final List<TypeParameterElementSerializer> typeParameters;
  @override
  final List<ConstructorElementSerializer> constructors;
  @override
  final bool isPrivate;
  @override
  final bool isPublic;
  @override
  final bool isSimplyBounded;

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  final List<InterfaceElementMetadata> interfaces = [];
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  final List<InterfaceElementMetadata> mixins = [];
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  final InterfaceElementMetadata? supertype = null;

  @override
  List<_SourceSerializer> get _refList => [
    ...constructors,
    ...fields,
    ...methods,
    ...typeParameters,
  ];

  EnumElementSerializer({
    required String source,
    required this.name,
    required this.isPrivate,
    required this.isPublic,
    required this.fields,
    required this.methods,
    required this.typeParameters,
    required this.isSimplyBounded,
    required this.constructors,
  }) {
    setSource(source);
  }

  factory EnumElementSerializer.from(EnumElement element, String projectPath) {
    return EnumElementSerializer(
      name: element.name,
      source: _getPath(element.source, projectPath),
      isPrivate: element.isPrivate,
      isPublic: element.isPublic,
      fields: element.fields.map((e) => FieldElementSerializer.from(e, projectPath)).toList(),
      methods: element.methods.map((e) => MethodElementSerializer.from(e, projectPath)).toList(),
      typeParameters:
          element.typeParameters
              .map((e) => TypeParameterElementSerializer.from(e, projectPath))
              .toList(),
      isSimplyBounded: element.isSimplyBounded,
      constructors:
          element.constructors
              .map((e) => ConstructorElementSerializer.from(e, projectPath))
              .toList(),
    );
  }

  factory EnumElementSerializer.fromJson(Map<String, dynamic> json) =>
      _$EnumElementSerializerFromJson(json);
  Map<String, dynamic> toJson() => _$EnumElementSerializerToJson(this);
}

@JsonSerializable(
  explicitToJson: true,
  converters: [
    _BooleanConverter(),
    _TypeParameterListSerializerConverter(),
    _ParameterElementListConverter(),
  ],
  includeIfNull: false,
)
class TypeAliasElementSerializer
    with _SourceSerializer<String>
    implements TypeAliasElementMetadata {
  @override
  final String name;
  @override
  final bool isPrivate;
  @override
  final bool isPublic;
  @override
  final bool isSimplyBounded;
  @override
  final List<TypeParameterElementSerializer> typeParameters;
  @override
  final DartTypeSerializer aliasedType;

  @override
  List<_SourceSerializer> get _refList => [...typeParameters];

  TypeAliasElementSerializer({
    required String source,
    required this.name,
    required this.isPrivate,
    required this.isPublic,
    required this.isSimplyBounded,
    required this.typeParameters,
    required this.aliasedType,
  }) {
    setSource(source);
  }

  factory TypeAliasElementSerializer.from(TypeAliasElement element, String projectPath) {
    return TypeAliasElementSerializer(
      name: element.name,
      source: _getPath(element.source, projectPath),
      isPrivate: element.isPrivate,
      isPublic: element.isPublic,
      isSimplyBounded: element.isSimplyBounded,
      typeParameters:
          element.typeParameters
              .map((e) => TypeParameterElementSerializer.from(e, projectPath))
              .toList(),
      aliasedType: DartTypeSerializer.from(element.aliasedType, projectPath),
    );
  }

  factory TypeAliasElementSerializer.fromJson(Map<String, dynamic> json) =>
      _$TypeAliasElementSerializerFromJson(json);
  Map<String, dynamic> toJson() => _$TypeAliasElementSerializerToJson(this);
}

@JsonSerializable(
  explicitToJson: true,
  converters: [
    _BooleanConverter(),
    _ConstructorElementListConverter(),
    _FieldElementListConverter(),
    _MethodElementListConverter(),
    _TypeParameterListSerializerConverter(),
    _ParameterElementListConverter(),
  ],
  includeIfNull: false,
)
class ConstructorElementSerializer
    with _SourceSerializer<String>
    implements ConstructorElementMetadata {
  @override
  final String name;
  @override
  final List<TypeParameterElementSerializer> typeParameters;
  @override
  final List<ParameterElementSerializer> parameters;
  @override
  final ConstructorElementSerializer? redirectedConstructor;
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  FunctionTypeSerializer get type => throw UnimplementedError();
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
  @JsonKey(includeFromJson: false, includeToJson: false)
  InterfaceTypeMetadata get returnType => throw UnimplementedError();
  // @override
  // final ConstructorElementSerializer? superConstructor;
  @override
  final bool isDefaultConstructor;
  @override
  final bool isFactory;
  @override
  final bool isGenerative;

  @override
  List<_SourceSerializer> get _refList => [
    ...typeParameters,
    ...parameters,
    if (redirectedConstructor != null) ...[redirectedConstructor!],
  ];

  ConstructorElementSerializer({
    required String source,
    required this.name,
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
  }) {
    setSource(source);
  }

  factory ConstructorElementSerializer.from(ConstructorElement element, String projectPath) {
    print('-- constructor ${element.name}');
    return ConstructorElementSerializer(
      name: element.name,
      source: _getPath(element.source, projectPath),
      isPrivate: element.isPrivate,
      isPublic: element.isPublic,
      isStatic: element.isStatic,
      isConstantEvaluated: element.isConstantEvaluated,
      isSimplyBounded: element.isSimplyBounded,
      typeParameters:
          element.typeParameters
              .map((e) => TypeParameterElementSerializer.from(e, projectPath))
              .toList(),
      parameters:
          element.parameters.map((e) => ParameterElementSerializer.from(e, projectPath)).toList(),
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
              ? ConstructorElementSerializer.from(element.redirectedConstructor!, projectPath)
              : null,
      isDefaultConstructor: element.isDefaultConstructor,
      isFactory: element.isFactory,
      isGenerative: element.isGenerative,
    );
  }

  factory ConstructorElementSerializer.fromJson(Map<String, dynamic> json) =>
      _$ConstructorElementSerializerFromJson(json);

  Map<String, dynamic> toJson() => _$ConstructorElementSerializerToJson(this);
}

@JsonSerializable(explicitToJson: true, converters: [_BooleanConverter()], includeIfNull: false)
class FieldElementSerializer with _SourceSerializer<String?> implements FieldElementMetadata {
  @override
  final String name;
  @override
  final PropertyAccessorElementSerializer? getter;
  @override
  final PropertyAccessorElementSerializer? setter;
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
  final DartTypeSerializer type;
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
  List<_SourceSerializer> get _refList => [
    if (getter != null) ...[getter!],
    if (setter != null) ...[setter!],
  ];

  FieldElementSerializer({
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
    setSource(source);
  }

  factory FieldElementSerializer.from(FieldElement element, String projectPath) {
    print('--- field ${element.name}');
    return FieldElementSerializer(
      name: element.name,
      source: _getNullablePath(element.source, projectPath),
      isPrivate: element.isPrivate,
      isPublic: element.isPublic,
      isStatic: element.isStatic,
      isConstantEvaluated: element.isConstantEvaluated,
      hasImplicitType: element.hasImplicitType,
      isConst: element.isConst,
      isFinal: element.isFinal,
      isLate: element.isLate,
      type: DartTypeSerializer.from(element.type, projectPath),
      hasInitializer: element.hasInitializer,
      getter:
          element.getter != null
              ? PropertyAccessorElementSerializer.from(element.getter!, projectPath)
              : null,
      setter:
          element.setter != null
              ? PropertyAccessorElementSerializer.from(element.setter!, projectPath)
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

@JsonSerializable(
  explicitToJson: true,
  converters: [
    _BooleanConverter(),
    _TypeParameterListSerializerConverter(),
    _ParameterElementListConverter(),
  ],
  includeIfNull: false,
)
class MethodElementSerializer with _SourceSerializer<String> implements MethodElementMetadata {
  @override
  final String name;
  @override
  final List<TypeParameterElementSerializer> typeParameters;
  @override
  final List<ParameterElementSerializer> parameters;
  @override
  final bool isPrivate;
  @override
  final bool isPublic;
  @override
  final bool isStatic;
  @override
  final bool isSimplyBounded;
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  DartTypeSerializer get returnType => throw UnimplementedError();
  @override
  final FunctionTypeSerializer type;
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
  List<_SourceSerializer> get _refList => [...typeParameters, ...parameters];

  MethodElementSerializer({
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
  }) {
    setSource(source);
  }

  factory MethodElementSerializer.from(MethodElement element, String projectPath) {
    print('-- method ${element.name}');
    print('--- parse func type');
    FunctionTypeSerializer.from(element.type, projectPath);
    print('--- done');
    return MethodElementSerializer(
      name: element.name,
      source: _getPath(element.source, projectPath),
      isPrivate: element.isPrivate,
      isPublic: element.isPublic,
      isStatic: element.isStatic,
      isSimplyBounded: element.isSimplyBounded,
      typeParameters:
          element.typeParameters
              .map((e) => TypeParameterElementSerializer.from(e, projectPath))
              .toList(),
      parameters:
          element.parameters.map((e) => ParameterElementSerializer.from(e, projectPath)).toList(),
      type: FunctionTypeSerializer.from(element.type, projectPath),
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

@JsonSerializable(explicitToJson: true, converters: [_BooleanConverter()], includeIfNull: false)
class TopLevelVariableElementSerializer
    with _SourceSerializer<String?>
    implements TopLevelVariableElementMetadata {
  @override
  final String name;
  @override
  final PropertyAccessorElementSerializer? getter;
  @override
  final PropertyAccessorElementSerializer? setter;
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
  final DartTypeSerializer type;
  @override
  final bool hasInitializer;
  @override
  final bool isExternal;

  @override
  List<_SourceSerializer> get _refList => [
    if (getter != null) ...[getter!],
    if (setter != null) ...[setter!],
  ];

  TopLevelVariableElementSerializer({
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
    setSource(source);
  }

  factory TopLevelVariableElementSerializer.from(
    TopLevelVariableElement element,
    String projectPath,
  ) {
    return TopLevelVariableElementSerializer(
      name: element.name,
      source: _getNullablePath(element.source, projectPath),
      isPrivate: element.isPrivate,
      isPublic: element.isPublic,
      isStatic: element.isStatic,
      isConstantEvaluated: element.isConstantEvaluated,
      hasImplicitType: element.hasImplicitType,
      isConst: element.isConst,
      isFinal: element.isFinal,
      isLate: element.isLate,
      type: DartTypeSerializer.from(element.type, projectPath),
      hasInitializer: element.hasInitializer,
      getter:
          element.getter != null
              ? PropertyAccessorElementSerializer.from(element.getter!, projectPath)
              : null,
      setter:
          element.setter != null
              ? PropertyAccessorElementSerializer.from(element.setter!, projectPath)
              : null,
      isExternal: element.isExternal,
    );
  }

  factory TopLevelVariableElementSerializer.fromJson(Map<String, dynamic> json) =>
      _$TopLevelVariableElementSerializerFromJson(json);
  Map<String, dynamic> toJson() => _$TopLevelVariableElementSerializerToJson(this);
}

@JsonSerializable(
  explicitToJson: true,
  converters: [
    _BooleanConverter(),
    _TypeParameterListSerializerConverter(),
    _ParameterElementListConverter(),
  ],
  includeIfNull: false,
)
class FunctionElementSerializer with _SourceSerializer<String> implements FunctionElementMetadata {
  @override
  final String name;
  @override
  final List<TypeParameterElementSerializer> typeParameters;
  @override
  final List<ParameterElementSerializer> parameters;
  @override
  final bool isPrivate;
  @override
  final bool isPublic;
  @override
  final bool isStatic;
  @override
  final bool isSimplyBounded;
  @override
  final DartTypeSerializer returnType;
  @override
  final FunctionTypeSerializer type;
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
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  final bool isDartCoreIdentical = false;

  /// It isn't used in the analysis.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  final bool isEntryPoint = false;

  @override
  List<_SourceSerializer> get _refList => [...typeParameters, ...parameters];

  FunctionElementSerializer({
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
    setSource(source);
  }

  factory FunctionElementSerializer.from(FunctionElement element, String projectPath) {
    return FunctionElementSerializer(
      name: element.name,
      source: _getPath(element.source, projectPath),
      isPrivate: element.isPrivate,
      isPublic: element.isPublic,
      isStatic: element.isStatic,
      isSimplyBounded: element.isSimplyBounded,
      typeParameters:
          element.typeParameters
              .map((e) => TypeParameterElementSerializer.from(e, projectPath))
              .toList(),
      parameters:
          element.parameters.map((e) => ParameterElementSerializer.from(e, projectPath)).toList(),
      returnType: DartTypeSerializer.from(element.returnType, projectPath),
      type: FunctionTypeSerializer.from(element.type, projectPath),
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

@JsonSerializable(explicitToJson: true, converters: [_BooleanConverter()], includeIfNull: false)
class TypeParameterElementSerializer
    with _SourceSerializer<String?>
    implements TypeParameterElementMetadata {
  @override
  final String name;
  @override
  final bool isPrivate;
  @override
  final bool isPublic;
  @override
  final DartTypeSerializer? bound;

  @override
  List<_SourceSerializer> get _refList => [];

  TypeParameterElementSerializer({
    required this.name,
    String? source,
    required this.isPrivate,
    required this.isPublic,
    this.bound,
  }) {
    setSource(source);
  }

  factory TypeParameterElementSerializer.from(TypeParameterElement element, String projectPath) {
    print('--- type parameter ${element.name}');
    return TypeParameterElementSerializer(
      name: element.name,
      source: _getNullablePath(element.source, projectPath),
      isPrivate: element.isPrivate,
      isPublic: element.isPublic,
      bound: element.bound != null ? DartTypeSerializer.from(element.bound!, projectPath) : null,
    );
  }

  factory TypeParameterElementSerializer.fromJson(Map<String, dynamic> json) =>
      _$TypeParameterElementSerializerFromJson(json);
  Map<String, dynamic> toJson() => _$TypeParameterElementSerializerToJson(this);
}

@JsonSerializable(
  explicitToJson: true,
  converters: [
    _BooleanConverter(),
    _TypeParameterListSerializerConverter(),
    _ParameterElementListConverter(),
  ],
  includeIfNull: false,
)
class ParameterElementSerializer
    with _SourceSerializer<String?>
    implements ParameterElementMetadata {
  @override
  final String name;
  @override
  final List<ParameterElementSerializer> parameters;
  @override
  final List<TypeParameterElementSerializer> typeParameters;
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
  final DartTypeSerializer type;
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

  @override
  List<_SourceSerializer> get _refList => [...parameters, ...typeParameters];

  ParameterElementSerializer({
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
  }) {
    setSource(source);
  }

  factory ParameterElementSerializer.from(ParameterElement element, String projectPath) {
    return ParameterElementSerializer(
      name: element.name,
      source: _getNullablePath(element.source, projectPath),
      isPrivate: element.isPrivate,
      isPublic: element.isPublic,
      isConstantEvaluated: element.isConstantEvaluated,
      hasImplicitType: element.hasImplicitType,
      isConst: element.isConst,
      isFinal: element.isFinal,
      isLate: element.isLate,
      isStatic: element.isStatic,
      type: DartTypeSerializer.from(element.type, projectPath),
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
          element.parameters.map((e) => ParameterElementSerializer.from(e, projectPath)).toList(),
      typeParameters:
          element.typeParameters
              .map((e) => TypeParameterElementSerializer.from(e, projectPath))
              .toList(),
    );
  }

  factory ParameterElementSerializer.fromJson(Map<String, dynamic> json) =>
      _$ParameterElementSerializerFromJson(json);
  Map<String, dynamic> toJson() => _$ParameterElementSerializerToJson(this);
}

@JsonSerializable(
  explicitToJson: true,
  converters: [
    _BooleanConverter(),
    _TypeParameterListSerializerConverter(),
    _ParameterElementListConverter(),
  ],
  includeIfNull: false,
)
class PropertyAccessorElementSerializer
    with _SourceSerializer<String>
    implements PropertyAccessorElementMetadata {
  @override
  final String name;
  @override
  final List<TypeParameterElementSerializer> typeParameters;
  @override
  final List<ParameterElementSerializer> parameters;
  @override
  final bool isPrivate;
  @override
  final bool isPublic;
  @override
  final bool isStatic;
  @override
  final bool isSimplyBounded;
  @override
  final DartTypeSerializer returnType;
  @override
  final FunctionTypeSerializer type;
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
  List<_SourceSerializer> get _refList => [...typeParameters, ...parameters];

  PropertyAccessorElementSerializer({
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
    setSource(source);
  }

  factory PropertyAccessorElementSerializer.from(
    PropertyAccessorElement element,
    String projectPath,
  ) {
    return PropertyAccessorElementSerializer(
      name: element.name,
      source: _getPath(element.source, projectPath),
      isPrivate: element.isPrivate,
      isPublic: element.isPublic,
      isStatic: element.isStatic,
      isSimplyBounded: element.isSimplyBounded,
      typeParameters:
          element.typeParameters
              .map((e) => TypeParameterElementSerializer.from(e, projectPath))
              .toList(),
      parameters:
          element.parameters.map((e) => ParameterElementSerializer.from(e, projectPath)).toList(),
      returnType: DartTypeSerializer.from(element.returnType, projectPath),
      type: FunctionTypeSerializer.from(element.type, projectPath),
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

@JsonSerializable(
  explicitToJson: true,
  converters: [_BooleanConverter(), NullabilitySuffixConverter()],
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

  final String jsonType = '__type__';

  DartTypeSerializer({
    this.name,
    required this.nullabilitySuffix,
    required this.isDartCore,
    required this.isDartAsync,
  });

  factory DartTypeSerializer.from(DartType type, String projectPath) {
    print('- ${type.runtimeType} - ${type.name}');
    return switch (type) {
      FunctionType() => FunctionTypeSerializer.from(type, projectPath),
      // InterfaceType() => InterfaceTypeSerializer.from(type, projectPath),
      ParameterizedType() => ParameterizedTypeSerializer.from(type, projectPath),
      TypeParameterType() => TypeParameterTypeSerializer.from(type, projectPath),
      RecordType() => RecordTypeSerializer.from(type, projectPath),
      VoidType() => VoidTypeSerializer(),
      DynamicType() => DynamicTypeSerializer(),
      NeverType() => NeverTypeSerializer(),
      _ => DartTypeSerializer(
        // ignore: deprecated_member_use
        name: type.getDisplayString(withNullability: false),
        nullabilitySuffix: type.nullabilitySuffix,
        isDartCore: type.isDartCore,
        isDartAsync: type.isDartAsync,
      ),
    };
  }

  factory DartTypeSerializer.fromJson(Map<String, dynamic> json) =>
      _$DartTypeSerializerFromJson(json);
  Map<String, dynamic> toJson() => _$DartTypeSerializerToJson(this);
}

class VoidTypeSerializer extends DartTypeSerializer {
  @override
  String get jsonType => '__void_type__';

  VoidTypeSerializer()
    : super(isDartCore: true, isDartAsync: false, nullabilitySuffix: NullabilitySuffix.none);
}

class DynamicTypeSerializer extends DartTypeSerializer {
  @override
  String get jsonType => '__dynamic_type__';

  DynamicTypeSerializer()
    : super(isDartCore: true, isDartAsync: false, nullabilitySuffix: NullabilitySuffix.none);
}

class NeverTypeSerializer extends DartTypeSerializer {
  @override
  String get jsonType => '__never_type__';

  NeverTypeSerializer()
    : super(isDartCore: true, isDartAsync: false, nullabilitySuffix: NullabilitySuffix.none);
}

@JsonSerializable(
  explicitToJson: true,
  converters: [
    _BooleanConverter(),
    _TypeParameterListSerializerConverter(),
    _ParameterElementListConverter(),
    _DartTypeListConverter(),
    _DartTypeMapConverter(),
    NullabilitySuffixConverter(),
  ],
  includeIfNull: false,
)
class FunctionTypeSerializer implements FunctionTypeMetadata, DartTypeSerializer {
  @override
  final String? name;
  @override
  final NullabilitySuffix nullabilitySuffix;
  @override
  final bool isDartCore;
  @override
  final bool isDartAsync;
  @override
  final Map<String, DartTypeSerializer> namedParameterTypes;
  @override
  final List<DartTypeSerializer> normalParameterTypes;
  @override
  final List<DartTypeSerializer> optionalParameterTypes;
  @override
  final List<ParameterElementSerializer> parameters;
  @override
  final DartTypeSerializer returnType;
  @override
  final List<TypeParameterElementSerializer> typeFormals;

  @override
  String get jsonType => '__function_type__';

  FunctionTypeSerializer({
    this.name,
    required this.nullabilitySuffix,
    required this.isDartCore,
    required this.isDartAsync,
    required this.namedParameterTypes,
    required this.normalParameterTypes,
    required this.optionalParameterTypes,
    required this.parameters,
    required this.returnType,
    required this.typeFormals,
  });

  factory FunctionTypeSerializer.from(FunctionType type, String projectPath) {
    return FunctionTypeSerializer(
      // ignore: deprecated_member_use
      name: type.getDisplayString(withNullability: false),
      nullabilitySuffix: type.nullabilitySuffix,
      isDartCore: type.isDartCore,
      isDartAsync: type.isDartAsync,
      namedParameterTypes: type.namedParameterTypes.map(
        (key, value) => MapEntry(key, DartTypeSerializer.from(value, projectPath)),
      ),
      normalParameterTypes:
          type.normalParameterTypes.map((e) => DartTypeSerializer.from(e, projectPath)).toList(),
      optionalParameterTypes:
          type.optionalParameterTypes.map((e) => DartTypeSerializer.from(e, projectPath)).toList(),
      parameters:
          type.parameters.map((e) => ParameterElementSerializer.from(e, projectPath)).toList(),
      returnType: DartTypeSerializer.from(type.returnType, projectPath),
      typeFormals:
          type.typeFormals.map((e) => TypeParameterElementSerializer.from(e, projectPath)).toList(),
    );
  }

  factory FunctionTypeSerializer.fromJson(Map<String, dynamic> json) =>
      _$FunctionTypeSerializerFromJson(json);
  @override
  Map<String, dynamic> toJson() => _$FunctionTypeSerializerToJson(this);
}

@JsonSerializable(
  explicitToJson: true,
  converters: [
    _BooleanConverter(),
    _TypeParameterListSerializerConverter(),
    _ParameterElementListConverter(),
    _DartTypeListConverter(),
    _DartTypeMapConverter(),
    NullabilitySuffixConverter(),
  ],
  includeIfNull: false,
)
class ParameterizedTypeSerializer implements ParameterizedTypeMetadata, DartTypeSerializer {
  @override
  final String? name;
  @override
  final NullabilitySuffix nullabilitySuffix;
  @override
  final bool isDartCore;
  @override
  final bool isDartAsync;
  @override
  final List<DartTypeSerializer> typeArguments;

  @override
  final String jsonType = '__parameterized_type__';

  ParameterizedTypeSerializer({
    this.name,
    required this.nullabilitySuffix,
    required this.isDartCore,
    required this.isDartAsync,
    required this.typeArguments,
  });

  factory ParameterizedTypeSerializer.from(ParameterizedType type, String projectPath) {
    return ParameterizedTypeSerializer(
      // ignore: deprecated_member_use
      name: type.getDisplayString(withNullability: false),
      nullabilitySuffix: type.nullabilitySuffix,
      isDartCore: type.isDartCore,
      isDartAsync: type.isDartAsync,
      typeArguments:
          type.typeArguments.map((e) => DartTypeSerializer.from(e, projectPath)).toList(),
    );
  }

  factory ParameterizedTypeSerializer.fromJson(Map<String, dynamic> json) =>
      _$ParameterizedTypeSerializerFromJson(json);
  @override
  Map<String, dynamic> toJson() => _$ParameterizedTypeSerializerToJson(this);
}

@JsonSerializable(
  explicitToJson: true,
  converters: [_BooleanConverter(), _DartTypeListConverter(), NullabilitySuffixConverter()],
  includeIfNull: false,
)
class InterfaceTypeSerializer implements InterfaceTypeMetadata, DartTypeSerializer {
  @override
  final String jsonType = '__interface_type__';
  @override
  final String? name;
  @override
  final NullabilitySuffix nullabilitySuffix;
  @override
  final bool isDartCore;
  @override
  final bool isDartAsync;
  @override
  final List<DartTypeSerializer> typeArguments;
  @override
  // final InterfaceElementSerializer element;
  @JsonKey(includeToJson: false, includeFromJson: false)
  InterfaceElementSerializer get element => throw UnimplementedError();

  InterfaceTypeSerializer({
    this.name,
    required this.nullabilitySuffix,
    required this.isDartCore,
    required this.isDartAsync,
    required this.typeArguments,
    // required this.element,
  });

  factory InterfaceTypeSerializer.from(InterfaceType type, String projectPath) {
    return InterfaceTypeSerializer(
      // ignore: deprecated_member_use
      name: type.getDisplayString(withNullability: false),
      nullabilitySuffix: type.nullabilitySuffix,
      isDartCore: type.isDartCore,
      isDartAsync: type.isDartAsync,
      typeArguments:
          type.typeArguments.map((e) => DartTypeSerializer.from(e, projectPath)).toList(),
      // element: InterfaceElementSerializer.from(type.element, projectPath),
    );
  }

  factory InterfaceTypeSerializer.fromJson(Map<String, dynamic> json) =>
      _$InterfaceTypeSerializerFromJson(json);
  @override
  Map<String, dynamic> toJson() => _$InterfaceTypeSerializerToJson(this);
}

@JsonSerializable(
  explicitToJson: true,
  converters: [_BooleanConverter(), NullabilitySuffixConverter()],
  includeIfNull: false,
)
class TypeParameterTypeSerializer implements TypeParameterTypeMetadata, DartTypeSerializer {
  @override
  final String jsonType = '__type_parameter_type__';
  @override
  final String? name;
  @override
  final NullabilitySuffix nullabilitySuffix;
  @override
  final bool isDartCore;
  @override
  final bool isDartAsync;
  @override
  final DartTypeSerializer bound;
  @override
  // final TypeParameterElementSerializer element;
  @JsonKey(includeToJson: false, includeFromJson: false)
  TypeParameterElementSerializer get element => throw UnimplementedError();

  TypeParameterTypeSerializer({
    this.name,
    required this.nullabilitySuffix,
    required this.isDartCore,
    required this.isDartAsync,
    // required this.element,
    required this.bound,
  });

  factory TypeParameterTypeSerializer.from(TypeParameterType type, String projectPath) {
    return TypeParameterTypeSerializer(
      // ignore: deprecated_member_use
      name: type.getDisplayString(withNullability: false),
      nullabilitySuffix: type.nullabilitySuffix,
      isDartCore: type.isDartCore,
      isDartAsync: type.isDartAsync,
      // element: TypeParameterElementSerializer.from(type.element, projectPath),
      bound: DartTypeSerializer.from(type.bound, projectPath),
    );
  }

  factory TypeParameterTypeSerializer.fromJson(Map<String, dynamic> json) =>
      _$TypeParameterTypeSerializerFromJson(json);
  @override
  Map<String, dynamic> toJson() => _$TypeParameterTypeSerializerToJson(this);
}

@JsonSerializable(
  explicitToJson: true,
  converters: [_BooleanConverter(), _DartTypeListConverter(), NullabilitySuffixConverter()],
  includeIfNull: false,
)
class RecordTypeSerializer implements RecordTypeMetadata, DartTypeSerializer {
  @override
  String get jsonType => '__record_type__';

  @override
  final String? name;
  @override
  final NullabilitySuffix nullabilitySuffix;
  @override
  final bool isDartCore;
  @override
  final bool isDartAsync;
  @override
  final List<RecordTypePositionalFieldSerializer> positionalFields;
  @override
  final List<RecordTypeNamedFieldSerializer> namedFields;

  RecordTypeSerializer({
    this.name,
    required this.nullabilitySuffix,
    required this.isDartCore,
    required this.isDartAsync,
    required this.positionalFields,
    required this.namedFields,
  });

  factory RecordTypeSerializer.from(RecordType type, String projectPath) {
    return RecordTypeSerializer(
      // ignore: deprecated_member_use
      name: type.getDisplayString(withNullability: false),
      nullabilitySuffix: type.nullabilitySuffix,
      isDartCore: type.isDartCore,
      isDartAsync: type.isDartAsync,
      positionalFields:
          type.positionalFields
              .map((e) => RecordTypePositionalFieldSerializer.from(e, projectPath))
              .toList(),
      namedFields:
          type.namedFields.map((e) => RecordTypeNamedFieldSerializer.from(e, projectPath)).toList(),
    );
  }

  factory RecordTypeSerializer.fromJson(Map<String, dynamic> json) =>
      _$RecordTypeSerializerFromJson(json);
  @override
  Map<String, dynamic> toJson() => _$RecordTypeSerializerToJson(this);
}

@JsonSerializable(explicitToJson: true, converters: [_BooleanConverter()], includeIfNull: false)
class RecordTypeNamedFieldSerializer implements RecordTypeNamedFieldMetadata {
  @override
  final DartTypeSerializer type;
  @override
  final String name;

  RecordTypeNamedFieldSerializer({required this.type, required this.name});

  factory RecordTypeNamedFieldSerializer.from(RecordTypeNamedField field, String projectPath) {
    return RecordTypeNamedFieldSerializer(
      type: DartTypeSerializer.from(field.type, projectPath),
      name: field.name,
    );
  }

  factory RecordTypeNamedFieldSerializer.fromJson(Map<String, dynamic> json) =>
      _$RecordTypeNamedFieldSerializerFromJson(json);
  Map<String, dynamic> toJson() => _$RecordTypeNamedFieldSerializerToJson(this);
}

@JsonSerializable(explicitToJson: true, converters: [_BooleanConverter()], includeIfNull: false)
class RecordTypePositionalFieldSerializer implements RecordTypePositionalFieldMetadata {
  @override
  final DartTypeSerializer type;

  RecordTypePositionalFieldSerializer({required this.type});

  factory RecordTypePositionalFieldSerializer.from(
    RecordTypePositionalField field,
    String projectPath,
  ) {
    return RecordTypePositionalFieldSerializer(
      type: DartTypeSerializer.from(field.type, projectPath),
    );
  }

  factory RecordTypePositionalFieldSerializer.fromJson(Map<String, dynamic> json) =>
      _$RecordTypePositionalFieldSerializerFromJson(json);
  Map<String, dynamic> toJson() => _$RecordTypePositionalFieldSerializerToJson(this);
}
