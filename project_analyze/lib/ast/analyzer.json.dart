part of 'analyzer.dart';

class _BooleanConverter implements JsonConverter<bool, bool?> {
  const _BooleanConverter();

  @override
  bool fromJson(bool? json) => json ?? false;

  @override
  bool? toJson(bool value) => value ? true : null;
}

class _ListConverter<T> implements JsonConverter<List<T>, List<T>?> {
  const _ListConverter();

  @override
  List<T> fromJson(List<T>? json) => json ?? [];

  @override
  List<T>? toJson(List<T> object) => object.isEmpty ? null : object;
}

class _MapConverter<K, V> implements JsonConverter<Map<K, V>, Map<K, V>?> {
  const _MapConverter();

  @override
  Map<K, V> fromJson(Map<K, V>? json) => json ?? {};

  @override
  Map<K, V>? toJson(Map<K, V> object) => object.isEmpty ? null : object;
}

class _TypeParameterElementListConverter extends _ListConverter<TypeParameterElementSerializer> {
  const _TypeParameterElementListConverter();
}

class _ParameterElementListConverter extends _ListConverter<ParameterElementSerializer> {
  const _ParameterElementListConverter();
}

class _ConstructorElementListConverter extends _ListConverter<ConstructorElementSerializer> {
  const _ConstructorElementListConverter();
}

class _FieldElementListConverter extends _ListConverter<FieldElementSerializer> {
  const _FieldElementListConverter();
}

class _MethodElementListConverter extends _ListConverter<MethodElementSerializer> {
  const _MethodElementListConverter();
}

class _TypeParameterListSerializerConverter extends _ListConverter<TypeParameterElementSerializer> {
  const _TypeParameterListSerializerConverter();
}

class _DartTypeListConverter extends _ListConverter<DartTypeSerializer> {
  const _DartTypeListConverter();
}

class _DartTypeMapConverter extends _MapConverter<String, DartTypeSerializer> {
  const _DartTypeMapConverter();
}
