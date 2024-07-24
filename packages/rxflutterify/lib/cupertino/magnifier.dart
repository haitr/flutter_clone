library rxflutterify; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:ui' as ui;

import 'package:flutter/animation.dart' as _i3;
import 'package:flutter/cupertino.dart' as _i1;
import 'package:flutter/foundation.dart' as _i2;
import 'package:flutter/painting.dart' as _i5;
import 'package:flutter/widgets.dart' as _i4;

import '../wrapper.dart';

final class CupertinoTextMagnifier extends Wrapper {
  @Goto(_i1.CupertinoTextMagnifier.new)
  CupertinoTextMagnifier(
    $ $config, {
    _i2.Key? key,
    _i3.Curve animationCurve = _i3.Curves.easeOut,
    required _i4.MagnifierController controller,
    double dragResistance = 10.0,
    double hideBelowThreshold = 48.0,
    double horizontalScreenEdgePadding = 10.0,
    required _i2.ValueNotifier<_i4.MagnifierInfo> magnifierInfo,
  }) : super(
          Argument({
            #key: key,
            #animationCurve: animationCurve,
            #controller: controller,
            #dragResistance: dragResistance,
            #hideBelowThreshold: hideBelowThreshold,
            #horizontalScreenEdgePadding: horizontalScreenEdgePadding,
            #magnifierInfo: magnifierInfo,
          }),
          builder: (args) => _i1.CupertinoTextMagnifier(
            key: args(#key),
            animationCurve: args(#animationCurve),
            controller: args(#controller),
            dragResistance: args(#dragResistance),
            hideBelowThreshold: args(#hideBelowThreshold),
            horizontalScreenEdgePadding: args(#horizontalScreenEdgePadding),
            magnifierInfo: args(#magnifierInfo),
          ),
        );
}

final class CupertinoMagnifier extends Wrapper {
  @Goto(_i1.CupertinoMagnifier.new)
  CupertinoMagnifier(
    $ $config, {
    _i2.Key? key,
    ui.Size size = _i1.CupertinoMagnifier.kDefaultSize,
    _i5.BorderRadius borderRadius = const _i5.BorderRadius.all(ui.Radius.elliptical(
      60,
      50,
    )),
    ui.Offset additionalFocalPointOffset = ui.Offset.zero,
    List<_i5.BoxShadow> shadows = const [
      _i5.BoxShadow(
        color: ui.Color.fromARGB(
          25,
          0,
          0,
          0,
        ),
        blurRadius: 11,
        spreadRadius: 0.2,
      )
    ],
    _i5.BorderSide borderSide = const _i5.BorderSide(
        color: ui.Color.fromARGB(
      255,
      232,
      232,
      232,
    )),
    _i3.Animation<double>? inOutAnimation,
  }) : super(
          Argument({
            #key: key,
            #size: size,
            #borderRadius: borderRadius,
            #additionalFocalPointOffset: additionalFocalPointOffset,
            #shadows: shadows,
            #borderSide: borderSide,
            #inOutAnimation: inOutAnimation,
          }),
          builder: (args) => _i1.CupertinoMagnifier(
            key: args(#key),
            size: args(#size),
            borderRadius: args(#borderRadius),
            additionalFocalPointOffset: args(#additionalFocalPointOffset),
            shadows: args(#shadows),
            borderSide: args(#borderSide),
            inOutAnimation: args(#inOutAnimation),
          ),
        );
}
