part of 'ana.dart';

@Shortcut(type: InterfaceElement)
@JsonSerializable()
class InterfaceElementMetadata implements InstanceElementMetadata {
  const InterfaceElementMetadata({
    required this.isPrivate,
    required this.isPublic,
    this.source,
    required this.name,
    required this.isSimplyBounded,
    required this.typeParameters,
    required this.fields,
    required this.methods,
    required this.constructors,
    required this.interfaces,
    required this.mixins,
    this.supertype,
  });

  // Implement InstanceElementMetadata
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

  // Original
  final List<ConstructorElementMetadata> constructors;
  final List<InterfaceElementMetadata> interfaces;
  final List<InterfaceElementMetadata> mixins;
  final InterfaceElementMetadata? supertype;

  // JSON Serialization
  factory InterfaceElementMetadata.fromJson(Map<String, Object?> json) =>
      _$InterfaceElementMetadataFromJson(json);

  Map<String, dynamic> toJson() => _$InterfaceElementMetadataToJson(this);
}

@Shortcut(type: InstanceElement)
abstract class InstanceElementMetadata
    implements TypeDefiningElementMetadata, TypeParameterizedElementMetadata {
  const InstanceElementMetadata({
    required this.isPrivate,
    required this.isPublic,
    this.source,
    required this.name,
    required this.isSimplyBounded,
    required this.typeParameters,
    required this.fields,
    required this.methods,
  });

  // Implement TypeDefiningElementMetadata
  @mustBeOverridden
  @override
  final bool isPrivate;
  @mustBeOverridden
  @override
  final bool isPublic;
  @mustBeOverridden
  @override
  final String? source;
  @mustBeOverridden
  @override
  final String name;

  // Implement TypeParameterizedElementMetadata
  @mustBeOverridden
  @override
  final bool isSimplyBounded;
  @mustBeOverridden
  @override
  final List<TypeParameterElementMetadata> typeParameters;

  // Original
  @mustBeOverridden
  final List<FieldElementMetadata> fields;
  @mustBeOverridden
  final List<MethodElementMetadata> methods;
}

@Shortcut(type: ConstructorElement)
@JsonSerializable()
class ConstructorElementMetadata
    implements
        ClassMemberElementMetadata,
        ExecutableElementMetadata,
        ConstantEvaluationTargetMetadata {
  const ConstructorElementMetadata({
    required this.name,
    required this.isStatic,
    required this.isPrivate,
    required this.isPublic,
    this.source,
    required this.isConstantEvaluated,
    required this.isSimplyBounded,
    required this.typeParameters,
    required this.parameters,
    required this.returnType,
    required this.type,
    required this.isConst,
    this.redirectedConstructor,
    this.superConstructor,
  });

  @override
  final String name;
  @override
  final bool isPrivate;
  @override
  final bool isPublic;
  @override
  final String? source;
  @override
  final bool isSimplyBounded;
  @override
  final List<TypeParameterElementMetadata> typeParameters;
  @override
  final List<ParameterElementMetadata> parameters;
  @override
  final DartTypeMetadata returnType;
  @override
  final FunctionTypeMetadata type;
  @override
  final bool isStatic;
  @override
  final bool isConstantEvaluated;

  final bool isConst;
  final ConstructorElementMetadata? redirectedConstructor;
  final ConstructorElementMetadata? superConstructor;

  factory ConstructorElementMetadata.fromJson(Map<String, Object?> json) =>
      _$ConstructorElementMetadataFromJson(json);
  @override
  Map<String, dynamic> toJson() => _$ConstructorElementMetadataToJson(this);
}

@Shortcut(type: DartType)
@JsonSerializable()
class DartTypeMetadata {
  const DartTypeMetadata({
    this.name,
    this.nullabilitySuffix,
    required this.isDartCore,
    required this.isDartFuture,
  });

  @mustBeOverridden
  final String? name;
  @mustBeOverridden
  final String? nullabilitySuffix;
  @mustBeOverridden
  final bool isDartCore;
  @mustBeOverridden
  final bool isDartFuture;

  factory DartTypeMetadata.fromJson(Map<String, Object?> json) => _$DartTypeMetadataFromJson(json);
  Map<String, dynamic> toJson() => _$DartTypeMetadataToJson(this);
}

@Shortcut(type: FunctionType)
@JsonSerializable()
class FunctionTypeMetadata implements DartTypeMetadata {
  const FunctionTypeMetadata({
    required this.name,
    required this.nullabilitySuffix,
    required this.isDartCore,
    required this.isDartFuture,
    required this.namedParameterTypes,
    required this.normalParameterTypes,
    required this.optionalParameterTypes,
    required this.parameters,
    required this.returnType,
    required this.typeFormals,
  });

  // Implement DartTypeMetadata
  @override
  final String? name;
  @override
  final String? nullabilitySuffix;
  @override
  final bool isDartCore;
  @override
  final bool isDartFuture;

  // Original
  final Map<String, DartType> namedParameterTypes;
  final List<DartType> normalParameterTypes;
  final List<DartType> optionalParameterTypes;
  final List<ParameterElement> parameters;
  final DartType returnType;
  final List<TypeParameterElement> typeFormals;

  factory FunctionTypeMetadata.fromJson(Map<String, Object?> json) =>
      _$FunctionTypeMetadataFromJson(json);
  @override
  Map<String, dynamic> toJson() => _$FunctionTypeMetadataToJson(this);
}
