library rxflutterify_binding; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:ui' as ui;

import 'package:flutter/cupertino.dart' as _i1;
import 'package:flutter/foundation.dart' as _i2;
import 'package:flutter/painting.dart' as _i4;
import 'package:flutter/widgets.dart' as _i3;

import '../wrapper.dart';

final class CupertinoButton extends Wrapper {
  @Goto(_i1.CupertinoButton.new)
  CupertinoButton(
    $ $config, {
    _i2.Key? key,
    required _i3.Widget child,
    _i4.EdgeInsetsGeometry? padding,
    ui.Color? color,
    ui.Color disabledColor = _i1.CupertinoColors.quaternarySystemFill,
    double? minSize = _i1.kMinInteractiveDimensionCupertino,
    double? pressedOpacity = 0.4,
    _i4.BorderRadius? borderRadius = const _i4.BorderRadius.all(ui.Radius.circular(8.0)),
    _i4.AlignmentGeometry alignment = _i4.Alignment.center,
    ui.Color? focusColor,
    _i3.FocusNode? focusNode,
    _i2.ValueChanged<bool>? onFocusChange,
    bool autofocus = false,
    required ui.VoidCallback? onPressed,
  }) : super(
          Argument({
            #key: key,
            #child: child,
            #padding: padding,
            #color: color,
            #disabledColor: disabledColor,
            #minSize: minSize,
            #pressedOpacity: pressedOpacity,
            #borderRadius: borderRadius,
            #alignment: alignment,
            #focusColor: focusColor,
            #focusNode: focusNode,
            #onFocusChange: onFocusChange,
            #autofocus: autofocus,
            #onPressed: onPressed,
          }),
          builder: (args) => _i1.CupertinoButton(
            key: args(#key),
            child: args(#child),
            padding: args(#padding),
            color: args(#color),
            disabledColor: args(#disabledColor),
            minSize: args(#minSize),
            pressedOpacity: args(#pressedOpacity),
            borderRadius: args(#borderRadius),
            alignment: args(#alignment),
            focusColor: args(#focusColor),
            focusNode: args(#focusNode),
            onFocusChange: args(#onFocusChange),
            autofocus: args(#autofocus),
            onPressed: args(#onPressed),
          ),
        );

  @Goto(_i1.CupertinoButton.filled)
  CupertinoButton.filled(
    $ $config, {
    _i2.Key? key,
    required _i3.Widget child,
    _i4.EdgeInsetsGeometry? padding,
    ui.Color disabledColor = _i1.CupertinoColors.quaternarySystemFill,
    double? minSize = _i1.kMinInteractiveDimensionCupertino,
    double? pressedOpacity = 0.4,
    _i4.BorderRadius? borderRadius = const _i4.BorderRadius.all(ui.Radius.circular(8.0)),
    _i4.AlignmentGeometry alignment = _i4.Alignment.center,
    ui.Color? focusColor,
    _i3.FocusNode? focusNode,
    _i2.ValueChanged<bool>? onFocusChange,
    bool autofocus = false,
    required ui.VoidCallback? onPressed,
  }) : super(
          Argument({
            #key: key,
            #child: child,
            #padding: padding,
            #disabledColor: disabledColor,
            #minSize: minSize,
            #pressedOpacity: pressedOpacity,
            #borderRadius: borderRadius,
            #alignment: alignment,
            #focusColor: focusColor,
            #focusNode: focusNode,
            #onFocusChange: onFocusChange,
            #autofocus: autofocus,
            #onPressed: onPressed,
          }),
          builder: (args) => _i1.CupertinoButton.filled(
            key: args(#key),
            child: args(#child),
            padding: args(#padding),
            disabledColor: args(#disabledColor),
            minSize: args(#minSize),
            pressedOpacity: args(#pressedOpacity),
            borderRadius: args(#borderRadius),
            alignment: args(#alignment),
            focusColor: args(#focusColor),
            focusNode: args(#focusNode),
            onFocusChange: args(#onFocusChange),
            autofocus: args(#autofocus),
            onPressed: args(#onPressed),
          ),
        );
}
