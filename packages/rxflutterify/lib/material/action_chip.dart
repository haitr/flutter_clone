library rxflutterify; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:ui' as ui;

import 'package:flutter/foundation.dart' as _i2;
import 'package:flutter/material.dart' as _i1;
import 'package:flutter/painting.dart' as _i4;
import 'package:flutter/rendering.dart' as _i5;
import 'package:flutter/widgets.dart' as _i3;

import '../wrapper.dart';

final class ActionChip extends Wrapper {
  @Goto(_i1.ActionChip.new)
  ActionChip({
    _i2.Key? key,
    _i3.Widget? avatar,
    required _i3.Widget label,
    _i4.TextStyle? labelStyle,
    _i4.EdgeInsetsGeometry? labelPadding,
    ui.VoidCallback? onPressed,
    double? pressElevation,
    String? tooltip,
    _i4.BorderSide? side,
    _i4.OutlinedBorder? shape,
    ui.Clip clipBehavior = ui.Clip.none,
    _i3.FocusNode? focusNode,
    bool autofocus = false,
    _i3.WidgetStateProperty<ui.Color?>? color,
    ui.Color? backgroundColor,
    ui.Color? disabledColor,
    _i4.EdgeInsetsGeometry? padding,
    _i1.VisualDensity? visualDensity,
    _i1.MaterialTapTargetSize? materialTapTargetSize,
    double? elevation,
    ui.Color? shadowColor,
    ui.Color? surfaceTintColor,
    _i3.IconThemeData? iconTheme,
    _i5.BoxConstraints? avatarBoxConstraints,
    _i1.ChipAnimationStyle? chipAnimationStyle,
    // Associate with key
    Stream<_i2.Key?>? $key,
    // Associate with avatar
    Stream<_i3.Widget?>? $avatar,
    // Associate with label
    Stream<_i3.Widget>? $label,
    // Associate with labelStyle
    Stream<_i4.TextStyle?>? $labelStyle,
    // Associate with labelPadding
    Stream<_i4.EdgeInsetsGeometry?>? $labelPadding,
    // Associate with onPressed
    Stream<ui.VoidCallback?>? $onPressed,
    // Associate with pressElevation
    Stream<double?>? $pressElevation,
    // Associate with tooltip
    Stream<String?>? $tooltip,
    // Associate with side
    Stream<_i4.BorderSide?>? $side,
    // Associate with shape
    Stream<_i4.OutlinedBorder?>? $shape,
    // Associate with clipBehavior
    Stream<ui.Clip>? $clipBehavior,
    // Associate with focusNode
    Stream<_i3.FocusNode?>? $focusNode,
    // Associate with autofocus
    Stream<bool>? $autofocus,
    // Associate with color
    Stream<_i3.WidgetStateProperty<ui.Color?>?>? $color,
    // Associate with backgroundColor
    Stream<ui.Color?>? $backgroundColor,
    // Associate with disabledColor
    Stream<ui.Color?>? $disabledColor,
    // Associate with padding
    Stream<_i4.EdgeInsetsGeometry?>? $padding,
    // Associate with visualDensity
    Stream<_i1.VisualDensity?>? $visualDensity,
    // Associate with materialTapTargetSize
    Stream<_i1.MaterialTapTargetSize?>? $materialTapTargetSize,
    // Associate with elevation
    Stream<double?>? $elevation,
    // Associate with shadowColor
    Stream<ui.Color?>? $shadowColor,
    // Associate with surfaceTintColor
    Stream<ui.Color?>? $surfaceTintColor,
    // Associate with iconTheme
    Stream<_i3.IconThemeData?>? $iconTheme,
    // Associate with avatarBoxConstraints
    Stream<_i5.BoxConstraints?>? $avatarBoxConstraints,
    // Associate with chipAnimationStyle
    Stream<_i1.ChipAnimationStyle?>? $chipAnimationStyle,
  }) : super(
          Argument(
            {
              'key': key,
              'avatar': avatar,
              'label': label,
              'labelStyle': labelStyle,
              'labelPadding': labelPadding,
              'onPressed': onPressed,
              'pressElevation': pressElevation,
              'tooltip': tooltip,
              'side': side,
              'shape': shape,
              'clipBehavior': clipBehavior,
              'focusNode': focusNode,
              'autofocus': autofocus,
              'color': color,
              'backgroundColor': backgroundColor,
              'disabledColor': disabledColor,
              'padding': padding,
              'visualDensity': visualDensity,
              'materialTapTargetSize': materialTapTargetSize,
              'elevation': elevation,
              'shadowColor': shadowColor,
              'surfaceTintColor': surfaceTintColor,
              'iconTheme': iconTheme,
              'avatarBoxConstraints': avatarBoxConstraints,
              'chipAnimationStyle': chipAnimationStyle,
            },
            stream: {
              'key': $key,
              'avatar': $avatar,
              'label': $label,
              'labelStyle': $labelStyle,
              'labelPadding': $labelPadding,
              'onPressed': $onPressed,
              'pressElevation': $pressElevation,
              'tooltip': $tooltip,
              'side': $side,
              'shape': $shape,
              'clipBehavior': $clipBehavior,
              'focusNode': $focusNode,
              'autofocus': $autofocus,
              'color': $color,
              'backgroundColor': $backgroundColor,
              'disabledColor': $disabledColor,
              'padding': $padding,
              'visualDensity': $visualDensity,
              'materialTapTargetSize': $materialTapTargetSize,
              'elevation': $elevation,
              'shadowColor': $shadowColor,
              'surfaceTintColor': $surfaceTintColor,
              'iconTheme': $iconTheme,
              'avatarBoxConstraints': $avatarBoxConstraints,
              'chipAnimationStyle': $chipAnimationStyle,
            },
          ),
          builder: (args) => _i1.ActionChip(
            key: args('key'),
            avatar: args('avatar'),
            label: args('label'),
            labelStyle: args('labelStyle'),
            labelPadding: args('labelPadding'),
            onPressed: args('onPressed'),
            pressElevation: args('pressElevation'),
            tooltip: args('tooltip'),
            side: args('side'),
            shape: args('shape'),
            clipBehavior: args('clipBehavior'),
            focusNode: args('focusNode'),
            autofocus: args('autofocus'),
            color: args('color'),
            backgroundColor: args('backgroundColor'),
            disabledColor: args('disabledColor'),
            padding: args('padding'),
            visualDensity: args('visualDensity'),
            materialTapTargetSize: args('materialTapTargetSize'),
            elevation: args('elevation'),
            shadowColor: args('shadowColor'),
            surfaceTintColor: args('surfaceTintColor'),
            iconTheme: args('iconTheme'),
            avatarBoxConstraints: args('avatarBoxConstraints'),
            chipAnimationStyle: args('chipAnimationStyle'),
          ),
        );

  @Goto(_i1.ActionChip.elevated)
  ActionChip.elevated({
    _i2.Key? key,
    _i3.Widget? avatar,
    required _i3.Widget label,
    _i4.TextStyle? labelStyle,
    _i4.EdgeInsetsGeometry? labelPadding,
    ui.VoidCallback? onPressed,
    double? pressElevation,
    String? tooltip,
    _i4.BorderSide? side,
    _i4.OutlinedBorder? shape,
    ui.Clip clipBehavior = ui.Clip.none,
    _i3.FocusNode? focusNode,
    bool autofocus = false,
    _i3.WidgetStateProperty<ui.Color?>? color,
    ui.Color? backgroundColor,
    ui.Color? disabledColor,
    _i4.EdgeInsetsGeometry? padding,
    _i1.VisualDensity? visualDensity,
    _i1.MaterialTapTargetSize? materialTapTargetSize,
    double? elevation,
    ui.Color? shadowColor,
    ui.Color? surfaceTintColor,
    _i3.IconThemeData? iconTheme,
    _i5.BoxConstraints? avatarBoxConstraints,
    _i1.ChipAnimationStyle? chipAnimationStyle,
    // Associate with key
    Stream<_i2.Key?>? $key,
    // Associate with avatar
    Stream<_i3.Widget?>? $avatar,
    // Associate with label
    Stream<_i3.Widget>? $label,
    // Associate with labelStyle
    Stream<_i4.TextStyle?>? $labelStyle,
    // Associate with labelPadding
    Stream<_i4.EdgeInsetsGeometry?>? $labelPadding,
    // Associate with onPressed
    Stream<ui.VoidCallback?>? $onPressed,
    // Associate with pressElevation
    Stream<double?>? $pressElevation,
    // Associate with tooltip
    Stream<String?>? $tooltip,
    // Associate with side
    Stream<_i4.BorderSide?>? $side,
    // Associate with shape
    Stream<_i4.OutlinedBorder?>? $shape,
    // Associate with clipBehavior
    Stream<ui.Clip>? $clipBehavior,
    // Associate with focusNode
    Stream<_i3.FocusNode?>? $focusNode,
    // Associate with autofocus
    Stream<bool>? $autofocus,
    // Associate with color
    Stream<_i3.WidgetStateProperty<ui.Color?>?>? $color,
    // Associate with backgroundColor
    Stream<ui.Color?>? $backgroundColor,
    // Associate with disabledColor
    Stream<ui.Color?>? $disabledColor,
    // Associate with padding
    Stream<_i4.EdgeInsetsGeometry?>? $padding,
    // Associate with visualDensity
    Stream<_i1.VisualDensity?>? $visualDensity,
    // Associate with materialTapTargetSize
    Stream<_i1.MaterialTapTargetSize?>? $materialTapTargetSize,
    // Associate with elevation
    Stream<double?>? $elevation,
    // Associate with shadowColor
    Stream<ui.Color?>? $shadowColor,
    // Associate with surfaceTintColor
    Stream<ui.Color?>? $surfaceTintColor,
    // Associate with iconTheme
    Stream<_i3.IconThemeData?>? $iconTheme,
    // Associate with avatarBoxConstraints
    Stream<_i5.BoxConstraints?>? $avatarBoxConstraints,
    // Associate with chipAnimationStyle
    Stream<_i1.ChipAnimationStyle?>? $chipAnimationStyle,
  }) : super(
          Argument(
            {
              'key': key,
              'avatar': avatar,
              'label': label,
              'labelStyle': labelStyle,
              'labelPadding': labelPadding,
              'onPressed': onPressed,
              'pressElevation': pressElevation,
              'tooltip': tooltip,
              'side': side,
              'shape': shape,
              'clipBehavior': clipBehavior,
              'focusNode': focusNode,
              'autofocus': autofocus,
              'color': color,
              'backgroundColor': backgroundColor,
              'disabledColor': disabledColor,
              'padding': padding,
              'visualDensity': visualDensity,
              'materialTapTargetSize': materialTapTargetSize,
              'elevation': elevation,
              'shadowColor': shadowColor,
              'surfaceTintColor': surfaceTintColor,
              'iconTheme': iconTheme,
              'avatarBoxConstraints': avatarBoxConstraints,
              'chipAnimationStyle': chipAnimationStyle,
            },
            stream: {
              'key': $key,
              'avatar': $avatar,
              'label': $label,
              'labelStyle': $labelStyle,
              'labelPadding': $labelPadding,
              'onPressed': $onPressed,
              'pressElevation': $pressElevation,
              'tooltip': $tooltip,
              'side': $side,
              'shape': $shape,
              'clipBehavior': $clipBehavior,
              'focusNode': $focusNode,
              'autofocus': $autofocus,
              'color': $color,
              'backgroundColor': $backgroundColor,
              'disabledColor': $disabledColor,
              'padding': $padding,
              'visualDensity': $visualDensity,
              'materialTapTargetSize': $materialTapTargetSize,
              'elevation': $elevation,
              'shadowColor': $shadowColor,
              'surfaceTintColor': $surfaceTintColor,
              'iconTheme': $iconTheme,
              'avatarBoxConstraints': $avatarBoxConstraints,
              'chipAnimationStyle': $chipAnimationStyle,
            },
          ),
          builder: (args) => _i1.ActionChip.elevated(
            key: args('key'),
            avatar: args('avatar'),
            label: args('label'),
            labelStyle: args('labelStyle'),
            labelPadding: args('labelPadding'),
            onPressed: args('onPressed'),
            pressElevation: args('pressElevation'),
            tooltip: args('tooltip'),
            side: args('side'),
            shape: args('shape'),
            clipBehavior: args('clipBehavior'),
            focusNode: args('focusNode'),
            autofocus: args('autofocus'),
            color: args('color'),
            backgroundColor: args('backgroundColor'),
            disabledColor: args('disabledColor'),
            padding: args('padding'),
            visualDensity: args('visualDensity'),
            materialTapTargetSize: args('materialTapTargetSize'),
            elevation: args('elevation'),
            shadowColor: args('shadowColor'),
            surfaceTintColor: args('surfaceTintColor'),
            iconTheme: args('iconTheme'),
            avatarBoxConstraints: args('avatarBoxConstraints'),
            chipAnimationStyle: args('chipAnimationStyle'),
          ),
        );
}
