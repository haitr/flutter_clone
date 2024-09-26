library rxflutterify; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:ui' as ui;

import 'package:flutter/animation.dart' as _i6;
import 'package:flutter/foundation.dart' as _i2;
import 'package:flutter/material.dart' as _i1;
import 'package:flutter/painting.dart' as _i3;
import 'package:flutter/rendering.dart' as _i5;
import 'package:flutter/services.dart' as _i7;
import 'package:flutter/widgets.dart' as _i4;

import '../wrapper.dart';

final class PopupMenuButton<T> extends Wrapper {
  @Goto(_i1.PopupMenuButton.new)
  PopupMenuButton(
    $ $config, {
    _i2.Key? key,
    required _i1.PopupMenuItemBuilder<T> itemBuilder,
    T? initialValue,
    ui.VoidCallback? onOpened,
    _i1.PopupMenuItemSelected<T>? onSelected,
    _i1.PopupMenuCanceled? onCanceled,
    String? tooltip,
    double? elevation,
    ui.Color? shadowColor,
    ui.Color? surfaceTintColor,
    _i3.EdgeInsetsGeometry padding = const _i3.EdgeInsets.all(8.0),
    _i3.EdgeInsetsGeometry? menuPadding,
    _i4.Widget? child,
    double? splashRadius,
    _i4.Widget? icon,
    double? iconSize,
    ui.Offset offset = ui.Offset.zero,
    bool enabled = true,
    _i3.ShapeBorder? shape,
    ui.Color? color,
    ui.Color? iconColor,
    bool? enableFeedback,
    _i5.BoxConstraints? constraints,
    _i1.PopupMenuPosition? position,
    ui.Clip clipBehavior = ui.Clip.none,
    bool useRootNavigator = false,
    _i6.AnimationStyle? popUpAnimationStyle,
    _i4.RouteSettings? routeSettings,
    _i1.ButtonStyle? style,
  }) : super(
          Argument({
            #key: key,
            #itemBuilder: itemBuilder,
            #initialValue: initialValue,
            #onOpened: onOpened,
            #onSelected: onSelected,
            #onCanceled: onCanceled,
            #tooltip: tooltip,
            #elevation: elevation,
            #shadowColor: shadowColor,
            #surfaceTintColor: surfaceTintColor,
            #padding: padding,
            #menuPadding: menuPadding,
            #child: child,
            #splashRadius: splashRadius,
            #icon: icon,
            #iconSize: iconSize,
            #offset: offset,
            #enabled: enabled,
            #shape: shape,
            #color: color,
            #iconColor: iconColor,
            #enableFeedback: enableFeedback,
            #constraints: constraints,
            #position: position,
            #clipBehavior: clipBehavior,
            #useRootNavigator: useRootNavigator,
            #popUpAnimationStyle: popUpAnimationStyle,
            #routeSettings: routeSettings,
            #style: style,
          }),
          builder: (args) => _i1.PopupMenuButton<T>(
            key: args(#key),
            itemBuilder: args(#itemBuilder),
            initialValue: args(#initialValue),
            onOpened: args(#onOpened),
            onSelected: args(#onSelected),
            onCanceled: args(#onCanceled),
            tooltip: args(#tooltip),
            elevation: args(#elevation),
            shadowColor: args(#shadowColor),
            surfaceTintColor: args(#surfaceTintColor),
            padding: args(#padding),
            menuPadding: args(#menuPadding),
            child: args(#child),
            splashRadius: args(#splashRadius),
            icon: args(#icon),
            iconSize: args(#iconSize),
            offset: args(#offset),
            enabled: args(#enabled),
            shape: args(#shape),
            color: args(#color),
            iconColor: args(#iconColor),
            enableFeedback: args(#enableFeedback),
            constraints: args(#constraints),
            position: args(#position),
            clipBehavior: args(#clipBehavior),
            useRootNavigator: args(#useRootNavigator),
            popUpAnimationStyle: args(#popUpAnimationStyle),
            routeSettings: args(#routeSettings),
            style: args(#style),
          ),
        );
}

final class PopupMenuItem<T> extends Wrapper {
  @Goto(_i1.PopupMenuItem.new)
  PopupMenuItem(
    $ $config, {
    _i2.Key? key,
    T? value,
    ui.VoidCallback? onTap,
    bool enabled = true,
    double height = _i1.kMinInteractiveDimension,
    _i3.EdgeInsets? padding,
    _i3.TextStyle? textStyle,
    _i4.WidgetStateProperty<_i3.TextStyle?>? labelTextStyle,
    _i7.MouseCursor? mouseCursor,
    required _i4.Widget? child,
  }) : super(
          Argument({
            #key: key,
            #value: value,
            #onTap: onTap,
            #enabled: enabled,
            #height: height,
            #padding: padding,
            #textStyle: textStyle,
            #labelTextStyle: labelTextStyle,
            #mouseCursor: mouseCursor,
            #child: child,
          }),
          builder: (args) => _i1.PopupMenuItem<T>(
            key: args(#key),
            value: args(#value),
            onTap: args(#onTap),
            enabled: args(#enabled),
            height: args(#height),
            padding: args(#padding),
            textStyle: args(#textStyle),
            labelTextStyle: args(#labelTextStyle),
            mouseCursor: args(#mouseCursor),
            child: args(#child),
          ),
        );
}

final class CheckedPopupMenuItem<T> extends Wrapper {
  @Goto(_i1.CheckedPopupMenuItem.new)
  CheckedPopupMenuItem(
    $ $config, {
    _i2.Key? key,
    T? value,
    bool checked = false,
    bool enabled = true,
    _i3.EdgeInsets? padding,
    double height = _i1.kMinInteractiveDimension,
    _i4.WidgetStateProperty<_i3.TextStyle?>? labelTextStyle,
    _i7.MouseCursor? mouseCursor,
    _i4.Widget? child,
    ui.VoidCallback? onTap,
  }) : super(
          Argument({
            #key: key,
            #value: value,
            #checked: checked,
            #enabled: enabled,
            #padding: padding,
            #height: height,
            #labelTextStyle: labelTextStyle,
            #mouseCursor: mouseCursor,
            #child: child,
            #onTap: onTap,
          }),
          builder: (args) => _i1.CheckedPopupMenuItem<T>(
            key: args(#key),
            value: args(#value),
            checked: args(#checked),
            enabled: args(#enabled),
            padding: args(#padding),
            height: args(#height),
            labelTextStyle: args(#labelTextStyle),
            mouseCursor: args(#mouseCursor),
            child: args(#child),
            onTap: args(#onTap),
          ),
        );
}

final class PopupMenuDivider extends Wrapper {
  @Goto(_i1.PopupMenuDivider.new)
  PopupMenuDivider(
    $ $config, {
    _i2.Key? key,
    double height = _kMenuDividerHeight,
  }) : super(
          Argument({
            #key: key,
            #height: height,
          }),
          builder: (args) => _i1.PopupMenuDivider(
            key: args(#key),
            height: args(#height),
          ),
        );
}

const double _kMenuDividerHeight = 16.0;
