library rxflutterify; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:ui' as ui;

import 'package:flutter/animation.dart' as _i3;
import 'package:flutter/foundation.dart' as _i2;
import 'package:flutter/material.dart' as _i1;
import 'package:flutter/painting.dart' as _i4;

import '../wrapper.dart';

final class CircularProgressIndicator extends Wrapper {
  @Goto(_i1.CircularProgressIndicator.new)
  CircularProgressIndicator(
    $ $config, {
    _i2.Key? key,
    double? value,
    ui.Color? backgroundColor,
    ui.Color? color,
    _i3.Animation<ui.Color?>? valueColor,
    double strokeWidth = 4.0,
    double strokeAlign = _i1.CircularProgressIndicator.strokeAlignCenter,
    String? semanticsLabel,
    String? semanticsValue,
    ui.StrokeCap? strokeCap,
  }) : super(
          Argument({
            #key: key,
            #value: value,
            #backgroundColor: backgroundColor,
            #color: color,
            #valueColor: valueColor,
            #strokeWidth: strokeWidth,
            #strokeAlign: strokeAlign,
            #semanticsLabel: semanticsLabel,
            #semanticsValue: semanticsValue,
            #strokeCap: strokeCap,
          }),
          builder: (args) => _i1.CircularProgressIndicator(
            key: args(#key),
            value: args(#value),
            backgroundColor: args(#backgroundColor),
            color: args(#color),
            valueColor: args(#valueColor),
            strokeWidth: args(#strokeWidth),
            strokeAlign: args(#strokeAlign),
            semanticsLabel: args(#semanticsLabel),
            semanticsValue: args(#semanticsValue),
            strokeCap: args(#strokeCap),
          ),
        );

  @Goto(_i1.CircularProgressIndicator.adaptive)
  CircularProgressIndicator.adaptive(
    $ $config, {
    _i2.Key? key,
    double? value,
    ui.Color? backgroundColor,
    _i3.Animation<ui.Color?>? valueColor,
    double strokeWidth = 4.0,
    String? semanticsLabel,
    String? semanticsValue,
    ui.StrokeCap? strokeCap,
    double strokeAlign = _i1.CircularProgressIndicator.strokeAlignCenter,
  }) : super(
          Argument({
            #key: key,
            #value: value,
            #backgroundColor: backgroundColor,
            #valueColor: valueColor,
            #strokeWidth: strokeWidth,
            #semanticsLabel: semanticsLabel,
            #semanticsValue: semanticsValue,
            #strokeCap: strokeCap,
            #strokeAlign: strokeAlign,
          }),
          builder: (args) => _i1.CircularProgressIndicator.adaptive(
            key: args(#key),
            value: args(#value),
            backgroundColor: args(#backgroundColor),
            valueColor: args(#valueColor),
            strokeWidth: args(#strokeWidth),
            semanticsLabel: args(#semanticsLabel),
            semanticsValue: args(#semanticsValue),
            strokeCap: args(#strokeCap),
            strokeAlign: args(#strokeAlign),
          ),
        );
}

final class RefreshProgressIndicator extends Wrapper {
  @Goto(_i1.RefreshProgressIndicator.new)
  RefreshProgressIndicator(
    $ $config, {
    _i2.Key? key,
    double? value,
    ui.Color? backgroundColor,
    ui.Color? color,
    _i3.Animation<ui.Color?>? valueColor,
    double strokeWidth = _i1.RefreshProgressIndicator.defaultStrokeWidth,
    double strokeAlign = _i1.CircularProgressIndicator.strokeAlignCenter,
    String? semanticsLabel,
    String? semanticsValue,
    ui.StrokeCap? strokeCap,
    double elevation = 2.0,
    _i4.EdgeInsetsGeometry indicatorMargin = const _i4.EdgeInsets.all(4.0),
    _i4.EdgeInsetsGeometry indicatorPadding = const _i4.EdgeInsets.all(12.0),
  }) : super(
          Argument({
            #key: key,
            #value: value,
            #backgroundColor: backgroundColor,
            #color: color,
            #valueColor: valueColor,
            #strokeWidth: strokeWidth,
            #strokeAlign: strokeAlign,
            #semanticsLabel: semanticsLabel,
            #semanticsValue: semanticsValue,
            #strokeCap: strokeCap,
            #elevation: elevation,
            #indicatorMargin: indicatorMargin,
            #indicatorPadding: indicatorPadding,
          }),
          builder: (args) => _i1.RefreshProgressIndicator(
            key: args(#key),
            value: args(#value),
            backgroundColor: args(#backgroundColor),
            color: args(#color),
            valueColor: args(#valueColor),
            strokeWidth: args(#strokeWidth),
            strokeAlign: args(#strokeAlign),
            semanticsLabel: args(#semanticsLabel),
            semanticsValue: args(#semanticsValue),
            strokeCap: args(#strokeCap),
            elevation: args(#elevation),
            indicatorMargin: args(#indicatorMargin),
            indicatorPadding: args(#indicatorPadding),
          ),
        );
}

final class LinearProgressIndicator extends Wrapper {
  @Goto(_i1.LinearProgressIndicator.new)
  LinearProgressIndicator(
    $ $config, {
    _i2.Key? key,
    double? value,
    ui.Color? backgroundColor,
    ui.Color? color,
    _i3.Animation<ui.Color?>? valueColor,
    double? minHeight,
    String? semanticsLabel,
    String? semanticsValue,
    _i4.BorderRadiusGeometry borderRadius = _i4.BorderRadius.zero,
  }) : super(
          Argument({
            #key: key,
            #value: value,
            #backgroundColor: backgroundColor,
            #color: color,
            #valueColor: valueColor,
            #minHeight: minHeight,
            #semanticsLabel: semanticsLabel,
            #semanticsValue: semanticsValue,
            #borderRadius: borderRadius,
          }),
          builder: (args) => _i1.LinearProgressIndicator(
            key: args(#key),
            value: args(#value),
            backgroundColor: args(#backgroundColor),
            color: args(#color),
            valueColor: args(#valueColor),
            minHeight: args(#minHeight),
            semanticsLabel: args(#semanticsLabel),
            semanticsValue: args(#semanticsValue),
            borderRadius: args(#borderRadius),
          ),
        );
}
