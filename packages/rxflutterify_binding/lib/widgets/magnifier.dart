library rxflutterify_binding; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:ui' as ui;

import 'package:flutter/foundation.dart' as _i2;
import 'package:flutter/widgets.dart' as _i1;

import '../wrapper.dart';

final class RawMagnifier extends Wrapper {
  @Goto(_i1.RawMagnifier.new)
  RawMagnifier(
    $ $config, {
    _i2.Key? key,
    _i1.Widget? child,
    _i1.MagnifierDecoration decoration = const _i1.MagnifierDecoration(),
    ui.Offset focalPointOffset = ui.Offset.zero,
    double magnificationScale = 1,
    required ui.Size size,
  }) : super(
          Argument({
            #key: key,
            #child: child,
            #decoration: decoration,
            #focalPointOffset: focalPointOffset,
            #magnificationScale: magnificationScale,
            #size: size,
          }),
          builder: (args) => _i1.RawMagnifier(
            key: args(#key),
            child: args(#child),
            decoration: args(#decoration),
            focalPointOffset: args(#focalPointOffset),
            magnificationScale: args(#magnificationScale),
            size: args(#size),
          ),
        );
}
