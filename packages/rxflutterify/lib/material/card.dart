library rxflutterify; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:ui' as ui;

import 'package:flutter/foundation.dart' as _i2;
import 'package:flutter/material.dart' as _i1;
import 'package:flutter/painting.dart' as _i3;
import 'package:flutter/widgets.dart' as _i4;

import '../wrapper.dart';

final class Card extends Wrapper {
  @Goto(_i1.Card.new)
  Card(
    $ $config, {
    _i2.Key? key,
    ui.Color? color,
    ui.Color? shadowColor,
    ui.Color? surfaceTintColor,
    double? elevation,
    _i3.ShapeBorder? shape,
    bool borderOnForeground = true,
    _i3.EdgeInsetsGeometry? margin,
    ui.Clip? clipBehavior,
    _i4.Widget? child,
    bool semanticContainer = true,
  }) : super(
          Argument({
            #key: key,
            #color: color,
            #shadowColor: shadowColor,
            #surfaceTintColor: surfaceTintColor,
            #elevation: elevation,
            #shape: shape,
            #borderOnForeground: borderOnForeground,
            #margin: margin,
            #clipBehavior: clipBehavior,
            #child: child,
            #semanticContainer: semanticContainer,
          }),
          builder: (args) => _i1.Card(
            key: args(#key),
            color: args(#color),
            shadowColor: args(#shadowColor),
            surfaceTintColor: args(#surfaceTintColor),
            elevation: args(#elevation),
            shape: args(#shape),
            borderOnForeground: args(#borderOnForeground),
            margin: args(#margin),
            clipBehavior: args(#clipBehavior),
            child: args(#child),
            semanticContainer: args(#semanticContainer),
          ),
        );

  @Goto(_i1.Card.filled)
  Card.filled(
    $ $config, {
    _i2.Key? key,
    ui.Color? color,
    ui.Color? shadowColor,
    ui.Color? surfaceTintColor,
    double? elevation,
    _i3.ShapeBorder? shape,
    bool borderOnForeground = true,
    _i3.EdgeInsetsGeometry? margin,
    ui.Clip? clipBehavior,
    _i4.Widget? child,
    bool semanticContainer = true,
  }) : super(
          Argument({
            #key: key,
            #color: color,
            #shadowColor: shadowColor,
            #surfaceTintColor: surfaceTintColor,
            #elevation: elevation,
            #shape: shape,
            #borderOnForeground: borderOnForeground,
            #margin: margin,
            #clipBehavior: clipBehavior,
            #child: child,
            #semanticContainer: semanticContainer,
          }),
          builder: (args) => _i1.Card.filled(
            key: args(#key),
            color: args(#color),
            shadowColor: args(#shadowColor),
            surfaceTintColor: args(#surfaceTintColor),
            elevation: args(#elevation),
            shape: args(#shape),
            borderOnForeground: args(#borderOnForeground),
            margin: args(#margin),
            clipBehavior: args(#clipBehavior),
            child: args(#child),
            semanticContainer: args(#semanticContainer),
          ),
        );

  @Goto(_i1.Card.outlined)
  Card.outlined(
    $ $config, {
    _i2.Key? key,
    ui.Color? color,
    ui.Color? shadowColor,
    ui.Color? surfaceTintColor,
    double? elevation,
    _i3.ShapeBorder? shape,
    bool borderOnForeground = true,
    _i3.EdgeInsetsGeometry? margin,
    ui.Clip? clipBehavior,
    _i4.Widget? child,
    bool semanticContainer = true,
  }) : super(
          Argument({
            #key: key,
            #color: color,
            #shadowColor: shadowColor,
            #surfaceTintColor: surfaceTintColor,
            #elevation: elevation,
            #shape: shape,
            #borderOnForeground: borderOnForeground,
            #margin: margin,
            #clipBehavior: clipBehavior,
            #child: child,
            #semanticContainer: semanticContainer,
          }),
          builder: (args) => _i1.Card.outlined(
            key: args(#key),
            color: args(#color),
            shadowColor: args(#shadowColor),
            surfaceTintColor: args(#surfaceTintColor),
            elevation: args(#elevation),
            shape: args(#shape),
            borderOnForeground: args(#borderOnForeground),
            margin: args(#margin),
            clipBehavior: args(#clipBehavior),
            child: args(#child),
            semanticContainer: args(#semanticContainer),
          ),
        );
}
