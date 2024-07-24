library rxflutter; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:ui' as ui;

import 'package:flutter/foundation.dart' as _i2;
import 'package:flutter/material.dart' as _i1;
import 'package:flutter/painting.dart' as _i4;
import 'package:flutter/widgets.dart' as _i3;

import '../wrapper.dart';

final class TextMagnifier extends Wrapper {
  @Goto(_i1.TextMagnifier.new)
  TextMagnifier({
    _i2.Key? key,
    required _i2.ValueNotifier<_i3.MagnifierInfo> magnifierInfo,
    // Associate with key
    Stream<_i2.Key?>? $key,
    // Associate with magnifierInfo
    Stream<_i2.ValueNotifier<_i3.MagnifierInfo>>? $magnifierInfo,
  }) : super(
          Argument(
            {
              'key': key,
              'magnifierInfo': magnifierInfo,
            },
            stream: {
              'key': $key,
              'magnifierInfo': $magnifierInfo,
            },
          ),
          builder: (args) => _i1.TextMagnifier(
            key: args('key'),
            magnifierInfo: args('magnifierInfo'),
          ),
        );
}

final class Magnifier extends Wrapper {
  @Goto(_i1.Magnifier.new)
  Magnifier({
    _i2.Key? key,
    ui.Offset additionalFocalPointOffset = ui.Offset.zero,
    _i4.BorderRadius borderRadius = const _i4.BorderRadius.all(ui.Radius.circular(_borderRadius)),
    ui.Color filmColor = const ui.Color.fromARGB(
      8,
      158,
      158,
      158,
    ),
    List<_i4.BoxShadow> shadows = const [
      _i4.BoxShadow(
        blurRadius: 1.5,
        offset: ui.Offset(
          0,
          2,
        ),
        spreadRadius: 0.75,
        color: ui.Color.fromARGB(
          25,
          0,
          0,
          0,
        ),
      )
    ],
    ui.Size size = _i1.Magnifier.kDefaultMagnifierSize,
    // Associate with key
    Stream<_i2.Key?>? $key,
    // Associate with additionalFocalPointOffset
    Stream<ui.Offset>? $additionalFocalPointOffset,
    // Associate with borderRadius
    Stream<_i4.BorderRadius>? $borderRadius,
    // Associate with filmColor
    Stream<ui.Color>? $filmColor,
    // Associate with shadows
    Stream<List<_i4.BoxShadow>>? $shadows,
    // Associate with size
    Stream<ui.Size>? $size,
  }) : super(
          Argument(
            {
              'key': key,
              'additionalFocalPointOffset': additionalFocalPointOffset,
              'borderRadius': borderRadius,
              'filmColor': filmColor,
              'shadows': shadows,
              'size': size,
            },
            stream: {
              'key': $key,
              'additionalFocalPointOffset': $additionalFocalPointOffset,
              'borderRadius': $borderRadius,
              'filmColor': $filmColor,
              'shadows': $shadows,
              'size': $size,
            },
          ),
          builder: (args) => _i1.Magnifier(
            key: args('key'),
            additionalFocalPointOffset: args('additionalFocalPointOffset'),
            borderRadius: args('borderRadius'),
            filmColor: args('filmColor'),
            shadows: args('shadows'),
            size: args('size'),
          ),
        );

  static const double _borderRadius = 40;
}
