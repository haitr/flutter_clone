// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'analyzer.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ClassElementSerializer _$ClassElementSerializerFromJson(
  Map<String, dynamic> json,
) => ClassElementSerializer(
  constructors:
      (json['constructors'] as List<dynamic>)
          .map(
            (e) => ConstructorElementSerializer.fromJson(
              e as Map<String, dynamic>,
            ),
          )
          .toList(),
  fields:
      (json['fields'] as List<dynamic>)
          .map(
            (e) => FieldElementSerializer.fromJson(e as Map<String, dynamic>),
          )
          .toList(),
  hasNonFinalField: const BooleanConverter().fromJson(
    json['hasNonFinalField'] as bool?,
  ),
  isAbstract: const BooleanConverter().fromJson(json['isAbstract'] as bool?),
  isBase: const BooleanConverter().fromJson(json['isBase'] as bool?),
  isConstructable: const BooleanConverter().fromJson(
    json['isConstructable'] as bool?,
  ),
  isDartCoreEnum: const BooleanConverter().fromJson(
    json['isDartCoreEnum'] as bool?,
  ),
  isDartCoreObject: const BooleanConverter().fromJson(
    json['isDartCoreObject'] as bool?,
  ),
  isExhaustive: const BooleanConverter().fromJson(
    json['isExhaustive'] as bool?,
  ),
  isFinal: const BooleanConverter().fromJson(json['isFinal'] as bool?),
  isInterface: const BooleanConverter().fromJson(json['isInterface'] as bool?),
  isMixinApplication: const BooleanConverter().fromJson(
    json['isMixinApplication'] as bool?,
  ),
  isMixinClass: const BooleanConverter().fromJson(
    json['isMixinClass'] as bool?,
  ),
  isPrivate: const BooleanConverter().fromJson(json['isPrivate'] as bool?),
  isPublic: const BooleanConverter().fromJson(json['isPublic'] as bool?),
  isSealed: const BooleanConverter().fromJson(json['isSealed'] as bool?),
  isSimplyBounded: const BooleanConverter().fromJson(
    json['isSimplyBounded'] as bool?,
  ),
  isValidMixin: const BooleanConverter().fromJson(
    json['isValidMixin'] as bool?,
  ),
  methods:
      (json['methods'] as List<dynamic>)
          .map(
            (e) => MethodElementSerializer.fromJson(e as Map<String, dynamic>),
          )
          .toList(),
  name: json['name'] as String,
  source: json['source'] as String?,
  typeParameters:
      (json['typeParameters'] as List<dynamic>)
          .map(
            (e) => TypeParameterElementSerializer.fromJson(
              e as Map<String, dynamic>,
            ),
          )
          .toList(),
);

Map<String, dynamic> _$ClassElementSerializerToJson(
  ClassElementSerializer instance,
) => <String, dynamic>{
  'constructors': instance.constructors.map((e) => e.toJson()).toList(),
  'fields': instance.fields.map((e) => e.toJson()).toList(),
  if (const BooleanConverter().toJson(instance.hasNonFinalField)
      case final value?)
    'hasNonFinalField': value,
  if (const BooleanConverter().toJson(instance.isAbstract) case final value?)
    'isAbstract': value,
  if (const BooleanConverter().toJson(instance.isBase) case final value?)
    'isBase': value,
  if (const BooleanConverter().toJson(instance.isConstructable)
      case final value?)
    'isConstructable': value,
  if (const BooleanConverter().toJson(instance.isDartCoreEnum)
      case final value?)
    'isDartCoreEnum': value,
  if (const BooleanConverter().toJson(instance.isDartCoreObject)
      case final value?)
    'isDartCoreObject': value,
  if (const BooleanConverter().toJson(instance.isExhaustive) case final value?)
    'isExhaustive': value,
  if (const BooleanConverter().toJson(instance.isFinal) case final value?)
    'isFinal': value,
  if (const BooleanConverter().toJson(instance.isInterface) case final value?)
    'isInterface': value,
  if (const BooleanConverter().toJson(instance.isMixinApplication)
      case final value?)
    'isMixinApplication': value,
  if (const BooleanConverter().toJson(instance.isMixinClass) case final value?)
    'isMixinClass': value,
  if (const BooleanConverter().toJson(instance.isPrivate) case final value?)
    'isPrivate': value,
  if (const BooleanConverter().toJson(instance.isPublic) case final value?)
    'isPublic': value,
  if (const BooleanConverter().toJson(instance.isSealed) case final value?)
    'isSealed': value,
  if (const BooleanConverter().toJson(instance.isSimplyBounded)
      case final value?)
    'isSimplyBounded': value,
  if (const BooleanConverter().toJson(instance.isValidMixin) case final value?)
    'isValidMixin': value,
  'methods': instance.methods.map((e) => e.toJson()).toList(),
  'name': instance.name,
  'typeParameters': instance.typeParameters.map((e) => e.toJson()).toList(),
  if (instance.source case final value?) 'source': value,
};

ConstructorElementSerializer _$ConstructorElementSerializerFromJson(
  Map<String, dynamic> json,
) => ConstructorElementSerializer(
  name: json['name'] as String,
  source: json['source'] as String?,
  isPrivate: const BooleanConverter().fromJson(json['isPrivate'] as bool?),
  isPublic: const BooleanConverter().fromJson(json['isPublic'] as bool?),
  isStatic: const BooleanConverter().fromJson(json['isStatic'] as bool?),
  isConstantEvaluated: const BooleanConverter().fromJson(
    json['isConstantEvaluated'] as bool?,
  ),
  isSimplyBounded: const BooleanConverter().fromJson(
    json['isSimplyBounded'] as bool?,
  ),
  typeParameters:
      (json['typeParameters'] as List<dynamic>)
          .map(
            (e) => TypeParameterElementSerializer.fromJson(
              e as Map<String, dynamic>,
            ),
          )
          .toList(),
  parameters:
      (json['parameters'] as List<dynamic>)
          .map(
            (e) =>
                ParameterElementSerializer.fromJson(e as Map<String, dynamic>),
          )
          .toList(),
  type: FunctionTypeSerializer.fromJson(json['type'] as Map<String, dynamic>),
  hasImplicitReturnType: const BooleanConverter().fromJson(
    json['hasImplicitReturnType'] as bool?,
  ),
  isAbstract: const BooleanConverter().fromJson(json['isAbstract'] as bool?),
  isAsynchronous: const BooleanConverter().fromJson(
    json['isAsynchronous'] as bool?,
  ),
  isExtensionTypeMember: const BooleanConverter().fromJson(
    json['isExtensionTypeMember'] as bool?,
  ),
  isExternal: const BooleanConverter().fromJson(json['isExternal'] as bool?),
  isGenerator: const BooleanConverter().fromJson(json['isGenerator'] as bool?),
  isOperator: const BooleanConverter().fromJson(json['isOperator'] as bool?),
  isSynchronous: const BooleanConverter().fromJson(
    json['isSynchronous'] as bool?,
  ),
  isConst: const BooleanConverter().fromJson(json['isConst'] as bool?),
  redirectedConstructor:
      json['redirectedConstructor'] == null
          ? null
          : ConstructorElementSerializer.fromJson(
            json['redirectedConstructor'] as Map<String, dynamic>,
          ),
  superConstructor:
      json['superConstructor'] == null
          ? null
          : ConstructorElementSerializer.fromJson(
            json['superConstructor'] as Map<String, dynamic>,
          ),
  isDefaultConstructor: const BooleanConverter().fromJson(
    json['isDefaultConstructor'] as bool?,
  ),
  isFactory: const BooleanConverter().fromJson(json['isFactory'] as bool?),
  isGenerative: const BooleanConverter().fromJson(
    json['isGenerative'] as bool?,
  ),
);

Map<String, dynamic> _$ConstructorElementSerializerToJson(
  ConstructorElementSerializer instance,
) => <String, dynamic>{
  'name': instance.name,
  if (instance.source case final value?) 'source': value,
  if (const BooleanConverter().toJson(instance.isPrivate) case final value?)
    'isPrivate': value,
  if (const BooleanConverter().toJson(instance.isPublic) case final value?)
    'isPublic': value,
  if (const BooleanConverter().toJson(instance.isStatic) case final value?)
    'isStatic': value,
  if (const BooleanConverter().toJson(instance.isConstantEvaluated)
      case final value?)
    'isConstantEvaluated': value,
  if (const BooleanConverter().toJson(instance.isSimplyBounded)
      case final value?)
    'isSimplyBounded': value,
  'typeParameters': instance.typeParameters.map((e) => e.toJson()).toList(),
  'parameters': instance.parameters.map((e) => e.toJson()).toList(),
  'type': instance.type.toJson(),
  if (const BooleanConverter().toJson(instance.hasImplicitReturnType)
      case final value?)
    'hasImplicitReturnType': value,
  if (const BooleanConverter().toJson(instance.isAbstract) case final value?)
    'isAbstract': value,
  if (const BooleanConverter().toJson(instance.isAsynchronous)
      case final value?)
    'isAsynchronous': value,
  if (const BooleanConverter().toJson(instance.isExtensionTypeMember)
      case final value?)
    'isExtensionTypeMember': value,
  if (const BooleanConverter().toJson(instance.isExternal) case final value?)
    'isExternal': value,
  if (const BooleanConverter().toJson(instance.isGenerator) case final value?)
    'isGenerator': value,
  if (const BooleanConverter().toJson(instance.isOperator) case final value?)
    'isOperator': value,
  if (const BooleanConverter().toJson(instance.isSynchronous) case final value?)
    'isSynchronous': value,
  if (const BooleanConverter().toJson(instance.isConst) case final value?)
    'isConst': value,
  if (instance.redirectedConstructor?.toJson() case final value?)
    'redirectedConstructor': value,
  if (instance.superConstructor?.toJson() case final value?)
    'superConstructor': value,
  if (const BooleanConverter().toJson(instance.isDefaultConstructor)
      case final value?)
    'isDefaultConstructor': value,
  if (const BooleanConverter().toJson(instance.isFactory) case final value?)
    'isFactory': value,
  if (const BooleanConverter().toJson(instance.isGenerative) case final value?)
    'isGenerative': value,
};

FieldElementSerializer _$FieldElementSerializerFromJson(
  Map<String, dynamic> json,
) => FieldElementSerializer(
  name: json['name'] as String,
  source: json['source'] as String?,
  isPrivate: const BooleanConverter().fromJson(json['isPrivate'] as bool?),
  isPublic: const BooleanConverter().fromJson(json['isPublic'] as bool?),
  isStatic: const BooleanConverter().fromJson(json['isStatic'] as bool?),
  isConstantEvaluated: const BooleanConverter().fromJson(
    json['isConstantEvaluated'] as bool?,
  ),
  hasImplicitType: const BooleanConverter().fromJson(
    json['hasImplicitType'] as bool?,
  ),
  isConst: const BooleanConverter().fromJson(json['isConst'] as bool?),
  isFinal: const BooleanConverter().fromJson(json['isFinal'] as bool?),
  isLate: const BooleanConverter().fromJson(json['isLate'] as bool?),
  type: DartTypeSerializer.fromJson(json['type'] as Map<String, dynamic>),
  hasInitializer: const BooleanConverter().fromJson(
    json['hasInitializer'] as bool?,
  ),
  getter:
      json['getter'] == null
          ? null
          : PropertyAccessorElementSerializer.fromJson(
            json['getter'] as Map<String, dynamic>,
          ),
  setter:
      json['setter'] == null
          ? null
          : PropertyAccessorElementSerializer.fromJson(
            json['setter'] as Map<String, dynamic>,
          ),
  isAbstract: const BooleanConverter().fromJson(json['isAbstract'] as bool?),
  isCovariant: const BooleanConverter().fromJson(json['isCovariant'] as bool?),
  isEnumConstant: const BooleanConverter().fromJson(
    json['isEnumConstant'] as bool?,
  ),
  isExternal: const BooleanConverter().fromJson(json['isExternal'] as bool?),
  isPromotable: const BooleanConverter().fromJson(
    json['isPromotable'] as bool?,
  ),
);

Map<String, dynamic> _$FieldElementSerializerToJson(
  FieldElementSerializer instance,
) => <String, dynamic>{
  'name': instance.name,
  if (instance.source case final value?) 'source': value,
  if (const BooleanConverter().toJson(instance.isPrivate) case final value?)
    'isPrivate': value,
  if (const BooleanConverter().toJson(instance.isPublic) case final value?)
    'isPublic': value,
  if (const BooleanConverter().toJson(instance.isStatic) case final value?)
    'isStatic': value,
  if (const BooleanConverter().toJson(instance.isConstantEvaluated)
      case final value?)
    'isConstantEvaluated': value,
  if (const BooleanConverter().toJson(instance.hasImplicitType)
      case final value?)
    'hasImplicitType': value,
  if (const BooleanConverter().toJson(instance.isConst) case final value?)
    'isConst': value,
  if (const BooleanConverter().toJson(instance.isFinal) case final value?)
    'isFinal': value,
  if (const BooleanConverter().toJson(instance.isLate) case final value?)
    'isLate': value,
  'type': instance.type.toJson(),
  if (const BooleanConverter().toJson(instance.hasInitializer)
      case final value?)
    'hasInitializer': value,
  if (instance.getter?.toJson() case final value?) 'getter': value,
  if (instance.setter?.toJson() case final value?) 'setter': value,
  if (const BooleanConverter().toJson(instance.isAbstract) case final value?)
    'isAbstract': value,
  if (const BooleanConverter().toJson(instance.isCovariant) case final value?)
    'isCovariant': value,
  if (const BooleanConverter().toJson(instance.isEnumConstant)
      case final value?)
    'isEnumConstant': value,
  if (const BooleanConverter().toJson(instance.isExternal) case final value?)
    'isExternal': value,
  if (const BooleanConverter().toJson(instance.isPromotable) case final value?)
    'isPromotable': value,
};

MethodElementSerializer _$MethodElementSerializerFromJson(
  Map<String, dynamic> json,
) => MethodElementSerializer(
  name: json['name'] as String,
  source: json['source'] as String?,
  isPrivate: const BooleanConverter().fromJson(json['isPrivate'] as bool?),
  isPublic: const BooleanConverter().fromJson(json['isPublic'] as bool?),
  isStatic: const BooleanConverter().fromJson(json['isStatic'] as bool?),
  isSimplyBounded: const BooleanConverter().fromJson(
    json['isSimplyBounded'] as bool?,
  ),
  typeParameters:
      (json['typeParameters'] as List<dynamic>)
          .map(
            (e) => TypeParameterElementSerializer.fromJson(
              e as Map<String, dynamic>,
            ),
          )
          .toList(),
  parameters:
      (json['parameters'] as List<dynamic>)
          .map(
            (e) =>
                ParameterElementSerializer.fromJson(e as Map<String, dynamic>),
          )
          .toList(),
  returnType: DartTypeSerializer.fromJson(
    json['returnType'] as Map<String, dynamic>,
  ),
  type: FunctionTypeSerializer.fromJson(json['type'] as Map<String, dynamic>),
  hasImplicitReturnType: const BooleanConverter().fromJson(
    json['hasImplicitReturnType'] as bool?,
  ),
  isAbstract: const BooleanConverter().fromJson(json['isAbstract'] as bool?),
  isAsynchronous: const BooleanConverter().fromJson(
    json['isAsynchronous'] as bool?,
  ),
  isExtensionTypeMember: const BooleanConverter().fromJson(
    json['isExtensionTypeMember'] as bool?,
  ),
  isExternal: const BooleanConverter().fromJson(json['isExternal'] as bool?),
  isGenerator: const BooleanConverter().fromJson(json['isGenerator'] as bool?),
  isOperator: const BooleanConverter().fromJson(json['isOperator'] as bool?),
  isSynchronous: const BooleanConverter().fromJson(
    json['isSynchronous'] as bool?,
  ),
);

Map<String, dynamic> _$MethodElementSerializerToJson(
  MethodElementSerializer instance,
) => <String, dynamic>{
  'name': instance.name,
  if (instance.source case final value?) 'source': value,
  if (const BooleanConverter().toJson(instance.isPrivate) case final value?)
    'isPrivate': value,
  if (const BooleanConverter().toJson(instance.isPublic) case final value?)
    'isPublic': value,
  if (const BooleanConverter().toJson(instance.isStatic) case final value?)
    'isStatic': value,
  if (const BooleanConverter().toJson(instance.isSimplyBounded)
      case final value?)
    'isSimplyBounded': value,
  'typeParameters': instance.typeParameters.map((e) => e.toJson()).toList(),
  'parameters': instance.parameters.map((e) => e.toJson()).toList(),
  'returnType': instance.returnType.toJson(),
  'type': instance.type.toJson(),
  if (const BooleanConverter().toJson(instance.hasImplicitReturnType)
      case final value?)
    'hasImplicitReturnType': value,
  if (const BooleanConverter().toJson(instance.isAbstract) case final value?)
    'isAbstract': value,
  if (const BooleanConverter().toJson(instance.isAsynchronous)
      case final value?)
    'isAsynchronous': value,
  if (const BooleanConverter().toJson(instance.isExtensionTypeMember)
      case final value?)
    'isExtensionTypeMember': value,
  if (const BooleanConverter().toJson(instance.isExternal) case final value?)
    'isExternal': value,
  if (const BooleanConverter().toJson(instance.isGenerator) case final value?)
    'isGenerator': value,
  if (const BooleanConverter().toJson(instance.isOperator) case final value?)
    'isOperator': value,
  if (const BooleanConverter().toJson(instance.isSynchronous) case final value?)
    'isSynchronous': value,
};

TypeParameterElementSerializer _$TypeParameterElementSerializerFromJson(
  Map<String, dynamic> json,
) => TypeParameterElementSerializer(
  name: json['name'] as String,
  source: json['source'] as String?,
  isPrivate: const BooleanConverter().fromJson(json['isPrivate'] as bool?),
  isPublic: const BooleanConverter().fromJson(json['isPublic'] as bool?),
  bound:
      json['bound'] == null
          ? null
          : DartTypeSerializer.fromJson(json['bound'] as Map<String, dynamic>),
);

Map<String, dynamic> _$TypeParameterElementSerializerToJson(
  TypeParameterElementSerializer instance,
) => <String, dynamic>{
  'name': instance.name,
  if (instance.source case final value?) 'source': value,
  if (const BooleanConverter().toJson(instance.isPrivate) case final value?)
    'isPrivate': value,
  if (const BooleanConverter().toJson(instance.isPublic) case final value?)
    'isPublic': value,
  if (instance.bound?.toJson() case final value?) 'bound': value,
};

ParameterElementSerializer _$ParameterElementSerializerFromJson(
  Map<String, dynamic> json,
) => ParameterElementSerializer(
  name: json['name'] as String,
  source: json['source'] as String?,
  isPrivate: const BooleanConverter().fromJson(json['isPrivate'] as bool?),
  isPublic: const BooleanConverter().fromJson(json['isPublic'] as bool?),
  isConstantEvaluated: const BooleanConverter().fromJson(
    json['isConstantEvaluated'] as bool?,
  ),
  hasImplicitType: const BooleanConverter().fromJson(
    json['hasImplicitType'] as bool?,
  ),
  isConst: const BooleanConverter().fromJson(json['isConst'] as bool?),
  isFinal: const BooleanConverter().fromJson(json['isFinal'] as bool?),
  isLate: const BooleanConverter().fromJson(json['isLate'] as bool?),
  isStatic: const BooleanConverter().fromJson(json['isStatic'] as bool?),
  type: DartTypeSerializer.fromJson(json['type'] as Map<String, dynamic>),
  hasDefaultValue: const BooleanConverter().fromJson(
    json['hasDefaultValue'] as bool?,
  ),
  isCovariant: const BooleanConverter().fromJson(json['isCovariant'] as bool?),
  isInitializingFormal: const BooleanConverter().fromJson(
    json['isInitializingFormal'] as bool?,
  ),
  isNamed: const BooleanConverter().fromJson(json['isNamed'] as bool?),
  isOptional: const BooleanConverter().fromJson(json['isOptional'] as bool?),
  isOptionalNamed: const BooleanConverter().fromJson(
    json['isOptionalNamed'] as bool?,
  ),
  isOptionalPositional: const BooleanConverter().fromJson(
    json['isOptionalPositional'] as bool?,
  ),
  isPositional: const BooleanConverter().fromJson(
    json['isPositional'] as bool?,
  ),
  isRequired: const BooleanConverter().fromJson(json['isRequired'] as bool?),
  isRequiredNamed: const BooleanConverter().fromJson(
    json['isRequiredNamed'] as bool?,
  ),
  isRequiredPositional: const BooleanConverter().fromJson(
    json['isRequiredPositional'] as bool?,
  ),
  isSuperFormal: const BooleanConverter().fromJson(
    json['isSuperFormal'] as bool?,
  ),
  parameters:
      (json['parameters'] as List<dynamic>)
          .map(
            (e) =>
                ParameterElementSerializer.fromJson(e as Map<String, dynamic>),
          )
          .toList(),
  typeParameters:
      (json['typeParameters'] as List<dynamic>)
          .map(
            (e) => TypeParameterElementSerializer.fromJson(
              e as Map<String, dynamic>,
            ),
          )
          .toList(),
);

Map<String, dynamic> _$ParameterElementSerializerToJson(
  ParameterElementSerializer instance,
) => <String, dynamic>{
  'name': instance.name,
  if (instance.source case final value?) 'source': value,
  if (const BooleanConverter().toJson(instance.isPrivate) case final value?)
    'isPrivate': value,
  if (const BooleanConverter().toJson(instance.isPublic) case final value?)
    'isPublic': value,
  if (const BooleanConverter().toJson(instance.isConstantEvaluated)
      case final value?)
    'isConstantEvaluated': value,
  if (const BooleanConverter().toJson(instance.hasImplicitType)
      case final value?)
    'hasImplicitType': value,
  if (const BooleanConverter().toJson(instance.isConst) case final value?)
    'isConst': value,
  if (const BooleanConverter().toJson(instance.isFinal) case final value?)
    'isFinal': value,
  if (const BooleanConverter().toJson(instance.isLate) case final value?)
    'isLate': value,
  if (const BooleanConverter().toJson(instance.isStatic) case final value?)
    'isStatic': value,
  'type': instance.type.toJson(),
  if (const BooleanConverter().toJson(instance.hasDefaultValue)
      case final value?)
    'hasDefaultValue': value,
  if (const BooleanConverter().toJson(instance.isCovariant) case final value?)
    'isCovariant': value,
  if (const BooleanConverter().toJson(instance.isInitializingFormal)
      case final value?)
    'isInitializingFormal': value,
  if (const BooleanConverter().toJson(instance.isNamed) case final value?)
    'isNamed': value,
  if (const BooleanConverter().toJson(instance.isOptional) case final value?)
    'isOptional': value,
  if (const BooleanConverter().toJson(instance.isOptionalNamed)
      case final value?)
    'isOptionalNamed': value,
  if (const BooleanConverter().toJson(instance.isOptionalPositional)
      case final value?)
    'isOptionalPositional': value,
  if (const BooleanConverter().toJson(instance.isPositional) case final value?)
    'isPositional': value,
  if (const BooleanConverter().toJson(instance.isRequired) case final value?)
    'isRequired': value,
  if (const BooleanConverter().toJson(instance.isRequiredNamed)
      case final value?)
    'isRequiredNamed': value,
  if (const BooleanConverter().toJson(instance.isRequiredPositional)
      case final value?)
    'isRequiredPositional': value,
  if (const BooleanConverter().toJson(instance.isSuperFormal) case final value?)
    'isSuperFormal': value,
  'parameters': instance.parameters.map((e) => e.toJson()).toList(),
  'typeParameters': instance.typeParameters.map((e) => e.toJson()).toList(),
};

DartTypeSerializer _$DartTypeSerializerFromJson(
  Map<String, dynamic> json,
) => DartTypeSerializer(
  name: json['name'] as String?,
  nullabilitySuffix: json['nullabilitySuffix'] as String?,
  isDartCore: const BooleanConverter().fromJson(json['isDartCore'] as bool?),
  isDartAsync: const BooleanConverter().fromJson(json['isDartAsync'] as bool?),
);

Map<String, dynamic> _$DartTypeSerializerToJson(
  DartTypeSerializer instance,
) => <String, dynamic>{
  if (instance.name case final value?) 'name': value,
  if (instance.nullabilitySuffix case final value?) 'nullabilitySuffix': value,
  if (const BooleanConverter().toJson(instance.isDartCore) case final value?)
    'isDartCore': value,
  if (const BooleanConverter().toJson(instance.isDartAsync) case final value?)
    'isDartAsync': value,
};

FunctionTypeSerializer _$FunctionTypeSerializerFromJson(
  Map<String, dynamic> json,
) => FunctionTypeSerializer(
  name: json['name'] as String?,
  nullabilitySuffix: json['nullabilitySuffix'] as String?,
  isDartCore: const BooleanConverter().fromJson(json['isDartCore'] as bool?),
  isDartAsync: const BooleanConverter().fromJson(json['isDartAsync'] as bool?),
  namedParameterTypes: (json['namedParameterTypes'] as Map<String, dynamic>)
      .map(
        (k, e) =>
            MapEntry(k, DartTypeSerializer.fromJson(e as Map<String, dynamic>)),
      ),
  normalParameterTypes:
      (json['normalParameterTypes'] as List<dynamic>)
          .map((e) => DartTypeSerializer.fromJson(e as Map<String, dynamic>))
          .toList(),
  optionalParameterTypes:
      (json['optionalParameterTypes'] as List<dynamic>)
          .map((e) => DartTypeSerializer.fromJson(e as Map<String, dynamic>))
          .toList(),
  parameters:
      (json['parameters'] as List<dynamic>)
          .map(
            (e) =>
                ParameterElementSerializer.fromJson(e as Map<String, dynamic>),
          )
          .toList(),
  returnType: DartTypeSerializer.fromJson(
    json['returnType'] as Map<String, dynamic>,
  ),
  typeFormals:
      (json['typeFormals'] as List<dynamic>)
          .map(
            (e) => TypeParameterElementSerializer.fromJson(
              e as Map<String, dynamic>,
            ),
          )
          .toList(),
);

Map<String, dynamic> _$FunctionTypeSerializerToJson(
  FunctionTypeSerializer instance,
) => <String, dynamic>{
  if (instance.name case final value?) 'name': value,
  if (instance.nullabilitySuffix case final value?) 'nullabilitySuffix': value,
  if (const BooleanConverter().toJson(instance.isDartCore) case final value?)
    'isDartCore': value,
  if (const BooleanConverter().toJson(instance.isDartAsync) case final value?)
    'isDartAsync': value,
  'namedParameterTypes': instance.namedParameterTypes.map(
    (k, e) => MapEntry(k, e.toJson()),
  ),
  'normalParameterTypes':
      instance.normalParameterTypes.map((e) => e.toJson()).toList(),
  'optionalParameterTypes':
      instance.optionalParameterTypes.map((e) => e.toJson()).toList(),
  'parameters': instance.parameters.map((e) => e.toJson()).toList(),
  'returnType': instance.returnType.toJson(),
  'typeFormals': instance.typeFormals.map((e) => e.toJson()).toList(),
};

PropertyAccessorElementSerializer _$PropertyAccessorElementSerializerFromJson(
  Map<String, dynamic> json,
) => PropertyAccessorElementSerializer(
  name: json['name'] as String,
  source: json['source'] as String?,
  isPrivate: const BooleanConverter().fromJson(json['isPrivate'] as bool?),
  isPublic: const BooleanConverter().fromJson(json['isPublic'] as bool?),
  isStatic: const BooleanConverter().fromJson(json['isStatic'] as bool?),
  isSimplyBounded: const BooleanConverter().fromJson(
    json['isSimplyBounded'] as bool?,
  ),
  typeParameters:
      (json['typeParameters'] as List<dynamic>)
          .map(
            (e) => TypeParameterElementSerializer.fromJson(
              e as Map<String, dynamic>,
            ),
          )
          .toList(),
  parameters:
      (json['parameters'] as List<dynamic>)
          .map(
            (e) =>
                ParameterElementSerializer.fromJson(e as Map<String, dynamic>),
          )
          .toList(),
  returnType: DartTypeSerializer.fromJson(
    json['returnType'] as Map<String, dynamic>,
  ),
  type: FunctionTypeSerializer.fromJson(json['type'] as Map<String, dynamic>),
  hasImplicitReturnType: const BooleanConverter().fromJson(
    json['hasImplicitReturnType'] as bool?,
  ),
  isAbstract: const BooleanConverter().fromJson(json['isAbstract'] as bool?),
  isAsynchronous: const BooleanConverter().fromJson(
    json['isAsynchronous'] as bool?,
  ),
  isExtensionTypeMember: const BooleanConverter().fromJson(
    json['isExtensionTypeMember'] as bool?,
  ),
  isExternal: const BooleanConverter().fromJson(json['isExternal'] as bool?),
  isGenerator: const BooleanConverter().fromJson(json['isGenerator'] as bool?),
  isOperator: const BooleanConverter().fromJson(json['isOperator'] as bool?),
  isSynchronous: const BooleanConverter().fromJson(
    json['isSynchronous'] as bool?,
  ),
  isGetter: const BooleanConverter().fromJson(json['isGetter'] as bool?),
  isSetter: const BooleanConverter().fromJson(json['isSetter'] as bool?),
);

Map<String, dynamic> _$PropertyAccessorElementSerializerToJson(
  PropertyAccessorElementSerializer instance,
) => <String, dynamic>{
  'name': instance.name,
  if (instance.source case final value?) 'source': value,
  if (const BooleanConverter().toJson(instance.isPrivate) case final value?)
    'isPrivate': value,
  if (const BooleanConverter().toJson(instance.isPublic) case final value?)
    'isPublic': value,
  if (const BooleanConverter().toJson(instance.isStatic) case final value?)
    'isStatic': value,
  if (const BooleanConverter().toJson(instance.isSimplyBounded)
      case final value?)
    'isSimplyBounded': value,
  'typeParameters': instance.typeParameters.map((e) => e.toJson()).toList(),
  'parameters': instance.parameters.map((e) => e.toJson()).toList(),
  'returnType': instance.returnType.toJson(),
  'type': instance.type.toJson(),
  if (const BooleanConverter().toJson(instance.hasImplicitReturnType)
      case final value?)
    'hasImplicitReturnType': value,
  if (const BooleanConverter().toJson(instance.isAbstract) case final value?)
    'isAbstract': value,
  if (const BooleanConverter().toJson(instance.isAsynchronous)
      case final value?)
    'isAsynchronous': value,
  if (const BooleanConverter().toJson(instance.isExtensionTypeMember)
      case final value?)
    'isExtensionTypeMember': value,
  if (const BooleanConverter().toJson(instance.isExternal) case final value?)
    'isExternal': value,
  if (const BooleanConverter().toJson(instance.isGenerator) case final value?)
    'isGenerator': value,
  if (const BooleanConverter().toJson(instance.isOperator) case final value?)
    'isOperator': value,
  if (const BooleanConverter().toJson(instance.isSynchronous) case final value?)
    'isSynchronous': value,
  if (const BooleanConverter().toJson(instance.isGetter) case final value?)
    'isGetter': value,
  if (const BooleanConverter().toJson(instance.isSetter) case final value?)
    'isSetter': value,
};
