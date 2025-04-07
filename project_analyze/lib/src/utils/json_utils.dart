import 'package:analyzer/dart/element/nullability_suffix.dart';
import 'package:json_annotation/json_annotation.dart';

class NullabilitySuffixConverter implements JsonConverter<NullabilitySuffix, String?> {
  const NullabilitySuffixConverter();

  @override
  NullabilitySuffix fromJson(String? json) => switch (json) {
    '?' => NullabilitySuffix.question,
    '*' => NullabilitySuffix.star,
    _ => NullabilitySuffix.none,
  };

  @override
  String? toJson(NullabilitySuffix object) => switch (object) {
    NullabilitySuffix.question => '?',
    NullabilitySuffix.star => '*',
    NullabilitySuffix.none => null,
  };
}

class BooleanConverter implements JsonConverter<bool, bool?> {
  const BooleanConverter();

  @override
  bool fromJson(bool? json) => json ?? false;

  @override
  bool? toJson(bool value) => value ? true : null;
}
