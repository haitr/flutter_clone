library rxflutterify; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:flutter/foundation.dart' as _i2;
import 'package:flutter/widgets.dart' as _i1;

import '../wrapper.dart';

final class PerformanceOverlay extends Wrapper {
  @Goto(_i1.PerformanceOverlay.new)
  PerformanceOverlay({
    _i2.Key? key,
    int optionsMask = 0,
    // Associate with key
    Stream<_i2.Key?>? $key,
    // Associate with optionsMask
    Stream<int>? $optionsMask,
  }) : super(
          Argument(
            {
              'key': key,
              'optionsMask': optionsMask,
            },
            stream: {
              'key': $key,
              'optionsMask': $optionsMask,
            },
          ),
          builder: (args) => _i1.PerformanceOverlay(
            key: args('key'),
            optionsMask: args('optionsMask'),
          ),
        );

  @Goto(_i1.PerformanceOverlay.allEnabled)
  PerformanceOverlay.allEnabled({
    _i2.Key? key,
    // Associate with key
    Stream<_i2.Key?>? $key,
  }) : super(
          Argument(
            {'key': key},
            stream: {'key': $key},
          ),
          builder: (args) => _i1.PerformanceOverlay.allEnabled(key: args('key')),
        );
}
