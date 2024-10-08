library rxflutterify; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:ui' as ui;

import 'package:flutter/foundation.dart' as _i2;
import 'package:flutter/widgets.dart' as _i1;

import '../wrapper.dart';

final class PreferredSize extends Wrapper {
  @Goto(_i1.PreferredSize.new)
  PreferredSize({
    _i2.Key? key,
    required ui.Size preferredSize,
    required _i1.Widget child,
    // Associate with key
    Stream<_i2.Key?>? $key,
    // Associate with preferredSize
    Stream<ui.Size>? $preferredSize,
    // Associate with child
    Stream<_i1.Widget>? $child,
  }) : super(
          Argument(
            {
              'key': key,
              'preferredSize': preferredSize,
              'child': child,
            },
            stream: {
              'key': $key,
              'preferredSize': $preferredSize,
              'child': $child,
            },
          ),
          builder: (args) => _i1.PreferredSize(
            key: args('key'),
            preferredSize: args('preferredSize'),
            child: args('child'),
          ),
        );
}
