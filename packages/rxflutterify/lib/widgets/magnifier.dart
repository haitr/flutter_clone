library rxflutterify; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:ui' as ui;

import 'package:flutter/foundation.dart' as _i2;
import 'package:flutter/widgets.dart' as _i1;

import '../wrapper.dart';

final class RawMagnifier extends Wrapper {
  @Goto(_i1.RawMagnifier.new)
  RawMagnifier({
    _i2.Key? key,
    _i1.Widget? child,
    _i1.MagnifierDecoration decoration = const _i1.MagnifierDecoration(),
    ui.Clip clipBehavior = ui.Clip.none,
    ui.Offset focalPointOffset = ui.Offset.zero,
    double magnificationScale = 1,
    required ui.Size size,
    // Associate with key
    Stream<_i2.Key?>? $key,
    // Associate with child
    Stream<_i1.Widget?>? $child,
    // Associate with decoration
    Stream<_i1.MagnifierDecoration>? $decoration,
    // Associate with clipBehavior
    Stream<ui.Clip>? $clipBehavior,
    // Associate with focalPointOffset
    Stream<ui.Offset>? $focalPointOffset,
    // Associate with magnificationScale
    Stream<double>? $magnificationScale,
    // Associate with size
    Stream<ui.Size>? $size,
  }) : super(
          Argument(
            {
              'key': key,
              'child': child,
              'decoration': decoration,
              'clipBehavior': clipBehavior,
              'focalPointOffset': focalPointOffset,
              'magnificationScale': magnificationScale,
              'size': size,
            },
            stream: {
              'key': $key,
              'child': $child,
              'decoration': $decoration,
              'clipBehavior': $clipBehavior,
              'focalPointOffset': $focalPointOffset,
              'magnificationScale': $magnificationScale,
              'size': $size,
            },
          ),
          builder: (args) => _i1.RawMagnifier(
            key: args('key'),
            child: args('child'),
            decoration: args('decoration'),
            clipBehavior: args('clipBehavior'),
            focalPointOffset: args('focalPointOffset'),
            magnificationScale: args('magnificationScale'),
            size: args('size'),
          ),
        );
}
