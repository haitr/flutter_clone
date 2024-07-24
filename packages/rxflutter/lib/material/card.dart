library rxflutter; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:ui' as ui;

import 'package:flutter/foundation.dart' as _i2;
import 'package:flutter/material.dart' as _i1;
import 'package:flutter/painting.dart' as _i3;
import 'package:flutter/widgets.dart' as _i4;

import '../wrapper.dart';

final class Card extends Wrapper {
  @Goto(_i1.Card.new)
  Card({
    _i2.Key? key,
    ui.Color? color,
    ui.Color? shadowColor,
    ui.Color? surfaceTintColor,
    double? elevation,
    _i3.ShapeBorder? shape,
    bool borderOnForeground = true,
    _i3.EdgeInsetsGeometry? margin,
    ui.Clip? clipBehavior,
    _i4.Widget? child,
    bool semanticContainer = true,
    // Associate with key
    Stream<_i2.Key?>? $key,
    // Associate with color
    Stream<ui.Color?>? $color,
    // Associate with shadowColor
    Stream<ui.Color?>? $shadowColor,
    // Associate with surfaceTintColor
    Stream<ui.Color?>? $surfaceTintColor,
    // Associate with elevation
    Stream<double?>? $elevation,
    // Associate with shape
    Stream<_i3.ShapeBorder?>? $shape,
    // Associate with borderOnForeground
    Stream<bool>? $borderOnForeground,
    // Associate with margin
    Stream<_i3.EdgeInsetsGeometry?>? $margin,
    // Associate with clipBehavior
    Stream<ui.Clip?>? $clipBehavior,
    // Associate with child
    Stream<_i4.Widget?>? $child,
    // Associate with semanticContainer
    Stream<bool>? $semanticContainer,
  }) : super(
          Argument(
            {
              'key': key,
              'color': color,
              'shadowColor': shadowColor,
              'surfaceTintColor': surfaceTintColor,
              'elevation': elevation,
              'shape': shape,
              'borderOnForeground': borderOnForeground,
              'margin': margin,
              'clipBehavior': clipBehavior,
              'child': child,
              'semanticContainer': semanticContainer,
            },
            stream: {
              'key': $key,
              'color': $color,
              'shadowColor': $shadowColor,
              'surfaceTintColor': $surfaceTintColor,
              'elevation': $elevation,
              'shape': $shape,
              'borderOnForeground': $borderOnForeground,
              'margin': $margin,
              'clipBehavior': $clipBehavior,
              'child': $child,
              'semanticContainer': $semanticContainer,
            },
          ),
          builder: (args) => _i1.Card(
            key: args('key'),
            color: args('color'),
            shadowColor: args('shadowColor'),
            surfaceTintColor: args('surfaceTintColor'),
            elevation: args('elevation'),
            shape: args('shape'),
            borderOnForeground: args('borderOnForeground'),
            margin: args('margin'),
            clipBehavior: args('clipBehavior'),
            child: args('child'),
            semanticContainer: args('semanticContainer'),
          ),
        );

  @Goto(_i1.Card.filled)
  Card.filled({
    _i2.Key? key,
    ui.Color? color,
    ui.Color? shadowColor,
    ui.Color? surfaceTintColor,
    double? elevation,
    _i3.ShapeBorder? shape,
    bool borderOnForeground = true,
    _i3.EdgeInsetsGeometry? margin,
    ui.Clip? clipBehavior,
    _i4.Widget? child,
    bool semanticContainer = true,
    // Associate with key
    Stream<_i2.Key?>? $key,
    // Associate with color
    Stream<ui.Color?>? $color,
    // Associate with shadowColor
    Stream<ui.Color?>? $shadowColor,
    // Associate with surfaceTintColor
    Stream<ui.Color?>? $surfaceTintColor,
    // Associate with elevation
    Stream<double?>? $elevation,
    // Associate with shape
    Stream<_i3.ShapeBorder?>? $shape,
    // Associate with borderOnForeground
    Stream<bool>? $borderOnForeground,
    // Associate with margin
    Stream<_i3.EdgeInsetsGeometry?>? $margin,
    // Associate with clipBehavior
    Stream<ui.Clip?>? $clipBehavior,
    // Associate with child
    Stream<_i4.Widget?>? $child,
    // Associate with semanticContainer
    Stream<bool>? $semanticContainer,
  }) : super(
          Argument(
            {
              'key': key,
              'color': color,
              'shadowColor': shadowColor,
              'surfaceTintColor': surfaceTintColor,
              'elevation': elevation,
              'shape': shape,
              'borderOnForeground': borderOnForeground,
              'margin': margin,
              'clipBehavior': clipBehavior,
              'child': child,
              'semanticContainer': semanticContainer,
            },
            stream: {
              'key': $key,
              'color': $color,
              'shadowColor': $shadowColor,
              'surfaceTintColor': $surfaceTintColor,
              'elevation': $elevation,
              'shape': $shape,
              'borderOnForeground': $borderOnForeground,
              'margin': $margin,
              'clipBehavior': $clipBehavior,
              'child': $child,
              'semanticContainer': $semanticContainer,
            },
          ),
          builder: (args) => _i1.Card.filled(
            key: args('key'),
            color: args('color'),
            shadowColor: args('shadowColor'),
            surfaceTintColor: args('surfaceTintColor'),
            elevation: args('elevation'),
            shape: args('shape'),
            borderOnForeground: args('borderOnForeground'),
            margin: args('margin'),
            clipBehavior: args('clipBehavior'),
            child: args('child'),
            semanticContainer: args('semanticContainer'),
          ),
        );

  @Goto(_i1.Card.outlined)
  Card.outlined({
    _i2.Key? key,
    ui.Color? color,
    ui.Color? shadowColor,
    ui.Color? surfaceTintColor,
    double? elevation,
    _i3.ShapeBorder? shape,
    bool borderOnForeground = true,
    _i3.EdgeInsetsGeometry? margin,
    ui.Clip? clipBehavior,
    _i4.Widget? child,
    bool semanticContainer = true,
    // Associate with key
    Stream<_i2.Key?>? $key,
    // Associate with color
    Stream<ui.Color?>? $color,
    // Associate with shadowColor
    Stream<ui.Color?>? $shadowColor,
    // Associate with surfaceTintColor
    Stream<ui.Color?>? $surfaceTintColor,
    // Associate with elevation
    Stream<double?>? $elevation,
    // Associate with shape
    Stream<_i3.ShapeBorder?>? $shape,
    // Associate with borderOnForeground
    Stream<bool>? $borderOnForeground,
    // Associate with margin
    Stream<_i3.EdgeInsetsGeometry?>? $margin,
    // Associate with clipBehavior
    Stream<ui.Clip?>? $clipBehavior,
    // Associate with child
    Stream<_i4.Widget?>? $child,
    // Associate with semanticContainer
    Stream<bool>? $semanticContainer,
  }) : super(
          Argument(
            {
              'key': key,
              'color': color,
              'shadowColor': shadowColor,
              'surfaceTintColor': surfaceTintColor,
              'elevation': elevation,
              'shape': shape,
              'borderOnForeground': borderOnForeground,
              'margin': margin,
              'clipBehavior': clipBehavior,
              'child': child,
              'semanticContainer': semanticContainer,
            },
            stream: {
              'key': $key,
              'color': $color,
              'shadowColor': $shadowColor,
              'surfaceTintColor': $surfaceTintColor,
              'elevation': $elevation,
              'shape': $shape,
              'borderOnForeground': $borderOnForeground,
              'margin': $margin,
              'clipBehavior': $clipBehavior,
              'child': $child,
              'semanticContainer': $semanticContainer,
            },
          ),
          builder: (args) => _i1.Card.outlined(
            key: args('key'),
            color: args('color'),
            shadowColor: args('shadowColor'),
            surfaceTintColor: args('surfaceTintColor'),
            elevation: args('elevation'),
            shape: args('shape'),
            borderOnForeground: args('borderOnForeground'),
            margin: args('margin'),
            clipBehavior: args('clipBehavior'),
            child: args('child'),
            semanticContainer: args('semanticContainer'),
          ),
        );
}
