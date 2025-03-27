// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'analyzer.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ClassMetadata _$ClassMetadataFromJson(
  Map<String, dynamic> json,
) => ClassMetadata(
  json['name'] as String,
  typeParameters:
      (json['typeParameters'] as List<dynamic>?)
          ?.map(
            (e) => TypeParameterAnalyzer.fromJson(e as Map<String, dynamic>),
          )
          .toList(),
  properties:
      (json['properties'] as List<dynamic>?)
          ?.map(
            (e) =>
                ClassPropertyDeclAnalyzer.fromJson(e as Map<String, dynamic>),
          )
          .toList(),
  constructors:
      (json['constructors'] as List<dynamic>?)
          ?.map((e) => ConstructorAnalyzer.fromJson(e as Map<String, dynamic>))
          .toList(),
  methods:
      (json['methods'] as List<dynamic>?)
          ?.map((e) => MethodAnalyzer.fromJson(e as Map<String, dynamic>))
          .toList(),
  superclass:
      json['superclass'] == null
          ? null
          : TypeAnalyzer.fromJson(json['superclass'] as Map<String, dynamic>),
);

Map<String, dynamic> _$ClassMetadataToJson(
  ClassMetadata instance,
) => <String, dynamic>{
  'name': instance.name,
  if (instance.typeParameters?.map((e) => e.toJson()).toList()
      case final value?)
    'typeParameters': value,
  if (instance.properties?.map((e) => e.toJson()).toList() case final value?)
    'properties': value,
  if (instance.constructors?.map((e) => e.toJson()).toList() case final value?)
    'constructors': value,
  if (instance.methods?.map((e) => e.toJson()).toList() case final value?)
    'methods': value,
  if (instance.superclass?.toJson() case final value?) 'superclass': value,
};

MixinMetadata _$MixinMetadataFromJson(Map<String, dynamic> json) =>
    MixinMetadata(json['name'] as String);

Map<String, dynamic> _$MixinMetadataToJson(MixinMetadata instance) =>
    <String, dynamic>{'name': instance.name};

LazyDeclAnalyzer _$LazyDeclAnalyzerFromJson(Map<String, dynamic> json) =>
    LazyDeclAnalyzer(
      name: json['name'] as String,
      encode: json['encode'] as String,
    );

Map<String, dynamic> _$LazyDeclAnalyzerToJson(LazyDeclAnalyzer instance) =>
    <String, dynamic>{'name': instance.name, 'encode': instance.encode};

LazyClassDeclAnalyzer _$LazyClassDeclAnalyzerFromJson(
  Map<String, dynamic> json,
) => LazyClassDeclAnalyzer(
  name: json['name'] as String,
  encode: json['encode'] as String,
);

Map<String, dynamic> _$LazyClassDeclAnalyzerToJson(
  LazyClassDeclAnalyzer instance,
) => <String, dynamic>{'name': instance.name, 'encode': instance.encode};

MethodAnalyzer _$MethodAnalyzerFromJson(
  Map<String, dynamic> json,
) => MethodAnalyzer(
    name: json['name'] as String,
    encode: json['encode'] as String,
    isStatic: json['isStatic'] as bool,
    returnType:
        json['returnType'] == null
            ? null
            : TypeAnalyzer.fromJson(json['returnType'] as Map<String, dynamic>),
  )
  ..parameters =
      (json['parameter'] as List<dynamic>?)
          ?.map(
            (e) => ParameterDeclAnalyzer.fromJson(e as Map<String, dynamic>),
          )
          .toList();

Map<String, dynamic> _$MethodAnalyzerToJson(
  MethodAnalyzer instance,
) => <String, dynamic>{
  'name': instance.name,
  'encode': instance.encode,
  'isStatic': instance.isStatic,
  'returnType': instance.returnType?.toJson(),
  if (instance.parameters?.map((e) => e.toJson()).toList() case final value?)
    'parameter': value,
};

ClassPropertyDeclAnalyzer _$ClassPropertyDeclAnalyzerFromJson(
  Map<String, dynamic> json,
) => ClassPropertyDeclAnalyzer(
  json['name'] as String,
  json['type'] == null
      ? null
      : TypeAnalyzer.fromJson(json['type'] as Map<String, dynamic>),
  json['isStatic'] as bool,
  nullable: json['nullable'] as bool,
  isConst: json['const'] as bool,
  isFinal: json['final'] as bool,
  isLate: json['late'] as bool,
  initializer: json['initializer'] as String?,
);

Map<String, dynamic> _$ClassPropertyDeclAnalyzerToJson(
  ClassPropertyDeclAnalyzer instance,
) => <String, dynamic>{
  'name': instance.name,
  'nullable': instance.nullable,
  'const': instance.isConst,
  'final': instance.isFinal,
  'late': instance.isLate,
  if (instance.type case final value?) 'type': value,
  if (instance.initializer case final value?) 'initializer': value,
  'isStatic': instance.isStatic,
};

PropertyDeclAnalyzer _$PropertyDeclAnalyzerFromJson(
  Map<String, dynamic> json,
) => PropertyDeclAnalyzer(
  json['name'] as String,
  json['type'] == null
      ? null
      : TypeAnalyzer.fromJson(json['type'] as Map<String, dynamic>),
  nullable: json['nullable'] as bool,
  isConst: json['const'] as bool,
  isFinal: json['final'] as bool,
  isLate: json['late'] as bool,
  initializer: json['initializer'] as String?,
);

Map<String, dynamic> _$PropertyDeclAnalyzerToJson(
  PropertyDeclAnalyzer instance,
) => <String, dynamic>{
  'name': instance.name,
  'nullable': instance.nullable,
  'const': instance.isConst,
  'final': instance.isFinal,
  'late': instance.isLate,
  if (instance.type case final value?) 'type': value,
  if (instance.initializer case final value?) 'initializer': value,
};

ConstructorAnalyzer _$ConstructorAnalyzerFromJson(Map<String, dynamic> json) =>
    ConstructorAnalyzer(
      name: json['name'] as String?,
      parameters:
          (json['parameter'] as List<dynamic>?)
              ?.map(
                (e) =>
                    ParameterDeclAnalyzer.fromJson(e as Map<String, dynamic>),
              )
              .toList(),
      redirectConstructor:
          json['redirect'] == null
              ? null
              : RedirectContructorAnalyzer.fromJson(
                json['redirect'] as Map<String, dynamic>,
              ),
    );

Map<String, dynamic> _$ConstructorAnalyzerToJson(
  ConstructorAnalyzer instance,
) => <String, dynamic>{
  if (instance.name case final value?) 'name': value,
  if (instance.redirectConstructor case final value?) 'redirect': value,
  if (instance.parameters case final value?) 'parameter': value,
};

RedirectContructorAnalyzer _$RedirectContructorAnalyzerFromJson(
  Map<String, dynamic> json,
) => RedirectContructorAnalyzer(
  TypeAnalyzer.fromJson(json['type'] as Map<String, dynamic>),
  name: json['name'] as String?,
);

Map<String, dynamic> _$RedirectContructorAnalyzerToJson(
  RedirectContructorAnalyzer instance,
) => <String, dynamic>{
  'type': instance.type,
  if (instance.name case final value?) 'name': value,
};

ParameterDeclAnalyzer _$ParameterDeclAnalyzerFromJson(
  Map<String, dynamic> json,
) => ParameterDeclAnalyzer(
  json['name'] as String,
  json['type'] == null
      ? null
      : TypeAnalyzer.fromJson(json['type'] as Map<String, dynamic>),
  isNamed: json['named'] as bool,
  toThis: json['this'] as bool? ?? false,
  toSuper: json['super'] as bool? ?? false,
  isExplicitlyTyped: json['explicitly_typed'] as bool? ?? false,
  isExplicitlyTypeNullable: json['isExplicitlyTypeNullable'] as bool?,
  isRequired: json['required'] as bool? ?? false,
  rawDefaultValue: json['default'] as String?,
);

Map<String, dynamic> _$ParameterDeclAnalyzerToJson(
  ParameterDeclAnalyzer instance,
) => <String, dynamic>{
  'name': instance.name,
  if (instance.type case final value?) 'type': value,
  'named': instance.isNamed,
  'this': instance.toThis,
  'super': instance.toSuper,
  'explicitly_typed': instance.isExplicitlyTyped,
  if (instance.isExplicitlyTypeNullable case final value?)
    'isExplicitlyTypeNullable': value,
  'required': instance.isRequired,
  if (instance.rawDefaultValue case final value?) 'default': value,
};

TypeParameterAnalyzer _$TypeParameterAnalyzerFromJson(
  Map<String, dynamic> json,
) => TypeParameterAnalyzer(
  name: json['name'] as String,
  extend:
      json['extend'] == null
          ? null
          : TypeAnalyzer.fromJson(json['extend'] as Map<String, dynamic>),
);

Map<String, dynamic> _$TypeParameterAnalyzerToJson(
  TypeParameterAnalyzer instance,
) => <String, dynamic>{
  'name': instance.name,
  if (instance.extend case final value?) 'extend': value,
};

TypeAnalyzer _$TypeAnalyzerFromJson(Map<String, dynamic> json) => TypeAnalyzer(
  name: json['name'] as String,
  nullable: json['null'] as bool? ?? false,
  arguments:
      (json['arguments'] as List<dynamic>?)
          ?.map((e) => TypeAnalyzer.fromJson(e as Map<String, dynamic>))
          .toList(),
);

Map<String, dynamic> _$TypeAnalyzerToJson(TypeAnalyzer instance) =>
    <String, dynamic>{
      'name': instance.name,
      'null': instance.nullable,
      if (instance.arguments case final value?) 'arguments': value,
    };

RecordTypeAnalyzer _$RecordTypeAnalyzerFromJson(Map<String, dynamic> json) =>
    RecordTypeAnalyzer(
      name: json['name'] as String? ?? '_record_',
      nullable: json['null'] as bool? ?? false,
    );

Map<String, dynamic> _$RecordTypeAnalyzerToJson(RecordTypeAnalyzer instance) =>
    <String, dynamic>{'name': instance.name, 'null': instance.nullable};

FunctionTypeAnalyzer _$FunctionTypeAnalyzerFromJson(
  Map<String, dynamic> json,
) => FunctionTypeAnalyzer(
  name: json['name'] as String? ?? '_function_',
  nullable: json['null'] as bool? ?? false,
  returnType:
      json['returnType'] == null
          ? null
          : TypeAnalyzer.fromJson(json['returnType'] as Map<String, dynamic>),
  parameters:
      (json['parameters'] as List<dynamic>?)
          ?.map(
            (e) => _$recordConvert(
              e,
              ($jsonValue) => (
                $jsonValue[r'$1'] as String?,
                TypeAnalyzer.fromJson(
                  $jsonValue[r'$2'] as Map<String, dynamic>,
                ),
              ),
            ),
          )
          .toList() ??
      const [],
);

Map<String, dynamic> _$FunctionTypeAnalyzerToJson(
  FunctionTypeAnalyzer instance,
) => <String, dynamic>{
  'name': instance.name,
  'null': instance.nullable,
  if (instance.returnType case final value?) 'returnType': value,
  'parameters':
      instance.parameters
          .map((e) => <String, dynamic>{r'$1': e.$1, r'$2': e.$2})
          .toList(),
};

$Rec _$recordConvert<$Rec>(Object? value, $Rec Function(Map) convert) =>
    convert(value as Map<String, dynamic>);
