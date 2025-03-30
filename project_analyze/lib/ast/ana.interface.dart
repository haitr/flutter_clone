part of 'ana.dart';

@Shortcut(type: Element)
abstract class ElementMetadata {
  late bool isPrivate;
  late bool isPublic;
  late String? name;
  late String? source;
}

@Shortcut(type: TypeParameterizedElement)
abstract class TypeParameterizedElementMetadata implements ElementMetadata {
  late bool isSimplyBounded;
  late List<TypeParameterElementMetadata> typeParameters;
}

@Shortcut(type: TypeDefiningElement)
abstract class TypeDefiningElementMetadata implements ElementMetadata {
  const TypeDefiningElementMetadata({
    required this.isPrivate,
    required this.isPublic,
    this.source,
    required this.name,
  });

  // Implement ElementMetadata
  @mustBeOverridden
  @override
  final bool isPrivate;
  @mustBeOverridden
  @override
  final bool isPublic;
  @mustBeOverridden
  @override
  final String? source;
  @mustBeOverridden
  @override
  final String name;
}

@Shortcut(type: FunctionTypedElement)
abstract class FunctionTypedElementMetadata implements TypeParameterizedElementMetadata {
  const FunctionTypedElementMetadata({
    required this.isPrivate,
    required this.isPublic,
    this.source,
    this.name,
    required this.isSimplyBounded,
    required this.typeParameters,
    required this.parameters,
    required this.returnType,
    required this.type,
  });

  @override
  final bool isPrivate;
  @override
  final bool isPublic;
  @override
  final String? source;
  @override
  final String? name;
  @override
  final bool isSimplyBounded;
  @override
  final List<TypeParameterElementMetadata> typeParameters;
  final List<ParameterElementMetadata> parameters;
  final DartTypeMetadata returnType;
  final FunctionTypeMetadata type;
}

@Shortcut(type: ExecutableElement)
abstract class ExecutableElementMetadata implements FunctionTypedElementMetadata {
  const ExecutableElementMetadata({
    required this.isPrivate,
    required this.isPublic,
    this.source,
    this.name,
    required this.isSimplyBounded,
    required this.typeParameters,
    required this.parameters,
    required this.returnType,
    required this.type,
    required this.isStatic,
  });

  @override
  final bool isPrivate;
  @override
  final bool isPublic;
  @override
  final String? source;
  @override
  final String? name;
  @override
  final bool isSimplyBounded;
  @override
  final List<TypeParameterElementMetadata> typeParameters;
  @override
  final List<ParameterElementMetadata> parameters;
  @override
  final DartTypeMetadata returnType;
  @override
  final FunctionTypeMetadata type;
  final bool isStatic;
}

@Shortcut(type: ClassMemberElement)
abstract class ClassMemberElementMetadata implements ElementMetadata {
  ClassMemberElementMetadata({
    required this.name,
    this.source,
    required this.isPrivate,
    required this.isPublic,
    required this.isStatic,
  });

  // Implement ElementMetadata
  @mustBeOverridden
  @override
  final String? name;
  @mustBeOverridden
  @override
  final bool isPrivate;
  @mustBeOverridden
  @override
  final bool isPublic;
  @mustBeOverridden
  @override
  final String? source;

  // Original
  @mustBeOverridden
  final bool isStatic;
}

@Shortcut(type: PropertyAccessorElement)
abstract class PropertyAccessorElementMetadata implements ExecutableElementMetadata {
  const PropertyAccessorElementMetadata({required this.isGetter, required this.isSetter});

  @mustBeOverridden
  final bool isGetter;
  @mustBeOverridden
  final bool isSetter;
}

@Shortcut(type: PropertyInducingElement)
abstract class PropertyInducingElementMetadata implements VariableElementMetadata {
  late bool hasInitializer;
  @override
  String name;
  late PropertyAccessorElementMetadata? getter;
  late PropertyAccessorElementMetadata? setter;
}

@Shortcut(type: ConstantEvaluationTarget)
abstract class ConstantEvaluationTargetMetadata {
  late bool isConstantEvaluated;
}
