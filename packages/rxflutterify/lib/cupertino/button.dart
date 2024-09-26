library rxflutterify; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:ui' as ui;

import 'package:flutter/cupertino.dart' as _i1;
import 'package:flutter/foundation.dart' as _i2;
import 'package:flutter/painting.dart' as _i4;
import 'package:flutter/widgets.dart' as _i3;

import '../wrapper.dart';

final class CupertinoButton extends Wrapper {
  @Goto(_i1.CupertinoButton.new)
  CupertinoButton({
    _i2.Key? key,
    required _i3.Widget child,
    _i4.EdgeInsetsGeometry? padding,
    ui.Color? color,
    ui.Color disabledColor = _i1.CupertinoColors.quaternarySystemFill,
    double? minSize = _i1.kMinInteractiveDimensionCupertino,
    double? pressedOpacity = 0.4,
    _i4.BorderRadius? borderRadius = const _i4.BorderRadius.all(ui.Radius.circular(8.0)),
    _i4.AlignmentGeometry alignment = _i4.Alignment.center,
    required ui.VoidCallback? onPressed,
    // Associate with key
    Stream<_i2.Key?>? $key,
    // Associate with child
    Stream<_i3.Widget>? $child,
    // Associate with padding
    Stream<_i4.EdgeInsetsGeometry?>? $padding,
    // Associate with color
    Stream<ui.Color?>? $color,
    // Associate with disabledColor
    Stream<ui.Color>? $disabledColor,
    // Associate with minSize
    Stream<double?>? $minSize,
    // Associate with pressedOpacity
    Stream<double?>? $pressedOpacity,
    // Associate with borderRadius
    Stream<_i4.BorderRadius?>? $borderRadius,
    // Associate with alignment
    Stream<_i4.AlignmentGeometry>? $alignment,
    // Associate with onPressed
    Stream<ui.VoidCallback?>? $onPressed,
  }) : super(
          Argument(
            {
              'key': key,
              'child': child,
              'padding': padding,
              'color': color,
              'disabledColor': disabledColor,
              'minSize': minSize,
              'pressedOpacity': pressedOpacity,
              'borderRadius': borderRadius,
              'alignment': alignment,
              'onPressed': onPressed,
            },
            stream: {
              'key': $key,
              'child': $child,
              'padding': $padding,
              'color': $color,
              'disabledColor': $disabledColor,
              'minSize': $minSize,
              'pressedOpacity': $pressedOpacity,
              'borderRadius': $borderRadius,
              'alignment': $alignment,
              'onPressed': $onPressed,
            },
          ),
          builder: (args) => _i1.CupertinoButton(
            key: args('key'),
            child: args('child'),
            padding: args('padding'),
            color: args('color'),
            disabledColor: args('disabledColor'),
            minSize: args('minSize'),
            pressedOpacity: args('pressedOpacity'),
            borderRadius: args('borderRadius'),
            alignment: args('alignment'),
            onPressed: args('onPressed'),
          ),
        );

  @Goto(_i1.CupertinoButton.filled)
  CupertinoButton.filled({
    _i2.Key? key,
    required _i3.Widget child,
    _i4.EdgeInsetsGeometry? padding,
    ui.Color disabledColor = _i1.CupertinoColors.quaternarySystemFill,
    double? minSize = _i1.kMinInteractiveDimensionCupertino,
    double? pressedOpacity = 0.4,
    _i4.BorderRadius? borderRadius = const _i4.BorderRadius.all(ui.Radius.circular(8.0)),
    _i4.AlignmentGeometry alignment = _i4.Alignment.center,
    required ui.VoidCallback? onPressed,
    // Associate with key
    Stream<_i2.Key?>? $key,
    // Associate with child
    Stream<_i3.Widget>? $child,
    // Associate with padding
    Stream<_i4.EdgeInsetsGeometry?>? $padding,
    // Associate with disabledColor
    Stream<ui.Color>? $disabledColor,
    // Associate with minSize
    Stream<double?>? $minSize,
    // Associate with pressedOpacity
    Stream<double?>? $pressedOpacity,
    // Associate with borderRadius
    Stream<_i4.BorderRadius?>? $borderRadius,
    // Associate with alignment
    Stream<_i4.AlignmentGeometry>? $alignment,
    // Associate with onPressed
    Stream<ui.VoidCallback?>? $onPressed,
  }) : super(
          Argument(
            {
              'key': key,
              'child': child,
              'padding': padding,
              'disabledColor': disabledColor,
              'minSize': minSize,
              'pressedOpacity': pressedOpacity,
              'borderRadius': borderRadius,
              'alignment': alignment,
              'onPressed': onPressed,
            },
            stream: {
              'key': $key,
              'child': $child,
              'padding': $padding,
              'disabledColor': $disabledColor,
              'minSize': $minSize,
              'pressedOpacity': $pressedOpacity,
              'borderRadius': $borderRadius,
              'alignment': $alignment,
              'onPressed': $onPressed,
            },
          ),
          builder: (args) => _i1.CupertinoButton.filled(
            key: args('key'),
            child: args('child'),
            padding: args('padding'),
            disabledColor: args('disabledColor'),
            minSize: args('minSize'),
            pressedOpacity: args('pressedOpacity'),
            borderRadius: args('borderRadius'),
            alignment: args('alignment'),
            onPressed: args('onPressed'),
          ),
        );
}
