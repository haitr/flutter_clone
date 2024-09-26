library rxflutterify; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:ui' as ui;

import 'package:flutter/foundation.dart' as _i2;
import 'package:flutter/material.dart' as _i1;
import 'package:flutter/painting.dart' as _i4;
import 'package:flutter/rendering.dart' as _i5;
import 'package:flutter/widgets.dart' as _i3;

import '../wrapper.dart';

final class InputChip extends Wrapper {
  @Goto(_i1.InputChip.new)
  InputChip({
    _i2.Key? key,
    _i3.Widget? avatar,
    required _i3.Widget label,
    _i4.TextStyle? labelStyle,
    _i4.EdgeInsetsGeometry? labelPadding,
    bool selected = false,
    bool isEnabled = true,
    _i2.ValueChanged<bool>? onSelected,
    _i3.Widget? deleteIcon,
    ui.VoidCallback? onDeleted,
    ui.Color? deleteIconColor,
    String? deleteButtonTooltipMessage,
    ui.VoidCallback? onPressed,
    double? pressElevation,
    ui.Color? disabledColor,
    ui.Color? selectedColor,
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
    _i5.BoxConstraints? deleteIconBoxConstraints,
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
    // Associate with selected
    Stream<bool>? $selected,
    // Associate with isEnabled
    Stream<bool>? $isEnabled,
    // Associate with onSelected
    Stream<_i2.ValueChanged<bool>?>? $onSelected,
    // Associate with deleteIcon
    Stream<_i3.Widget?>? $deleteIcon,
    // Associate with onDeleted
    Stream<ui.VoidCallback?>? $onDeleted,
    // Associate with deleteIconColor
    Stream<ui.Color?>? $deleteIconColor,
    // Associate with deleteButtonTooltipMessage
    Stream<String?>? $deleteButtonTooltipMessage,
    // Associate with onPressed
    Stream<ui.VoidCallback?>? $onPressed,
    // Associate with pressElevation
    Stream<double?>? $pressElevation,
    // Associate with disabledColor
    Stream<ui.Color?>? $disabledColor,
    // Associate with selectedColor
    Stream<ui.Color?>? $selectedColor,
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
    // Associate with deleteIconBoxConstraints
    Stream<_i5.BoxConstraints?>? $deleteIconBoxConstraints,
  }) : super(
          Argument(
            {
              'key': key,
              'avatar': avatar,
              'label': label,
              'labelStyle': labelStyle,
              'labelPadding': labelPadding,
              'selected': selected,
              'isEnabled': isEnabled,
              'onSelected': onSelected,
              'deleteIcon': deleteIcon,
              'onDeleted': onDeleted,
              'deleteIconColor': deleteIconColor,
              'deleteButtonTooltipMessage': deleteButtonTooltipMessage,
              'onPressed': onPressed,
              'pressElevation': pressElevation,
              'disabledColor': disabledColor,
              'selectedColor': selectedColor,
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
              'deleteIconBoxConstraints': deleteIconBoxConstraints,
            },
            stream: {
              'key': $key,
              'avatar': $avatar,
              'label': $label,
              'labelStyle': $labelStyle,
              'labelPadding': $labelPadding,
              'selected': $selected,
              'isEnabled': $isEnabled,
              'onSelected': $onSelected,
              'deleteIcon': $deleteIcon,
              'onDeleted': $onDeleted,
              'deleteIconColor': $deleteIconColor,
              'deleteButtonTooltipMessage': $deleteButtonTooltipMessage,
              'onPressed': $onPressed,
              'pressElevation': $pressElevation,
              'disabledColor': $disabledColor,
              'selectedColor': $selectedColor,
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
              'deleteIconBoxConstraints': $deleteIconBoxConstraints,
            },
          ),
          builder: (args) => _i1.InputChip(
            key: args('key'),
            avatar: args('avatar'),
            label: args('label'),
            labelStyle: args('labelStyle'),
            labelPadding: args('labelPadding'),
            selected: args('selected'),
            isEnabled: args('isEnabled'),
            onSelected: args('onSelected'),
            deleteIcon: args('deleteIcon'),
            onDeleted: args('onDeleted'),
            deleteIconColor: args('deleteIconColor'),
            deleteButtonTooltipMessage: args('deleteButtonTooltipMessage'),
            onPressed: args('onPressed'),
            pressElevation: args('pressElevation'),
            disabledColor: args('disabledColor'),
            selectedColor: args('selectedColor'),
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
            deleteIconBoxConstraints: args('deleteIconBoxConstraints'),
          ),
        );
}
