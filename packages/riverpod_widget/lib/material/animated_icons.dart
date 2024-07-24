library rxflutterify; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:ui' as ui;

import 'package:flutter/animation.dart' as _i3;
import 'package:flutter/foundation.dart' as _i2;
import 'package:flutter/material.dart' as _i1;

import '../wrapper.dart';

final class AnimatedIcon extends Wrapper {
  @Goto(_i1.AnimatedIcon.new)
  AnimatedIcon(
    $ $config, {
    _i2.Key? key,
    required _i1.AnimatedIconData icon,
    required _i3.Animation<double> progress,
    ui.Color? color,
    double? size,
    String? semanticLabel,
    ui.TextDirection? textDirection,
  }) : super(
          Argument({
            #key: key,
            #icon: icon,
            #progress: progress,
            #color: color,
            #size: size,
            #semanticLabel: semanticLabel,
            #textDirection: textDirection,
          }),
          builder: (args) => _i1.AnimatedIcon(
            key: args(#key),
            icon: args(#icon),
            progress: args(#progress),
            color: args(#color),
            size: args(#size),
            semanticLabel: args(#semanticLabel),
            textDirection: args(#textDirection),
          ),
        );
}
