library rxflutter; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:ui' as ui;

import 'package:flutter/foundation.dart' as _i2;
import 'package:flutter/material.dart' as _i1;
import 'package:flutter/services.dart' as _i4;
import 'package:flutter/widgets.dart' as _i3;

import '../wrapper.dart';

final class Slider extends Wrapper {
  @Goto(_i1.Slider.new)
  Slider({
    _i2.Key? key,
    required double value,
    double? secondaryTrackValue,
    required _i2.ValueChanged<double>? onChanged,
    _i2.ValueChanged<double>? onChangeStart,
    _i2.ValueChanged<double>? onChangeEnd,
    double min = 0.0,
    double max = 1.0,
    int? divisions,
    String? label,
    ui.Color? activeColor,
    ui.Color? inactiveColor,
    ui.Color? secondaryActiveColor,
    ui.Color? thumbColor,
    _i3.WidgetStateProperty<ui.Color?>? overlayColor,
    _i4.MouseCursor? mouseCursor,
    _i1.SemanticFormatterCallback? semanticFormatterCallback,
    _i3.FocusNode? focusNode,
    bool autofocus = false,
    _i1.SliderInteraction? allowedInteraction,
    // Associate with key
    Stream<_i2.Key?>? $key,
    // Associate with value
    Stream<double>? $value,
    // Associate with secondaryTrackValue
    Stream<double?>? $secondaryTrackValue,
    // Associate with onChanged
    Stream<_i2.ValueChanged<double>?>? $onChanged,
    // Associate with onChangeStart
    Stream<_i2.ValueChanged<double>?>? $onChangeStart,
    // Associate with onChangeEnd
    Stream<_i2.ValueChanged<double>?>? $onChangeEnd,
    // Associate with min
    Stream<double>? $min,
    // Associate with max
    Stream<double>? $max,
    // Associate with divisions
    Stream<int?>? $divisions,
    // Associate with label
    Stream<String?>? $label,
    // Associate with activeColor
    Stream<ui.Color?>? $activeColor,
    // Associate with inactiveColor
    Stream<ui.Color?>? $inactiveColor,
    // Associate with secondaryActiveColor
    Stream<ui.Color?>? $secondaryActiveColor,
    // Associate with thumbColor
    Stream<ui.Color?>? $thumbColor,
    // Associate with overlayColor
    Stream<_i3.WidgetStateProperty<ui.Color?>?>? $overlayColor,
    // Associate with mouseCursor
    Stream<_i4.MouseCursor?>? $mouseCursor,
    // Associate with semanticFormatterCallback
    Stream<_i1.SemanticFormatterCallback?>? $semanticFormatterCallback,
    // Associate with focusNode
    Stream<_i3.FocusNode?>? $focusNode,
    // Associate with autofocus
    Stream<bool>? $autofocus,
    // Associate with allowedInteraction
    Stream<_i1.SliderInteraction?>? $allowedInteraction,
  }) : super(
          Argument(
            {
              'key': key,
              'value': value,
              'secondaryTrackValue': secondaryTrackValue,
              'onChanged': onChanged,
              'onChangeStart': onChangeStart,
              'onChangeEnd': onChangeEnd,
              'min': min,
              'max': max,
              'divisions': divisions,
              'label': label,
              'activeColor': activeColor,
              'inactiveColor': inactiveColor,
              'secondaryActiveColor': secondaryActiveColor,
              'thumbColor': thumbColor,
              'overlayColor': overlayColor,
              'mouseCursor': mouseCursor,
              'semanticFormatterCallback': semanticFormatterCallback,
              'focusNode': focusNode,
              'autofocus': autofocus,
              'allowedInteraction': allowedInteraction,
            },
            stream: {
              'key': $key,
              'value': $value,
              'secondaryTrackValue': $secondaryTrackValue,
              'onChanged': $onChanged,
              'onChangeStart': $onChangeStart,
              'onChangeEnd': $onChangeEnd,
              'min': $min,
              'max': $max,
              'divisions': $divisions,
              'label': $label,
              'activeColor': $activeColor,
              'inactiveColor': $inactiveColor,
              'secondaryActiveColor': $secondaryActiveColor,
              'thumbColor': $thumbColor,
              'overlayColor': $overlayColor,
              'mouseCursor': $mouseCursor,
              'semanticFormatterCallback': $semanticFormatterCallback,
              'focusNode': $focusNode,
              'autofocus': $autofocus,
              'allowedInteraction': $allowedInteraction,
            },
          ),
          builder: (args) => _i1.Slider(
            key: args('key'),
            value: args('value'),
            secondaryTrackValue: args('secondaryTrackValue'),
            onChanged: args('onChanged'),
            onChangeStart: args('onChangeStart'),
            onChangeEnd: args('onChangeEnd'),
            min: args('min'),
            max: args('max'),
            divisions: args('divisions'),
            label: args('label'),
            activeColor: args('activeColor'),
            inactiveColor: args('inactiveColor'),
            secondaryActiveColor: args('secondaryActiveColor'),
            thumbColor: args('thumbColor'),
            overlayColor: args('overlayColor'),
            mouseCursor: args('mouseCursor'),
            semanticFormatterCallback: args('semanticFormatterCallback'),
            focusNode: args('focusNode'),
            autofocus: args('autofocus'),
            allowedInteraction: args('allowedInteraction'),
          ),
        );

  @Goto(_i1.Slider.adaptive)
  Slider.adaptive({
    _i2.Key? key,
    required double value,
    double? secondaryTrackValue,
    required _i2.ValueChanged<double>? onChanged,
    _i2.ValueChanged<double>? onChangeStart,
    _i2.ValueChanged<double>? onChangeEnd,
    double min = 0.0,
    double max = 1.0,
    int? divisions,
    String? label,
    _i4.MouseCursor? mouseCursor,
    ui.Color? activeColor,
    ui.Color? inactiveColor,
    ui.Color? secondaryActiveColor,
    ui.Color? thumbColor,
    _i3.WidgetStateProperty<ui.Color?>? overlayColor,
    _i1.SemanticFormatterCallback? semanticFormatterCallback,
    _i3.FocusNode? focusNode,
    bool autofocus = false,
    _i1.SliderInteraction? allowedInteraction,
    // Associate with key
    Stream<_i2.Key?>? $key,
    // Associate with value
    Stream<double>? $value,
    // Associate with secondaryTrackValue
    Stream<double?>? $secondaryTrackValue,
    // Associate with onChanged
    Stream<_i2.ValueChanged<double>?>? $onChanged,
    // Associate with onChangeStart
    Stream<_i2.ValueChanged<double>?>? $onChangeStart,
    // Associate with onChangeEnd
    Stream<_i2.ValueChanged<double>?>? $onChangeEnd,
    // Associate with min
    Stream<double>? $min,
    // Associate with max
    Stream<double>? $max,
    // Associate with divisions
    Stream<int?>? $divisions,
    // Associate with label
    Stream<String?>? $label,
    // Associate with mouseCursor
    Stream<_i4.MouseCursor?>? $mouseCursor,
    // Associate with activeColor
    Stream<ui.Color?>? $activeColor,
    // Associate with inactiveColor
    Stream<ui.Color?>? $inactiveColor,
    // Associate with secondaryActiveColor
    Stream<ui.Color?>? $secondaryActiveColor,
    // Associate with thumbColor
    Stream<ui.Color?>? $thumbColor,
    // Associate with overlayColor
    Stream<_i3.WidgetStateProperty<ui.Color?>?>? $overlayColor,
    // Associate with semanticFormatterCallback
    Stream<_i1.SemanticFormatterCallback?>? $semanticFormatterCallback,
    // Associate with focusNode
    Stream<_i3.FocusNode?>? $focusNode,
    // Associate with autofocus
    Stream<bool>? $autofocus,
    // Associate with allowedInteraction
    Stream<_i1.SliderInteraction?>? $allowedInteraction,
  }) : super(
          Argument(
            {
              'key': key,
              'value': value,
              'secondaryTrackValue': secondaryTrackValue,
              'onChanged': onChanged,
              'onChangeStart': onChangeStart,
              'onChangeEnd': onChangeEnd,
              'min': min,
              'max': max,
              'divisions': divisions,
              'label': label,
              'mouseCursor': mouseCursor,
              'activeColor': activeColor,
              'inactiveColor': inactiveColor,
              'secondaryActiveColor': secondaryActiveColor,
              'thumbColor': thumbColor,
              'overlayColor': overlayColor,
              'semanticFormatterCallback': semanticFormatterCallback,
              'focusNode': focusNode,
              'autofocus': autofocus,
              'allowedInteraction': allowedInteraction,
            },
            stream: {
              'key': $key,
              'value': $value,
              'secondaryTrackValue': $secondaryTrackValue,
              'onChanged': $onChanged,
              'onChangeStart': $onChangeStart,
              'onChangeEnd': $onChangeEnd,
              'min': $min,
              'max': $max,
              'divisions': $divisions,
              'label': $label,
              'mouseCursor': $mouseCursor,
              'activeColor': $activeColor,
              'inactiveColor': $inactiveColor,
              'secondaryActiveColor': $secondaryActiveColor,
              'thumbColor': $thumbColor,
              'overlayColor': $overlayColor,
              'semanticFormatterCallback': $semanticFormatterCallback,
              'focusNode': $focusNode,
              'autofocus': $autofocus,
              'allowedInteraction': $allowedInteraction,
            },
          ),
          builder: (args) => _i1.Slider.adaptive(
            key: args('key'),
            value: args('value'),
            secondaryTrackValue: args('secondaryTrackValue'),
            onChanged: args('onChanged'),
            onChangeStart: args('onChangeStart'),
            onChangeEnd: args('onChangeEnd'),
            min: args('min'),
            max: args('max'),
            divisions: args('divisions'),
            label: args('label'),
            mouseCursor: args('mouseCursor'),
            activeColor: args('activeColor'),
            inactiveColor: args('inactiveColor'),
            secondaryActiveColor: args('secondaryActiveColor'),
            thumbColor: args('thumbColor'),
            overlayColor: args('overlayColor'),
            semanticFormatterCallback: args('semanticFormatterCallback'),
            focusNode: args('focusNode'),
            autofocus: args('autofocus'),
            allowedInteraction: args('allowedInteraction'),
          ),
        );
}
