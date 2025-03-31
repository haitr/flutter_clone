part of 'analyzer.dart';

@Shortcut(type: ConstantEvaluationTarget)
abstract class ConstantEvaluationTargetMetadata {
  late bool isConstantEvaluated;
}

@Shortcut(type: Element)
abstract class ElementMetadata {
  bool get isPrivate;
  bool get isPublic;
  String? get name;
  String? get source;
}

@Shortcut(type: PropertyInducingElement)
abstract class PropertyInducingElementMetadata implements VariableElementMetadata {
  bool get hasInitializer;
  @override
  String get name;
  PropertyAccessorElementMetadata? get getter;
  PropertyAccessorElementMetadata? get setter;
}

@Shortcut(type: VariableElement)
abstract class VariableElementMetadata
    implements ElementMetadata, ConstantEvaluationTargetMetadata {
  bool get hasImplicitType;
  bool get isConst;
  bool get isFinal;
  bool get isLate;
  bool get isStatic;
  DartTypeMetadata get type;
}

@Shortcut(type: TypeParameterizedElement)
abstract class TypeParameterizedElementMetadata implements ElementMetadata {
  bool get isSimplyBounded;
  List<TypeParameterElementMetadata> get typeParameters;
}

@Shortcut(type: TypeDefiningElement)
abstract class TypeDefiningElementMetadata implements ElementMetadata {
  @override
  String get name;
}

@Shortcut(type: FunctionTypedElement)
abstract class FunctionTypedElementMetadata implements TypeParameterizedElementMetadata {
  List<ParameterElementMetadata> get parameters;
  DartTypeMetadata get returnType;
  FunctionTypeMetadata get type;
}

@Shortcut(type: ExecutableElement)
abstract class ExecutableElementMetadata implements FunctionTypedElementMetadata {
  @override
  String get name;

  bool get hasImplicitReturnType;
  bool get isAbstract;
  bool get isAsynchronous;
  bool get isExtensionTypeMember;
  bool get isExternal;
  bool get isGenerator;
  bool get isOperator;
  bool get isStatic;
  bool get isSynchronous;
}

@Shortcut(type: ClassMemberElement)
abstract class ClassMemberElementMetadata implements ElementMetadata {
  bool get isStatic;
}

@Shortcut(type: PropertyAccessorElement)
abstract class PropertyAccessorElementMetadata implements ExecutableElementMetadata {
  bool get isGetter;
  bool get isSetter;
}

@Shortcut(type: FieldElement)
abstract class FieldElementMetadata
    implements ClassMemberElementMetadata, PropertyInducingElementMetadata {
  bool get isAbstract;
  bool get isCovariant;
  bool get isEnumConstant;
  bool get isExternal;
  bool get isPromotable;
}

@Shortcut(type: InstanceElement)
abstract class InstanceElementMetadata
    implements TypeDefiningElementMetadata, TypeParameterizedElementMetadata {
  List<FieldElementMetadata> get fields;
  List<MethodElementMetadata> get methods;
}

@Shortcut(type: ConstructorElement)
abstract class ConstructorElementMetadata
    implements
        ClassMemberElementMetadata,
        ExecutableElementMetadata,
        ConstantEvaluationTargetMetadata {
  @override
  String get name;

  bool get isConst;
  // ConstructorElementMetadata? get superConstructor;
  ConstructorElementMetadata? get redirectedConstructor;
  bool get isDefaultConstructor;
  bool get isFactory;
  bool get isGenerative;

  @override
  InterfaceTypeMetadata get returnType;
}

@Shortcut(type: InterfaceElement)
abstract class InterfaceElementMetadata implements InstanceElementMetadata {
  List<ConstructorElementMetadata> get constructors;
  List<InterfaceElementMetadata> get interfaces;
  List<InterfaceElementMetadata> get mixins;
  InterfaceElementMetadata? get supertype;
}

@Shortcut(type: ClassElement)
abstract class ClassElementMetadata implements InterfaceElementMetadata {
  bool get hasNonFinalField;
  bool get isAbstract;
  bool get isBase;
  bool get isConstructable;
  bool get isDartCoreEnum;
  bool get isDartCoreObject;
  bool get isExhaustive;
  bool get isFinal;
  bool get isInterface;
  bool get isMixinApplication;
  bool get isMixinClass;
  bool get isSealed;
  bool get isValidMixin;
}

@Shortcut(type: TypeParameterElement)
abstract class TypeParameterElementMetadata implements TypeDefiningElementMetadata {
  DartTypeMetadata? get bound;
}

@Shortcut(type: MethodElement)
abstract class MethodElementMetadata
    implements ClassMemberElementMetadata, ExecutableElementMetadata {
  //
}

@Shortcut(type: ParameterElement)
abstract class ParameterElementMetadata
    implements PromotableElementMetadata, ConstantEvaluationTargetMetadata {
  bool get hasDefaultValue;
  bool get isCovariant;
  bool get isInitializingFormal;
  bool get isNamed;
  bool get isOptional;
  bool get isOptionalNamed;
  bool get isOptionalPositional;
  bool get isPositional;
  bool get isRequired;
  bool get isRequiredNamed;
  bool get isRequiredPositional;
  bool get isSuperFormal;
  List<ParameterElementMetadata> get parameters;
  List<TypeParameterElementMetadata> get typeParameters;
}

@Shortcut(type: PromotableElement)
abstract class PromotableElementMetadata implements LocalElementMetadata, VariableElementMetadata {
  @override
  String get name;
}

@Shortcut(type: LocalElement)
abstract class LocalElementMetadata implements ElementMetadata {}
