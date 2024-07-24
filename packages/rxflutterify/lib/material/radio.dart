library rxflutterify; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:ui' as ui;

import 'package:flutter/foundation.dart' as _i2;
import 'package:flutter/material.dart' as _i1;
import 'package:flutter/services.dart' as _i3;
import 'package:flutter/widgets.dart' as _i4;

import '../wrapper.dart';

final class Radio<T> extends Wrapper {
  @Goto(_i1.Radio.new)
  Radio(
    $ $config, {
    _i2.Key? key,
    required T value,
    required T? groupValue,
    required _i2.ValueChanged<T?>? onChanged,
    _i3.MouseCursor? mouseCursor,
    bool toggleable = false,
    ui.Color? activeColor,
    _i4.WidgetStateProperty<ui.Color?>? fillColor,
    ui.Color? focusColor,
    ui.Color? hoverColor,
    _i4.WidgetStateProperty<ui.Color?>? overlayColor,
    double? splashRadius,
    _i1.MaterialTapTargetSize? materialTapTargetSize,
    _i1.VisualDensity? visualDensity,
    _i4.FocusNode? focusNode,
    bool autofocus = false,
  }) : super(
          Argument({
            #key: key,
            #value: value,
            #groupValue: groupValue,
            #onChanged: onChanged,
            #mouseCursor: mouseCursor,
            #toggleable: toggleable,
            #activeColor: activeColor,
            #fillColor: fillColor,
            #focusColor: focusColor,
            #hoverColor: hoverColor,
            #overlayColor: overlayColor,
            #splashRadius: splashRadius,
            #materialTapTargetSize: materialTapTargetSize,
            #visualDensity: visualDensity,
            #focusNode: focusNode,
            #autofocus: autofocus,
          }),
          builder: (args) => _i1.Radio<T>(
            key: args(#key),
            value: args(#value),
            groupValue: args(#groupValue),
            onChanged: args(#onChanged),
            mouseCursor: args(#mouseCursor),
            toggleable: args(#toggleable),
            activeColor: args(#activeColor),
            fillColor: args(#fillColor),
            focusColor: args(#focusColor),
            hoverColor: args(#hoverColor),
            overlayColor: args(#overlayColor),
            splashRadius: args(#splashRadius),
            materialTapTargetSize: args(#materialTapTargetSize),
            visualDensity: args(#visualDensity),
            focusNode: args(#focusNode),
            autofocus: args(#autofocus),
          ),
        );

  @Goto(_i1.Radio.adaptive)
  Radio.adaptive(
    $ $config, {
    _i2.Key? key,
    required T value,
    required T? groupValue,
    required _i2.ValueChanged<T?>? onChanged,
    _i3.MouseCursor? mouseCursor,
    bool toggleable = false,
    ui.Color? activeColor,
    _i4.WidgetStateProperty<ui.Color?>? fillColor,
    ui.Color? focusColor,
    ui.Color? hoverColor,
    _i4.WidgetStateProperty<ui.Color?>? overlayColor,
    double? splashRadius,
    _i1.MaterialTapTargetSize? materialTapTargetSize,
    _i1.VisualDensity? visualDensity,
    _i4.FocusNode? focusNode,
    bool autofocus = false,
    bool useCupertinoCheckmarkStyle = false,
  }) : super(
          Argument({
            #key: key,
            #value: value,
            #groupValue: groupValue,
            #onChanged: onChanged,
            #mouseCursor: mouseCursor,
            #toggleable: toggleable,
            #activeColor: activeColor,
            #fillColor: fillColor,
            #focusColor: focusColor,
            #hoverColor: hoverColor,
            #overlayColor: overlayColor,
            #splashRadius: splashRadius,
            #materialTapTargetSize: materialTapTargetSize,
            #visualDensity: visualDensity,
            #focusNode: focusNode,
            #autofocus: autofocus,
            #useCupertinoCheckmarkStyle: useCupertinoCheckmarkStyle,
          }),
          builder: (args) => _i1.Radio<T>.adaptive(
            key: args(#key),
            value: args(#value),
            groupValue: args(#groupValue),
            onChanged: args(#onChanged),
            mouseCursor: args(#mouseCursor),
            toggleable: args(#toggleable),
            activeColor: args(#activeColor),
            fillColor: args(#fillColor),
            focusColor: args(#focusColor),
            hoverColor: args(#hoverColor),
            overlayColor: args(#overlayColor),
            splashRadius: args(#splashRadius),
            materialTapTargetSize: args(#materialTapTargetSize),
            visualDensity: args(#visualDensity),
            focusNode: args(#focusNode),
            autofocus: args(#autofocus),
            useCupertinoCheckmarkStyle: args(#useCupertinoCheckmarkStyle),
          ),
        );
}
