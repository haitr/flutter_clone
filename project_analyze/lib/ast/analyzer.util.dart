part of 'analyzer.dart';

String _getPath(Source source, String projectPath) {
  return path.toUri(path.relative(source.fullName, from: projectPath)).path;
}

String? _getNullablePath(Source? source, String projectPath) {
  if (source == null) return null;
  return path.toUri(path.relative(source.fullName, from: projectPath)).path;
}

const thisRef = '#this';

mixin _SourceSerializer<T extends String?> {
  @JsonKey(includeFromJson: false, includeToJson: false)
  T _source = (T == String ? '' : null) as T;

  @JsonKey(name: 'source')
  T get source => _source;

  void setSource(T value) {
    _source = value;
  }

  void setRef(String currentFileRef) {
    if (_source == currentFileRef) {
      _source = thisRef as T;
    } else if (_source == thisRef) {
      _source = currentFileRef as T;
    }
    for (var e in _refList) {
      e.setRef(currentFileRef);
    }
  }

  List<_SourceSerializer> get _refList;
}
