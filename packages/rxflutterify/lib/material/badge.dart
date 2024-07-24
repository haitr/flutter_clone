library rxflutterify; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:ui' as ui;

import 'package:flutter/foundation.dart' as _i2;
import 'package:flutter/material.dart' as _i1;
import 'package:flutter/painting.dart' as _i3;
import 'package:flutter/widgets.dart' as _i4;

import '../wrapper.dart';

final class Badge extends Wrapper {
  @Goto(_i1.Badge.new)
  Badge(
    $ $config, {
    _i2.Key? key,
    ui.Color? backgroundColor,
    ui.Color? textColor,
    double? smallSize,
    double? largeSize,
    _i3.TextStyle? textStyle,
    _i3.EdgeInsetsGeometry? padding,
    _i3.AlignmentGeometry? alignment,
    ui.Offset? offset,
    _i4.Widget? label,
    bool isLabelVisible = true,
    _i4.Widget? child,
  }) : super(
          Argument({
            #key: key,
            #backgroundColor: backgroundColor,
            #textColor: textColor,
            #smallSize: smallSize,
            #largeSize: largeSize,
            #textStyle: textStyle,
            #padding: padding,
            #alignment: alignment,
            #offset: offset,
            #label: label,
            #isLabelVisible: isLabelVisible,
            #child: child,
          }),
          builder: (args) => _i1.Badge(
            key: args(#key),
            backgroundColor: args(#backgroundColor),
            textColor: args(#textColor),
            smallSize: args(#smallSize),
            largeSize: args(#largeSize),
            textStyle: args(#textStyle),
            padding: args(#padding),
            alignment: args(#alignment),
            offset: args(#offset),
            label: args(#label),
            isLabelVisible: args(#isLabelVisible),
            child: args(#child),
          ),
        );

  @Goto(_i1.Badge.count)
  Badge.count(
    $ $config, {
    _i2.Key? key,
    ui.Color? backgroundColor,
    ui.Color? textColor,
    double? smallSize,
    double? largeSize,
    _i3.TextStyle? textStyle,
    _i3.EdgeInsetsGeometry? padding,
    _i3.AlignmentGeometry? alignment,
    ui.Offset? offset,
    required int count,
    bool isLabelVisible = true,
    _i4.Widget? child,
  }) : super(
          Argument({
            #key: key,
            #backgroundColor: backgroundColor,
            #textColor: textColor,
            #smallSize: smallSize,
            #largeSize: largeSize,
            #textStyle: textStyle,
            #padding: padding,
            #alignment: alignment,
            #offset: offset,
            #count: count,
            #isLabelVisible: isLabelVisible,
            #child: child,
          }),
          builder: (args) => _i1.Badge.count(
            key: args(#key),
            backgroundColor: args(#backgroundColor),
            textColor: args(#textColor),
            smallSize: args(#smallSize),
            largeSize: args(#largeSize),
            textStyle: args(#textStyle),
            padding: args(#padding),
            alignment: args(#alignment),
            offset: args(#offset),
            count: args(#count),
            isLabelVisible: args(#isLabelVisible),
            child: args(#child),
          ),
        );
}
