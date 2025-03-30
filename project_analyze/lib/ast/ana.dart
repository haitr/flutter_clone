import 'package:analyzer/dart/element/element.dart';
import 'package:analyzer/dart/element/type.dart';
// ignore: implementation_imports
import 'package:analyzer/src/dart/constant/evaluation.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';
import 'package:project_analyze/utils/dummy.dart';

part 'ana.g.dart';
part 'ana.implement.dart';
part 'ana.interface.dart';

@Shortcut(type: ClassElement)
@JsonSerializable()
class ClassElementMetadata implements InterfaceElementMetadata {
  const ClassElementMetadata({
    required this.name,
    required this.isPrivate,
    required this.isPublic,
    this.source,
    required this.interfaces,
    required this.mixins,
    this.supertype,
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
    required this.isSimplyBounded,
    required this.typeParameters,
    required this.fields,
    required this.methods,
    required this.constructors,
  });

  // Implement InterfaceElementMetadata
  @override
  final bool isPrivate;
  @override
  final bool isPublic;
  @override
  final String? source;
  @override
  final String name;
  @override
  final bool isSimplyBounded;
  @override
  final List<TypeParameterElementMetadata> typeParameters;
  @override
  final List<FieldElementMetadata> fields;
  @override
  final List<MethodElementMetadata> methods;
  @override
  final List<ConstructorElementMetadata> constructors;
  @override
  final List<InterfaceElementMetadata> interfaces;
  @override
  final List<InterfaceElementMetadata> mixins;
  @override
  final InterfaceElementMetadata? supertype;

  // Original
  final bool hasNonFinalField;
  final bool isAbstract;
  final bool isBase;
  final bool isConstructable;
  final bool isDartCoreEnum;
  final bool isDartCoreObject;
  final bool isExhaustive;
  final bool isFinal;
  final bool isInterface;
  final bool isMixinApplication;
  final bool isMixinClass;
  final bool isSealed;
  final bool isValidMixin;

  factory ClassElementMetadata.fromJson(Map<String, Object?> json) =>
      _$ClassElementMetadataFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$ClassElementMetadataToJson(this);
}

@Shortcut(type: TypeParameterElement)
@JsonSerializable()
class TypeParameterElementMetadata implements TypeDefiningElementMetadata {
  const TypeParameterElementMetadata({
    required this.isPrivate,
    required this.isPublic,
    this.source,
    required this.name,
    this.bound,
  });

  // Implement TypeDefiningElementMetadata
  @override
  final bool isPrivate;
  @override
  final bool isPublic;
  @override
  final String? source;

  // Original
  @override
  final String name;
  final DartTypeMetadata? bound;

  // JSON Serialization
  factory TypeParameterElementMetadata.fromJson(Map<String, Object?> json) =>
      _$TypeParameterElementMetadataFromJson(json);

  Map<String, dynamic> toJson() => _$TypeParameterElementMetadataToJson(this);
}

@Shortcut(type: FieldElement)
@JsonSerializable()
class FieldElementMetadata implements ClassMemberElementMetadata, PropertyInducingElementMetadata {
  const FieldElementMetadata({
    required this.isStatic,
    required this.isAbstract,
    required this.isCovariant,
    required this.isEnumConstant,
    required this.isExternal,
    required this.isPromotable,
    required this.isPrivate,
    required this.isPublic,
    this.source,
    required this.name,
    required this.hasInitializer,
    required this.type,
    required this.hasImplicitType,
    required this.isConst,
    required this.isFinal,
    required this.isLate,
    required this.isConstantEvaluated,
    this.getter,
    this.setter,
  });

  // Implement ClassMemberElementMetadata
  @override
  final bool isPrivate;
  @override
  final bool isPublic;
  @override
  final String? source;
  @override
  final bool isStatic;

  // Implement PropertyInducingElementMetadata
  @override
  final String name;
  @override
  final bool hasInitializer;
  @override
  final DartTypeMetadata type;
  @override
  final PropertyAccessorElementMetadata? getter;
  @override
  final PropertyAccessorElementMetadata? setter;
  @override
  final bool hasImplicitType;
  @override
  final bool isConst;
  @override
  final bool isFinal;
  @override
  final bool isLate;
  @override
  final bool isConstantEvaluated;

  // Original
  final bool isAbstract;
  final bool isCovariant;
  final bool isEnumConstant;
  final bool isExternal;
  final bool isPromotable;

  factory FieldElementMetadata.fromJson(Map<String, Object?> json) =>
      _$FieldElementMetadataFromJson(json);
  @override
  Map<String, dynamic> toJson() => _$FieldElementMetadataToJson(this);
}

@Shortcut(type: MethodElement)
@JsonSerializable()
class MethodElementMetadata implements ClassMemberElementMetadata, ExecutableElementMetadata {
  const MethodElementMetadata({required this.isStatic});

  @override
  final bool isStatic;

  factory MethodElementMetadata.fromJson(Map<String, Object?> json) =>
      _$MethodElementMetadataFromJson(json);
  @override
  Map<String, dynamic> toJson() => _$MethodElementMetadataToJson(this);
}

@Shortcut(type: ParameterElement)
@JsonSerializable()
class ParameterElementMetadata
    implements PromotableElementMetadata, ConstantEvaluationTargetMetadata {
  const ParameterElementMetadata({
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

  final bool hasDefaultValue;
  final bool isCovariant;
  final bool isInitializingFormal;
  final bool isNamed;
  final bool isOptional;
  final bool isOptionalNamed;
  final bool isOptionalPositional;
  final bool isPositional;
  final bool isRequired;
  final bool isRequiredNamed;
  final bool isRequiredPositional;
  final bool isSuperFormal;
  final List<ParameterElementMetadata> parameters;
  final List<TypeParameterElementMetadata> typeParameters;

  factory ParameterElementMetadata.fromJson(Map<String, Object?> json) =>
      _$ParameterElementMetadataFromJson(json);
  @override
  Map<String, dynamic> toJson() => _$ParameterElementMetadataToJson(this);
}

@Shortcut(type: PromotableElement)
@JsonSerializable()
class PromotableElementMetadata implements LocalElementMetadata, VariableElementMetadata {
  const PromotableElementMetadata({
    required this.isConst,
    required this.isFinal,
    required this.isLate,
    required this.isStatic,
    required this.name,
  });

  @override
  final bool isConst;
  @override
  final bool isFinal;
  @override
  final bool isLate;
  @override
  final bool isStatic;
  @override
  final String name;

  factory PromotableElementMetadata.fromJson(Map<String, Object?> json) =>
      _$PromotableElementMetadataFromJson(json);
  @override
  Map<String, dynamic> toJson() => _$PromotableElementMetadataToJson(this);
}

@Shortcut(type: LocalElement)
@JsonSerializable()
class LocalElementMetadata implements ElementMetadata {
  const LocalElementMetadata({
    required this.isPrivate,
    required this.isPublic,
    this.source,
    this.name,
  });

  @override
  final bool isPrivate;
  @override
  final bool isPublic;
  @override
  final String? source;
  @override
  final String? name;

  factory LocalElementMetadata.fromJson(Map<String, Object?> json) =>
      _$LocalElementMetadataFromJson(json);
  @override
  Map<String, dynamic> toJson() => _$LocalElementMetadataToJson(this);
}

@Shortcut(type: VariableElement)
@JsonSerializable()
class VariableElementMetadata implements ElementMetadata, ConstantEvaluationTargetMetadata {
  VariableElementMetadata({
    required this.isPrivate,
    required this.isPublic,
    this.source,
    required this.isConstantEvaluated,
    required this.name,
    required this.hasImplicitType,
    required this.isConst,
    required this.isFinal,
    required this.isLate,
    required this.isStatic,
    required this.type,
  });

  // Implement ElementMetadata
  @mustBeOverridden
  @override
  final bool isPrivate;
  @mustBeOverridden
  @override
  final bool isPublic;
  @mustBeOverridden
  @override
  final String? source;

  // Implement ConstantEvaluationTargetMetadata
  @override
  bool isConstantEvaluated;

  // Original
  @override
  @mustBeOverridden
  final String name;
  @mustBeOverridden
  final bool hasImplicitType;
  @mustBeOverridden
  final bool isConst;
  @mustBeOverridden
  final bool isFinal;
  @mustBeOverridden
  final bool isLate;
  @mustBeOverridden
  final bool isStatic;
  @mustBeOverridden
  final DartTypeMetadata type;

  factory VariableElementMetadata.fromJson(Map<String, Object?> json) =>
      _$VariableElementMetadataFromJson(json);
  @override
  Map<String, dynamic> toJson() => _$VariableElementMetadataToJson(this);
}
