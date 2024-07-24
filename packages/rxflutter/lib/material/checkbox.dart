library rxflutter; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:ui' as ui;

import 'package:flutter/foundation.dart' as _i2;
import 'package:flutter/material.dart' as _i1;
import 'package:flutter/painting.dart' as _i5;
import 'package:flutter/services.dart' as _i3;
import 'package:flutter/widgets.dart' as _i4;

import '../wrapper.dart';

final class Checkbox extends Wrapper {
  @Goto(_i1.Checkbox.new)
  Checkbox({
    _i2.Key? key,
    required bool? value,
    bool tristate = false,
    required _i2.ValueChanged<bool?>? onChanged,
    _i3.MouseCursor? mouseCursor,
    ui.Color? activeColor,
    _i4.WidgetStateProperty<ui.Color?>? fillColor,
    ui.Color? checkColor,
    ui.Color? focusColor,
    ui.Color? hoverColor,
    _i4.WidgetStateProperty<ui.Color?>? overlayColor,
    double? splashRadius,
    _i1.MaterialTapTargetSize? materialTapTargetSize,
    _i1.VisualDensity? visualDensity,
    _i4.FocusNode? focusNode,
    bool autofocus = false,
    _i5.OutlinedBorder? shape,
    _i5.BorderSide? side,
    bool isError = false,
    String? semanticLabel,
    // Associate with key
    Stream<_i2.Key?>? $key,
    // Associate with value
    Stream<bool?>? $value,
    // Associate with tristate
    Stream<bool>? $tristate,
    // Associate with onChanged
    Stream<_i2.ValueChanged<bool?>?>? $onChanged,
    // Associate with mouseCursor
    Stream<_i3.MouseCursor?>? $mouseCursor,
    // Associate with activeColor
    Stream<ui.Color?>? $activeColor,
    // Associate with fillColor
    Stream<_i4.WidgetStateProperty<ui.Color?>?>? $fillColor,
    // Associate with checkColor
    Stream<ui.Color?>? $checkColor,
    // Associate with focusColor
    Stream<ui.Color?>? $focusColor,
    // Associate with hoverColor
    Stream<ui.Color?>? $hoverColor,
    // Associate with overlayColor
    Stream<_i4.WidgetStateProperty<ui.Color?>?>? $overlayColor,
    // Associate with splashRadius
    Stream<double?>? $splashRadius,
    // Associate with materialTapTargetSize
    Stream<_i1.MaterialTapTargetSize?>? $materialTapTargetSize,
    // Associate with visualDensity
    Stream<_i1.VisualDensity?>? $visualDensity,
    // Associate with focusNode
    Stream<_i4.FocusNode?>? $focusNode,
    // Associate with autofocus
    Stream<bool>? $autofocus,
    // Associate with shape
    Stream<_i5.OutlinedBorder?>? $shape,
    // Associate with side
    Stream<_i5.BorderSide?>? $side,
    // Associate with isError
    Stream<bool>? $isError,
    // Associate with semanticLabel
    Stream<String?>? $semanticLabel,
  }) : super(
          Argument(
            {
              'key': key,
              'value': value,
              'tristate': tristate,
              'onChanged': onChanged,
              'mouseCursor': mouseCursor,
              'activeColor': activeColor,
              'fillColor': fillColor,
              'checkColor': checkColor,
              'focusColor': focusColor,
              'hoverColor': hoverColor,
              'overlayColor': overlayColor,
              'splashRadius': splashRadius,
              'materialTapTargetSize': materialTapTargetSize,
              'visualDensity': visualDensity,
              'focusNode': focusNode,
              'autofocus': autofocus,
              'shape': shape,
              'side': side,
              'isError': isError,
              'semanticLabel': semanticLabel,
            },
            stream: {
              'key': $key,
              'value': $value,
              'tristate': $tristate,
              'onChanged': $onChanged,
              'mouseCursor': $mouseCursor,
              'activeColor': $activeColor,
              'fillColor': $fillColor,
              'checkColor': $checkColor,
              'focusColor': $focusColor,
              'hoverColor': $hoverColor,
              'overlayColor': $overlayColor,
              'splashRadius': $splashRadius,
              'materialTapTargetSize': $materialTapTargetSize,
              'visualDensity': $visualDensity,
              'focusNode': $focusNode,
              'autofocus': $autofocus,
              'shape': $shape,
              'side': $side,
              'isError': $isError,
              'semanticLabel': $semanticLabel,
            },
          ),
          builder: (args) => _i1.Checkbox(
            key: args('key'),
            value: args('value'),
            tristate: args('tristate'),
            onChanged: args('onChanged'),
            mouseCursor: args('mouseCursor'),
            activeColor: args('activeColor'),
            fillColor: args('fillColor'),
            checkColor: args('checkColor'),
            focusColor: args('focusColor'),
            hoverColor: args('hoverColor'),
            overlayColor: args('overlayColor'),
            splashRadius: args('splashRadius'),
            materialTapTargetSize: args('materialTapTargetSize'),
            visualDensity: args('visualDensity'),
            focusNode: args('focusNode'),
            autofocus: args('autofocus'),
            shape: args('shape'),
            side: args('side'),
            isError: args('isError'),
            semanticLabel: args('semanticLabel'),
          ),
        );

  @Goto(_i1.Checkbox.adaptive)
  Checkbox.adaptive({
    _i2.Key? key,
    required bool? value,
    bool tristate = false,
    required _i2.ValueChanged<bool?>? onChanged,
    _i3.MouseCursor? mouseCursor,
    ui.Color? activeColor,
    _i4.WidgetStateProperty<ui.Color?>? fillColor,
    ui.Color? checkColor,
    ui.Color? focusColor,
    ui.Color? hoverColor,
    _i4.WidgetStateProperty<ui.Color?>? overlayColor,
    double? splashRadius,
    _i1.MaterialTapTargetSize? materialTapTargetSize,
    _i1.VisualDensity? visualDensity,
    _i4.FocusNode? focusNode,
    bool autofocus = false,
    _i5.OutlinedBorder? shape,
    _i5.BorderSide? side,
    bool isError = false,
    String? semanticLabel,
    // Associate with key
    Stream<_i2.Key?>? $key,
    // Associate with value
    Stream<bool?>? $value,
    // Associate with tristate
    Stream<bool>? $tristate,
    // Associate with onChanged
    Stream<_i2.ValueChanged<bool?>?>? $onChanged,
    // Associate with mouseCursor
    Stream<_i3.MouseCursor?>? $mouseCursor,
    // Associate with activeColor
    Stream<ui.Color?>? $activeColor,
    // Associate with fillColor
    Stream<_i4.WidgetStateProperty<ui.Color?>?>? $fillColor,
    // Associate with checkColor
    Stream<ui.Color?>? $checkColor,
    // Associate with focusColor
    Stream<ui.Color?>? $focusColor,
    // Associate with hoverColor
    Stream<ui.Color?>? $hoverColor,
    // Associate with overlayColor
    Stream<_i4.WidgetStateProperty<ui.Color?>?>? $overlayColor,
    // Associate with splashRadius
    Stream<double?>? $splashRadius,
    // Associate with materialTapTargetSize
    Stream<_i1.MaterialTapTargetSize?>? $materialTapTargetSize,
    // Associate with visualDensity
    Stream<_i1.VisualDensity?>? $visualDensity,
    // Associate with focusNode
    Stream<_i4.FocusNode?>? $focusNode,
    // Associate with autofocus
    Stream<bool>? $autofocus,
    // Associate with shape
    Stream<_i5.OutlinedBorder?>? $shape,
    // Associate with side
    Stream<_i5.BorderSide?>? $side,
    // Associate with isError
    Stream<bool>? $isError,
    // Associate with semanticLabel
    Stream<String?>? $semanticLabel,
  }) : super(
          Argument(
            {
              'key': key,
              'value': value,
              'tristate': tristate,
              'onChanged': onChanged,
              'mouseCursor': mouseCursor,
              'activeColor': activeColor,
              'fillColor': fillColor,
              'checkColor': checkColor,
              'focusColor': focusColor,
              'hoverColor': hoverColor,
              'overlayColor': overlayColor,
              'splashRadius': splashRadius,
              'materialTapTargetSize': materialTapTargetSize,
              'visualDensity': visualDensity,
              'focusNode': focusNode,
              'autofocus': autofocus,
              'shape': shape,
              'side': side,
              'isError': isError,
              'semanticLabel': semanticLabel,
            },
            stream: {
              'key': $key,
              'value': $value,
              'tristate': $tristate,
              'onChanged': $onChanged,
              'mouseCursor': $mouseCursor,
              'activeColor': $activeColor,
              'fillColor': $fillColor,
              'checkColor': $checkColor,
              'focusColor': $focusColor,
              'hoverColor': $hoverColor,
              'overlayColor': $overlayColor,
              'splashRadius': $splashRadius,
              'materialTapTargetSize': $materialTapTargetSize,
              'visualDensity': $visualDensity,
              'focusNode': $focusNode,
              'autofocus': $autofocus,
              'shape': $shape,
              'side': $side,
              'isError': $isError,
              'semanticLabel': $semanticLabel,
            },
          ),
          builder: (args) => _i1.Checkbox.adaptive(
            key: args('key'),
            value: args('value'),
            tristate: args('tristate'),
            onChanged: args('onChanged'),
            mouseCursor: args('mouseCursor'),
            activeColor: args('activeColor'),
            fillColor: args('fillColor'),
            checkColor: args('checkColor'),
            focusColor: args('focusColor'),
            hoverColor: args('hoverColor'),
            overlayColor: args('overlayColor'),
            splashRadius: args('splashRadius'),
            materialTapTargetSize: args('materialTapTargetSize'),
            visualDensity: args('visualDensity'),
            focusNode: args('focusNode'),
            autofocus: args('autofocus'),
            shape: args('shape'),
            side: args('side'),
            isError: args('isError'),
            semanticLabel: args('semanticLabel'),
          ),
        );
}
