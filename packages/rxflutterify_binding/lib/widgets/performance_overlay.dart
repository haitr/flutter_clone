library rxflutterify_binding; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:flutter/foundation.dart' as _i2;
import 'package:flutter/widgets.dart' as _i1;

import '../wrapper.dart';

final class PerformanceOverlay extends Wrapper {
  @Goto(_i1.PerformanceOverlay.new)
  PerformanceOverlay(
    $ $config, {
    _i2.Key? key,
    int optionsMask = 0,
  }) : super(
          Argument({
            #key: key,
            #optionsMask: optionsMask,
          }),
          builder: (args) => _i1.PerformanceOverlay(
            key: args(#key),
            optionsMask: args(#optionsMask),
          ),
        );

  @Goto(_i1.PerformanceOverlay.allEnabled)
  PerformanceOverlay.allEnabled(
    $ $config, {
    _i2.Key? key,
  }) : super(
          Argument({#key: key}),
          builder: (args) => _i1.PerformanceOverlay.allEnabled(key: args(#key)),
        );
}
