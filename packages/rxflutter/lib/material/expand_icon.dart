library rxflutter; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:ui' as ui;

import 'package:flutter/foundation.dart' as _i2;
import 'package:flutter/material.dart' as _i1;
import 'package:flutter/painting.dart' as _i3;

import '../wrapper.dart';

final class ExpandIcon extends Wrapper {
  @Goto(_i1.ExpandIcon.new)
  ExpandIcon({
    _i2.Key? key,
    bool isExpanded = false,
    double size = 24.0,
    required _i2.ValueChanged<bool>? onPressed,
    _i3.EdgeInsetsGeometry padding = const _i3.EdgeInsets.all(8.0),
    ui.Color? color,
    ui.Color? disabledColor,
    ui.Color? expandedColor,
    // Associate with key
    Stream<_i2.Key?>? $key,
    // Associate with isExpanded
    Stream<bool>? $isExpanded,
    // Associate with size
    Stream<double>? $size,
    // Associate with onPressed
    Stream<_i2.ValueChanged<bool>?>? $onPressed,
    // Associate with padding
    Stream<_i3.EdgeInsetsGeometry>? $padding,
    // Associate with color
    Stream<ui.Color?>? $color,
    // Associate with disabledColor
    Stream<ui.Color?>? $disabledColor,
    // Associate with expandedColor
    Stream<ui.Color?>? $expandedColor,
  }) : super(
          Argument(
            {
              'key': key,
              'isExpanded': isExpanded,
              'size': size,
              'onPressed': onPressed,
              'padding': padding,
              'color': color,
              'disabledColor': disabledColor,
              'expandedColor': expandedColor,
            },
            stream: {
              'key': $key,
              'isExpanded': $isExpanded,
              'size': $size,
              'onPressed': $onPressed,
              'padding': $padding,
              'color': $color,
              'disabledColor': $disabledColor,
              'expandedColor': $expandedColor,
            },
          ),
          builder: (args) => _i1.ExpandIcon(
            key: args('key'),
            isExpanded: args('isExpanded'),
            size: args('size'),
            onPressed: args('onPressed'),
            padding: args('padding'),
            color: args('color'),
            disabledColor: args('disabledColor'),
            expandedColor: args('expandedColor'),
          ),
        );
}
