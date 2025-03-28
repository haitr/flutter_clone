// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ana.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ClassMetadata _$ClassMetadataFromJson(Map<String, dynamic> json) =>
    _ClassMetadata(
      isPrivate: json['isPrivate'] as bool,
      isPublic: json['isPublic'] as bool,
      source: json['source'] as String?,
      interfaces:
          (json['interfaces'] as List<dynamic>)
              .map((e) => InterfaceMetadata.fromJson(e as Map<String, dynamic>))
              .toList(),
      mixins:
          (json['mixins'] as List<dynamic>)
              .map((e) => InterfaceMetadata.fromJson(e as Map<String, dynamic>))
              .toList(),
      name: json['name'] as String,
      supertype:
          json['supertype'] == null
              ? null
              : InterfaceMetadata.fromJson(
                json['supertype'] as Map<String, dynamic>,
              ),
      hasNonFinalField: json['hasNonFinalField'] as bool,
      isAbstract: json['isAbstract'] as bool,
      isBase: json['isBase'] as bool,
      isConstructable: json['isConstructable'] as bool,
      isDartCoreEnum: json['isDartCoreEnum'] as bool,
      isDartCoreObject: json['isDartCoreObject'] as bool,
      isExhaustive: json['isExhaustive'] as bool,
      isFinal: json['isFinal'] as bool,
      isInterface: json['isInterface'] as bool,
      isMixinApplication: json['isMixinApplication'] as bool,
      isMixinClass: json['isMixinClass'] as bool,
      isSealed: json['isSealed'] as bool,
      isValidMixin: json['isValidMixin'] as bool,
    );

Map<String, dynamic> _$ClassMetadataToJson(_ClassMetadata instance) =>
    <String, dynamic>{
      'isPrivate': instance.isPrivate,
      'isPublic': instance.isPublic,
      'source': instance.source,
      'interfaces': instance.interfaces,
      'mixins': instance.mixins,
      'name': instance.name,
      'supertype': instance.supertype,
      'hasNonFinalField': instance.hasNonFinalField,
      'isAbstract': instance.isAbstract,
      'isBase': instance.isBase,
      'isConstructable': instance.isConstructable,
      'isDartCoreEnum': instance.isDartCoreEnum,
      'isDartCoreObject': instance.isDartCoreObject,
      'isExhaustive': instance.isExhaustive,
      'isFinal': instance.isFinal,
      'isInterface': instance.isInterface,
      'isMixinApplication': instance.isMixinApplication,
      'isMixinClass': instance.isMixinClass,
      'isSealed': instance.isSealed,
      'isValidMixin': instance.isValidMixin,
    };

_InterfaceMetadata _$InterfaceMetadataFromJson(Map<String, dynamic> json) =>
    _InterfaceMetadata(
      isPrivate: json['isPrivate'] as bool,
      isPublic: json['isPublic'] as bool,
      source: json['source'] as String?,
      name: json['name'] as String,
      interfaces:
          (json['interfaces'] as List<dynamic>)
              .map((e) => InterfaceMetadata.fromJson(e as Map<String, dynamic>))
              .toList(),
      mixins:
          (json['mixins'] as List<dynamic>)
              .map((e) => InterfaceMetadata.fromJson(e as Map<String, dynamic>))
              .toList(),
      supertype:
          json['supertype'] == null
              ? null
              : InterfaceMetadata.fromJson(
                json['supertype'] as Map<String, dynamic>,
              ),
    );

Map<String, dynamic> _$InterfaceMetadataToJson(_InterfaceMetadata instance) =>
    <String, dynamic>{
      'isPrivate': instance.isPrivate,
      'isPublic': instance.isPublic,
      'source': instance.source,
      'name': instance.name,
      'interfaces': instance.interfaces,
      'mixins': instance.mixins,
      'supertype': instance.supertype,
    };

_Metadata _$MetadataFromJson(Map<String, dynamic> json) => _Metadata(
  isPrivate: json['isPrivate'] as bool,
  isPublic: json['isPublic'] as bool,
  name: json['name'] as String?,
  source: json['source'] as String?,
);

Map<String, dynamic> _$MetadataToJson(_Metadata instance) => <String, dynamic>{
  'isPrivate': instance.isPrivate,
  'isPublic': instance.isPublic,
  'name': instance.name,
  'source': instance.source,
};
