library rxflutterify; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:ui' as ui;

import 'package:flutter/foundation.dart' as _i2;
import 'package:flutter/material.dart' as _i1;
import 'package:flutter/painting.dart' as _i4;
import 'package:flutter/widgets.dart' as _i3;

import '../wrapper.dart';

final class CircleAvatar extends Wrapper {
  @Goto(_i1.CircleAvatar.new)
  CircleAvatar({
    _i2.Key? key,
    _i3.Widget? child,
    ui.Color? backgroundColor,
    _i4.ImageProvider? backgroundImage,
    _i4.ImageProvider? foregroundImage,
    _i4.ImageErrorListener? onBackgroundImageError,
    _i4.ImageErrorListener? onForegroundImageError,
    ui.Color? foregroundColor,
    double? radius,
    double? minRadius,
    double? maxRadius,
    // Associate with key
    Stream<_i2.Key?>? $key,
    // Associate with child
    Stream<_i3.Widget?>? $child,
    // Associate with backgroundColor
    Stream<ui.Color?>? $backgroundColor,
    // Associate with backgroundImage
    Stream<_i4.ImageProvider?>? $backgroundImage,
    // Associate with foregroundImage
    Stream<_i4.ImageProvider?>? $foregroundImage,
    // Associate with onBackgroundImageError
    Stream<_i4.ImageErrorListener?>? $onBackgroundImageError,
    // Associate with onForegroundImageError
    Stream<_i4.ImageErrorListener?>? $onForegroundImageError,
    // Associate with foregroundColor
    Stream<ui.Color?>? $foregroundColor,
    // Associate with radius
    Stream<double?>? $radius,
    // Associate with minRadius
    Stream<double?>? $minRadius,
    // Associate with maxRadius
    Stream<double?>? $maxRadius,
  }) : super(
          Argument(
            {
              'key': key,
              'child': child,
              'backgroundColor': backgroundColor,
              'backgroundImage': backgroundImage,
              'foregroundImage': foregroundImage,
              'onBackgroundImageError': onBackgroundImageError,
              'onForegroundImageError': onForegroundImageError,
              'foregroundColor': foregroundColor,
              'radius': radius,
              'minRadius': minRadius,
              'maxRadius': maxRadius,
            },
            stream: {
              'key': $key,
              'child': $child,
              'backgroundColor': $backgroundColor,
              'backgroundImage': $backgroundImage,
              'foregroundImage': $foregroundImage,
              'onBackgroundImageError': $onBackgroundImageError,
              'onForegroundImageError': $onForegroundImageError,
              'foregroundColor': $foregroundColor,
              'radius': $radius,
              'minRadius': $minRadius,
              'maxRadius': $maxRadius,
            },
          ),
          builder: (args) => _i1.CircleAvatar(
            key: args('key'),
            child: args('child'),
            backgroundColor: args('backgroundColor'),
            backgroundImage: args('backgroundImage'),
            foregroundImage: args('foregroundImage'),
            onBackgroundImageError: args('onBackgroundImageError'),
            onForegroundImageError: args('onForegroundImageError'),
            foregroundColor: args('foregroundColor'),
            radius: args('radius'),
            minRadius: args('minRadius'),
            maxRadius: args('maxRadius'),
          ),
        );
}
