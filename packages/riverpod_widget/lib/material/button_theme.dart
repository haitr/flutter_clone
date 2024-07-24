library rxflutterify; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:ui' as ui;

import 'package:flutter/foundation.dart' as _i2;
import 'package:flutter/material.dart' as _i1;
import 'package:flutter/painting.dart' as _i3;
import 'package:flutter/widgets.dart' as _i4;

import '../wrapper.dart';

final class ButtonTheme extends Wrapper {
  @Goto(_i1.ButtonTheme.new)
  ButtonTheme(
    $ $config, {
    _i2.Key? key,
    _i1.ButtonTextTheme textTheme = _i1.ButtonTextTheme.normal,
    _i1.ButtonBarLayoutBehavior layoutBehavior = _i1.ButtonBarLayoutBehavior.padded,
    double minWidth = 88.0,
    double height = 36.0,
    _i3.EdgeInsetsGeometry? padding,
    _i3.ShapeBorder? shape,
    bool alignedDropdown = false,
    ui.Color? buttonColor,
    ui.Color? disabledColor,
    ui.Color? focusColor,
    ui.Color? hoverColor,
    ui.Color? highlightColor,
    ui.Color? splashColor,
    _i1.ColorScheme? colorScheme,
    _i1.MaterialTapTargetSize? materialTapTargetSize,
    required _i4.Widget child,
  }) : super(
          Argument({
            #key: key,
            #textTheme: textTheme,
            #layoutBehavior: layoutBehavior,
            #minWidth: minWidth,
            #height: height,
            #padding: padding,
            #shape: shape,
            #alignedDropdown: alignedDropdown,
            #buttonColor: buttonColor,
            #disabledColor: disabledColor,
            #focusColor: focusColor,
            #hoverColor: hoverColor,
            #highlightColor: highlightColor,
            #splashColor: splashColor,
            #colorScheme: colorScheme,
            #materialTapTargetSize: materialTapTargetSize,
            #child: child,
          }),
          builder: (args) => _i1.ButtonTheme(
            key: args(#key),
            textTheme: args(#textTheme),
            layoutBehavior: args(#layoutBehavior),
            minWidth: args(#minWidth),
            height: args(#height),
            padding: args(#padding),
            shape: args(#shape),
            alignedDropdown: args(#alignedDropdown),
            buttonColor: args(#buttonColor),
            disabledColor: args(#disabledColor),
            focusColor: args(#focusColor),
            hoverColor: args(#hoverColor),
            highlightColor: args(#highlightColor),
            splashColor: args(#splashColor),
            colorScheme: args(#colorScheme),
            materialTapTargetSize: args(#materialTapTargetSize),
            child: args(#child),
          ),
        );

  @Goto(_i1.ButtonTheme.fromButtonThemeData)
  ButtonTheme.fromButtonThemeData(
    $ $config, {
    _i2.Key? key,
    required _i1.ButtonThemeData data,
    required _i4.Widget child,
  }) : super(
          Argument({
            #key: key,
            #data: data,
            #child: child,
          }),
          builder: (args) => _i1.ButtonTheme.fromButtonThemeData(
            key: args(#key),
            data: args(#data),
            child: args(#child),
          ),
        );
}
