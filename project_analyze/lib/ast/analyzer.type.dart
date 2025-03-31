part of 'analyzer.dart';

@Shortcut(type: DartType)
abstract class DartTypeMetadata {
  String? get name;
  String? get nullabilitySuffix;
  bool get isDartCore;
  bool get isDartAsync;
}

@Shortcut(type: FunctionType)
abstract class FunctionTypeMetadata implements DartTypeMetadata {
  Map<String, DartTypeMetadata> get namedParameterTypes;
  List<DartTypeMetadata> get normalParameterTypes;
  List<DartTypeMetadata> get optionalParameterTypes;
  List<ParameterElementMetadata> get parameters;
  DartTypeMetadata get returnType;
  List<TypeParameterElementMetadata> get typeFormals;
}

@Shortcut(type: ParameterizedType)
abstract class ParameterizedTypeMetadata implements DartTypeMetadata {
  List<DartTypeMetadata> get typeArguments;
}

@Shortcut(type: InterfaceType)
abstract class InterfaceTypeMetadata implements ParameterizedTypeMetadata {}

class _InterfaceType implements InterfaceTypeMetadata {
  @override
  bool get isDartCore => throw UnimplementedError();

  @override
  bool get isDartAsync => throw UnimplementedError();

  @override
  String? get name => throw UnimplementedError();

  @override
  String? get nullabilitySuffix => throw UnimplementedError();

  @override
  List<DartTypeMetadata> get typeArguments => throw UnimplementedError();
}
