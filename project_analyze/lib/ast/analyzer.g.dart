// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'analyzer.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TypeMetadata _$TypeMetadataFromJson(Map<String, dynamic> json) => TypeMetadata(
  file: json['file'] as String?,
  name: json['name'] as String,
  arguments: (json['arguments'] as List<dynamic>?)?.map(
    (e) => TypeMetadata.fromJson(e as Map<String, dynamic>),
  ),
);

Map<String, dynamic> _$TypeMetadataToJson(TypeMetadata instance) =>
    <String, dynamic>{
      if (instance.file case final value?) 'file': value,
      'name': instance.name,
      if (instance.arguments?.map((e) => e.toJson()).toList() case final value?)
        'arguments': value,
    };

TypeDefiningMetadata _$TypeDefiningMetadataFromJson(
  Map<String, dynamic> json,
) => TypeDefiningMetadata(
  name: json['name'] as String,
  file: json['file'] as String?,
  arguments: (json['arguments'] as List<dynamic>?)?.map(
    (e) => TypeMetadata.fromJson(e as Map<String, dynamic>),
  ),
);

Map<String, dynamic> _$TypeDefiningMetadataToJson(
  TypeDefiningMetadata instance,
) => <String, dynamic>{
  if (instance.file case final value?) 'file': value,
  'name': instance.name,
  if (instance.arguments?.map((e) => e.toJson()).toList() case final value?)
    'arguments': value,
};

TypeParameterMetadata _$TypeParameterMetadataFromJson(
  Map<String, dynamic> json,
) => TypeParameterMetadata(
  name: json['name'] as String,
  file: json['file'] as String?,
  arguments: (json['arguments'] as List<dynamic>?)?.map(
    (e) => TypeMetadata.fromJson(e as Map<String, dynamic>),
  ),
  bound:
      json['bound'] == null
          ? null
          : TypeMetadata.fromJson(json['bound'] as Map<String, dynamic>),
);

Map<String, dynamic> _$TypeParameterMetadataToJson(
  TypeParameterMetadata instance,
) => <String, dynamic>{
  if (instance.file case final value?) 'file': value,
  'name': instance.name,
  if (instance.arguments?.map((e) => e.toJson()).toList() case final value?)
    'arguments': value,
  'bound': instance.bound?.toJson(),
};

ClassMetadata _$ClassMetadataFromJson(Map<String, dynamic> json) =>
    ClassMetadata(
      json['name'] as String,
      typeParameters: (json['typeParameters'] as List<dynamic>?)?.map(
        (e) => TypeParameterMetadata.fromJson(e as Map<String, dynamic>),
      ),
      supertype:
          json['supertype'] == null
              ? null
              : TypeDefiningMetadata.fromJson(
                json['supertype'] as Map<String, dynamic>,
              ),
    );

Map<String, dynamic> _$ClassMetadataToJson(ClassMetadata instance) =>
    <String, dynamic>{
      'name': instance.name,
      if (instance.typeParameters?.map((e) => e.toJson()).toList()
          case final value?)
        'typeParameters': value,
      if (instance.supertype?.toJson() case final value?) 'supertype': value,
    };

MixinMetadata _$MixinMetadataFromJson(Map<String, dynamic> json) =>
    MixinMetadata(json['name'] as String);

Map<String, dynamic> _$MixinMetadataToJson(MixinMetadata instance) =>
    <String, dynamic>{'name': instance.name};
