library rxflutterify_binding; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:ui' as ui;

import 'package:flutter/foundation.dart' as _i2;
import 'package:flutter/widgets.dart' as _i1;

import '../wrapper.dart';

final class Placeholder extends Wrapper {
  @Goto(_i1.Placeholder.new)
  Placeholder(
    $ $config, {
    _i2.Key? key,
    ui.Color color = const ui.Color(0xFF455A64),
    double strokeWidth = 2.0,
    double fallbackWidth = 400.0,
    double fallbackHeight = 400.0,
    _i1.Widget? child,
  }) : super(
          Argument({
            #key: key,
            #color: color,
            #strokeWidth: strokeWidth,
            #fallbackWidth: fallbackWidth,
            #fallbackHeight: fallbackHeight,
            #child: child,
          }),
          builder: (args) => _i1.Placeholder(
            key: args(#key),
            color: args(#color),
            strokeWidth: args(#strokeWidth),
            fallbackWidth: args(#fallbackWidth),
            fallbackHeight: args(#fallbackHeight),
            child: args(#child),
          ),
        );
}
