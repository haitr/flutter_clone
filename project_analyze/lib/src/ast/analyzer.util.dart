part of 'analyzer.dart';

const thisRef = '#this';

mixin SourceSerializer<T extends String?> {
  T _source = (T == String ? '' : null) as T;

  T get source => _source;

  void setSource(T value) {
    _source = value;
  }

  void setSourceRef(String currentFileRef) {
    if (_source == currentFileRef) {
      _source = thisRef as T;
    } else if (_source == thisRef) {
      _source = currentFileRef as T;
    }
    for (var e in _refList) {
      e.setSourceRef(currentFileRef);
    }
  }

  List<SourceSerializer> get _refList;
}

mixin _ReferenceableSerializer {
  late String _ref;

  String get ref => _ref;

  void setRef(String value) {
    _ref = value;
  }
}
