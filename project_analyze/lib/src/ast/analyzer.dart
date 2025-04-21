import 'package:analyzer/dart/element/element.dart';
import 'package:analyzer/dart/element/type.dart';
// ignore: implementation_imports
import 'package:analyzer/src/dart/ast/ast.dart';
// ignore: implementation_imports
import 'package:analyzer/src/dart/element/element.dart';
import 'package:collection/collection.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:project_analyze/src/ast/analyzer_map.dart';
import 'package:project_analyze/src/extensions/extensions.dart';

import '../utils/json_utils.dart';
import 'context.dart';

part 'analyzer.element.dart';
part 'analyzer.g.dart';
part 'analyzer.initializer.dart';
part 'analyzer.ref.dart';
part 'analyzer.type.dart';

const _thisRef = '#this';

const _jsonTypeField = '_t_';

mixin SourceSerializer<T extends String?> {
  late T _source;

  @JsonKey(includeToJson: true, includeFromJson: true)
  T get source => _source;

  set source(T newValue) => _source = newValue;

  void setSourceRef(String currentFileRef) {
    if (_source == currentFileRef) {
      _source = _thisRef as T;
    } else if (_source == _thisRef) {
      _source = currentFileRef as T;
    }
    for (var e in _refList) {
      e.setSourceRef(currentFileRef);
    }
  }

  List<SourceSerializer> get _refList => [];
}

mixin _ReferenceableSerializer {
  // @mustBeOverridden
  String get ref;
}

extension ListExtension<T> on List<T> {
  List<R> mapWithContext<R>(AnalyzerContext context, R Function(T e, AnalyzerContext context) f) =>
      map((e) => f(e, context)).toList();
}

InitializerSerializer? _getInitializer(AnalyzerContext context, Element element) {
  if (element case ConstVariableElement e) {
    return e.constantInitializer != null ? InitializerSerializer.from(e.constantInitializer!, context) : null;
  }
  return null;
}
