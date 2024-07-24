library rxflutter; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:ui' as ui;

import 'package:flutter/foundation.dart' as _i2;
import 'package:flutter/material.dart' as _i1;
import 'package:flutter/painting.dart' as _i4;
import 'package:flutter/rendering.dart' as _i5;
import 'package:flutter/widgets.dart' as _i3;

import '../wrapper.dart';

final class ChoiceChip extends Wrapper {
  @Goto(_i1.ChoiceChip.new)
  ChoiceChip({
    _i2.Key? key,
    _i3.Widget? avatar,
    required _i3.Widget label,
    _i4.TextStyle? labelStyle,
    _i4.EdgeInsetsGeometry? labelPadding,
    _i2.ValueChanged<bool>? onSelected,
    double? pressElevation,
    required bool selected,
    ui.Color? selectedColor,
    ui.Color? disabledColor,
    String? tooltip,
    _i4.BorderSide? side,
    _i4.OutlinedBorder? shape,
    ui.Clip clipBehavior = ui.Clip.none,
    _i3.FocusNode? focusNode,
    bool autofocus = false,
    _i3.WidgetStateProperty<ui.Color?>? color,
    ui.Color? backgroundColor,
    _i4.EdgeInsetsGeometry? padding,
    _i1.VisualDensity? visualDensity,
    _i1.MaterialTapTargetSize? materialTapTargetSize,
    double? elevation,
    ui.Color? shadowColor,
    ui.Color? surfaceTintColor,
    _i3.IconThemeData? iconTheme,
    ui.Color? selectedShadowColor,
    bool? showCheckmark,
    ui.Color? checkmarkColor,
    _i4.ShapeBorder avatarBorder = const _i4.CircleBorder(),
    _i5.BoxConstraints? avatarBoxConstraints,
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
    // Associate with onSelected
    Stream<_i2.ValueChanged<bool>?>? $onSelected,
    // Associate with pressElevation
    Stream<double?>? $pressElevation,
    // Associate with selected
    Stream<bool>? $selected,
    // Associate with selectedColor
    Stream<ui.Color?>? $selectedColor,
    // Associate with disabledColor
    Stream<ui.Color?>? $disabledColor,
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
    // Associate with selectedShadowColor
    Stream<ui.Color?>? $selectedShadowColor,
    // Associate with showCheckmark
    Stream<bool?>? $showCheckmark,
    // Associate with checkmarkColor
    Stream<ui.Color?>? $checkmarkColor,
    // Associate with avatarBorder
    Stream<_i4.ShapeBorder>? $avatarBorder,
    // Associate with avatarBoxConstraints
    Stream<_i5.BoxConstraints?>? $avatarBoxConstraints,
  }) : super(
          Argument(
            {
              'key': key,
              'avatar': avatar,
              'label': label,
              'labelStyle': labelStyle,
              'labelPadding': labelPadding,
              'onSelected': onSelected,
              'pressElevation': pressElevation,
              'selected': selected,
              'selectedColor': selectedColor,
              'disabledColor': disabledColor,
              'tooltip': tooltip,
              'side': side,
              'shape': shape,
              'clipBehavior': clipBehavior,
              'focusNode': focusNode,
              'autofocus': autofocus,
              'color': color,
              'backgroundColor': backgroundColor,
              'padding': padding,
              'visualDensity': visualDensity,
              'materialTapTargetSize': materialTapTargetSize,
              'elevation': elevation,
              'shadowColor': shadowColor,
              'surfaceTintColor': surfaceTintColor,
              'iconTheme': iconTheme,
              'selectedShadowColor': selectedShadowColor,
              'showCheckmark': showCheckmark,
              'checkmarkColor': checkmarkColor,
              'avatarBorder': avatarBorder,
              'avatarBoxConstraints': avatarBoxConstraints,
            },
            stream: {
              'key': $key,
              'avatar': $avatar,
              'label': $label,
              'labelStyle': $labelStyle,
              'labelPadding': $labelPadding,
              'onSelected': $onSelected,
              'pressElevation': $pressElevation,
              'selected': $selected,
              'selectedColor': $selectedColor,
              'disabledColor': $disabledColor,
              'tooltip': $tooltip,
              'side': $side,
              'shape': $shape,
              'clipBehavior': $clipBehavior,
              'focusNode': $focusNode,
              'autofocus': $autofocus,
              'color': $color,
              'backgroundColor': $backgroundColor,
              'padding': $padding,
              'visualDensity': $visualDensity,
              'materialTapTargetSize': $materialTapTargetSize,
              'elevation': $elevation,
              'shadowColor': $shadowColor,
              'surfaceTintColor': $surfaceTintColor,
              'iconTheme': $iconTheme,
              'selectedShadowColor': $selectedShadowColor,
              'showCheckmark': $showCheckmark,
              'checkmarkColor': $checkmarkColor,
              'avatarBorder': $avatarBorder,
              'avatarBoxConstraints': $avatarBoxConstraints,
            },
          ),
          builder: (args) => _i1.ChoiceChip(
            key: args('key'),
            avatar: args('avatar'),
            label: args('label'),
            labelStyle: args('labelStyle'),
            labelPadding: args('labelPadding'),
            onSelected: args('onSelected'),
            pressElevation: args('pressElevation'),
            selected: args('selected'),
            selectedColor: args('selectedColor'),
            disabledColor: args('disabledColor'),
            tooltip: args('tooltip'),
            side: args('side'),
            shape: args('shape'),
            clipBehavior: args('clipBehavior'),
            focusNode: args('focusNode'),
            autofocus: args('autofocus'),
            color: args('color'),
            backgroundColor: args('backgroundColor'),
            padding: args('padding'),
            visualDensity: args('visualDensity'),
            materialTapTargetSize: args('materialTapTargetSize'),
            elevation: args('elevation'),
            shadowColor: args('shadowColor'),
            surfaceTintColor: args('surfaceTintColor'),
            iconTheme: args('iconTheme'),
            selectedShadowColor: args('selectedShadowColor'),
            showCheckmark: args('showCheckmark'),
            checkmarkColor: args('checkmarkColor'),
            avatarBorder: args('avatarBorder'),
            avatarBoxConstraints: args('avatarBoxConstraints'),
          ),
        );

  @Goto(_i1.ChoiceChip.elevated)
  ChoiceChip.elevated({
    _i2.Key? key,
    _i3.Widget? avatar,
    required _i3.Widget label,
    _i4.TextStyle? labelStyle,
    _i4.EdgeInsetsGeometry? labelPadding,
    _i2.ValueChanged<bool>? onSelected,
    double? pressElevation,
    required bool selected,
    ui.Color? selectedColor,
    ui.Color? disabledColor,
    String? tooltip,
    _i4.BorderSide? side,
    _i4.OutlinedBorder? shape,
    ui.Clip clipBehavior = ui.Clip.none,
    _i3.FocusNode? focusNode,
    bool autofocus = false,
    _i3.WidgetStateProperty<ui.Color?>? color,
    ui.Color? backgroundColor,
    _i4.EdgeInsetsGeometry? padding,
    _i1.VisualDensity? visualDensity,
    _i1.MaterialTapTargetSize? materialTapTargetSize,
    double? elevation,
    ui.Color? shadowColor,
    ui.Color? surfaceTintColor,
    _i3.IconThemeData? iconTheme,
    ui.Color? selectedShadowColor,
    bool? showCheckmark,
    ui.Color? checkmarkColor,
    _i4.ShapeBorder avatarBorder = const _i4.CircleBorder(),
    _i5.BoxConstraints? avatarBoxConstraints,
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
    // Associate with onSelected
    Stream<_i2.ValueChanged<bool>?>? $onSelected,
    // Associate with pressElevation
    Stream<double?>? $pressElevation,
    // Associate with selected
    Stream<bool>? $selected,
    // Associate with selectedColor
    Stream<ui.Color?>? $selectedColor,
    // Associate with disabledColor
    Stream<ui.Color?>? $disabledColor,
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
    // Associate with selectedShadowColor
    Stream<ui.Color?>? $selectedShadowColor,
    // Associate with showCheckmark
    Stream<bool?>? $showCheckmark,
    // Associate with checkmarkColor
    Stream<ui.Color?>? $checkmarkColor,
    // Associate with avatarBorder
    Stream<_i4.ShapeBorder>? $avatarBorder,
    // Associate with avatarBoxConstraints
    Stream<_i5.BoxConstraints?>? $avatarBoxConstraints,
  }) : super(
          Argument(
            {
              'key': key,
              'avatar': avatar,
              'label': label,
              'labelStyle': labelStyle,
              'labelPadding': labelPadding,
              'onSelected': onSelected,
              'pressElevation': pressElevation,
              'selected': selected,
              'selectedColor': selectedColor,
              'disabledColor': disabledColor,
              'tooltip': tooltip,
              'side': side,
              'shape': shape,
              'clipBehavior': clipBehavior,
              'focusNode': focusNode,
              'autofocus': autofocus,
              'color': color,
              'backgroundColor': backgroundColor,
              'padding': padding,
              'visualDensity': visualDensity,
              'materialTapTargetSize': materialTapTargetSize,
              'elevation': elevation,
              'shadowColor': shadowColor,
              'surfaceTintColor': surfaceTintColor,
              'iconTheme': iconTheme,
              'selectedShadowColor': selectedShadowColor,
              'showCheckmark': showCheckmark,
              'checkmarkColor': checkmarkColor,
              'avatarBorder': avatarBorder,
              'avatarBoxConstraints': avatarBoxConstraints,
            },
            stream: {
              'key': $key,
              'avatar': $avatar,
              'label': $label,
              'labelStyle': $labelStyle,
              'labelPadding': $labelPadding,
              'onSelected': $onSelected,
              'pressElevation': $pressElevation,
              'selected': $selected,
              'selectedColor': $selectedColor,
              'disabledColor': $disabledColor,
              'tooltip': $tooltip,
              'side': $side,
              'shape': $shape,
              'clipBehavior': $clipBehavior,
              'focusNode': $focusNode,
              'autofocus': $autofocus,
              'color': $color,
              'backgroundColor': $backgroundColor,
              'padding': $padding,
              'visualDensity': $visualDensity,
              'materialTapTargetSize': $materialTapTargetSize,
              'elevation': $elevation,
              'shadowColor': $shadowColor,
              'surfaceTintColor': $surfaceTintColor,
              'iconTheme': $iconTheme,
              'selectedShadowColor': $selectedShadowColor,
              'showCheckmark': $showCheckmark,
              'checkmarkColor': $checkmarkColor,
              'avatarBorder': $avatarBorder,
              'avatarBoxConstraints': $avatarBoxConstraints,
            },
          ),
          builder: (args) => _i1.ChoiceChip.elevated(
            key: args('key'),
            avatar: args('avatar'),
            label: args('label'),
            labelStyle: args('labelStyle'),
            labelPadding: args('labelPadding'),
            onSelected: args('onSelected'),
            pressElevation: args('pressElevation'),
            selected: args('selected'),
            selectedColor: args('selectedColor'),
            disabledColor: args('disabledColor'),
            tooltip: args('tooltip'),
            side: args('side'),
            shape: args('shape'),
            clipBehavior: args('clipBehavior'),
            focusNode: args('focusNode'),
            autofocus: args('autofocus'),
            color: args('color'),
            backgroundColor: args('backgroundColor'),
            padding: args('padding'),
            visualDensity: args('visualDensity'),
            materialTapTargetSize: args('materialTapTargetSize'),
            elevation: args('elevation'),
            shadowColor: args('shadowColor'),
            surfaceTintColor: args('surfaceTintColor'),
            iconTheme: args('iconTheme'),
            selectedShadowColor: args('selectedShadowColor'),
            showCheckmark: args('showCheckmark'),
            checkmarkColor: args('checkmarkColor'),
            avatarBorder: args('avatarBorder'),
            avatarBoxConstraints: args('avatarBoxConstraints'),
          ),
        );
}
