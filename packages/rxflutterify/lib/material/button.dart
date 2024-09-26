library rxflutterify; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:ui' as ui;

import 'package:flutter/foundation.dart' as _i2;
import 'package:flutter/material.dart' as _i1;
import 'package:flutter/painting.dart' as _i4;
import 'package:flutter/rendering.dart' as _i5;
import 'package:flutter/services.dart' as _i3;
import 'package:flutter/widgets.dart' as _i6;

import '../wrapper.dart';

final class RawMaterialButton extends Wrapper {
  @Goto(_i1.RawMaterialButton.new)
  RawMaterialButton({
    _i2.Key? key,
    required ui.VoidCallback? onPressed,
    ui.VoidCallback? onLongPress,
    _i2.ValueChanged<bool>? onHighlightChanged,
    _i3.MouseCursor? mouseCursor,
    _i4.TextStyle? textStyle,
    ui.Color? fillColor,
    ui.Color? focusColor,
    ui.Color? hoverColor,
    ui.Color? highlightColor,
    ui.Color? splashColor,
    double elevation = 2.0,
    double focusElevation = 4.0,
    double hoverElevation = 4.0,
    double highlightElevation = 8.0,
    double disabledElevation = 0.0,
    _i4.EdgeInsetsGeometry padding = _i4.EdgeInsets.zero,
    _i1.VisualDensity visualDensity = _i1.VisualDensity.standard,
    _i5.BoxConstraints constraints = const _i5.BoxConstraints(
      minWidth: 88.0,
      minHeight: 36.0,
    ),
    _i4.ShapeBorder shape = const _i4.RoundedRectangleBorder(),
    Duration animationDuration = _i1.kThemeChangeDuration,
    ui.Clip clipBehavior = ui.Clip.none,
    _i6.FocusNode? focusNode,
    bool autofocus = false,
    _i1.MaterialTapTargetSize? materialTapTargetSize,
    _i6.Widget? child,
    bool enableFeedback = true,
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
    // Associate with textStyle
    Stream<_i4.TextStyle?>? $textStyle,
    // Associate with fillColor
    Stream<ui.Color?>? $fillColor,
    // Associate with focusColor
    Stream<ui.Color?>? $focusColor,
    // Associate with hoverColor
    Stream<ui.Color?>? $hoverColor,
    // Associate with highlightColor
    Stream<ui.Color?>? $highlightColor,
    // Associate with splashColor
    Stream<ui.Color?>? $splashColor,
    // Associate with elevation
    Stream<double>? $elevation,
    // Associate with focusElevation
    Stream<double>? $focusElevation,
    // Associate with hoverElevation
    Stream<double>? $hoverElevation,
    // Associate with highlightElevation
    Stream<double>? $highlightElevation,
    // Associate with disabledElevation
    Stream<double>? $disabledElevation,
    // Associate with padding
    Stream<_i4.EdgeInsetsGeometry>? $padding,
    // Associate with visualDensity
    Stream<_i1.VisualDensity>? $visualDensity,
    // Associate with constraints
    Stream<_i5.BoxConstraints>? $constraints,
    // Associate with shape
    Stream<_i4.ShapeBorder>? $shape,
    // Associate with animationDuration
    Stream<Duration>? $animationDuration,
    // Associate with clipBehavior
    Stream<ui.Clip>? $clipBehavior,
    // Associate with focusNode
    Stream<_i6.FocusNode?>? $focusNode,
    // Associate with autofocus
    Stream<bool>? $autofocus,
    // Associate with materialTapTargetSize
    Stream<_i1.MaterialTapTargetSize?>? $materialTapTargetSize,
    // Associate with child
    Stream<_i6.Widget?>? $child,
    // Associate with enableFeedback
    Stream<bool>? $enableFeedback,
  }) : super(
          Argument(
            {
              'key': key,
              'onPressed': onPressed,
              'onLongPress': onLongPress,
              'onHighlightChanged': onHighlightChanged,
              'mouseCursor': mouseCursor,
              'textStyle': textStyle,
              'fillColor': fillColor,
              'focusColor': focusColor,
              'hoverColor': hoverColor,
              'highlightColor': highlightColor,
              'splashColor': splashColor,
              'elevation': elevation,
              'focusElevation': focusElevation,
              'hoverElevation': hoverElevation,
              'highlightElevation': highlightElevation,
              'disabledElevation': disabledElevation,
              'padding': padding,
              'visualDensity': visualDensity,
              'constraints': constraints,
              'shape': shape,
              'animationDuration': animationDuration,
              'clipBehavior': clipBehavior,
              'focusNode': focusNode,
              'autofocus': autofocus,
              'materialTapTargetSize': materialTapTargetSize,
              'child': child,
              'enableFeedback': enableFeedback,
            },
            stream: {
              'key': $key,
              'onPressed': $onPressed,
              'onLongPress': $onLongPress,
              'onHighlightChanged': $onHighlightChanged,
              'mouseCursor': $mouseCursor,
              'textStyle': $textStyle,
              'fillColor': $fillColor,
              'focusColor': $focusColor,
              'hoverColor': $hoverColor,
              'highlightColor': $highlightColor,
              'splashColor': $splashColor,
              'elevation': $elevation,
              'focusElevation': $focusElevation,
              'hoverElevation': $hoverElevation,
              'highlightElevation': $highlightElevation,
              'disabledElevation': $disabledElevation,
              'padding': $padding,
              'visualDensity': $visualDensity,
              'constraints': $constraints,
              'shape': $shape,
              'animationDuration': $animationDuration,
              'clipBehavior': $clipBehavior,
              'focusNode': $focusNode,
              'autofocus': $autofocus,
              'materialTapTargetSize': $materialTapTargetSize,
              'child': $child,
              'enableFeedback': $enableFeedback,
            },
          ),
          builder: (args) => _i1.RawMaterialButton(
            key: args('key'),
            onPressed: args('onPressed'),
            onLongPress: args('onLongPress'),
            onHighlightChanged: args('onHighlightChanged'),
            mouseCursor: args('mouseCursor'),
            textStyle: args('textStyle'),
            fillColor: args('fillColor'),
            focusColor: args('focusColor'),
            hoverColor: args('hoverColor'),
            highlightColor: args('highlightColor'),
            splashColor: args('splashColor'),
            elevation: args('elevation'),
            focusElevation: args('focusElevation'),
            hoverElevation: args('hoverElevation'),
            highlightElevation: args('highlightElevation'),
            disabledElevation: args('disabledElevation'),
            padding: args('padding'),
            visualDensity: args('visualDensity'),
            constraints: args('constraints'),
            shape: args('shape'),
            animationDuration: args('animationDuration'),
            clipBehavior: args('clipBehavior'),
            focusNode: args('focusNode'),
            autofocus: args('autofocus'),
            materialTapTargetSize: args('materialTapTargetSize'),
            child: args('child'),
            enableFeedback: args('enableFeedback'),
          ),
        );
}
