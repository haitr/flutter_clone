library rxflutterify; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:flutter/foundation.dart' as _i2;
import 'package:flutter/widgets.dart' as _i1;

import '../wrapper.dart';

final class AnnotatedRegion<T extends Object> extends Wrapper {
  @Goto(_i1.AnnotatedRegion.new)
  AnnotatedRegion({
    _i2.Key? key,
    required _i1.Widget child,
    required T value,
    bool sized = true,
    // Associate with key
    Stream<_i2.Key?>? $key,
    // Associate with child
    Stream<_i1.Widget>? $child,
    // Associate with value
    Stream<T>? $value,
    // Associate with sized
    Stream<bool>? $sized,
  }) : super(
          Argument(
            {
              'key': key,
              'child': child,
              'value': value,
              'sized': sized,
            },
            stream: {
              'key': $key,
              'child': $child,
              'value': $value,
              'sized': $sized,
            },
          ),
          builder: (args) => _i1.AnnotatedRegion<T>(
            key: args('key'),
            child: args('child'),
            value: args('value'),
            sized: args('sized'),
          ),
        );
}
