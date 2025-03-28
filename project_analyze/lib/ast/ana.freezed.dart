// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ana.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ClassMetadata {

// Inherited from Metadata
 bool get isPrivate; bool get isPublic; String? get source;// Inherited from InterfaceMetadata
 List<InterfaceMetadata> get interfaces; List<InterfaceMetadata> get mixins; String get name; InterfaceMetadata? get supertype;//
 bool get hasNonFinalField; bool get isAbstract; bool get isBase; bool get isConstructable; bool get isDartCoreEnum; bool get isDartCoreObject; bool get isExhaustive; bool get isFinal; bool get isInterface; bool get isMixinApplication; bool get isMixinClass; bool get isSealed; bool get isValidMixin;

  /// Serializes this ClassMetadata to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ClassMetadata&&(identical(other.isPrivate, isPrivate) || other.isPrivate == isPrivate)&&(identical(other.isPublic, isPublic) || other.isPublic == isPublic)&&(identical(other.source, source) || other.source == source)&&const DeepCollectionEquality().equals(other.interfaces, interfaces)&&const DeepCollectionEquality().equals(other.mixins, mixins)&&(identical(other.name, name) || other.name == name)&&(identical(other.supertype, supertype) || other.supertype == supertype)&&(identical(other.hasNonFinalField, hasNonFinalField) || other.hasNonFinalField == hasNonFinalField)&&(identical(other.isAbstract, isAbstract) || other.isAbstract == isAbstract)&&(identical(other.isBase, isBase) || other.isBase == isBase)&&(identical(other.isConstructable, isConstructable) || other.isConstructable == isConstructable)&&(identical(other.isDartCoreEnum, isDartCoreEnum) || other.isDartCoreEnum == isDartCoreEnum)&&(identical(other.isDartCoreObject, isDartCoreObject) || other.isDartCoreObject == isDartCoreObject)&&(identical(other.isExhaustive, isExhaustive) || other.isExhaustive == isExhaustive)&&(identical(other.isFinal, isFinal) || other.isFinal == isFinal)&&(identical(other.isInterface, isInterface) || other.isInterface == isInterface)&&(identical(other.isMixinApplication, isMixinApplication) || other.isMixinApplication == isMixinApplication)&&(identical(other.isMixinClass, isMixinClass) || other.isMixinClass == isMixinClass)&&(identical(other.isSealed, isSealed) || other.isSealed == isSealed)&&(identical(other.isValidMixin, isValidMixin) || other.isValidMixin == isValidMixin));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,isPrivate,isPublic,source,const DeepCollectionEquality().hash(interfaces),const DeepCollectionEquality().hash(mixins),name,supertype,hasNonFinalField,isAbstract,isBase,isConstructable,isDartCoreEnum,isDartCoreObject,isExhaustive,isFinal,isInterface,isMixinApplication,isMixinClass,isSealed,isValidMixin]);

@override
String toString() {
  return 'ClassMetadata(isPrivate: $isPrivate, isPublic: $isPublic, source: $source, interfaces: $interfaces, mixins: $mixins, name: $name, supertype: $supertype, hasNonFinalField: $hasNonFinalField, isAbstract: $isAbstract, isBase: $isBase, isConstructable: $isConstructable, isDartCoreEnum: $isDartCoreEnum, isDartCoreObject: $isDartCoreObject, isExhaustive: $isExhaustive, isFinal: $isFinal, isInterface: $isInterface, isMixinApplication: $isMixinApplication, isMixinClass: $isMixinClass, isSealed: $isSealed, isValidMixin: $isValidMixin)';
}


}




/// @nodoc
@JsonSerializable()

class _ClassMetadata implements ClassMetadata {
  const _ClassMetadata({required this.isPrivate, required this.isPublic, this.source, required final  List<InterfaceMetadata> interfaces, required final  List<InterfaceMetadata> mixins, required this.name, this.supertype, required this.hasNonFinalField, required this.isAbstract, required this.isBase, required this.isConstructable, required this.isDartCoreEnum, required this.isDartCoreObject, required this.isExhaustive, required this.isFinal, required this.isInterface, required this.isMixinApplication, required this.isMixinClass, required this.isSealed, required this.isValidMixin}): _interfaces = interfaces,_mixins = mixins;
  factory _ClassMetadata.fromJson(Map<String, dynamic> json) => _$ClassMetadataFromJson(json);

// Inherited from Metadata
@override final  bool isPrivate;
@override final  bool isPublic;
@override final  String? source;
// Inherited from InterfaceMetadata
 final  List<InterfaceMetadata> _interfaces;
// Inherited from InterfaceMetadata
@override List<InterfaceMetadata> get interfaces {
  if (_interfaces is EqualUnmodifiableListView) return _interfaces;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_interfaces);
}

 final  List<InterfaceMetadata> _mixins;
@override List<InterfaceMetadata> get mixins {
  if (_mixins is EqualUnmodifiableListView) return _mixins;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_mixins);
}

@override final  String name;
@override final  InterfaceMetadata? supertype;
//
@override final  bool hasNonFinalField;
@override final  bool isAbstract;
@override final  bool isBase;
@override final  bool isConstructable;
@override final  bool isDartCoreEnum;
@override final  bool isDartCoreObject;
@override final  bool isExhaustive;
@override final  bool isFinal;
@override final  bool isInterface;
@override final  bool isMixinApplication;
@override final  bool isMixinClass;
@override final  bool isSealed;
@override final  bool isValidMixin;


@override
Map<String, dynamic> toJson() {
  return _$ClassMetadataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ClassMetadata&&(identical(other.isPrivate, isPrivate) || other.isPrivate == isPrivate)&&(identical(other.isPublic, isPublic) || other.isPublic == isPublic)&&(identical(other.source, source) || other.source == source)&&const DeepCollectionEquality().equals(other._interfaces, _interfaces)&&const DeepCollectionEquality().equals(other._mixins, _mixins)&&(identical(other.name, name) || other.name == name)&&(identical(other.supertype, supertype) || other.supertype == supertype)&&(identical(other.hasNonFinalField, hasNonFinalField) || other.hasNonFinalField == hasNonFinalField)&&(identical(other.isAbstract, isAbstract) || other.isAbstract == isAbstract)&&(identical(other.isBase, isBase) || other.isBase == isBase)&&(identical(other.isConstructable, isConstructable) || other.isConstructable == isConstructable)&&(identical(other.isDartCoreEnum, isDartCoreEnum) || other.isDartCoreEnum == isDartCoreEnum)&&(identical(other.isDartCoreObject, isDartCoreObject) || other.isDartCoreObject == isDartCoreObject)&&(identical(other.isExhaustive, isExhaustive) || other.isExhaustive == isExhaustive)&&(identical(other.isFinal, isFinal) || other.isFinal == isFinal)&&(identical(other.isInterface, isInterface) || other.isInterface == isInterface)&&(identical(other.isMixinApplication, isMixinApplication) || other.isMixinApplication == isMixinApplication)&&(identical(other.isMixinClass, isMixinClass) || other.isMixinClass == isMixinClass)&&(identical(other.isSealed, isSealed) || other.isSealed == isSealed)&&(identical(other.isValidMixin, isValidMixin) || other.isValidMixin == isValidMixin));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,isPrivate,isPublic,source,const DeepCollectionEquality().hash(_interfaces),const DeepCollectionEquality().hash(_mixins),name,supertype,hasNonFinalField,isAbstract,isBase,isConstructable,isDartCoreEnum,isDartCoreObject,isExhaustive,isFinal,isInterface,isMixinApplication,isMixinClass,isSealed,isValidMixin]);

@override
String toString() {
  return 'ClassMetadata(isPrivate: $isPrivate, isPublic: $isPublic, source: $source, interfaces: $interfaces, mixins: $mixins, name: $name, supertype: $supertype, hasNonFinalField: $hasNonFinalField, isAbstract: $isAbstract, isBase: $isBase, isConstructable: $isConstructable, isDartCoreEnum: $isDartCoreEnum, isDartCoreObject: $isDartCoreObject, isExhaustive: $isExhaustive, isFinal: $isFinal, isInterface: $isInterface, isMixinApplication: $isMixinApplication, isMixinClass: $isMixinClass, isSealed: $isSealed, isValidMixin: $isValidMixin)';
}


}





/// @nodoc
mixin _$InterfaceMetadata {

// Inherited from Metadata
 bool get isPrivate; bool get isPublic; String? get source;//
 String get name;// required List<ConstructorMetadata> constructors,
 List<InterfaceMetadata> get interfaces; List<InterfaceMetadata> get mixins; InterfaceMetadata? get supertype;

  /// Serializes this InterfaceMetadata to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is InterfaceMetadata&&(identical(other.isPrivate, isPrivate) || other.isPrivate == isPrivate)&&(identical(other.isPublic, isPublic) || other.isPublic == isPublic)&&(identical(other.source, source) || other.source == source)&&(identical(other.name, name) || other.name == name)&&const DeepCollectionEquality().equals(other.interfaces, interfaces)&&const DeepCollectionEquality().equals(other.mixins, mixins)&&(identical(other.supertype, supertype) || other.supertype == supertype));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,isPrivate,isPublic,source,name,const DeepCollectionEquality().hash(interfaces),const DeepCollectionEquality().hash(mixins),supertype);

@override
String toString() {
  return 'InterfaceMetadata(isPrivate: $isPrivate, isPublic: $isPublic, source: $source, name: $name, interfaces: $interfaces, mixins: $mixins, supertype: $supertype)';
}


}




/// @nodoc
@JsonSerializable()

class _InterfaceMetadata implements InterfaceMetadata {
  const _InterfaceMetadata({required this.isPrivate, required this.isPublic, this.source, required this.name, required final  List<InterfaceMetadata> interfaces, required final  List<InterfaceMetadata> mixins, this.supertype}): _interfaces = interfaces,_mixins = mixins;
  factory _InterfaceMetadata.fromJson(Map<String, dynamic> json) => _$InterfaceMetadataFromJson(json);

// Inherited from Metadata
@override final  bool isPrivate;
@override final  bool isPublic;
@override final  String? source;
//
@override final  String name;
// required List<ConstructorMetadata> constructors,
 final  List<InterfaceMetadata> _interfaces;
// required List<ConstructorMetadata> constructors,
@override List<InterfaceMetadata> get interfaces {
  if (_interfaces is EqualUnmodifiableListView) return _interfaces;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_interfaces);
}

 final  List<InterfaceMetadata> _mixins;
@override List<InterfaceMetadata> get mixins {
  if (_mixins is EqualUnmodifiableListView) return _mixins;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_mixins);
}

@override final  InterfaceMetadata? supertype;


@override
Map<String, dynamic> toJson() {
  return _$InterfaceMetadataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _InterfaceMetadata&&(identical(other.isPrivate, isPrivate) || other.isPrivate == isPrivate)&&(identical(other.isPublic, isPublic) || other.isPublic == isPublic)&&(identical(other.source, source) || other.source == source)&&(identical(other.name, name) || other.name == name)&&const DeepCollectionEquality().equals(other._interfaces, _interfaces)&&const DeepCollectionEquality().equals(other._mixins, _mixins)&&(identical(other.supertype, supertype) || other.supertype == supertype));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,isPrivate,isPublic,source,name,const DeepCollectionEquality().hash(_interfaces),const DeepCollectionEquality().hash(_mixins),supertype);

@override
String toString() {
  return 'InterfaceMetadata(isPrivate: $isPrivate, isPublic: $isPublic, source: $source, name: $name, interfaces: $interfaces, mixins: $mixins, supertype: $supertype)';
}


}





/// @nodoc
mixin _$Metadata {

 bool get isPrivate; bool get isPublic; String? get name; String? get source;

  /// Serializes this Metadata to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Metadata&&(identical(other.isPrivate, isPrivate) || other.isPrivate == isPrivate)&&(identical(other.isPublic, isPublic) || other.isPublic == isPublic)&&(identical(other.name, name) || other.name == name)&&(identical(other.source, source) || other.source == source));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,isPrivate,isPublic,name,source);

@override
String toString() {
  return 'Metadata(isPrivate: $isPrivate, isPublic: $isPublic, name: $name, source: $source)';
}


}




/// @nodoc
@JsonSerializable()

class _Metadata implements Metadata {
  const _Metadata({required this.isPrivate, required this.isPublic, this.name, this.source});
  factory _Metadata.fromJson(Map<String, dynamic> json) => _$MetadataFromJson(json);

@override final  bool isPrivate;
@override final  bool isPublic;
@override final  String? name;
@override final  String? source;


@override
Map<String, dynamic> toJson() {
  return _$MetadataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Metadata&&(identical(other.isPrivate, isPrivate) || other.isPrivate == isPrivate)&&(identical(other.isPublic, isPublic) || other.isPublic == isPublic)&&(identical(other.name, name) || other.name == name)&&(identical(other.source, source) || other.source == source));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,isPrivate,isPublic,name,source);

@override
String toString() {
  return 'Metadata(isPrivate: $isPrivate, isPublic: $isPublic, name: $name, source: $source)';
}


}




// dart format on
