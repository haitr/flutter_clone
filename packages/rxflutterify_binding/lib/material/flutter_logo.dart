library rxflutterify_binding; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:ui' as ui;

import 'package:flutter/animation.dart' as _i4;
import 'package:flutter/foundation.dart' as _i2;
import 'package:flutter/material.dart' as _i1;
import 'package:flutter/painting.dart' as _i3;

import '../wrapper.dart';

final class FlutterLogo extends Wrapper {
  @Goto(_i1.FlutterLogo.new)
  FlutterLogo(
    $ $config, {
    _i2.Key? key,
    double? size,
    ui.Color textColor = const ui.Color(0xFF757575),
    _i3.FlutterLogoStyle style = _i3.FlutterLogoStyle.markOnly,
    Duration duration = const Duration(milliseconds: 750),
    _i4.Curve curve = _i4.Curves.fastOutSlowIn,
  }) : super(
          Argument({
            #key: key,
            #size: size,
            #textColor: textColor,
            #style: style,
            #duration: duration,
            #curve: curve,
          }),
          builder: (args) => _i1.FlutterLogo(
            key: args(#key),
            size: args(#size),
            textColor: args(#textColor),
            style: args(#style),
            duration: args(#duration),
            curve: args(#curve),
          ),
        );
}
