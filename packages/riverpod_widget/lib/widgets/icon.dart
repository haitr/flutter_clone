library rxflutterify; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:ui' as ui;

import 'package:flutter/foundation.dart' as _i2;
import 'package:flutter/widgets.dart' as _i1;

import '../wrapper.dart';

final class Icon extends Wrapper {
  @Goto(_i1.Icon.new)
  Icon(
    $ $config,
    _i1.IconData? icon, {
    _i2.Key? key,
    double? size,
    double? fill,
    double? weight,
    double? grade,
    double? opticalSize,
    ui.Color? color,
    List<ui.Shadow>? shadows,
    String? semanticLabel,
    ui.TextDirection? textDirection,
    bool? applyTextScaling,
  }) : super(
          Argument({
            #icon: icon,
            #key: key,
            #size: size,
            #fill: fill,
            #weight: weight,
            #grade: grade,
            #opticalSize: opticalSize,
            #color: color,
            #shadows: shadows,
            #semanticLabel: semanticLabel,
            #textDirection: textDirection,
            #applyTextScaling: applyTextScaling,
          }),
          builder: (args) => _i1.Icon(
            args(#icon),
            key: args(#key),
            size: args(#size),
            fill: args(#fill),
            weight: args(#weight),
            grade: args(#grade),
            opticalSize: args(#opticalSize),
            color: args(#color),
            shadows: args(#shadows),
            semanticLabel: args(#semanticLabel),
            textDirection: args(#textDirection),
            applyTextScaling: args(#applyTextScaling),
          ),
        );
}
