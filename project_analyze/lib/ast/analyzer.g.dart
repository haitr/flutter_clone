// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'analyzer.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ClassElementSerializer _$ClassElementSerializerFromJson(
  Map<String, dynamic> json,
) => ClassElementSerializer(
  constructors: const _ConstructorElementListConverter().fromJson(
    json['constructors'] as List<ConstructorElementSerializer>?,
  ),
  fields: const _FieldElementListConverter().fromJson(
    json['fields'] as List<FieldElementSerializer>?,
  ),
  hasNonFinalField: const _BooleanConverter().fromJson(
    json['hasNonFinalField'] as bool?,
  ),
  isAbstract: const _BooleanConverter().fromJson(json['isAbstract'] as bool?),
  isBase: const _BooleanConverter().fromJson(json['isBase'] as bool?),
  isConstructable: const _BooleanConverter().fromJson(
    json['isConstructable'] as bool?,
  ),
  isDartCoreEnum: const _BooleanConverter().fromJson(
    json['isDartCoreEnum'] as bool?,
  ),
  isDartCoreObject: const _BooleanConverter().fromJson(
    json['isDartCoreObject'] as bool?,
  ),
  isExhaustive: const _BooleanConverter().fromJson(
    json['isExhaustive'] as bool?,
  ),
  isFinal: const _BooleanConverter().fromJson(json['isFinal'] as bool?),
  isInterface: const _BooleanConverter().fromJson(json['isInterface'] as bool?),
  isMixinApplication: const _BooleanConverter().fromJson(
    json['isMixinApplication'] as bool?,
  ),
  isMixinClass: const _BooleanConverter().fromJson(
    json['isMixinClass'] as bool?,
  ),
  isPrivate: const _BooleanConverter().fromJson(json['isPrivate'] as bool?),
  isPublic: const _BooleanConverter().fromJson(json['isPublic'] as bool?),
  isSealed: const _BooleanConverter().fromJson(json['isSealed'] as bool?),
  isSimplyBounded: const _BooleanConverter().fromJson(
    json['isSimplyBounded'] as bool?,
  ),
  isValidMixin: const _BooleanConverter().fromJson(
    json['isValidMixin'] as bool?,
  ),
  methods: const _MethodElementListConverter().fromJson(
    json['methods'] as List<MethodElementSerializer>?,
  ),
  name: json['name'] as String,
  source: json['source'] as String,
  typeParameters: const _TypeParameterListSerializerConverter().fromJson(
    json['typeParameters'] as List<TypeParameterElementSerializer>?,
  ),
);

Map<String, dynamic> _$ClassElementSerializerToJson(
  ClassElementSerializer instance,
) => <String, dynamic>{
  if (const _ConstructorElementListConverter().toJson(instance.constructors)
      case final value?)
    'constructors': value,
  if (const _FieldElementListConverter().toJson(instance.fields)
      case final value?)
    'fields': value,
  if (const _BooleanConverter().toJson(instance.hasNonFinalField)
      case final value?)
    'hasNonFinalField': value,
  if (const _BooleanConverter().toJson(instance.isAbstract) case final value?)
    'isAbstract': value,
  if (const _BooleanConverter().toJson(instance.isBase) case final value?)
    'isBase': value,
  if (const _BooleanConverter().toJson(instance.isConstructable)
      case final value?)
    'isConstructable': value,
  if (const _BooleanConverter().toJson(instance.isDartCoreEnum)
      case final value?)
    'isDartCoreEnum': value,
  if (const _BooleanConverter().toJson(instance.isDartCoreObject)
      case final value?)
    'isDartCoreObject': value,
  if (const _BooleanConverter().toJson(instance.isExhaustive) case final value?)
    'isExhaustive': value,
  if (const _BooleanConverter().toJson(instance.isFinal) case final value?)
    'isFinal': value,
  if (const _BooleanConverter().toJson(instance.isInterface) case final value?)
    'isInterface': value,
  if (const _BooleanConverter().toJson(instance.isMixinApplication)
      case final value?)
    'isMixinApplication': value,
  if (const _BooleanConverter().toJson(instance.isMixinClass) case final value?)
    'isMixinClass': value,
  if (const _BooleanConverter().toJson(instance.isPrivate) case final value?)
    'isPrivate': value,
  if (const _BooleanConverter().toJson(instance.isPublic) case final value?)
    'isPublic': value,
  if (const _BooleanConverter().toJson(instance.isSealed) case final value?)
    'isSealed': value,
  if (const _BooleanConverter().toJson(instance.isSimplyBounded)
      case final value?)
    'isSimplyBounded': value,
  if (const _BooleanConverter().toJson(instance.isValidMixin) case final value?)
    'isValidMixin': value,
  if (const _MethodElementListConverter().toJson(instance.methods)
      case final value?)
    'methods': value,
  'name': instance.name,
  if (const _TypeParameterListSerializerConverter().toJson(
        instance.typeParameters,
      )
      case final value?)
    'typeParameters': value,
  'source': instance.source,
};

MixinElementSerializer _$MixinElementSerializerFromJson(
  Map<String, dynamic> json,
) => MixinElementSerializer(
  name: json['name'] as String,
  source: json['source'] as String,
  isPrivate: const _BooleanConverter().fromJson(json['isPrivate'] as bool?),
  isPublic: const _BooleanConverter().fromJson(json['isPublic'] as bool?),
  fields: const _FieldElementListConverter().fromJson(
    json['fields'] as List<FieldElementSerializer>?,
  ),
  methods: const _MethodElementListConverter().fromJson(
    json['methods'] as List<MethodElementSerializer>?,
  ),
  typeParameters: const _TypeParameterListSerializerConverter().fromJson(
    json['typeParameters'] as List<TypeParameterElementSerializer>?,
  ),
  isSimplyBounded: const _BooleanConverter().fromJson(
    json['isSimplyBounded'] as bool?,
  ),
  isBase: const _BooleanConverter().fromJson(json['isBase'] as bool?),
  constructors: const _ConstructorElementListConverter().fromJson(
    json['constructors'] as List<ConstructorElementSerializer>?,
  ),
);

Map<String, dynamic> _$MixinElementSerializerToJson(
  MixinElementSerializer instance,
) => <String, dynamic>{
  'name': instance.name,
  'source': instance.source,
  if (const _BooleanConverter().toJson(instance.isPrivate) case final value?)
    'isPrivate': value,
  if (const _BooleanConverter().toJson(instance.isPublic) case final value?)
    'isPublic': value,
  if (const _FieldElementListConverter().toJson(instance.fields)
      case final value?)
    'fields': value,
  if (const _MethodElementListConverter().toJson(instance.methods)
      case final value?)
    'methods': value,
  if (const _TypeParameterListSerializerConverter().toJson(
        instance.typeParameters,
      )
      case final value?)
    'typeParameters': value,
  if (const _BooleanConverter().toJson(instance.isSimplyBounded)
      case final value?)
    'isSimplyBounded': value,
  if (const _BooleanConverter().toJson(instance.isBase) case final value?)
    'isBase': value,
  if (const _ConstructorElementListConverter().toJson(instance.constructors)
      case final value?)
    'constructors': value,
};

EnumElementSerializer _$EnumElementSerializerFromJson(
  Map<String, dynamic> json,
) => EnumElementSerializer(
  name: json['name'] as String,
  source: json['source'] as String,
  isPrivate: const _BooleanConverter().fromJson(json['isPrivate'] as bool?),
  isPublic: const _BooleanConverter().fromJson(json['isPublic'] as bool?),
  fields: const _FieldElementListConverter().fromJson(
    json['fields'] as List<FieldElementSerializer>?,
  ),
  methods: const _MethodElementListConverter().fromJson(
    json['methods'] as List<MethodElementSerializer>?,
  ),
  typeParameters: const _TypeParameterListSerializerConverter().fromJson(
    json['typeParameters'] as List<TypeParameterElementSerializer>?,
  ),
  isSimplyBounded: const _BooleanConverter().fromJson(
    json['isSimplyBounded'] as bool?,
  ),
  constructors: const _ConstructorElementListConverter().fromJson(
    json['constructors'] as List<ConstructorElementSerializer>?,
  ),
);

Map<String, dynamic> _$EnumElementSerializerToJson(
  EnumElementSerializer instance,
) => <String, dynamic>{
  'name': instance.name,
  'source': instance.source,
  if (const _BooleanConverter().toJson(instance.isPrivate) case final value?)
    'isPrivate': value,
  if (const _BooleanConverter().toJson(instance.isPublic) case final value?)
    'isPublic': value,
  if (const _FieldElementListConverter().toJson(instance.fields)
      case final value?)
    'fields': value,
  if (const _MethodElementListConverter().toJson(instance.methods)
      case final value?)
    'methods': value,
  if (const _TypeParameterListSerializerConverter().toJson(
        instance.typeParameters,
      )
      case final value?)
    'typeParameters': value,
  if (const _BooleanConverter().toJson(instance.isSimplyBounded)
      case final value?)
    'isSimplyBounded': value,
  if (const _ConstructorElementListConverter().toJson(instance.constructors)
      case final value?)
    'constructors': value,
};

TypeAliasElementSerializer _$TypeAliasElementSerializerFromJson(
  Map<String, dynamic> json,
) => TypeAliasElementSerializer(
  name: json['name'] as String,
  source: json['source'] as String,
  isPrivate: const _BooleanConverter().fromJson(json['isPrivate'] as bool?),
  isPublic: const _BooleanConverter().fromJson(json['isPublic'] as bool?),
  isSimplyBounded: const _BooleanConverter().fromJson(
    json['isSimplyBounded'] as bool?,
  ),
  typeParameters: const _TypeParameterListSerializerConverter().fromJson(
    json['typeParameters'] as List<TypeParameterElementSerializer>?,
  ),
  aliasedType: DartTypeSerializer.fromJson(
    json['aliasedType'] as Map<String, dynamic>,
  ),
);

Map<String, dynamic> _$TypeAliasElementSerializerToJson(
  TypeAliasElementSerializer instance,
) => <String, dynamic>{
  'name': instance.name,
  'source': instance.source,
  if (const _BooleanConverter().toJson(instance.isPrivate) case final value?)
    'isPrivate': value,
  if (const _BooleanConverter().toJson(instance.isPublic) case final value?)
    'isPublic': value,
  if (const _BooleanConverter().toJson(instance.isSimplyBounded)
      case final value?)
    'isSimplyBounded': value,
  if (const _TypeParameterListSerializerConverter().toJson(
        instance.typeParameters,
      )
      case final value?)
    'typeParameters': value,
  'aliasedType': instance.aliasedType.toJson(),
};

ConstructorElementSerializer _$ConstructorElementSerializerFromJson(
  Map<String, dynamic> json,
) => ConstructorElementSerializer(
  name: json['name'] as String,
  source: json['source'] as String,
  isPrivate: const _BooleanConverter().fromJson(json['isPrivate'] as bool?),
  isPublic: const _BooleanConverter().fromJson(json['isPublic'] as bool?),
  isStatic: const _BooleanConverter().fromJson(json['isStatic'] as bool?),
  isConstantEvaluated: const _BooleanConverter().fromJson(
    json['isConstantEvaluated'] as bool?,
  ),
  isSimplyBounded: const _BooleanConverter().fromJson(
    json['isSimplyBounded'] as bool?,
  ),
  typeParameters: const _TypeParameterListSerializerConverter().fromJson(
    json['typeParameters'] as List<TypeParameterElementSerializer>?,
  ),
  parameters:
      (json['parameters'] as List<dynamic>)
          .map(
            (e) =>
                ParameterElementSerializer.fromJson(e as Map<String, dynamic>),
          )
          .toList(),
  type: FunctionTypeSerializer.fromJson(json['type'] as Map<String, dynamic>),
  hasImplicitReturnType: const _BooleanConverter().fromJson(
    json['hasImplicitReturnType'] as bool?,
  ),
  isAbstract: const _BooleanConverter().fromJson(json['isAbstract'] as bool?),
  isAsynchronous: const _BooleanConverter().fromJson(
    json['isAsynchronous'] as bool?,
  ),
  isExtensionTypeMember: const _BooleanConverter().fromJson(
    json['isExtensionTypeMember'] as bool?,
  ),
  isExternal: const _BooleanConverter().fromJson(json['isExternal'] as bool?),
  isGenerator: const _BooleanConverter().fromJson(json['isGenerator'] as bool?),
  isOperator: const _BooleanConverter().fromJson(json['isOperator'] as bool?),
  isSynchronous: const _BooleanConverter().fromJson(
    json['isSynchronous'] as bool?,
  ),
  isConst: const _BooleanConverter().fromJson(json['isConst'] as bool?),
  redirectedConstructor:
      json['redirectedConstructor'] == null
          ? null
          : ConstructorElementSerializer.fromJson(
            json['redirectedConstructor'] as Map<String, dynamic>,
          ),
  isDefaultConstructor: const _BooleanConverter().fromJson(
    json['isDefaultConstructor'] as bool?,
  ),
  isFactory: const _BooleanConverter().fromJson(json['isFactory'] as bool?),
  isGenerative: const _BooleanConverter().fromJson(
    json['isGenerative'] as bool?,
  ),
);

Map<String, dynamic> _$ConstructorElementSerializerToJson(
  ConstructorElementSerializer instance,
) => <String, dynamic>{
  'name': instance.name,
  'source': instance.source,
  if (const _BooleanConverter().toJson(instance.isPrivate) case final value?)
    'isPrivate': value,
  if (const _BooleanConverter().toJson(instance.isPublic) case final value?)
    'isPublic': value,
  if (const _BooleanConverter().toJson(instance.isStatic) case final value?)
    'isStatic': value,
  if (const _BooleanConverter().toJson(instance.isConstantEvaluated)
      case final value?)
    'isConstantEvaluated': value,
  if (const _BooleanConverter().toJson(instance.isSimplyBounded)
      case final value?)
    'isSimplyBounded': value,
  if (const _TypeParameterListSerializerConverter().toJson(
        instance.typeParameters,
      )
      case final value?)
    'typeParameters': value,
  'parameters': instance.parameters.map((e) => e.toJson()).toList(),
  'type': instance.type.toJson(),
  if (const _BooleanConverter().toJson(instance.hasImplicitReturnType)
      case final value?)
    'hasImplicitReturnType': value,
  if (const _BooleanConverter().toJson(instance.isAbstract) case final value?)
    'isAbstract': value,
  if (const _BooleanConverter().toJson(instance.isAsynchronous)
      case final value?)
    'isAsynchronous': value,
  if (const _BooleanConverter().toJson(instance.isExtensionTypeMember)
      case final value?)
    'isExtensionTypeMember': value,
  if (const _BooleanConverter().toJson(instance.isExternal) case final value?)
    'isExternal': value,
  if (const _BooleanConverter().toJson(instance.isGenerator) case final value?)
    'isGenerator': value,
  if (const _BooleanConverter().toJson(instance.isOperator) case final value?)
    'isOperator': value,
  if (const _BooleanConverter().toJson(instance.isSynchronous)
      case final value?)
    'isSynchronous': value,
  if (const _BooleanConverter().toJson(instance.isConst) case final value?)
    'isConst': value,
  if (instance.redirectedConstructor?.toJson() case final value?)
    'redirectedConstructor': value,
  if (const _BooleanConverter().toJson(instance.isDefaultConstructor)
      case final value?)
    'isDefaultConstructor': value,
  if (const _BooleanConverter().toJson(instance.isFactory) case final value?)
    'isFactory': value,
  if (const _BooleanConverter().toJson(instance.isGenerative) case final value?)
    'isGenerative': value,
};

FieldElementSerializer _$FieldElementSerializerFromJson(
  Map<String, dynamic> json,
) => FieldElementSerializer(
  name: json['name'] as String,
  source: json['source'] as String?,
  isPrivate: const _BooleanConverter().fromJson(json['isPrivate'] as bool?),
  isPublic: const _BooleanConverter().fromJson(json['isPublic'] as bool?),
  isStatic: const _BooleanConverter().fromJson(json['isStatic'] as bool?),
  isConstantEvaluated: const _BooleanConverter().fromJson(
    json['isConstantEvaluated'] as bool?,
  ),
  hasImplicitType: const _BooleanConverter().fromJson(
    json['hasImplicitType'] as bool?,
  ),
  isConst: const _BooleanConverter().fromJson(json['isConst'] as bool?),
  isFinal: const _BooleanConverter().fromJson(json['isFinal'] as bool?),
  isLate: const _BooleanConverter().fromJson(json['isLate'] as bool?),
  type: DartTypeSerializer.fromJson(json['type'] as Map<String, dynamic>),
  hasInitializer: const _BooleanConverter().fromJson(
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
  isAbstract: const _BooleanConverter().fromJson(json['isAbstract'] as bool?),
  isCovariant: const _BooleanConverter().fromJson(json['isCovariant'] as bool?),
  isEnumConstant: const _BooleanConverter().fromJson(
    json['isEnumConstant'] as bool?,
  ),
  isExternal: const _BooleanConverter().fromJson(json['isExternal'] as bool?),
  isPromotable: const _BooleanConverter().fromJson(
    json['isPromotable'] as bool?,
  ),
);

Map<String, dynamic> _$FieldElementSerializerToJson(
  FieldElementSerializer instance,
) => <String, dynamic>{
  'name': instance.name,
  if (instance.source case final value?) 'source': value,
  if (const _BooleanConverter().toJson(instance.isPrivate) case final value?)
    'isPrivate': value,
  if (const _BooleanConverter().toJson(instance.isPublic) case final value?)
    'isPublic': value,
  if (const _BooleanConverter().toJson(instance.isStatic) case final value?)
    'isStatic': value,
  if (const _BooleanConverter().toJson(instance.isConstantEvaluated)
      case final value?)
    'isConstantEvaluated': value,
  if (const _BooleanConverter().toJson(instance.hasImplicitType)
      case final value?)
    'hasImplicitType': value,
  if (const _BooleanConverter().toJson(instance.isConst) case final value?)
    'isConst': value,
  if (const _BooleanConverter().toJson(instance.isFinal) case final value?)
    'isFinal': value,
  if (const _BooleanConverter().toJson(instance.isLate) case final value?)
    'isLate': value,
  'type': instance.type.toJson(),
  if (const _BooleanConverter().toJson(instance.hasInitializer)
      case final value?)
    'hasInitializer': value,
  if (instance.getter?.toJson() case final value?) 'getter': value,
  if (instance.setter?.toJson() case final value?) 'setter': value,
  if (const _BooleanConverter().toJson(instance.isAbstract) case final value?)
    'isAbstract': value,
  if (const _BooleanConverter().toJson(instance.isCovariant) case final value?)
    'isCovariant': value,
  if (const _BooleanConverter().toJson(instance.isEnumConstant)
      case final value?)
    'isEnumConstant': value,
  if (const _BooleanConverter().toJson(instance.isExternal) case final value?)
    'isExternal': value,
  if (const _BooleanConverter().toJson(instance.isPromotable) case final value?)
    'isPromotable': value,
};

MethodElementSerializer _$MethodElementSerializerFromJson(
  Map<String, dynamic> json,
) => MethodElementSerializer(
  name: json['name'] as String,
  source: json['source'] as String,
  isPrivate: const _BooleanConverter().fromJson(json['isPrivate'] as bool?),
  isPublic: const _BooleanConverter().fromJson(json['isPublic'] as bool?),
  isStatic: const _BooleanConverter().fromJson(json['isStatic'] as bool?),
  isSimplyBounded: const _BooleanConverter().fromJson(
    json['isSimplyBounded'] as bool?,
  ),
  typeParameters: const _TypeParameterListSerializerConverter().fromJson(
    json['typeParameters'] as List<TypeParameterElementSerializer>?,
  ),
  parameters: const _ParameterElementListConverter().fromJson(
    json['parameters'] as List<ParameterElementSerializer>?,
  ),
  returnType: DartTypeSerializer.fromJson(
    json['returnType'] as Map<String, dynamic>,
  ),
  type: FunctionTypeSerializer.fromJson(json['type'] as Map<String, dynamic>),
  hasImplicitReturnType: const _BooleanConverter().fromJson(
    json['hasImplicitReturnType'] as bool?,
  ),
  isAbstract: const _BooleanConverter().fromJson(json['isAbstract'] as bool?),
  isAsynchronous: const _BooleanConverter().fromJson(
    json['isAsynchronous'] as bool?,
  ),
  isExtensionTypeMember: const _BooleanConverter().fromJson(
    json['isExtensionTypeMember'] as bool?,
  ),
  isExternal: const _BooleanConverter().fromJson(json['isExternal'] as bool?),
  isGenerator: const _BooleanConverter().fromJson(json['isGenerator'] as bool?),
  isOperator: const _BooleanConverter().fromJson(json['isOperator'] as bool?),
  isSynchronous: const _BooleanConverter().fromJson(
    json['isSynchronous'] as bool?,
  ),
);

Map<String, dynamic> _$MethodElementSerializerToJson(
  MethodElementSerializer instance,
) => <String, dynamic>{
  'name': instance.name,
  'source': instance.source,
  if (const _BooleanConverter().toJson(instance.isPrivate) case final value?)
    'isPrivate': value,
  if (const _BooleanConverter().toJson(instance.isPublic) case final value?)
    'isPublic': value,
  if (const _BooleanConverter().toJson(instance.isStatic) case final value?)
    'isStatic': value,
  if (const _BooleanConverter().toJson(instance.isSimplyBounded)
      case final value?)
    'isSimplyBounded': value,
  if (const _TypeParameterListSerializerConverter().toJson(
        instance.typeParameters,
      )
      case final value?)
    'typeParameters': value,
  if (const _ParameterElementListConverter().toJson(instance.parameters)
      case final value?)
    'parameters': value,
  'returnType': instance.returnType.toJson(),
  'type': instance.type.toJson(),
  if (const _BooleanConverter().toJson(instance.hasImplicitReturnType)
      case final value?)
    'hasImplicitReturnType': value,
  if (const _BooleanConverter().toJson(instance.isAbstract) case final value?)
    'isAbstract': value,
  if (const _BooleanConverter().toJson(instance.isAsynchronous)
      case final value?)
    'isAsynchronous': value,
  if (const _BooleanConverter().toJson(instance.isExtensionTypeMember)
      case final value?)
    'isExtensionTypeMember': value,
  if (const _BooleanConverter().toJson(instance.isExternal) case final value?)
    'isExternal': value,
  if (const _BooleanConverter().toJson(instance.isGenerator) case final value?)
    'isGenerator': value,
  if (const _BooleanConverter().toJson(instance.isOperator) case final value?)
    'isOperator': value,
  if (const _BooleanConverter().toJson(instance.isSynchronous)
      case final value?)
    'isSynchronous': value,
};

TopLevelVariableElementSerializer _$TopLevelVariableElementSerializerFromJson(
  Map<String, dynamic> json,
) => TopLevelVariableElementSerializer(
  name: json['name'] as String,
  source: json['source'] as String?,
  isPrivate: const _BooleanConverter().fromJson(json['isPrivate'] as bool?),
  isPublic: const _BooleanConverter().fromJson(json['isPublic'] as bool?),
  isStatic: const _BooleanConverter().fromJson(json['isStatic'] as bool?),
  isConstantEvaluated: const _BooleanConverter().fromJson(
    json['isConstantEvaluated'] as bool?,
  ),
  hasImplicitType: const _BooleanConverter().fromJson(
    json['hasImplicitType'] as bool?,
  ),
  isConst: const _BooleanConverter().fromJson(json['isConst'] as bool?),
  isFinal: const _BooleanConverter().fromJson(json['isFinal'] as bool?),
  isLate: const _BooleanConverter().fromJson(json['isLate'] as bool?),
  type: DartTypeSerializer.fromJson(json['type'] as Map<String, dynamic>),
  hasInitializer: const _BooleanConverter().fromJson(
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
  isExternal: const _BooleanConverter().fromJson(json['isExternal'] as bool?),
);

Map<String, dynamic> _$TopLevelVariableElementSerializerToJson(
  TopLevelVariableElementSerializer instance,
) => <String, dynamic>{
  'name': instance.name,
  if (instance.source case final value?) 'source': value,
  if (const _BooleanConverter().toJson(instance.isPrivate) case final value?)
    'isPrivate': value,
  if (const _BooleanConverter().toJson(instance.isPublic) case final value?)
    'isPublic': value,
  if (const _BooleanConverter().toJson(instance.isStatic) case final value?)
    'isStatic': value,
  if (const _BooleanConverter().toJson(instance.isConstantEvaluated)
      case final value?)
    'isConstantEvaluated': value,
  if (const _BooleanConverter().toJson(instance.hasImplicitType)
      case final value?)
    'hasImplicitType': value,
  if (const _BooleanConverter().toJson(instance.isConst) case final value?)
    'isConst': value,
  if (const _BooleanConverter().toJson(instance.isFinal) case final value?)
    'isFinal': value,
  if (const _BooleanConverter().toJson(instance.isLate) case final value?)
    'isLate': value,
  'type': instance.type.toJson(),
  if (const _BooleanConverter().toJson(instance.hasInitializer)
      case final value?)
    'hasInitializer': value,
  if (instance.getter?.toJson() case final value?) 'getter': value,
  if (instance.setter?.toJson() case final value?) 'setter': value,
  if (const _BooleanConverter().toJson(instance.isExternal) case final value?)
    'isExternal': value,
};

FunctionElementSerializer _$FunctionElementSerializerFromJson(
  Map<String, dynamic> json,
) => FunctionElementSerializer(
  name: json['name'] as String,
  source: json['source'] as String,
  isPrivate: const _BooleanConverter().fromJson(json['isPrivate'] as bool?),
  isPublic: const _BooleanConverter().fromJson(json['isPublic'] as bool?),
  isStatic: const _BooleanConverter().fromJson(json['isStatic'] as bool?),
  isSimplyBounded: const _BooleanConverter().fromJson(
    json['isSimplyBounded'] as bool?,
  ),
  typeParameters: const _TypeParameterListSerializerConverter().fromJson(
    json['typeParameters'] as List<TypeParameterElementSerializer>?,
  ),
  parameters: const _ParameterElementListConverter().fromJson(
    json['parameters'] as List<ParameterElementSerializer>?,
  ),
  returnType: DartTypeSerializer.fromJson(
    json['returnType'] as Map<String, dynamic>,
  ),
  type: FunctionTypeSerializer.fromJson(json['type'] as Map<String, dynamic>),
  hasImplicitReturnType: const _BooleanConverter().fromJson(
    json['hasImplicitReturnType'] as bool?,
  ),
  isAbstract: const _BooleanConverter().fromJson(json['isAbstract'] as bool?),
  isAsynchronous: const _BooleanConverter().fromJson(
    json['isAsynchronous'] as bool?,
  ),
  isExternal: const _BooleanConverter().fromJson(json['isExternal'] as bool?),
  isGenerator: const _BooleanConverter().fromJson(json['isGenerator'] as bool?),
  isOperator: const _BooleanConverter().fromJson(json['isOperator'] as bool?),
  isSynchronous: const _BooleanConverter().fromJson(
    json['isSynchronous'] as bool?,
  ),
  isExtensionTypeMember: const _BooleanConverter().fromJson(
    json['isExtensionTypeMember'] as bool?,
  ),
);

Map<String, dynamic> _$FunctionElementSerializerToJson(
  FunctionElementSerializer instance,
) => <String, dynamic>{
  'name': instance.name,
  'source': instance.source,
  if (const _BooleanConverter().toJson(instance.isPrivate) case final value?)
    'isPrivate': value,
  if (const _BooleanConverter().toJson(instance.isPublic) case final value?)
    'isPublic': value,
  if (const _BooleanConverter().toJson(instance.isStatic) case final value?)
    'isStatic': value,
  if (const _BooleanConverter().toJson(instance.isSimplyBounded)
      case final value?)
    'isSimplyBounded': value,
  if (const _TypeParameterListSerializerConverter().toJson(
        instance.typeParameters,
      )
      case final value?)
    'typeParameters': value,
  if (const _ParameterElementListConverter().toJson(instance.parameters)
      case final value?)
    'parameters': value,
  'returnType': instance.returnType.toJson(),
  'type': instance.type.toJson(),
  if (const _BooleanConverter().toJson(instance.hasImplicitReturnType)
      case final value?)
    'hasImplicitReturnType': value,
  if (const _BooleanConverter().toJson(instance.isAbstract) case final value?)
    'isAbstract': value,
  if (const _BooleanConverter().toJson(instance.isAsynchronous)
      case final value?)
    'isAsynchronous': value,
  if (const _BooleanConverter().toJson(instance.isExternal) case final value?)
    'isExternal': value,
  if (const _BooleanConverter().toJson(instance.isGenerator) case final value?)
    'isGenerator': value,
  if (const _BooleanConverter().toJson(instance.isOperator) case final value?)
    'isOperator': value,
  if (const _BooleanConverter().toJson(instance.isSynchronous)
      case final value?)
    'isSynchronous': value,
  if (const _BooleanConverter().toJson(instance.isExtensionTypeMember)
      case final value?)
    'isExtensionTypeMember': value,
};

TypeParameterElementSerializer _$TypeParameterElementSerializerFromJson(
  Map<String, dynamic> json,
) => TypeParameterElementSerializer(
  name: json['name'] as String,
  source: json['source'] as String?,
  isPrivate: const _BooleanConverter().fromJson(json['isPrivate'] as bool?),
  isPublic: const _BooleanConverter().fromJson(json['isPublic'] as bool?),
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
  if (const _BooleanConverter().toJson(instance.isPrivate) case final value?)
    'isPrivate': value,
  if (const _BooleanConverter().toJson(instance.isPublic) case final value?)
    'isPublic': value,
  if (instance.bound?.toJson() case final value?) 'bound': value,
};

ParameterElementSerializer _$ParameterElementSerializerFromJson(
  Map<String, dynamic> json,
) => ParameterElementSerializer(
  name: json['name'] as String,
  source: json['source'] as String?,
  isPrivate: const _BooleanConverter().fromJson(json['isPrivate'] as bool?),
  isPublic: const _BooleanConverter().fromJson(json['isPublic'] as bool?),
  isConstantEvaluated: const _BooleanConverter().fromJson(
    json['isConstantEvaluated'] as bool?,
  ),
  hasImplicitType: const _BooleanConverter().fromJson(
    json['hasImplicitType'] as bool?,
  ),
  isConst: const _BooleanConverter().fromJson(json['isConst'] as bool?),
  isFinal: const _BooleanConverter().fromJson(json['isFinal'] as bool?),
  isLate: const _BooleanConverter().fromJson(json['isLate'] as bool?),
  isStatic: const _BooleanConverter().fromJson(json['isStatic'] as bool?),
  type: DartTypeSerializer.fromJson(json['type'] as Map<String, dynamic>),
  hasDefaultValue: const _BooleanConverter().fromJson(
    json['hasDefaultValue'] as bool?,
  ),
  isCovariant: const _BooleanConverter().fromJson(json['isCovariant'] as bool?),
  isInitializingFormal: const _BooleanConverter().fromJson(
    json['isInitializingFormal'] as bool?,
  ),
  isNamed: const _BooleanConverter().fromJson(json['isNamed'] as bool?),
  isOptional: const _BooleanConverter().fromJson(json['isOptional'] as bool?),
  isOptionalNamed: const _BooleanConverter().fromJson(
    json['isOptionalNamed'] as bool?,
  ),
  isOptionalPositional: const _BooleanConverter().fromJson(
    json['isOptionalPositional'] as bool?,
  ),
  isPositional: const _BooleanConverter().fromJson(
    json['isPositional'] as bool?,
  ),
  isRequired: const _BooleanConverter().fromJson(json['isRequired'] as bool?),
  isRequiredNamed: const _BooleanConverter().fromJson(
    json['isRequiredNamed'] as bool?,
  ),
  isRequiredPositional: const _BooleanConverter().fromJson(
    json['isRequiredPositional'] as bool?,
  ),
  isSuperFormal: const _BooleanConverter().fromJson(
    json['isSuperFormal'] as bool?,
  ),
  parameters: const _ParameterElementListConverter().fromJson(
    json['parameters'] as List<ParameterElementSerializer>?,
  ),
  typeParameters: const _TypeParameterListSerializerConverter().fromJson(
    json['typeParameters'] as List<TypeParameterElementSerializer>?,
  ),
);

Map<String, dynamic> _$ParameterElementSerializerToJson(
  ParameterElementSerializer instance,
) => <String, dynamic>{
  'name': instance.name,
  if (instance.source case final value?) 'source': value,
  if (const _BooleanConverter().toJson(instance.isPrivate) case final value?)
    'isPrivate': value,
  if (const _BooleanConverter().toJson(instance.isPublic) case final value?)
    'isPublic': value,
  if (const _BooleanConverter().toJson(instance.isConstantEvaluated)
      case final value?)
    'isConstantEvaluated': value,
  if (const _BooleanConverter().toJson(instance.hasImplicitType)
      case final value?)
    'hasImplicitType': value,
  if (const _BooleanConverter().toJson(instance.isConst) case final value?)
    'isConst': value,
  if (const _BooleanConverter().toJson(instance.isFinal) case final value?)
    'isFinal': value,
  if (const _BooleanConverter().toJson(instance.isLate) case final value?)
    'isLate': value,
  if (const _BooleanConverter().toJson(instance.isStatic) case final value?)
    'isStatic': value,
  'type': instance.type.toJson(),
  if (const _BooleanConverter().toJson(instance.hasDefaultValue)
      case final value?)
    'hasDefaultValue': value,
  if (const _BooleanConverter().toJson(instance.isCovariant) case final value?)
    'isCovariant': value,
  if (const _BooleanConverter().toJson(instance.isInitializingFormal)
      case final value?)
    'isInitializingFormal': value,
  if (const _BooleanConverter().toJson(instance.isNamed) case final value?)
    'isNamed': value,
  if (const _BooleanConverter().toJson(instance.isOptional) case final value?)
    'isOptional': value,
  if (const _BooleanConverter().toJson(instance.isOptionalNamed)
      case final value?)
    'isOptionalNamed': value,
  if (const _BooleanConverter().toJson(instance.isOptionalPositional)
      case final value?)
    'isOptionalPositional': value,
  if (const _BooleanConverter().toJson(instance.isPositional) case final value?)
    'isPositional': value,
  if (const _BooleanConverter().toJson(instance.isRequired) case final value?)
    'isRequired': value,
  if (const _BooleanConverter().toJson(instance.isRequiredNamed)
      case final value?)
    'isRequiredNamed': value,
  if (const _BooleanConverter().toJson(instance.isRequiredPositional)
      case final value?)
    'isRequiredPositional': value,
  if (const _BooleanConverter().toJson(instance.isSuperFormal)
      case final value?)
    'isSuperFormal': value,
  if (const _ParameterElementListConverter().toJson(instance.parameters)
      case final value?)
    'parameters': value,
  if (const _TypeParameterListSerializerConverter().toJson(
        instance.typeParameters,
      )
      case final value?)
    'typeParameters': value,
};

DartTypeSerializer _$DartTypeSerializerFromJson(
  Map<String, dynamic> json,
) => DartTypeSerializer(
  name: json['name'] as String?,
  nullabilitySuffix: json['nullabilitySuffix'] as String?,
  isDartCore: const _BooleanConverter().fromJson(json['isDartCore'] as bool?),
  isDartAsync: const _BooleanConverter().fromJson(json['isDartAsync'] as bool?),
);

Map<String, dynamic> _$DartTypeSerializerToJson(
  DartTypeSerializer instance,
) => <String, dynamic>{
  if (instance.name case final value?) 'name': value,
  if (instance.nullabilitySuffix case final value?) 'nullabilitySuffix': value,
  if (const _BooleanConverter().toJson(instance.isDartCore) case final value?)
    'isDartCore': value,
  if (const _BooleanConverter().toJson(instance.isDartAsync) case final value?)
    'isDartAsync': value,
};

FunctionTypeSerializer _$FunctionTypeSerializerFromJson(
  Map<String, dynamic> json,
) => FunctionTypeSerializer(
  name: json['name'] as String?,
  nullabilitySuffix: json['nullabilitySuffix'] as String?,
  isDartCore: const _BooleanConverter().fromJson(json['isDartCore'] as bool?),
  isDartAsync: const _BooleanConverter().fromJson(json['isDartAsync'] as bool?),
  namedParameterTypes: const _DartTypeMapConverter().fromJson(
    json['namedParameterTypes'] as Map<String, DartTypeSerializer>?,
  ),
  normalParameterTypes: const _DartTypeListConverter().fromJson(
    json['normalParameterTypes'] as List<DartTypeSerializer>?,
  ),
  optionalParameterTypes: const _DartTypeListConverter().fromJson(
    json['optionalParameterTypes'] as List<DartTypeSerializer>?,
  ),
  parameters: const _ParameterElementListConverter().fromJson(
    json['parameters'] as List<ParameterElementSerializer>?,
  ),
  returnType: DartTypeSerializer.fromJson(
    json['returnType'] as Map<String, dynamic>,
  ),
  typeFormals: const _TypeParameterListSerializerConverter().fromJson(
    json['typeFormals'] as List<TypeParameterElementSerializer>?,
  ),
);

Map<String, dynamic> _$FunctionTypeSerializerToJson(
  FunctionTypeSerializer instance,
) => <String, dynamic>{
  if (instance.name case final value?) 'name': value,
  if (instance.nullabilitySuffix case final value?) 'nullabilitySuffix': value,
  if (const _BooleanConverter().toJson(instance.isDartCore) case final value?)
    'isDartCore': value,
  if (const _BooleanConverter().toJson(instance.isDartAsync) case final value?)
    'isDartAsync': value,
  if (const _DartTypeMapConverter().toJson(instance.namedParameterTypes)
      case final value?)
    'namedParameterTypes': value,
  if (const _DartTypeListConverter().toJson(instance.normalParameterTypes)
      case final value?)
    'normalParameterTypes': value,
  if (const _DartTypeListConverter().toJson(instance.optionalParameterTypes)
      case final value?)
    'optionalParameterTypes': value,
  if (const _ParameterElementListConverter().toJson(instance.parameters)
      case final value?)
    'parameters': value,
  'returnType': instance.returnType.toJson(),
  if (const _TypeParameterListSerializerConverter().toJson(instance.typeFormals)
      case final value?)
    'typeFormals': value,
};

PropertyAccessorElementSerializer _$PropertyAccessorElementSerializerFromJson(
  Map<String, dynamic> json,
) => PropertyAccessorElementSerializer(
  name: json['name'] as String,
  source: json['source'] as String,
  isPrivate: const _BooleanConverter().fromJson(json['isPrivate'] as bool?),
  isPublic: const _BooleanConverter().fromJson(json['isPublic'] as bool?),
  isStatic: const _BooleanConverter().fromJson(json['isStatic'] as bool?),
  isSimplyBounded: const _BooleanConverter().fromJson(
    json['isSimplyBounded'] as bool?,
  ),
  typeParameters: const _TypeParameterListSerializerConverter().fromJson(
    json['typeParameters'] as List<TypeParameterElementSerializer>?,
  ),
  parameters: const _ParameterElementListConverter().fromJson(
    json['parameters'] as List<ParameterElementSerializer>?,
  ),
  returnType: DartTypeSerializer.fromJson(
    json['returnType'] as Map<String, dynamic>,
  ),
  type: FunctionTypeSerializer.fromJson(json['type'] as Map<String, dynamic>),
  hasImplicitReturnType: const _BooleanConverter().fromJson(
    json['hasImplicitReturnType'] as bool?,
  ),
  isAbstract: const _BooleanConverter().fromJson(json['isAbstract'] as bool?),
  isAsynchronous: const _BooleanConverter().fromJson(
    json['isAsynchronous'] as bool?,
  ),
  isExtensionTypeMember: const _BooleanConverter().fromJson(
    json['isExtensionTypeMember'] as bool?,
  ),
  isExternal: const _BooleanConverter().fromJson(json['isExternal'] as bool?),
  isGenerator: const _BooleanConverter().fromJson(json['isGenerator'] as bool?),
  isOperator: const _BooleanConverter().fromJson(json['isOperator'] as bool?),
  isSynchronous: const _BooleanConverter().fromJson(
    json['isSynchronous'] as bool?,
  ),
  isGetter: const _BooleanConverter().fromJson(json['isGetter'] as bool?),
  isSetter: const _BooleanConverter().fromJson(json['isSetter'] as bool?),
);

Map<String, dynamic> _$PropertyAccessorElementSerializerToJson(
  PropertyAccessorElementSerializer instance,
) => <String, dynamic>{
  'name': instance.name,
  'source': instance.source,
  if (const _BooleanConverter().toJson(instance.isPrivate) case final value?)
    'isPrivate': value,
  if (const _BooleanConverter().toJson(instance.isPublic) case final value?)
    'isPublic': value,
  if (const _BooleanConverter().toJson(instance.isStatic) case final value?)
    'isStatic': value,
  if (const _BooleanConverter().toJson(instance.isSimplyBounded)
      case final value?)
    'isSimplyBounded': value,
  if (const _TypeParameterListSerializerConverter().toJson(
        instance.typeParameters,
      )
      case final value?)
    'typeParameters': value,
  if (const _ParameterElementListConverter().toJson(instance.parameters)
      case final value?)
    'parameters': value,
  'returnType': instance.returnType.toJson(),
  'type': instance.type.toJson(),
  if (const _BooleanConverter().toJson(instance.hasImplicitReturnType)
      case final value?)
    'hasImplicitReturnType': value,
  if (const _BooleanConverter().toJson(instance.isAbstract) case final value?)
    'isAbstract': value,
  if (const _BooleanConverter().toJson(instance.isAsynchronous)
      case final value?)
    'isAsynchronous': value,
  if (const _BooleanConverter().toJson(instance.isExtensionTypeMember)
      case final value?)
    'isExtensionTypeMember': value,
  if (const _BooleanConverter().toJson(instance.isExternal) case final value?)
    'isExternal': value,
  if (const _BooleanConverter().toJson(instance.isGenerator) case final value?)
    'isGenerator': value,
  if (const _BooleanConverter().toJson(instance.isOperator) case final value?)
    'isOperator': value,
  if (const _BooleanConverter().toJson(instance.isSynchronous)
      case final value?)
    'isSynchronous': value,
  if (const _BooleanConverter().toJson(instance.isGetter) case final value?)
    'isGetter': value,
  if (const _BooleanConverter().toJson(instance.isSetter) case final value?)
    'isSetter': value,
};
