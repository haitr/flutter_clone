library rxflutterify; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:flutter/foundation.dart' as _i2;
import 'package:flutter/material.dart' as _i1;
import 'package:flutter/widgets.dart' as _i3;

import '../wrapper.dart';

final class DefaultTabController extends Wrapper {
  @Goto(_i1.DefaultTabController.new)
  DefaultTabController({
    _i2.Key? key,
    required int length,
    int initialIndex = 0,
    required _i3.Widget child,
    Duration? animationDuration,
    // Associate with key
    Stream<_i2.Key?>? $key,
    // Associate with length
    Stream<int>? $length,
    // Associate with initialIndex
    Stream<int>? $initialIndex,
    // Associate with child
    Stream<_i3.Widget>? $child,
    // Associate with animationDuration
    Stream<Duration?>? $animationDuration,
  }) : super(
          Argument(
            {
              'key': key,
              'length': length,
              'initialIndex': initialIndex,
              'child': child,
              'animationDuration': animationDuration,
            },
            stream: {
              'key': $key,
              'length': $length,
              'initialIndex': $initialIndex,
              'child': $child,
              'animationDuration': $animationDuration,
            },
          ),
          builder: (args) => _i1.DefaultTabController(
            key: args('key'),
            length: args('length'),
            initialIndex: args('initialIndex'),
            child: args('child'),
            animationDuration: args('animationDuration'),
          ),
        );
}
