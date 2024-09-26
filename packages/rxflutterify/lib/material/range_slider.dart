library rxflutterify; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:ui' as ui;

import 'package:flutter/foundation.dart' as _i2;
import 'package:flutter/material.dart' as _i1;
import 'package:flutter/services.dart' as _i4;
import 'package:flutter/widgets.dart' as _i3;

import '../wrapper.dart';

final class RangeSlider extends Wrapper {
  @Goto(_i1.RangeSlider.new)
  RangeSlider({
    _i2.Key? key,
    required _i1.RangeValues values,
    required _i2.ValueChanged<_i1.RangeValues>? onChanged,
    _i2.ValueChanged<_i1.RangeValues>? onChangeStart,
    _i2.ValueChanged<_i1.RangeValues>? onChangeEnd,
    double min = 0.0,
    double max = 1.0,
    int? divisions,
    _i1.RangeLabels? labels,
    ui.Color? activeColor,
    ui.Color? inactiveColor,
    _i3.WidgetStateProperty<ui.Color?>? overlayColor,
    _i3.WidgetStateProperty<_i4.MouseCursor?>? mouseCursor,
    _i1.SemanticFormatterCallback? semanticFormatterCallback,
    // Associate with key
    Stream<_i2.Key?>? $key,
    // Associate with values
    Stream<_i1.RangeValues>? $values,
    // Associate with onChanged
    Stream<_i2.ValueChanged<_i1.RangeValues>?>? $onChanged,
    // Associate with onChangeStart
    Stream<_i2.ValueChanged<_i1.RangeValues>?>? $onChangeStart,
    // Associate with onChangeEnd
    Stream<_i2.ValueChanged<_i1.RangeValues>?>? $onChangeEnd,
    // Associate with min
    Stream<double>? $min,
    // Associate with max
    Stream<double>? $max,
    // Associate with divisions
    Stream<int?>? $divisions,
    // Associate with labels
    Stream<_i1.RangeLabels?>? $labels,
    // Associate with activeColor
    Stream<ui.Color?>? $activeColor,
    // Associate with inactiveColor
    Stream<ui.Color?>? $inactiveColor,
    // Associate with overlayColor
    Stream<_i3.WidgetStateProperty<ui.Color?>?>? $overlayColor,
    // Associate with mouseCursor
    Stream<_i3.WidgetStateProperty<_i4.MouseCursor?>?>? $mouseCursor,
    // Associate with semanticFormatterCallback
    Stream<_i1.SemanticFormatterCallback?>? $semanticFormatterCallback,
  }) : super(
          Argument(
            {
              'key': key,
              'values': values,
              'onChanged': onChanged,
              'onChangeStart': onChangeStart,
              'onChangeEnd': onChangeEnd,
              'min': min,
              'max': max,
              'divisions': divisions,
              'labels': labels,
              'activeColor': activeColor,
              'inactiveColor': inactiveColor,
              'overlayColor': overlayColor,
              'mouseCursor': mouseCursor,
              'semanticFormatterCallback': semanticFormatterCallback,
            },
            stream: {
              'key': $key,
              'values': $values,
              'onChanged': $onChanged,
              'onChangeStart': $onChangeStart,
              'onChangeEnd': $onChangeEnd,
              'min': $min,
              'max': $max,
              'divisions': $divisions,
              'labels': $labels,
              'activeColor': $activeColor,
              'inactiveColor': $inactiveColor,
              'overlayColor': $overlayColor,
              'mouseCursor': $mouseCursor,
              'semanticFormatterCallback': $semanticFormatterCallback,
            },
          ),
          builder: (args) => _i1.RangeSlider(
            key: args('key'),
            values: args('values'),
            onChanged: args('onChanged'),
            onChangeStart: args('onChangeStart'),
            onChangeEnd: args('onChangeEnd'),
            min: args('min'),
            max: args('max'),
            divisions: args('divisions'),
            labels: args('labels'),
            activeColor: args('activeColor'),
            inactiveColor: args('inactiveColor'),
            overlayColor: args('overlayColor'),
            mouseCursor: args('mouseCursor'),
            semanticFormatterCallback: args('semanticFormatterCallback'),
          ),
        );
}
