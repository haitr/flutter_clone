part of 'analyzer.dart';

/// See: [DartType]
abstract class DartTypeMetadata {
  String? get name;
  String? get nullabilitySuffix;
  bool get isDartCore;
  bool get isDartAsync;
}

/// See: [FunctionType]
abstract class FunctionTypeMetadata implements DartTypeMetadata {
  Map<String, DartTypeMetadata> get namedParameterTypes;
  List<DartTypeMetadata> get normalParameterTypes;
  List<DartTypeMetadata> get optionalParameterTypes;
  List<ParameterElementMetadata> get parameters;
  DartTypeMetadata get returnType;
  List<TypeParameterElementMetadata> get typeFormals;
}

/// See: [ParameterizedType]
abstract class ParameterizedTypeMetadata implements DartTypeMetadata {
  List<DartTypeMetadata> get typeArguments;
}

/// See: [InterfaceType]
abstract class InterfaceTypeMetadata implements ParameterizedTypeMetadata {
  InterfaceElementMetadata get element;
}
