library rxflutter; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:ui' as ui;

import 'package:flutter/cupertino.dart' as _i1;
import 'package:flutter/foundation.dart' as _i2;
import 'package:flutter/painting.dart' as _i4;
import 'package:flutter/widgets.dart' as _i3;

import '../wrapper.dart';

final class CupertinoSlidingSegmentedControl<T> extends Wrapper {
  @Goto(_i1.CupertinoSlidingSegmentedControl.new)
  CupertinoSlidingSegmentedControl({
    _i2.Key? key,
    required Map<T, _i3.Widget> children,
    required _i2.ValueChanged<T?> onValueChanged,
    T? groupValue,
    ui.Color thumbColor = _kThumbColor,
    _i4.EdgeInsetsGeometry padding = _kHorizontalItemPadding,
    ui.Color backgroundColor = _i1.CupertinoColors.tertiarySystemFill,
    // Associate with key
    Stream<_i2.Key?>? $key,
    // Associate with children
    Stream<Map<T, _i3.Widget>>? $children,
    // Associate with onValueChanged
    Stream<_i2.ValueChanged<T?>>? $onValueChanged,
    // Associate with groupValue
    Stream<T?>? $groupValue,
    // Associate with thumbColor
    Stream<ui.Color>? $thumbColor,
    // Associate with padding
    Stream<_i4.EdgeInsetsGeometry>? $padding,
    // Associate with backgroundColor
    Stream<ui.Color>? $backgroundColor,
  }) : super(
          Argument(
            {
              'key': key,
              'children': children,
              'onValueChanged': onValueChanged,
              'groupValue': groupValue,
              'thumbColor': thumbColor,
              'padding': padding,
              'backgroundColor': backgroundColor,
            },
            stream: {
              'key': $key,
              'children': $children,
              'onValueChanged': $onValueChanged,
              'groupValue': $groupValue,
              'thumbColor': $thumbColor,
              'padding': $padding,
              'backgroundColor': $backgroundColor,
            },
          ),
          builder: (args) => _i1.CupertinoSlidingSegmentedControl<T>(
            key: args('key'),
            children: args('children'),
            onValueChanged: args('onValueChanged'),
            groupValue: args('groupValue'),
            thumbColor: args('thumbColor'),
            padding: args('padding'),
            backgroundColor: args('backgroundColor'),
          ),
        );
}

const _i1.CupertinoDynamicColor _kThumbColor = _i1.CupertinoDynamicColor.withBrightness(
  color: ui.Color(0xFFFFFFFF),
  darkColor: ui.Color(0xFF636366),
);
const _i4.EdgeInsetsGeometry _kHorizontalItemPadding = _i4.EdgeInsets.symmetric(horizontal: 16.0);
