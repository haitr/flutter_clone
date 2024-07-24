library rxflutterify; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:ui' as ui;

import 'package:flutter/animation.dart' as _i4;
import 'package:flutter/foundation.dart' as _i2;
import 'package:flutter/material.dart' as _i1;
import 'package:flutter/widgets.dart' as _i3;

import '../wrapper.dart';

final class Theme extends Wrapper {
  @Goto(_i1.Theme.new)
  Theme(
    $ $config, {
    _i2.Key? key,
    required _i1.ThemeData data,
    required _i3.Widget child,
  }) : super(
          Argument({
            #key: key,
            #data: data,
            #child: child,
          }),
          builder: (args) => _i1.Theme(
            key: args(#key),
            data: args(#data),
            child: args(#child),
          ),
        );
}

final class AnimatedTheme extends Wrapper {
  @Goto(_i1.AnimatedTheme.new)
  AnimatedTheme(
    $ $config, {
    _i2.Key? key,
    required _i1.ThemeData data,
    _i4.Curve curve = _i4.Curves.linear,
    Duration duration = _i1.kThemeAnimationDuration,
    ui.VoidCallback? onEnd,
    required _i3.Widget child,
  }) : super(
          Argument({
            #key: key,
            #data: data,
            #curve: curve,
            #duration: duration,
            #onEnd: onEnd,
            #child: child,
          }),
          builder: (args) => _i1.AnimatedTheme(
            key: args(#key),
            data: args(#data),
            curve: args(#curve),
            duration: args(#duration),
            onEnd: args(#onEnd),
            child: args(#child),
          ),
        );
}
