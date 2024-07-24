library rxflutter; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:ui' as ui;

import 'package:flutter/animation.dart' as _i3;
import 'package:flutter/foundation.dart' as _i2;
import 'package:flutter/material.dart' as _i1;

import '../wrapper.dart';

final class AnimatedIcon extends Wrapper {
  @Goto(_i1.AnimatedIcon.new)
  AnimatedIcon({
    _i2.Key? key,
    required _i1.AnimatedIconData icon,
    required _i3.Animation<double> progress,
    ui.Color? color,
    double? size,
    String? semanticLabel,
    ui.TextDirection? textDirection,
    // Associate with key
    Stream<_i2.Key?>? $key,
    // Associate with icon
    Stream<_i1.AnimatedIconData>? $icon,
    // Associate with progress
    Stream<_i3.Animation<double>>? $progress,
    // Associate with color
    Stream<ui.Color?>? $color,
    // Associate with size
    Stream<double?>? $size,
    // Associate with semanticLabel
    Stream<String?>? $semanticLabel,
    // Associate with textDirection
    Stream<ui.TextDirection?>? $textDirection,
  }) : super(
          Argument(
            {
              'key': key,
              'icon': icon,
              'progress': progress,
              'color': color,
              'size': size,
              'semanticLabel': semanticLabel,
              'textDirection': textDirection,
            },
            stream: {
              'key': $key,
              'icon': $icon,
              'progress': $progress,
              'color': $color,
              'size': $size,
              'semanticLabel': $semanticLabel,
              'textDirection': $textDirection,
            },
          ),
          builder: (args) => _i1.AnimatedIcon(
            key: args('key'),
            icon: args('icon'),
            progress: args('progress'),
            color: args('color'),
            size: args('size'),
            semanticLabel: args('semanticLabel'),
            textDirection: args('textDirection'),
          ),
        );
}
