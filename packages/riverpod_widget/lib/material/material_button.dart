library rxflutterify; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:ui' as ui;

import 'package:flutter/foundation.dart' as _i2;
import 'package:flutter/material.dart' as _i1;
import 'package:flutter/painting.dart' as _i4;
import 'package:flutter/services.dart' as _i3;
import 'package:flutter/widgets.dart' as _i5;

import '../wrapper.dart';

final class MaterialButton extends Wrapper {
  @Goto(_i1.MaterialButton.new)
  MaterialButton(
    $ $config, {
    _i2.Key? key,
    required ui.VoidCallback? onPressed,
    ui.VoidCallback? onLongPress,
    _i2.ValueChanged<bool>? onHighlightChanged,
    _i3.MouseCursor? mouseCursor,
    _i1.ButtonTextTheme? textTheme,
    ui.Color? textColor,
    ui.Color? disabledTextColor,
    ui.Color? color,
    ui.Color? disabledColor,
    ui.Color? focusColor,
    ui.Color? hoverColor,
    ui.Color? highlightColor,
    ui.Color? splashColor,
    ui.Brightness? colorBrightness,
    double? elevation,
    double? focusElevation,
    double? hoverElevation,
    double? highlightElevation,
    double? disabledElevation,
    _i4.EdgeInsetsGeometry? padding,
    _i1.VisualDensity? visualDensity,
    _i4.ShapeBorder? shape,
    ui.Clip clipBehavior = ui.Clip.none,
    _i5.FocusNode? focusNode,
    bool autofocus = false,
    _i1.MaterialTapTargetSize? materialTapTargetSize,
    Duration? animationDuration,
    double? minWidth,
    double? height,
    bool enableFeedback = true,
    _i5.Widget? child,
  }) : super(
          Argument({
            #key: key,
            #onPressed: onPressed,
            #onLongPress: onLongPress,
            #onHighlightChanged: onHighlightChanged,
            #mouseCursor: mouseCursor,
            #textTheme: textTheme,
            #textColor: textColor,
            #disabledTextColor: disabledTextColor,
            #color: color,
            #disabledColor: disabledColor,
            #focusColor: focusColor,
            #hoverColor: hoverColor,
            #highlightColor: highlightColor,
            #splashColor: splashColor,
            #colorBrightness: colorBrightness,
            #elevation: elevation,
            #focusElevation: focusElevation,
            #hoverElevation: hoverElevation,
            #highlightElevation: highlightElevation,
            #disabledElevation: disabledElevation,
            #padding: padding,
            #visualDensity: visualDensity,
            #shape: shape,
            #clipBehavior: clipBehavior,
            #focusNode: focusNode,
            #autofocus: autofocus,
            #materialTapTargetSize: materialTapTargetSize,
            #animationDuration: animationDuration,
            #minWidth: minWidth,
            #height: height,
            #enableFeedback: enableFeedback,
            #child: child,
          }),
          builder: (args) => _i1.MaterialButton(
            key: args(#key),
            onPressed: args(#onPressed),
            onLongPress: args(#onLongPress),
            onHighlightChanged: args(#onHighlightChanged),
            mouseCursor: args(#mouseCursor),
            textTheme: args(#textTheme),
            textColor: args(#textColor),
            disabledTextColor: args(#disabledTextColor),
            color: args(#color),
            disabledColor: args(#disabledColor),
            focusColor: args(#focusColor),
            hoverColor: args(#hoverColor),
            highlightColor: args(#highlightColor),
            splashColor: args(#splashColor),
            colorBrightness: args(#colorBrightness),
            elevation: args(#elevation),
            focusElevation: args(#focusElevation),
            hoverElevation: args(#hoverElevation),
            highlightElevation: args(#highlightElevation),
            disabledElevation: args(#disabledElevation),
            padding: args(#padding),
            visualDensity: args(#visualDensity),
            shape: args(#shape),
            clipBehavior: args(#clipBehavior),
            focusNode: args(#focusNode),
            autofocus: args(#autofocus),
            materialTapTargetSize: args(#materialTapTargetSize),
            animationDuration: args(#animationDuration),
            minWidth: args(#minWidth),
            height: args(#height),
            enableFeedback: args(#enableFeedback),
            child: args(#child),
          ),
        );
}
