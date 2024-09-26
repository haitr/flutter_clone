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
    int rasterizerThreshold = 0,
    bool checkerboardRasterCacheImages = false,
    bool checkerboardOffscreenLayers = false,
  }) : super(
          Argument({
            #key: key,
            #optionsMask: optionsMask,
            #rasterizerThreshold: rasterizerThreshold,
            #checkerboardRasterCacheImages: checkerboardRasterCacheImages,
            #checkerboardOffscreenLayers: checkerboardOffscreenLayers,
          }),
          builder: (args) => _i1.PerformanceOverlay(
            key: args(#key),
            optionsMask: args(#optionsMask),
            rasterizerThreshold: args(#rasterizerThreshold),
            checkerboardRasterCacheImages: args(#checkerboardRasterCacheImages),
            checkerboardOffscreenLayers: args(#checkerboardOffscreenLayers),
          ),
        );

  @Goto(_i1.PerformanceOverlay.allEnabled)
  PerformanceOverlay.allEnabled(
    $ $config, {
    _i2.Key? key,
    int rasterizerThreshold = 0,
    bool checkerboardRasterCacheImages = false,
    bool checkerboardOffscreenLayers = false,
  }) : super(
          Argument({
            #key: key,
            #rasterizerThreshold: rasterizerThreshold,
            #checkerboardRasterCacheImages: checkerboardRasterCacheImages,
            #checkerboardOffscreenLayers: checkerboardOffscreenLayers,
          }),
          builder: (args) => _i1.PerformanceOverlay.allEnabled(
            key: args(#key),
            rasterizerThreshold: args(#rasterizerThreshold),
            checkerboardRasterCacheImages: args(#checkerboardRasterCacheImages),
            checkerboardOffscreenLayers: args(#checkerboardOffscreenLayers),
          ),
        );
}
