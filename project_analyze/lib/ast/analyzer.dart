import 'package:analyzer/dart/element/element.dart';
import 'package:analyzer/dart/element/nullability_suffix.dart';
import 'package:analyzer/dart/element/type.dart';
// ignore: implementation_imports
import 'package:analyzer/src/dart/constant/evaluation.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:project_analyze/extensions/extensions.dart';
import 'package:project_analyze/utils/dummy.dart';

part 'analyzer.element.dart';
part 'analyzer.g.dart';
part 'analyzer.type.dart';

class BooleanConverter implements JsonConverter<bool, bool?> {
  const BooleanConverter();

  @override
  bool fromJson(bool? json) => json ?? false;

  @override
  bool? toJson(bool value) => value ? true : null;
}

@JsonSerializable(explicitToJson: true, converters: [BooleanConverter()], includeIfNull: false)
class ClassElementSerializer implements ClassElementMetadata {
  @override
  final List<ConstructorElementSerializer> constructors;
  @override
  final List<FieldElementSerializer> fields;
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
  @override
  final List<MethodElementSerializer> methods;
  @override
  final String name;
  @override
  final List<TypeParameterElementSerializer> typeParameters;
  @override
  final String? source;

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  final List<InterfaceElementMetadata> interfaces = [];
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  final List<InterfaceElementMetadata> mixins = [];
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  final InterfaceElementMetadata? supertype = null;

  ClassElementSerializer({
    required this.constructors,
    required this.fields,
    required this.hasNonFinalField,
    // required this.interfaces,
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
    required this.methods,
    // required this.mixins,
    required this.name,
    this.source,
    // this.supertype,
    required this.typeParameters,
  });

  factory ClassElementSerializer.from(ClassElement element) {
    return ClassElementSerializer(
      constructors: element.constructors.map((e) => ConstructorElementSerializer.from(e)).toList(),
      fields: element.fields.map((e) => FieldElementSerializer.from(e)).toList(),
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
      methods: element.methods.map((e) => MethodElementSerializer.from(e)).toList(),
      name: element.name,
      source: element.source.uri.toString(),
      typeParameters:
          element.typeParameters.map((e) => TypeParameterElementSerializer.from(e)).toList(),
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

@JsonSerializable(explicitToJson: true, converters: [BooleanConverter()], includeIfNull: false)
class ConstructorElementSerializer implements ConstructorElementMetadata {
  @override
  final String name;
  @override
  final String? source;
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
  final List<TypeParameterElementSerializer> typeParameters;
  @override
  final List<ParameterElementSerializer> parameters;
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
  final bool isConst;
  @override
  final ConstructorElementSerializer? redirectedConstructor;
  @override
  final ConstructorElementSerializer? superConstructor;
  @override
  final bool isDefaultConstructor;
  @override
  final bool isFactory;
  @override
  final bool isGenerative;

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  final InterfaceTypeMetadata returnType = _InterfaceType();

  ConstructorElementSerializer({
    required this.name,
    this.source,
    required this.isPrivate,
    required this.isPublic,
    required this.isStatic,
    required this.isConstantEvaluated,
    required this.isSimplyBounded,
    required this.typeParameters,
    required this.parameters,
    // required this.returnType,
    required this.type,
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
    this.superConstructor,
    required this.isDefaultConstructor,
    required this.isFactory,
    required this.isGenerative,
  });

  factory ConstructorElementSerializer.from(ConstructorElement element) {
    return ConstructorElementSerializer(
      name: element.name,
      source: element.source.uri.toString(),
      isPrivate: element.isPrivate,
      isPublic: element.isPublic,
      isStatic: element.isStatic,
      isConstantEvaluated: element.isConstantEvaluated,
      isSimplyBounded: element.isSimplyBounded,
      typeParameters:
          element.typeParameters.map((e) => TypeParameterElementSerializer.from(e)).toList(),
      parameters: element.parameters.map((e) => ParameterElementSerializer.from(e)).toList(),
      type: FunctionTypeSerializer.from(element.type),
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
              ? ConstructorElementSerializer.from(element.redirectedConstructor!)
              : null,
      superConstructor:
          element.superConstructor != null
              ? ConstructorElementSerializer.from(element.superConstructor!)
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

@JsonSerializable(explicitToJson: true, converters: [BooleanConverter()], includeIfNull: false)
class FieldElementSerializer implements FieldElementMetadata {
  @override
  final String name;
  @override
  final String? source;
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
  final PropertyAccessorElementSerializer? getter;
  @override
  final PropertyAccessorElementSerializer? setter;
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

  FieldElementSerializer({
    required this.name,
    this.source,
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
  });

  factory FieldElementSerializer.from(FieldElement element) {
    return FieldElementSerializer(
      name: element.name,
      source: element.source?.uri.toString(),
      isPrivate: element.isPrivate,
      isPublic: element.isPublic,
      isStatic: element.isStatic,
      isConstantEvaluated: element.isConstantEvaluated,
      hasImplicitType: element.hasImplicitType,
      isConst: element.isConst,
      isFinal: element.isFinal,
      isLate: element.isLate,
      type: DartTypeSerializer.from(element.type),
      hasInitializer: element.hasInitializer,
      getter:
          element.getter != null ? PropertyAccessorElementSerializer.from(element.getter!) : null,
      setter:
          element.setter != null ? PropertyAccessorElementSerializer.from(element.setter!) : null,
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
class MethodElementSerializer implements MethodElementMetadata {
  @override
  final String name;
  @override
  final String? source;
  @override
  final bool isPrivate;
  @override
  final bool isPublic;
  @override
  final bool isStatic;
  @override
  final bool isSimplyBounded;
  @override
  final List<TypeParameterElementSerializer> typeParameters;
  @override
  final List<ParameterElementSerializer> parameters;
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

  MethodElementSerializer({
    required this.name,
    this.source,
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
  });

  factory MethodElementSerializer.from(MethodElement element) {
    return MethodElementSerializer(
      name: element.name,
      source: element.source.uri.toString(),
      isPrivate: element.isPrivate,
      isPublic: element.isPublic,
      isStatic: element.isStatic,
      isSimplyBounded: element.isSimplyBounded,
      typeParameters:
          element.typeParameters.map((e) => TypeParameterElementSerializer.from(e)).toList(),
      parameters: element.parameters.map((e) => ParameterElementSerializer.from(e)).toList(),
      returnType: DartTypeSerializer.from(element.returnType),
      type: FunctionTypeSerializer.from(element.type),
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
class TypeParameterElementSerializer implements TypeParameterElementMetadata {
  @override
  final String name;
  @override
  final String? source;
  @override
  final bool isPrivate;
  @override
  final bool isPublic;
  @override
  final DartTypeSerializer? bound;

  TypeParameterElementSerializer({
    required this.name,
    this.source,
    required this.isPrivate,
    required this.isPublic,
    this.bound,
  });

  factory TypeParameterElementSerializer.from(TypeParameterElement element) {
    return TypeParameterElementSerializer(
      name: element.name,
      source: element.source?.uri.toString(),
      isPrivate: element.isPrivate,
      isPublic: element.isPublic,
      bound: element.bound != null ? DartTypeSerializer.from(element.bound!) : null,
    );
  }

  factory TypeParameterElementSerializer.fromJson(Map<String, dynamic> json) =>
      _$TypeParameterElementSerializerFromJson(json);
  Map<String, dynamic> toJson() => _$TypeParameterElementSerializerToJson(this);
}

@JsonSerializable(explicitToJson: true, converters: [BooleanConverter()], includeIfNull: false)
class ParameterElementSerializer implements ParameterElementMetadata {
  @override
  final String name;
  @override
  final String? source;
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
  final List<ParameterElementSerializer> parameters;
  @override
  final List<TypeParameterElementSerializer> typeParameters;

  ParameterElementSerializer({
    required this.name,
    this.source,
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
  });

  factory ParameterElementSerializer.from(ParameterElement element) {
    return ParameterElementSerializer(
      name: element.name,
      source: element.source?.uri.toString(),
      isPrivate: element.isPrivate,
      isPublic: element.isPublic,
      isConstantEvaluated: element.isConstantEvaluated,
      hasImplicitType: element.hasImplicitType,
      isConst: element.isConst,
      isFinal: element.isFinal,
      isLate: element.isLate,
      isStatic: element.isStatic,
      type: DartTypeSerializer.from(element.type),
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
      parameters: element.parameters.map((e) => ParameterElementSerializer.from(e)).toList(),
      typeParameters:
          element.typeParameters.map((e) => TypeParameterElementSerializer.from(e)).toList(),
    );
  }

  factory ParameterElementSerializer.fromJson(Map<String, dynamic> json) =>
      _$ParameterElementSerializerFromJson(json);
  Map<String, dynamic> toJson() => _$ParameterElementSerializerToJson(this);
}

@JsonSerializable(explicitToJson: true, converters: [BooleanConverter()], includeIfNull: false)
class DartTypeSerializer implements DartTypeMetadata {
  @override
  final String? name;
  @override
  final String? nullabilitySuffix;
  @override
  final bool isDartCore;
  @override
  final bool isDartAsync;

  DartTypeSerializer({
    this.name,
    this.nullabilitySuffix,
    required this.isDartCore,
    required this.isDartAsync,
  });

  factory DartTypeSerializer.from(DartType type) {
    return DartTypeSerializer(
      name: type.getDisplayString(),
      nullabilitySuffix: switch (type.nullabilitySuffix) {
        NullabilitySuffix.question => '?',
        NullabilitySuffix.star => '*',
        NullabilitySuffix.none => null,
      },
      isDartCore: type.isDartCore,
      isDartAsync: type.isDartAsync,
    );
  }

  factory DartTypeSerializer.fromJson(Map<String, dynamic> json) =>
      _$DartTypeSerializerFromJson(json);
  Map<String, dynamic> toJson() => _$DartTypeSerializerToJson(this);
}

@JsonSerializable(explicitToJson: true, converters: [BooleanConverter()], includeIfNull: false)
class FunctionTypeSerializer implements FunctionTypeMetadata {
  @override
  final String? name;
  @override
  final String? nullabilitySuffix;
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

  FunctionTypeSerializer({
    this.name,
    this.nullabilitySuffix,
    required this.isDartCore,
    required this.isDartAsync,
    required this.namedParameterTypes,
    required this.normalParameterTypes,
    required this.optionalParameterTypes,
    required this.parameters,
    required this.returnType,
    required this.typeFormals,
  });

  factory FunctionTypeSerializer.from(FunctionType type) {
    return FunctionTypeSerializer(
      name: type.getDisplayString(),
      nullabilitySuffix: switch (type.nullabilitySuffix) {
        NullabilitySuffix.question => '?',
        NullabilitySuffix.star => '*',
        NullabilitySuffix.none => null,
      },
      isDartCore: type.isDartCore,
      isDartAsync: type.isDartAsync,
      namedParameterTypes: type.namedParameterTypes.map(
        (key, value) => MapEntry(key, DartTypeSerializer.from(value)),
      ),
      normalParameterTypes:
          type.normalParameterTypes.map((e) => DartTypeSerializer.from(e)).toList(),
      optionalParameterTypes:
          type.optionalParameterTypes.map((e) => DartTypeSerializer.from(e)).toList(),
      parameters: type.parameters.map((e) => ParameterElementSerializer.from(e)).toList(),
      returnType: DartTypeSerializer.from(type.returnType),
      typeFormals: type.typeFormals.map((e) => TypeParameterElementSerializer.from(e)).toList(),
    );
  }

  factory FunctionTypeSerializer.fromJson(Map<String, dynamic> json) =>
      _$FunctionTypeSerializerFromJson(json);
  Map<String, dynamic> toJson() => _$FunctionTypeSerializerToJson(this);
}

@JsonSerializable(explicitToJson: true, converters: [BooleanConverter()], includeIfNull: false)
class PropertyAccessorElementSerializer implements PropertyAccessorElementMetadata {
  @override
  final String name;
  @override
  final String? source;
  @override
  final bool isPrivate;
  @override
  final bool isPublic;
  @override
  final bool isStatic;
  @override
  final bool isSimplyBounded;
  @override
  final List<TypeParameterElementSerializer> typeParameters;
  @override
  final List<ParameterElementSerializer> parameters;
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

  PropertyAccessorElementSerializer({
    required this.name,
    this.source,
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
  });

  factory PropertyAccessorElementSerializer.from(PropertyAccessorElement element) {
    return PropertyAccessorElementSerializer(
      name: element.name,
      source: element.source.uri.toString(),
      isPrivate: element.isPrivate,
      isPublic: element.isPublic,
      isStatic: element.isStatic,
      isSimplyBounded: element.isSimplyBounded,
      typeParameters:
          element.typeParameters.map((e) => TypeParameterElementSerializer.from(e)).toList(),
      parameters: element.parameters.map((e) => ParameterElementSerializer.from(e)).toList(),
      returnType: DartTypeSerializer.from(element.returnType),
      type: FunctionTypeSerializer.from(element.type),
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
