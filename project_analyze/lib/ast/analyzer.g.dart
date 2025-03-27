// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'analyzer.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TypeDefiningMetadata _$TypeDefiningMetadataFromJson(
  Map<String, dynamic> json,
) => TypeDefiningMetadata(
  path: json['path'] as String?,
  name: json['name'] as String,
  arguments:
      (json['arguments'] as List<dynamic>?)
          ?.map(
            (e) =>
                TypeParameterizedMetadata.fromJson(e as Map<String, dynamic>),
          )
          .toList(),
);

Map<String, dynamic> _$TypeDefiningMetadataToJson(
  TypeDefiningMetadata instance,
) => <String, dynamic>{
  if (instance.path case final value?) 'path': value,
  'name': instance.name,
  if (instance.arguments?.map((e) => e.toJson()).toList() case final value?)
    'arguments': value,
};

TypeParameterizedMetadata _$TypeParameterizedMetadataFromJson(
  Map<String, dynamic> json,
) => TypeParameterizedMetadata(
  path: json['path'] as String?,
  name: json['name'] as String,
  nullable: json['null'] as bool? ?? false,
  arguments:
      (json['arguments'] as List<dynamic>?)
          ?.map(
            (e) =>
                TypeParameterizedMetadata.fromJson(e as Map<String, dynamic>),
          )
          .toList(),
);

Map<String, dynamic> _$TypeParameterizedMetadataToJson(
  TypeParameterizedMetadata instance,
) => <String, dynamic>{
  if (instance.path case final value?) 'path': value,
  'name': instance.name,
  if (instance.arguments?.map((e) => e.toJson()).toList() case final value?)
    'arguments': value,
  'null': instance.nullable,
};

ClassMetadata _$ClassMetadataFromJson(Map<String, dynamic> json) =>
    ClassMetadata(
      json['name'] as String,
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
      if (instance.supertype?.toJson() case final value?) 'supertype': value,
    };

MixinMetadata _$MixinMetadataFromJson(Map<String, dynamic> json) =>
    MixinMetadata(json['name'] as String);

Map<String, dynamic> _$MixinMetadataToJson(MixinMetadata instance) =>
    <String, dynamic>{'name': instance.name};
