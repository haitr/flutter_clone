part of 'analyzer.dart';

/// See: [DartType]
abstract class DartTypeMetadata {
  String? get name;
  NullabilitySuffix get nullabilitySuffix;
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

/// See: [TypeParameterType]
abstract class TypeParameterTypeMetadata implements DartTypeMetadata {
  DartTypeMetadata get bound;
  TypeParameterElementMetadata get element;
}

/// See: [RecordType]
abstract class RecordTypeMetadata implements DartTypeMetadata {
  List<RecordTypePositionalFieldMetadata> get positionalFields;
  List<RecordTypeNamedFieldMetadata> get namedFields;
}

/// See: [RecordTypeField]
abstract class RecordTypeFieldMetadata {
  DartTypeMetadata get type;
}

/// See: [RecordTypeNamedField]
abstract class RecordTypeNamedFieldMetadata implements RecordTypeFieldMetadata {
  String get name;
}

/// See: [RecordTypePositionalField]
abstract class RecordTypePositionalFieldMetadata implements RecordTypeFieldMetadata {}
