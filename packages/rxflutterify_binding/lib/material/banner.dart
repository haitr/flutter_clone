library rxflutterify_binding; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:ui' as ui;

import 'package:flutter/animation.dart' as _i5;
import 'package:flutter/foundation.dart' as _i2;
import 'package:flutter/material.dart' as _i1;
import 'package:flutter/painting.dart' as _i4;
import 'package:flutter/widgets.dart' as _i3;

import '../wrapper.dart';

final class MaterialBanner extends Wrapper {
  @Goto(_i1.MaterialBanner.new)
  MaterialBanner(
    $ $config, {
    _i2.Key? key,
    required _i3.Widget content,
    _i4.TextStyle? contentTextStyle,
    required List<_i3.Widget> actions,
    double? elevation,
    _i3.Widget? leading,
    ui.Color? backgroundColor,
    ui.Color? surfaceTintColor,
    ui.Color? shadowColor,
    ui.Color? dividerColor,
    _i4.EdgeInsetsGeometry? padding,
    _i4.EdgeInsetsGeometry? margin,
    _i4.EdgeInsetsGeometry? leadingPadding,
    bool forceActionsBelow = false,
    _i3.OverflowBarAlignment overflowAlignment = _i3.OverflowBarAlignment.end,
    _i5.Animation<double>? animation,
    ui.VoidCallback? onVisible,
  }) : super(
          Argument({
            #key: key,
            #content: content,
            #contentTextStyle: contentTextStyle,
            #actions: actions,
            #elevation: elevation,
            #leading: leading,
            #backgroundColor: backgroundColor,
            #surfaceTintColor: surfaceTintColor,
            #shadowColor: shadowColor,
            #dividerColor: dividerColor,
            #padding: padding,
            #margin: margin,
            #leadingPadding: leadingPadding,
            #forceActionsBelow: forceActionsBelow,
            #overflowAlignment: overflowAlignment,
            #animation: animation,
            #onVisible: onVisible,
          }),
          builder: (args) => _i1.MaterialBanner(
            key: args(#key),
            content: args(#content),
            contentTextStyle: args(#contentTextStyle),
            actions: args(#actions),
            elevation: args(#elevation),
            leading: args(#leading),
            backgroundColor: args(#backgroundColor),
            surfaceTintColor: args(#surfaceTintColor),
            shadowColor: args(#shadowColor),
            dividerColor: args(#dividerColor),
            padding: args(#padding),
            margin: args(#margin),
            leadingPadding: args(#leadingPadding),
            forceActionsBelow: args(#forceActionsBelow),
            overflowAlignment: args(#overflowAlignment),
            animation: args(#animation),
            onVisible: args(#onVisible),
          ),
        );
}
