import 'package:analyzer/dart/element/element.dart';
import 'package:analyzer/dart/element/type.dart';
// ignore: implementation_imports
import 'package:analyzer/src/dart/ast/ast.dart';
// ignore: implementation_imports
import 'package:analyzer/src/dart/element/element.dart';
import 'package:collection/collection.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';
import 'package:path/path.dart' as path;
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

mixin SourceSerializer<T extends String?> {
  @mustBeOverridden
  AnalyzerContext? get context;

  bool _isInSdk = false;

  @JsonKey(includeToJson: true, includeFromJson: true)
  bool get isInSdk => _isInSdk;

  T? _source;
  var _isSet = false;

  @JsonKey(includeToJson: true, includeFromJson: true)
  T get source => _isSet ? _source as T : throw UnimplementedError('source');

  set source(T newValue) {
    _isSet = true;
    _source = newValue;
    if (context case final context?) {
      if (newValue != null) {
        _isInSdk = path.canonicalize(newValue).startsWith(path.canonicalize(context.sdkPath));
        if (_isInSdk) {
          final paths = path.split(newValue);
          final dartLibName = paths[paths.indexOf('lib') + 1];
          _source = 'dart:$dartLibName' as T;
        }
      }
    }
  }

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
  @mustBeOverridden
  String get ref;
}
