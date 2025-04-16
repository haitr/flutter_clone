import 'package:analyzer/dart/element/element.dart';
import 'package:analyzer/dart/element/type.dart';
// ignore: implementation_imports
import 'package:analyzer/src/dart/constant/evaluation.dart';

part 'analyzer_map.type.dart';

/// See: [ConstantEvaluationTarget]
abstract class ConstantEvaluationTargetMetadata {
  /// See: [ConstantEvaluationTarget.isConstantEvaluated]
  late bool isConstantEvaluated;
}

/// See: [Element]
abstract class ElementMetadata {
  /// See: [Element.isPrivate]
  bool get isPrivate;

  /// See: [Element.isPublic]
  bool get isPublic;

  /// See: [Element.name]
  String? get name;

  /// See: [Element.source]
  String? get source;
}

/// See: [_ExistingElement]
abstract class _ExistingElementMetadata implements ElementMetadata {
  @override
  String get source;
}

/// See: [PropertyInducingElement]
abstract class PropertyInducingElementMetadata implements VariableElementMetadata {
  /// See: [PropertyInducingElement.hasInitializer]
  bool get hasInitializer;

  /// See: [PropertyInducingElement.name]
  @override
  String get name;

  /// See: [PropertyInducingElement.getter]
  PropertyAccessorElementMetadata? get getter;

  /// See: [PropertyInducingElement.setter]
  PropertyAccessorElementMetadata? get setter;
}

/// See: [VariableElement]
abstract class VariableElementMetadata implements ElementMetadata, ConstantEvaluationTargetMetadata {
  /// See: [VariableElement.hasImplicitType]
  bool get hasImplicitType;

  /// See: [VariableElement.isConst]
  bool get isConst;

  /// See: [VariableElement.isFinal]
  bool get isFinal;

  /// See: [VariableElement.isLate]
  bool get isLate;

  /// See: [VariableElement.isStatic]
  bool get isStatic;

  /// See: [VariableElement.type]
  DartTypeMetadata get type;
}

/// See: [FunctionElement]
abstract class FunctionElementMetadata implements ExecutableElementMetadata, LocalElementMetadata {
  /// See: [FunctionElement.isDartCoreIdentical]
  bool get isDartCoreIdentical;

  /// See: [FunctionElement.isEntryPoint]
  bool get isEntryPoint;
}

/// See: [TypeParameterizedElement]
abstract class TypeParameterizedElementMetadata implements _ExistingElementMetadata {
  /// See: [TypeParameterizedElement.isSimplyBounded]
  bool get isSimplyBounded;

  /// See: [TypeParameterizedElement.typeParameters]
  List<TypeParameterElementMetadata> get typeParameters;
}

/// See: [TypeDefiningElement]
abstract class TypeDefiningElementMetadata implements ElementMetadata {
  /// See: [TypeDefiningElement.name]
  @override
  String get name;
}

/// See: [FunctionTypedElement]
abstract class FunctionTypedElementMetadata implements TypeParameterizedElementMetadata {
  /// See: [FunctionTypedElement.parameters]
  List<ParameterElementMetadata> get parameters;

  /// See: [FunctionTypedElement.returnType]
  DartTypeMetadata get returnType;

  /// See: [FunctionTypedElement.type]
  FunctionTypeMetadata get type;
}

/// See: [ExecutableElement]
abstract class ExecutableElementMetadata implements FunctionTypedElementMetadata {
  /// See: [ExecutableElement.name]
  @override
  String get name;

  /// See: [ExecutableElement.hasImplicitReturnType]
  bool get hasImplicitReturnType;

  /// See: [ExecutableElement.isAbstract]
  bool get isAbstract;

  /// See: [ExecutableElement.isAsynchronous]
  bool get isAsynchronous;

  /// See: [ExecutableElement.isExtensionTypeMember]
  bool get isExtensionTypeMember;

  /// See: [ExecutableElement.isExternal]
  bool get isExternal;

  /// See: [ExecutableElement.isGenerator]
  bool get isGenerator;

  /// See: [ExecutableElement.isOperator]
  bool get isOperator;

  /// See: [ExecutableElement.isStatic]
  bool get isStatic;

  /// See: [ExecutableElement.isSynchronous]
  bool get isSynchronous;
}

/// See: [ClassMemberElement]
abstract class ClassMemberElementMetadata implements ElementMetadata {
  /// See: [ClassMemberElement.isStatic]
  bool get isStatic;
}

/// See: [PropertyAccessorElement]
abstract class PropertyAccessorElementMetadata implements ExecutableElementMetadata {
  /// See: [PropertyAccessorElement.isGetter]
  bool get isGetter;

  /// See: [PropertyAccessorElement.isSetter]
  bool get isSetter;
}

/// See: [FieldElement]
abstract class FieldElementMetadata implements ClassMemberElementMetadata, PropertyInducingElementMetadata {
  /// See: [FieldElement.isAbstract]
  bool get isAbstract;

  /// See: [FieldElement.isCovariant]
  bool get isCovariant;

  /// See: [FieldElement.isEnumConstant]
  bool get isEnumConstant;

  /// See: [FieldElement.isExternal]
  bool get isExternal;

  /// See: [FieldElement.isPromotable]
  bool get isPromotable;
}

/// See: [InstanceElement]
abstract class InstanceElementMetadata implements TypeDefiningElementMetadata, TypeParameterizedElementMetadata {
  /// See: [InstanceElement.fields]
  List<FieldElementMetadata> get fields;

  /// See: [InstanceElement.methods]
  List<MethodElementMetadata> get methods;
}

/// See: [ConstructorElement]
abstract class ConstructorElementMetadata
    implements ClassMemberElementMetadata, ExecutableElementMetadata, ConstantEvaluationTargetMetadata {
  /// See: [ConstructorElement.name]
  @override
  String get name;

  /// See: [ConstructorElement.isConst]
  bool get isConst;

  /// See: [ConstructorElement.superConstructor]
  ConstructorElementMetadata? get superConstructor;

  /// See: [ConstructorElement.redirectedConstructor]
  ConstructorElementMetadata? get redirectedConstructor;

  /// See: [ConstructorElement.isDefaultConstructor]
  bool get isDefaultConstructor;

  /// See: [ConstructorElement.isFactory]
  bool get isFactory;

  /// See: [ConstructorElement.isGenerative]
  bool get isGenerative;

  /// See: [ConstructorElement.returnType]
  @override
  InterfaceTypeMetadata get returnType;
}

/// See: [InterfaceElement]
abstract class InterfaceElementMetadata implements InstanceElementMetadata {
  /// See: [InterfaceElement.constructors]
  List<ConstructorElementMetadata> get constructors;

  /// See: [InterfaceElement.interfaces]
  List<InterfaceTypeMetadata> get interfaces;

  /// See: [InterfaceElement.mixins]
  List<InterfaceTypeMetadata> get mixins;

  /// See: [InterfaceElement.supertype]
  InterfaceTypeMetadata? get supertype;

  /// See: [InterfaceElement.allSupertypes]
  List<InterfaceTypeMetadata> get allSupertypes;
}

/// See: [ClassElement]
abstract class ClassElementMetadata implements InterfaceElementMetadata {
  /// See: [ClassElement.hasNonFinalField]
  bool get hasNonFinalField;

  /// See: [ClassElement.isAbstract]
  bool get isAbstract;

  /// See: [ClassElement.isBase]
  bool get isBase;

  /// See: [ClassElement.isConstructable]
  bool get isConstructable;

  /// See: [ClassElement.isDartCoreEnum]
  bool get isDartCoreEnum;

  /// See: [ClassElement.isDartCoreObject]
  bool get isDartCoreObject;

  /// See: [ClassElement.isExhaustive]
  bool get isExhaustive;

  /// See: [ClassElement.isFinal]
  bool get isFinal;

  /// See: [ClassElement.isInterface]
  bool get isInterface;

  /// See: [ClassElement.isMixinApplication]
  bool get isMixinApplication;

  /// See: [ClassElement.isMixinClass]
  bool get isMixinClass;

  /// See: [ClassElement.isSealed]
  bool get isSealed;

  /// See: [ClassElement.isValidMixin]
  bool get isValidMixin;
}

/// See: [MixinElement]
abstract class MixinElementMetadata implements InterfaceElementMetadata {
  /// See: [MixinElement.isBase]
  bool get isBase;

  /// See: [MixinElement.superclassConstraints]
  List<InterfaceTypeMetadata> get superclassConstraints;
}

/// See: [ExtensionTypeElement]
abstract class ExtensionTypeElementMetadata implements InterfaceElementMetadata {
  /// See: [ExtensionTypeElement.primaryConstructor]
  ConstructorElementMetadata get primaryConstructor;

  /// See: [ExtensionTypeElement.representation]
  FieldElementMetadata get representation;

  /// See: [ExtensionTypeElement.typeErasure]
  DartTypeMetadata get typeErasure;
}

/// See: [EnumElement]
abstract class EnumElementMetadata implements InterfaceElementMetadata {}

/// See: [TypeAliasElement]
abstract class TypeAliasElementMetadata implements TypeParameterizedElementMetadata, TypeDefiningElementMetadata {
  /// See: [TypeAliasElement.aliasedType]
  DartTypeMetadata get aliasedType;

  /// See: [TypeDefiningElement.name]
  @override
  String get name;
}

/// See: [TopLevelVariableElement]
abstract class TopLevelVariableElementMetadata implements PropertyInducingElementMetadata {
  /// See: [TopLevelVariableElement.isExternal]
  bool get isExternal;
}

/// See: [TypeParameterElement]
abstract class TypeParameterElementMetadata implements TypeDefiningElementMetadata {
  /// See: [TypeParameterElement.bound]
  DartTypeMetadata? get bound;
}

/// See: [MethodElement]
abstract class MethodElementMetadata implements ClassMemberElementMetadata, ExecutableElementMetadata {
  //
}

/// See: [ParameterElement]
abstract class ParameterElementMetadata implements PromotableElementMetadata, ConstantEvaluationTargetMetadata {
  /// See: [ParameterElement.defaultValueCode]
  String? get defaultValueCode;

  /// See: [ParameterElement.hasDefaultValue]
  bool get hasDefaultValue;

  /// See: [ParameterElement.isCovariant]
  bool get isCovariant;

  /// See: [ParameterElement.isInitializingFormal]
  bool get isInitializingFormal;

  /// See: [ParameterElement.isNamed]
  bool get isNamed;

  /// See: [ParameterElement.isOptional]
  bool get isOptional;

  /// See: [ParameterElement.isOptionalNamed]
  bool get isOptionalNamed;

  /// See: [ParameterElement.isOptionalPositional]
  bool get isOptionalPositional;

  /// See: [ParameterElement.isPositional]
  bool get isPositional;

  /// See: [ParameterElement.isRequired]
  bool get isRequired;

  /// See: [ParameterElement.isRequiredNamed]
  bool get isRequiredNamed;

  /// See: [ParameterElement.isRequiredPositional]
  bool get isRequiredPositional;

  /// See: [ParameterElement.isSuperFormal]
  bool get isSuperFormal;

  /// See: [ParameterElement.parameters]
  List<ParameterElementMetadata> get parameters;

  /// See: [ParameterElement.typeParameters]
  List<TypeParameterElementMetadata> get typeParameters;
}

/// See: [PromotableElement]
abstract class PromotableElementMetadata implements LocalElementMetadata, VariableElementMetadata {
  /// See: [PromotableElement.name]
  @override
  String get name;
}

/// See: [LocalElement]
abstract class LocalElementMetadata implements ElementMetadata {}
