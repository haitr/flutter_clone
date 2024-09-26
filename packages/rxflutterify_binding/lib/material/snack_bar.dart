library rxflutterify_binding; // ignore_for_file: no_leading_underscores_for_library_prefixes

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
  SnackBarAction(
    $ $config, {
    _i2.Key? key,
    ui.Color? textColor,
    ui.Color? disabledTextColor,
    ui.Color? backgroundColor,
    ui.Color? disabledBackgroundColor,
    required String label,
    required ui.VoidCallback onPressed,
  }) : super(
          Argument({
            #key: key,
            #textColor: textColor,
            #disabledTextColor: disabledTextColor,
            #backgroundColor: backgroundColor,
            #disabledBackgroundColor: disabledBackgroundColor,
            #label: label,
            #onPressed: onPressed,
          }),
          builder: (args) => _i1.SnackBarAction(
            key: args(#key),
            textColor: args(#textColor),
            disabledTextColor: args(#disabledTextColor),
            backgroundColor: args(#backgroundColor),
            disabledBackgroundColor: args(#disabledBackgroundColor),
            label: args(#label),
            onPressed: args(#onPressed),
          ),
        );
}

final class SnackBar extends Wrapper {
  @Goto(_i1.SnackBar.new)
  SnackBar(
    $ $config, {
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
  }) : super(
          Argument({
            #key: key,
            #content: content,
            #backgroundColor: backgroundColor,
            #elevation: elevation,
            #margin: margin,
            #padding: padding,
            #width: width,
            #shape: shape,
            #hitTestBehavior: hitTestBehavior,
            #behavior: behavior,
            #action: action,
            #actionOverflowThreshold: actionOverflowThreshold,
            #showCloseIcon: showCloseIcon,
            #closeIconColor: closeIconColor,
            #duration: duration,
            #animation: animation,
            #onVisible: onVisible,
            #dismissDirection: dismissDirection,
            #clipBehavior: clipBehavior,
          }),
          builder: (args) => _i1.SnackBar(
            key: args(#key),
            content: args(#content),
            backgroundColor: args(#backgroundColor),
            elevation: args(#elevation),
            margin: args(#margin),
            padding: args(#padding),
            width: args(#width),
            shape: args(#shape),
            hitTestBehavior: args(#hitTestBehavior),
            behavior: args(#behavior),
            action: args(#action),
            actionOverflowThreshold: args(#actionOverflowThreshold),
            showCloseIcon: args(#showCloseIcon),
            closeIconColor: args(#closeIconColor),
            duration: args(#duration),
            animation: args(#animation),
            onVisible: args(#onVisible),
            dismissDirection: args(#dismissDirection),
            clipBehavior: args(#clipBehavior),
          ),
        );
}

const Duration _snackBarDisplayDuration = Duration(milliseconds: 4000);
