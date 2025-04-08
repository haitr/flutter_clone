import 'package:analyzer/dart/element/nullability_suffix.dart';
import 'package:json_annotation/json_annotation.dart';

class BooleanConverter implements JsonConverter<bool, bool?> {
  const BooleanConverter();

  @override
  bool fromJson(bool? json) => json ?? false;

  @override
  bool? toJson(bool value) => value ? true : null;
}

String? nullabilitySuffixToString(NullabilitySuffix value) => switch (value) {
  NullabilitySuffix.question => '?',
  NullabilitySuffix.star => '*',
  NullabilitySuffix.none => null,
};
