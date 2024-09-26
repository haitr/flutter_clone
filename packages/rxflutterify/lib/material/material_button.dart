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
  MaterialButton({
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
    // Associate with key
    Stream<_i2.Key?>? $key,
    // Associate with onPressed
    Stream<ui.VoidCallback?>? $onPressed,
    // Associate with onLongPress
    Stream<ui.VoidCallback?>? $onLongPress,
    // Associate with onHighlightChanged
    Stream<_i2.ValueChanged<bool>?>? $onHighlightChanged,
    // Associate with mouseCursor
    Stream<_i3.MouseCursor?>? $mouseCursor,
    // Associate with textTheme
    Stream<_i1.ButtonTextTheme?>? $textTheme,
    // Associate with textColor
    Stream<ui.Color?>? $textColor,
    // Associate with disabledTextColor
    Stream<ui.Color?>? $disabledTextColor,
    // Associate with color
    Stream<ui.Color?>? $color,
    // Associate with disabledColor
    Stream<ui.Color?>? $disabledColor,
    // Associate with focusColor
    Stream<ui.Color?>? $focusColor,
    // Associate with hoverColor
    Stream<ui.Color?>? $hoverColor,
    // Associate with highlightColor
    Stream<ui.Color?>? $highlightColor,
    // Associate with splashColor
    Stream<ui.Color?>? $splashColor,
    // Associate with colorBrightness
    Stream<ui.Brightness?>? $colorBrightness,
    // Associate with elevation
    Stream<double?>? $elevation,
    // Associate with focusElevation
    Stream<double?>? $focusElevation,
    // Associate with hoverElevation
    Stream<double?>? $hoverElevation,
    // Associate with highlightElevation
    Stream<double?>? $highlightElevation,
    // Associate with disabledElevation
    Stream<double?>? $disabledElevation,
    // Associate with padding
    Stream<_i4.EdgeInsetsGeometry?>? $padding,
    // Associate with visualDensity
    Stream<_i1.VisualDensity?>? $visualDensity,
    // Associate with shape
    Stream<_i4.ShapeBorder?>? $shape,
    // Associate with clipBehavior
    Stream<ui.Clip>? $clipBehavior,
    // Associate with focusNode
    Stream<_i5.FocusNode?>? $focusNode,
    // Associate with autofocus
    Stream<bool>? $autofocus,
    // Associate with materialTapTargetSize
    Stream<_i1.MaterialTapTargetSize?>? $materialTapTargetSize,
    // Associate with animationDuration
    Stream<Duration?>? $animationDuration,
    // Associate with minWidth
    Stream<double?>? $minWidth,
    // Associate with height
    Stream<double?>? $height,
    // Associate with enableFeedback
    Stream<bool>? $enableFeedback,
    // Associate with child
    Stream<_i5.Widget?>? $child,
  }) : super(
          Argument(
            {
              'key': key,
              'onPressed': onPressed,
              'onLongPress': onLongPress,
              'onHighlightChanged': onHighlightChanged,
              'mouseCursor': mouseCursor,
              'textTheme': textTheme,
              'textColor': textColor,
              'disabledTextColor': disabledTextColor,
              'color': color,
              'disabledColor': disabledColor,
              'focusColor': focusColor,
              'hoverColor': hoverColor,
              'highlightColor': highlightColor,
              'splashColor': splashColor,
              'colorBrightness': colorBrightness,
              'elevation': elevation,
              'focusElevation': focusElevation,
              'hoverElevation': hoverElevation,
              'highlightElevation': highlightElevation,
              'disabledElevation': disabledElevation,
              'padding': padding,
              'visualDensity': visualDensity,
              'shape': shape,
              'clipBehavior': clipBehavior,
              'focusNode': focusNode,
              'autofocus': autofocus,
              'materialTapTargetSize': materialTapTargetSize,
              'animationDuration': animationDuration,
              'minWidth': minWidth,
              'height': height,
              'enableFeedback': enableFeedback,
              'child': child,
            },
            stream: {
              'key': $key,
              'onPressed': $onPressed,
              'onLongPress': $onLongPress,
              'onHighlightChanged': $onHighlightChanged,
              'mouseCursor': $mouseCursor,
              'textTheme': $textTheme,
              'textColor': $textColor,
              'disabledTextColor': $disabledTextColor,
              'color': $color,
              'disabledColor': $disabledColor,
              'focusColor': $focusColor,
              'hoverColor': $hoverColor,
              'highlightColor': $highlightColor,
              'splashColor': $splashColor,
              'colorBrightness': $colorBrightness,
              'elevation': $elevation,
              'focusElevation': $focusElevation,
              'hoverElevation': $hoverElevation,
              'highlightElevation': $highlightElevation,
              'disabledElevation': $disabledElevation,
              'padding': $padding,
              'visualDensity': $visualDensity,
              'shape': $shape,
              'clipBehavior': $clipBehavior,
              'focusNode': $focusNode,
              'autofocus': $autofocus,
              'materialTapTargetSize': $materialTapTargetSize,
              'animationDuration': $animationDuration,
              'minWidth': $minWidth,
              'height': $height,
              'enableFeedback': $enableFeedback,
              'child': $child,
            },
          ),
          builder: (args) => _i1.MaterialButton(
            key: args('key'),
            onPressed: args('onPressed'),
            onLongPress: args('onLongPress'),
            onHighlightChanged: args('onHighlightChanged'),
            mouseCursor: args('mouseCursor'),
            textTheme: args('textTheme'),
            textColor: args('textColor'),
            disabledTextColor: args('disabledTextColor'),
            color: args('color'),
            disabledColor: args('disabledColor'),
            focusColor: args('focusColor'),
            hoverColor: args('hoverColor'),
            highlightColor: args('highlightColor'),
            splashColor: args('splashColor'),
            colorBrightness: args('colorBrightness'),
            elevation: args('elevation'),
            focusElevation: args('focusElevation'),
            hoverElevation: args('hoverElevation'),
            highlightElevation: args('highlightElevation'),
            disabledElevation: args('disabledElevation'),
            padding: args('padding'),
            visualDensity: args('visualDensity'),
            shape: args('shape'),
            clipBehavior: args('clipBehavior'),
            focusNode: args('focusNode'),
            autofocus: args('autofocus'),
            materialTapTargetSize: args('materialTapTargetSize'),
            animationDuration: args('animationDuration'),
            minWidth: args('minWidth'),
            height: args('height'),
            enableFeedback: args('enableFeedback'),
            child: args('child'),
          ),
        );
}
