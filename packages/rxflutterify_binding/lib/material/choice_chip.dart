library rxflutterify_binding; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:ui' as ui;

import 'package:flutter/foundation.dart' as _i2;
import 'package:flutter/material.dart' as _i1;
import 'package:flutter/painting.dart' as _i4;
import 'package:flutter/rendering.dart' as _i5;
import 'package:flutter/widgets.dart' as _i3;

import '../wrapper.dart';

final class ChoiceChip extends Wrapper {
  @Goto(_i1.ChoiceChip.new)
  ChoiceChip(
    $ $config, {
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
    _i1.ChipAnimationStyle? chipAnimationStyle,
  }) : super(
          Argument({
            #key: key,
            #avatar: avatar,
            #label: label,
            #labelStyle: labelStyle,
            #labelPadding: labelPadding,
            #onSelected: onSelected,
            #pressElevation: pressElevation,
            #selected: selected,
            #selectedColor: selectedColor,
            #disabledColor: disabledColor,
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
            #chipAnimationStyle: chipAnimationStyle,
          }),
          builder: (args) => _i1.ChoiceChip(
            key: args(#key),
            avatar: args(#avatar),
            label: args(#label),
            labelStyle: args(#labelStyle),
            labelPadding: args(#labelPadding),
            onSelected: args(#onSelected),
            pressElevation: args(#pressElevation),
            selected: args(#selected),
            selectedColor: args(#selectedColor),
            disabledColor: args(#disabledColor),
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
            chipAnimationStyle: args(#chipAnimationStyle),
          ),
        );

  @Goto(_i1.ChoiceChip.elevated)
  ChoiceChip.elevated(
    $ $config, {
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
    _i1.ChipAnimationStyle? chipAnimationStyle,
  }) : super(
          Argument({
            #key: key,
            #avatar: avatar,
            #label: label,
            #labelStyle: labelStyle,
            #labelPadding: labelPadding,
            #onSelected: onSelected,
            #pressElevation: pressElevation,
            #selected: selected,
            #selectedColor: selectedColor,
            #disabledColor: disabledColor,
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
            #chipAnimationStyle: chipAnimationStyle,
          }),
          builder: (args) => _i1.ChoiceChip.elevated(
            key: args(#key),
            avatar: args(#avatar),
            label: args(#label),
            labelStyle: args(#labelStyle),
            labelPadding: args(#labelPadding),
            onSelected: args(#onSelected),
            pressElevation: args(#pressElevation),
            selected: args(#selected),
            selectedColor: args(#selectedColor),
            disabledColor: args(#disabledColor),
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
            chipAnimationStyle: args(#chipAnimationStyle),
          ),
        );
}
