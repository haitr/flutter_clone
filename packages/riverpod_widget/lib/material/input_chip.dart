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
  InputChip(
    $ $config, {
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
    _i1.ChipAnimationStyle? chipAnimationStyle,
  }) : super(
          Argument({
            #key: key,
            #avatar: avatar,
            #label: label,
            #labelStyle: labelStyle,
            #labelPadding: labelPadding,
            #selected: selected,
            #isEnabled: isEnabled,
            #onSelected: onSelected,
            #deleteIcon: deleteIcon,
            #onDeleted: onDeleted,
            #deleteIconColor: deleteIconColor,
            #deleteButtonTooltipMessage: deleteButtonTooltipMessage,
            #onPressed: onPressed,
            #pressElevation: pressElevation,
            #disabledColor: disabledColor,
            #selectedColor: selectedColor,
            #tooltip: tooltip,
            #side: side,
            #shape: shape,
            #clipBehavior: clipBehavior,
            #focusNode: focusNode,
            #autofocus: autofocus,
            #color: color,
            #backgroundColor: backgroundColor,
            #padding: padding,
            #visualDensity: visualDensity,
            #materialTapTargetSize: materialTapTargetSize,
            #elevation: elevation,
            #shadowColor: shadowColor,
            #surfaceTintColor: surfaceTintColor,
            #iconTheme: iconTheme,
            #selectedShadowColor: selectedShadowColor,
            #showCheckmark: showCheckmark,
            #checkmarkColor: checkmarkColor,
            #avatarBorder: avatarBorder,
            #avatarBoxConstraints: avatarBoxConstraints,
            #deleteIconBoxConstraints: deleteIconBoxConstraints,
            #chipAnimationStyle: chipAnimationStyle,
          }),
          builder: (args) => _i1.InputChip(
            key: args(#key),
            avatar: args(#avatar),
            label: args(#label),
            labelStyle: args(#labelStyle),
            labelPadding: args(#labelPadding),
            selected: args(#selected),
            isEnabled: args(#isEnabled),
            onSelected: args(#onSelected),
            deleteIcon: args(#deleteIcon),
            onDeleted: args(#onDeleted),
            deleteIconColor: args(#deleteIconColor),
            deleteButtonTooltipMessage: args(#deleteButtonTooltipMessage),
            onPressed: args(#onPressed),
            pressElevation: args(#pressElevation),
            disabledColor: args(#disabledColor),
            selectedColor: args(#selectedColor),
            tooltip: args(#tooltip),
            side: args(#side),
            shape: args(#shape),
            clipBehavior: args(#clipBehavior),
            focusNode: args(#focusNode),
            autofocus: args(#autofocus),
            color: args(#color),
            backgroundColor: args(#backgroundColor),
            padding: args(#padding),
            visualDensity: args(#visualDensity),
            materialTapTargetSize: args(#materialTapTargetSize),
            elevation: args(#elevation),
            shadowColor: args(#shadowColor),
            surfaceTintColor: args(#surfaceTintColor),
            iconTheme: args(#iconTheme),
            selectedShadowColor: args(#selectedShadowColor),
            showCheckmark: args(#showCheckmark),
            checkmarkColor: args(#checkmarkColor),
            avatarBorder: args(#avatarBorder),
            avatarBoxConstraints: args(#avatarBoxConstraints),
            deleteIconBoxConstraints: args(#deleteIconBoxConstraints),
            chipAnimationStyle: args(#chipAnimationStyle),
          ),
        );
}
