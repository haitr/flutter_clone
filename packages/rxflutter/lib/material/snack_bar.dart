library rxflutter; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:ui' as ui;

import 'package:flutter/animation.dart' as _i6;
import 'package:flutter/foundation.dart' as _i2;
import 'package:flutter/material.dart' as _i1;
import 'package:flutter/painting.dart' as _i4;
import 'package:flutter/rendering.dart' as _i5;
import 'package:flutter/widgets.dart' as _i3;

import '../wrapper.dart';

final class SnackBarAction extends Wrapper {
  @Goto(_i1.SnackBarAction.new)
  SnackBarAction({
    _i2.Key? key,
    ui.Color? textColor,
    ui.Color? disabledTextColor,
    ui.Color? backgroundColor,
    ui.Color? disabledBackgroundColor,
    required String label,
    required ui.VoidCallback onPressed,
    // Associate with key
    Stream<_i2.Key?>? $key,
    // Associate with textColor
    Stream<ui.Color?>? $textColor,
    // Associate with disabledTextColor
    Stream<ui.Color?>? $disabledTextColor,
    // Associate with backgroundColor
    Stream<ui.Color?>? $backgroundColor,
    // Associate with disabledBackgroundColor
    Stream<ui.Color?>? $disabledBackgroundColor,
    // Associate with label
    Stream<String>? $label,
    // Associate with onPressed
    Stream<ui.VoidCallback>? $onPressed,
  }) : super(
          Argument(
            {
              'key': key,
              'textColor': textColor,
              'disabledTextColor': disabledTextColor,
              'backgroundColor': backgroundColor,
              'disabledBackgroundColor': disabledBackgroundColor,
              'label': label,
              'onPressed': onPressed,
            },
            stream: {
              'key': $key,
              'textColor': $textColor,
              'disabledTextColor': $disabledTextColor,
              'backgroundColor': $backgroundColor,
              'disabledBackgroundColor': $disabledBackgroundColor,
              'label': $label,
              'onPressed': $onPressed,
            },
          ),
          builder: (args) => _i1.SnackBarAction(
            key: args('key'),
            textColor: args('textColor'),
            disabledTextColor: args('disabledTextColor'),
            backgroundColor: args('backgroundColor'),
            disabledBackgroundColor: args('disabledBackgroundColor'),
            label: args('label'),
            onPressed: args('onPressed'),
          ),
        );
}

final class SnackBar extends Wrapper {
  @Goto(_i1.SnackBar.new)
  SnackBar({
    _i2.Key? key,
    required _i3.Widget content,
    ui.Color? backgroundColor,
    double? elevation,
    _i4.EdgeInsetsGeometry? margin,
    _i4.EdgeInsetsGeometry? padding,
    double? width,
    _i4.ShapeBorder? shape,
    _i5.HitTestBehavior? hitTestBehavior,
    _i1.SnackBarBehavior? behavior,
    _i1.SnackBarAction? action,
    double? actionOverflowThreshold,
    bool? showCloseIcon,
    ui.Color? closeIconColor,
    Duration duration = _snackBarDisplayDuration,
    _i6.Animation<double>? animation,
    ui.VoidCallback? onVisible,
    _i3.DismissDirection? dismissDirection,
    ui.Clip clipBehavior = ui.Clip.hardEdge,
    // Associate with key
    Stream<_i2.Key?>? $key,
    // Associate with content
    Stream<_i3.Widget>? $content,
    // Associate with backgroundColor
    Stream<ui.Color?>? $backgroundColor,
    // Associate with elevation
    Stream<double?>? $elevation,
    // Associate with margin
    Stream<_i4.EdgeInsetsGeometry?>? $margin,
    // Associate with padding
    Stream<_i4.EdgeInsetsGeometry?>? $padding,
    // Associate with width
    Stream<double?>? $width,
    // Associate with shape
    Stream<_i4.ShapeBorder?>? $shape,
    // Associate with hitTestBehavior
    Stream<_i5.HitTestBehavior?>? $hitTestBehavior,
    // Associate with behavior
    Stream<_i1.SnackBarBehavior?>? $behavior,
    // Associate with action
    Stream<_i1.SnackBarAction?>? $action,
    // Associate with actionOverflowThreshold
    Stream<double?>? $actionOverflowThreshold,
    // Associate with showCloseIcon
    Stream<bool?>? $showCloseIcon,
    // Associate with closeIconColor
    Stream<ui.Color?>? $closeIconColor,
    // Associate with duration
    Stream<Duration>? $duration,
    // Associate with animation
    Stream<_i6.Animation<double>?>? $animation,
    // Associate with onVisible
    Stream<ui.VoidCallback?>? $onVisible,
    // Associate with dismissDirection
    Stream<_i3.DismissDirection?>? $dismissDirection,
    // Associate with clipBehavior
    Stream<ui.Clip>? $clipBehavior,
  }) : super(
          Argument(
            {
              'key': key,
              'content': content,
              'backgroundColor': backgroundColor,
              'elevation': elevation,
              'margin': margin,
              'padding': padding,
              'width': width,
              'shape': shape,
              'hitTestBehavior': hitTestBehavior,
              'behavior': behavior,
              'action': action,
              'actionOverflowThreshold': actionOverflowThreshold,
              'showCloseIcon': showCloseIcon,
              'closeIconColor': closeIconColor,
              'duration': duration,
              'animation': animation,
              'onVisible': onVisible,
              'dismissDirection': dismissDirection,
              'clipBehavior': clipBehavior,
            },
            stream: {
              'key': $key,
              'content': $content,
              'backgroundColor': $backgroundColor,
              'elevation': $elevation,
              'margin': $margin,
              'padding': $padding,
              'width': $width,
              'shape': $shape,
              'hitTestBehavior': $hitTestBehavior,
              'behavior': $behavior,
              'action': $action,
              'actionOverflowThreshold': $actionOverflowThreshold,
              'showCloseIcon': $showCloseIcon,
              'closeIconColor': $closeIconColor,
              'duration': $duration,
              'animation': $animation,
              'onVisible': $onVisible,
              'dismissDirection': $dismissDirection,
              'clipBehavior': $clipBehavior,
            },
          ),
          builder: (args) => _i1.SnackBar(
            key: args('key'),
            content: args('content'),
            backgroundColor: args('backgroundColor'),
            elevation: args('elevation'),
            margin: args('margin'),
            padding: args('padding'),
            width: args('width'),
            shape: args('shape'),
            hitTestBehavior: args('hitTestBehavior'),
            behavior: args('behavior'),
            action: args('action'),
            actionOverflowThreshold: args('actionOverflowThreshold'),
            showCloseIcon: args('showCloseIcon'),
            closeIconColor: args('closeIconColor'),
            duration: args('duration'),
            animation: args('animation'),
            onVisible: args('onVisible'),
            dismissDirection: args('dismissDirection'),
            clipBehavior: args('clipBehavior'),
          ),
        );
}

const Duration _snackBarDisplayDuration = Duration(milliseconds: 4000);
