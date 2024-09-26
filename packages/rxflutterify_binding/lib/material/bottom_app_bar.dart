library rxflutterify_binding; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:ui' as ui;

import 'package:flutter/foundation.dart' as _i2;
import 'package:flutter/material.dart' as _i1;
import 'package:flutter/painting.dart' as _i3;
import 'package:flutter/widgets.dart' as _i4;

import '../wrapper.dart';

final class BottomAppBar extends Wrapper {
  @Goto(_i1.BottomAppBar.new)
  BottomAppBar(
    $ $config, {
    _i2.Key? key,
    ui.Color? color,
    double? elevation,
    _i3.NotchedShape? shape,
    ui.Clip clipBehavior = ui.Clip.none,
    double notchMargin = 4.0,
    _i4.Widget? child,
    _i3.EdgeInsetsGeometry? padding,
    ui.Color? surfaceTintColor,
    ui.Color? shadowColor,
    double? height,
  }) : super(
          Argument({
            #key: key,
            #color: color,
            #elevation: elevation,
            #shape: shape,
            #clipBehavior: clipBehavior,
            #notchMargin: notchMargin,
            #child: child,
            #padding: padding,
            #surfaceTintColor: surfaceTintColor,
            #shadowColor: shadowColor,
            #height: height,
          }),
          builder: (args) => _i1.BottomAppBar(
            key: args(#key),
            color: args(#color),
            elevation: args(#elevation),
            shape: args(#shape),
            clipBehavior: args(#clipBehavior),
            notchMargin: args(#notchMargin),
            child: args(#child),
            padding: args(#padding),
            surfaceTintColor: args(#surfaceTintColor),
            shadowColor: args(#shadowColor),
            height: args(#height),
          ),
        );
}
