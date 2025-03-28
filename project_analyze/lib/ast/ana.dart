import 'package:analyzer/dart/element/element.dart';
import 'package:analyzer/dart/element/type.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:project_analyze/utils/dummy.dart';

part 'ana.freezed.dart';
part 'ana.g.dart';

/// ClassMetadata => ClassElement
/// ClassTypeMetadata => ClassType

@Shortcut(type: Element)
@Freezed(copyWith: false)
abstract class Metadata with _$Metadata {
  const factory Metadata({
    required bool isPrivate,
    required bool isPublic,
    String? name,
    String? source,
  }) = _Metadata;

  factory Metadata.fromJson(Map<String, Object?> json) => _$MetadataFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$MetadataToJson(this as _Metadata);
}

@Shortcut(type: ClassElement)
@Freezed(copyWith: false)
abstract class ClassMetadata with _$ClassMetadata implements InterfaceMetadata {
  const factory ClassMetadata({
    // Inherited from Metadata
    required bool isPrivate,
    required bool isPublic,
    String? source,

    // Inherited from InterfaceMetadata
    required List<InterfaceMetadata> interfaces,
    required List<InterfaceMetadata> mixins,
    required String name,
    InterfaceMetadata? supertype,
    //
    required bool hasNonFinalField,
    required bool isAbstract,
    required bool isBase,
    required bool isConstructable,
    required bool isDartCoreEnum,
    required bool isDartCoreObject,
    required bool isExhaustive,
    required bool isFinal,
    required bool isInterface,
    required bool isMixinApplication,
    required bool isMixinClass,
    required bool isSealed,
    required bool isValidMixin,
  }) = _ClassMetadata;

  factory ClassMetadata.fromJson(Map<String, Object?> json) => _$ClassMetadataFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$ClassMetadataToJson(this as _ClassMetadata);
}

@Shortcut(type: InterfaceElement)
@Freezed(copyWith: false)
abstract class InterfaceMetadata with _$InterfaceMetadata implements Metadata {
  const factory InterfaceMetadata({
    // Inherited from Metadata
    required bool isPrivate,
    required bool isPublic,
    String? source,
    //
    required String name,
    required List<ConstructorMetadata> constructors,
    required List<InterfaceMetadata> interfaces,
    required List<InterfaceMetadata> mixins,
    InterfaceMetadata? supertype,
  }) = _InterfaceMetadata;

  factory InterfaceMetadata.fromJson(Map<String, Object?> json) =>
      _$InterfaceMetadataFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$InterfaceMetadataToJson(this as _InterfaceMetadata);
}

/// Skip ConstantEvaluationTarget
@Shortcut(type: ConstructorElement)
@Freezed(copyWith: false)
abstract class ConstructorMetadata
    with _$ConstructorMetadata
    implements ClassMemberMetadata, ExecutableMetadata {
  const factory ConstructorMetadata({
    required bool isConst,
    required bool isDefaultConstructor,
    required bool isFactory,
    required bool isGenerative,
    required String name,
    ConstructorMetadata? redirectedConstructor,
    required InterfaceMetadata returnType,
    ConstructorMetadata? superConstructor,
  }) = _ConstructorMetadata;
}

@Shortcut(type: ClassMemberElement)
@Freezed(copyWith: false)
abstract class ClassMemberMetadata with _$ClassMemberMetadata implements Metadata {
  const factory ClassMemberMetadata({required bool isStatic}) = _ClassMemberMetadata;
}

@Shortcut(type: ExecutableElement)
@Freezed(copyWith: false)
abstract class ExecutableMetadata with _$ExecutableMetadata implements FunctionTypedMetadata {
  const factory ExecutableMetadata({
    // Inherited from FunctionTypedMetadata
    required bool isPrivate,
    required bool isPublic,
    String? source,
    String? name,
    required bool isSimplyBounded,
    required List<TypeParameterMetadata> typeParameters,
    required List<ParameterElement> parameters,
    required DartType returnType,
    required FunctionType type,
    // Original
    required bool isStatic,
  }) = _ExecutableMetadata;
}

@Shortcut(type: FunctionTypedElement)
@Freezed(copyWith: false)
abstract class FunctionTypedMetadata
    with _$FunctionTypedMetadata
    implements TypeParameterizedMetadata {
  const factory FunctionTypedMetadata({
    // Inherited from TypeParameterizedMetadata
    required bool isPrivate,
    required bool isPublic,
    String? source,
    String? name,
    required bool isSimplyBounded,
    required List<TypeParameterMetadata> typeParameters,
    // Original
    required List<ParameterElement> parameters,
    required DartType returnType,
    required FunctionType type,
  }) = _FunctionTypedMetadata;
}

@Shortcut(type: TypeParameterizedElement)
@Freezed(copyWith: false)
abstract class TypeParameterizedMetadata with _$TypeParameterizedMetadata implements Metadata {
  const factory TypeParameterizedMetadata({
    // Inherited from Metadata
    required bool isPrivate,
    required bool isPublic,
    String? source,
    String? name,
    // Original
    required bool isSimplyBounded,
    required List<TypeParameterMetadata> typeParameters,
  }) = _TypeParameterizedMetadata;
}

@Shortcut(type: TypeParameterElement)
@Freezed(copyWith: false)
abstract class TypeParameterMetadata with _$TypeParameterMetadata implements TypeDefiningMetadata {
  const factory TypeParameterMetadata({
    // Inherited from TypeDefiningMetadata
    required bool isPrivate,
    required bool isPublic,
    String? source,
    // Original
    required String name,
    DartTypeMetadata? bound,
  }) = _TypeParameterMetadata;
}

@Shortcut(type: TypeDefiningElement)
@Freezed(copyWith: false)
abstract class TypeDefiningMetadata with _$TypeDefiningMetadata implements Metadata {
  const factory TypeDefiningMetadata({
    // Inherited from Metadata
    required bool isPrivate,
    required bool isPublic,
    String? name,
    String? source,
  }) = _TypeDefiningMetadata;
}

@Shortcut(type: DartType)
@Freezed(copyWith: false)
abstract class DartTypeMetadata with _$DartTypeMetadata {
  const factory DartTypeMetadata({
    String? name,
    String? nullabilitySuffix,
    required bool isDartCore,
    required bool isDartFuture,
  }) = _DartTypeMetadata;
}
