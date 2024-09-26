library rxflutterify_binding; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:ui' as ui;

import 'package:flutter/foundation.dart' as _i2;
import 'package:flutter/material.dart' as _i1;
import 'package:flutter/painting.dart' as _i4;
import 'package:flutter/widgets.dart' as _i3;

import '../wrapper.dart';

final class CircleAvatar extends Wrapper {
  @Goto(_i1.CircleAvatar.new)
  CircleAvatar(
    $ $config, {
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
  }) : super(
          Argument({
            #key: key,
            #child: child,
            #backgroundColor: backgroundColor,
            #backgroundImage: backgroundImage,
            #foregroundImage: foregroundImage,
            #onBackgroundImageError: onBackgroundImageError,
            #onForegroundImageError: onForegroundImageError,
            #foregroundColor: foregroundColor,
            #radius: radius,
            #minRadius: minRadius,
            #maxRadius: maxRadius,
          }),
          builder: (args) => _i1.CircleAvatar(
            key: args(#key),
            child: args(#child),
            backgroundColor: args(#backgroundColor),
            backgroundImage: args(#backgroundImage),
            foregroundImage: args(#foregroundImage),
            onBackgroundImageError: args(#onBackgroundImageError),
            onForegroundImageError: args(#onForegroundImageError),
            foregroundColor: args(#foregroundColor),
            radius: args(#radius),
            minRadius: args(#minRadius),
            maxRadius: args(#maxRadius),
          ),
        );
}
