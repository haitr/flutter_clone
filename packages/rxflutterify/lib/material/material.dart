library rxflutterify; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:ui' as ui;

import 'package:flutter/foundation.dart' as _i2;
import 'package:flutter/material.dart' as _i1;
import 'package:flutter/painting.dart' as _i3;
import 'package:flutter/widgets.dart' as _i4;

import '../wrapper.dart';

final class Material extends Wrapper {
  @Goto(_i1.Material.new)
  Material({
    _i2.Key? key,
    _i1.MaterialType type = _i1.MaterialType.canvas,
    double elevation = 0.0,
    ui.Color? color,
    ui.Color? shadowColor,
    ui.Color? surfaceTintColor,
    _i3.TextStyle? textStyle,
    _i3.BorderRadiusGeometry? borderRadius,
    _i3.ShapeBorder? shape,
    bool borderOnForeground = true,
    ui.Clip clipBehavior = ui.Clip.none,
    Duration animationDuration = _i1.kThemeChangeDuration,
    _i4.Widget? child,
    // Associate with key
    Stream<_i2.Key?>? $key,
    // Associate with type
    Stream<_i1.MaterialType>? $type,
    // Associate with elevation
    Stream<double>? $elevation,
    // Associate with color
    Stream<ui.Color?>? $color,
    // Associate with shadowColor
    Stream<ui.Color?>? $shadowColor,
    // Associate with surfaceTintColor
    Stream<ui.Color?>? $surfaceTintColor,
    // Associate with textStyle
    Stream<_i3.TextStyle?>? $textStyle,
    // Associate with borderRadius
    Stream<_i3.BorderRadiusGeometry?>? $borderRadius,
    // Associate with shape
    Stream<_i3.ShapeBorder?>? $shape,
    // Associate with borderOnForeground
    Stream<bool>? $borderOnForeground,
    // Associate with clipBehavior
    Stream<ui.Clip>? $clipBehavior,
    // Associate with animationDuration
    Stream<Duration>? $animationDuration,
    // Associate with child
    Stream<_i4.Widget?>? $child,
  }) : super(
          Argument(
            {
              'key': key,
              'type': type,
              'elevation': elevation,
              'color': color,
              'shadowColor': shadowColor,
              'surfaceTintColor': surfaceTintColor,
              'textStyle': textStyle,
              'borderRadius': borderRadius,
              'shape': shape,
              'borderOnForeground': borderOnForeground,
              'clipBehavior': clipBehavior,
              'animationDuration': animationDuration,
              'child': child,
            },
            stream: {
              'key': $key,
              'type': $type,
              'elevation': $elevation,
              'color': $color,
              'shadowColor': $shadowColor,
              'surfaceTintColor': $surfaceTintColor,
              'textStyle': $textStyle,
              'borderRadius': $borderRadius,
              'shape': $shape,
              'borderOnForeground': $borderOnForeground,
              'clipBehavior': $clipBehavior,
              'animationDuration': $animationDuration,
              'child': $child,
            },
          ),
          builder: (args) => _i1.Material(
            key: args('key'),
            type: args('type'),
            elevation: args('elevation'),
            color: args('color'),
            shadowColor: args('shadowColor'),
            surfaceTintColor: args('surfaceTintColor'),
            textStyle: args('textStyle'),
            borderRadius: args('borderRadius'),
            shape: args('shape'),
            borderOnForeground: args('borderOnForeground'),
            clipBehavior: args('clipBehavior'),
            animationDuration: args('animationDuration'),
            child: args('child'),
          ),
        );
}
