library rxflutterify; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:ui' as ui;

import 'package:flutter/foundation.dart' as _i2;
import 'package:flutter/material.dart' as _i1;
import 'package:flutter/painting.dart' as _i3;
import 'package:flutter/rendering.dart' as _i6;
import 'package:flutter/services.dart' as _i4;
import 'package:flutter/widgets.dart' as _i5;

import '../wrapper.dart';

final class IconButton extends Wrapper {
  @Goto(_i1.IconButton.new)
  IconButton({
    _i2.Key? key,
    double? iconSize,
    _i1.VisualDensity? visualDensity,
    _i3.EdgeInsetsGeometry? padding,
    _i3.AlignmentGeometry? alignment,
    double? splashRadius,
    ui.Color? color,
    ui.Color? focusColor,
    ui.Color? hoverColor,
    ui.Color? highlightColor,
    ui.Color? splashColor,
    ui.Color? disabledColor,
    required ui.VoidCallback? onPressed,
    _i4.MouseCursor? mouseCursor,
    _i5.FocusNode? focusNode,
    bool autofocus = false,
    String? tooltip,
    bool? enableFeedback,
    _i6.BoxConstraints? constraints,
    _i1.ButtonStyle? style,
    bool? isSelected,
    _i5.Widget? selectedIcon,
    required _i5.Widget icon,
    // Associate with key
    Stream<_i2.Key?>? $key,
    // Associate with iconSize
    Stream<double?>? $iconSize,
    // Associate with visualDensity
    Stream<_i1.VisualDensity?>? $visualDensity,
    // Associate with padding
    Stream<_i3.EdgeInsetsGeometry?>? $padding,
    // Associate with alignment
    Stream<_i3.AlignmentGeometry?>? $alignment,
    // Associate with splashRadius
    Stream<double?>? $splashRadius,
    // Associate with color
    Stream<ui.Color?>? $color,
    // Associate with focusColor
    Stream<ui.Color?>? $focusColor,
    // Associate with hoverColor
    Stream<ui.Color?>? $hoverColor,
    // Associate with highlightColor
    Stream<ui.Color?>? $highlightColor,
    // Associate with splashColor
    Stream<ui.Color?>? $splashColor,
    // Associate with disabledColor
    Stream<ui.Color?>? $disabledColor,
    // Associate with onPressed
    Stream<ui.VoidCallback?>? $onPressed,
    // Associate with mouseCursor
    Stream<_i4.MouseCursor?>? $mouseCursor,
    // Associate with focusNode
    Stream<_i5.FocusNode?>? $focusNode,
    // Associate with autofocus
    Stream<bool>? $autofocus,
    // Associate with tooltip
    Stream<String?>? $tooltip,
    // Associate with enableFeedback
    Stream<bool?>? $enableFeedback,
    // Associate with constraints
    Stream<_i6.BoxConstraints?>? $constraints,
    // Associate with style
    Stream<_i1.ButtonStyle?>? $style,
    // Associate with isSelected
    Stream<bool?>? $isSelected,
    // Associate with selectedIcon
    Stream<_i5.Widget?>? $selectedIcon,
    // Associate with icon
    Stream<_i5.Widget>? $icon,
  }) : super(
          Argument(
            {
              'key': key,
              'iconSize': iconSize,
              'visualDensity': visualDensity,
              'padding': padding,
              'alignment': alignment,
              'splashRadius': splashRadius,
              'color': color,
              'focusColor': focusColor,
              'hoverColor': hoverColor,
              'highlightColor': highlightColor,
              'splashColor': splashColor,
              'disabledColor': disabledColor,
              'onPressed': onPressed,
              'mouseCursor': mouseCursor,
              'focusNode': focusNode,
              'autofocus': autofocus,
              'tooltip': tooltip,
              'enableFeedback': enableFeedback,
              'constraints': constraints,
              'style': style,
              'isSelected': isSelected,
              'selectedIcon': selectedIcon,
              'icon': icon,
            },
            stream: {
              'key': $key,
              'iconSize': $iconSize,
              'visualDensity': $visualDensity,
              'padding': $padding,
              'alignment': $alignment,
              'splashRadius': $splashRadius,
              'color': $color,
              'focusColor': $focusColor,
              'hoverColor': $hoverColor,
              'highlightColor': $highlightColor,
              'splashColor': $splashColor,
              'disabledColor': $disabledColor,
              'onPressed': $onPressed,
              'mouseCursor': $mouseCursor,
              'focusNode': $focusNode,
              'autofocus': $autofocus,
              'tooltip': $tooltip,
              'enableFeedback': $enableFeedback,
              'constraints': $constraints,
              'style': $style,
              'isSelected': $isSelected,
              'selectedIcon': $selectedIcon,
              'icon': $icon,
            },
          ),
          builder: (args) => _i1.IconButton(
            key: args('key'),
            iconSize: args('iconSize'),
            visualDensity: args('visualDensity'),
            padding: args('padding'),
            alignment: args('alignment'),
            splashRadius: args('splashRadius'),
            color: args('color'),
            focusColor: args('focusColor'),
            hoverColor: args('hoverColor'),
            highlightColor: args('highlightColor'),
            splashColor: args('splashColor'),
            disabledColor: args('disabledColor'),
            onPressed: args('onPressed'),
            mouseCursor: args('mouseCursor'),
            focusNode: args('focusNode'),
            autofocus: args('autofocus'),
            tooltip: args('tooltip'),
            enableFeedback: args('enableFeedback'),
            constraints: args('constraints'),
            style: args('style'),
            isSelected: args('isSelected'),
            selectedIcon: args('selectedIcon'),
            icon: args('icon'),
          ),
        );

  @Goto(_i1.IconButton.filled)
  IconButton.filled({
    _i2.Key? key,
    double? iconSize,
    _i1.VisualDensity? visualDensity,
    _i3.EdgeInsetsGeometry? padding,
    _i3.AlignmentGeometry? alignment,
    double? splashRadius,
    ui.Color? color,
    ui.Color? focusColor,
    ui.Color? hoverColor,
    ui.Color? highlightColor,
    ui.Color? splashColor,
    ui.Color? disabledColor,
    required ui.VoidCallback? onPressed,
    _i4.MouseCursor? mouseCursor,
    _i5.FocusNode? focusNode,
    bool autofocus = false,
    String? tooltip,
    bool? enableFeedback,
    _i6.BoxConstraints? constraints,
    _i1.ButtonStyle? style,
    bool? isSelected,
    _i5.Widget? selectedIcon,
    required _i5.Widget icon,
    // Associate with key
    Stream<_i2.Key?>? $key,
    // Associate with iconSize
    Stream<double?>? $iconSize,
    // Associate with visualDensity
    Stream<_i1.VisualDensity?>? $visualDensity,
    // Associate with padding
    Stream<_i3.EdgeInsetsGeometry?>? $padding,
    // Associate with alignment
    Stream<_i3.AlignmentGeometry?>? $alignment,
    // Associate with splashRadius
    Stream<double?>? $splashRadius,
    // Associate with color
    Stream<ui.Color?>? $color,
    // Associate with focusColor
    Stream<ui.Color?>? $focusColor,
    // Associate with hoverColor
    Stream<ui.Color?>? $hoverColor,
    // Associate with highlightColor
    Stream<ui.Color?>? $highlightColor,
    // Associate with splashColor
    Stream<ui.Color?>? $splashColor,
    // Associate with disabledColor
    Stream<ui.Color?>? $disabledColor,
    // Associate with onPressed
    Stream<ui.VoidCallback?>? $onPressed,
    // Associate with mouseCursor
    Stream<_i4.MouseCursor?>? $mouseCursor,
    // Associate with focusNode
    Stream<_i5.FocusNode?>? $focusNode,
    // Associate with autofocus
    Stream<bool>? $autofocus,
    // Associate with tooltip
    Stream<String?>? $tooltip,
    // Associate with enableFeedback
    Stream<bool?>? $enableFeedback,
    // Associate with constraints
    Stream<_i6.BoxConstraints?>? $constraints,
    // Associate with style
    Stream<_i1.ButtonStyle?>? $style,
    // Associate with isSelected
    Stream<bool?>? $isSelected,
    // Associate with selectedIcon
    Stream<_i5.Widget?>? $selectedIcon,
    // Associate with icon
    Stream<_i5.Widget>? $icon,
  }) : super(
          Argument(
            {
              'key': key,
              'iconSize': iconSize,
              'visualDensity': visualDensity,
              'padding': padding,
              'alignment': alignment,
              'splashRadius': splashRadius,
              'color': color,
              'focusColor': focusColor,
              'hoverColor': hoverColor,
              'highlightColor': highlightColor,
              'splashColor': splashColor,
              'disabledColor': disabledColor,
              'onPressed': onPressed,
              'mouseCursor': mouseCursor,
              'focusNode': focusNode,
              'autofocus': autofocus,
              'tooltip': tooltip,
              'enableFeedback': enableFeedback,
              'constraints': constraints,
              'style': style,
              'isSelected': isSelected,
              'selectedIcon': selectedIcon,
              'icon': icon,
            },
            stream: {
              'key': $key,
              'iconSize': $iconSize,
              'visualDensity': $visualDensity,
              'padding': $padding,
              'alignment': $alignment,
              'splashRadius': $splashRadius,
              'color': $color,
              'focusColor': $focusColor,
              'hoverColor': $hoverColor,
              'highlightColor': $highlightColor,
              'splashColor': $splashColor,
              'disabledColor': $disabledColor,
              'onPressed': $onPressed,
              'mouseCursor': $mouseCursor,
              'focusNode': $focusNode,
              'autofocus': $autofocus,
              'tooltip': $tooltip,
              'enableFeedback': $enableFeedback,
              'constraints': $constraints,
              'style': $style,
              'isSelected': $isSelected,
              'selectedIcon': $selectedIcon,
              'icon': $icon,
            },
          ),
          builder: (args) => _i1.IconButton.filled(
            key: args('key'),
            iconSize: args('iconSize'),
            visualDensity: args('visualDensity'),
            padding: args('padding'),
            alignment: args('alignment'),
            splashRadius: args('splashRadius'),
            color: args('color'),
            focusColor: args('focusColor'),
            hoverColor: args('hoverColor'),
            highlightColor: args('highlightColor'),
            splashColor: args('splashColor'),
            disabledColor: args('disabledColor'),
            onPressed: args('onPressed'),
            mouseCursor: args('mouseCursor'),
            focusNode: args('focusNode'),
            autofocus: args('autofocus'),
            tooltip: args('tooltip'),
            enableFeedback: args('enableFeedback'),
            constraints: args('constraints'),
            style: args('style'),
            isSelected: args('isSelected'),
            selectedIcon: args('selectedIcon'),
            icon: args('icon'),
          ),
        );

  @Goto(_i1.IconButton.filledTonal)
  IconButton.filledTonal({
    _i2.Key? key,
    double? iconSize,
    _i1.VisualDensity? visualDensity,
    _i3.EdgeInsetsGeometry? padding,
    _i3.AlignmentGeometry? alignment,
    double? splashRadius,
    ui.Color? color,
    ui.Color? focusColor,
    ui.Color? hoverColor,
    ui.Color? highlightColor,
    ui.Color? splashColor,
    ui.Color? disabledColor,
    required ui.VoidCallback? onPressed,
    _i4.MouseCursor? mouseCursor,
    _i5.FocusNode? focusNode,
    bool autofocus = false,
    String? tooltip,
    bool? enableFeedback,
    _i6.BoxConstraints? constraints,
    _i1.ButtonStyle? style,
    bool? isSelected,
    _i5.Widget? selectedIcon,
    required _i5.Widget icon,
    // Associate with key
    Stream<_i2.Key?>? $key,
    // Associate with iconSize
    Stream<double?>? $iconSize,
    // Associate with visualDensity
    Stream<_i1.VisualDensity?>? $visualDensity,
    // Associate with padding
    Stream<_i3.EdgeInsetsGeometry?>? $padding,
    // Associate with alignment
    Stream<_i3.AlignmentGeometry?>? $alignment,
    // Associate with splashRadius
    Stream<double?>? $splashRadius,
    // Associate with color
    Stream<ui.Color?>? $color,
    // Associate with focusColor
    Stream<ui.Color?>? $focusColor,
    // Associate with hoverColor
    Stream<ui.Color?>? $hoverColor,
    // Associate with highlightColor
    Stream<ui.Color?>? $highlightColor,
    // Associate with splashColor
    Stream<ui.Color?>? $splashColor,
    // Associate with disabledColor
    Stream<ui.Color?>? $disabledColor,
    // Associate with onPressed
    Stream<ui.VoidCallback?>? $onPressed,
    // Associate with mouseCursor
    Stream<_i4.MouseCursor?>? $mouseCursor,
    // Associate with focusNode
    Stream<_i5.FocusNode?>? $focusNode,
    // Associate with autofocus
    Stream<bool>? $autofocus,
    // Associate with tooltip
    Stream<String?>? $tooltip,
    // Associate with enableFeedback
    Stream<bool?>? $enableFeedback,
    // Associate with constraints
    Stream<_i6.BoxConstraints?>? $constraints,
    // Associate with style
    Stream<_i1.ButtonStyle?>? $style,
    // Associate with isSelected
    Stream<bool?>? $isSelected,
    // Associate with selectedIcon
    Stream<_i5.Widget?>? $selectedIcon,
    // Associate with icon
    Stream<_i5.Widget>? $icon,
  }) : super(
          Argument(
            {
              'key': key,
              'iconSize': iconSize,
              'visualDensity': visualDensity,
              'padding': padding,
              'alignment': alignment,
              'splashRadius': splashRadius,
              'color': color,
              'focusColor': focusColor,
              'hoverColor': hoverColor,
              'highlightColor': highlightColor,
              'splashColor': splashColor,
              'disabledColor': disabledColor,
              'onPressed': onPressed,
              'mouseCursor': mouseCursor,
              'focusNode': focusNode,
              'autofocus': autofocus,
              'tooltip': tooltip,
              'enableFeedback': enableFeedback,
              'constraints': constraints,
              'style': style,
              'isSelected': isSelected,
              'selectedIcon': selectedIcon,
              'icon': icon,
            },
            stream: {
              'key': $key,
              'iconSize': $iconSize,
              'visualDensity': $visualDensity,
              'padding': $padding,
              'alignment': $alignment,
              'splashRadius': $splashRadius,
              'color': $color,
              'focusColor': $focusColor,
              'hoverColor': $hoverColor,
              'highlightColor': $highlightColor,
              'splashColor': $splashColor,
              'disabledColor': $disabledColor,
              'onPressed': $onPressed,
              'mouseCursor': $mouseCursor,
              'focusNode': $focusNode,
              'autofocus': $autofocus,
              'tooltip': $tooltip,
              'enableFeedback': $enableFeedback,
              'constraints': $constraints,
              'style': $style,
              'isSelected': $isSelected,
              'selectedIcon': $selectedIcon,
              'icon': $icon,
            },
          ),
          builder: (args) => _i1.IconButton.filledTonal(
            key: args('key'),
            iconSize: args('iconSize'),
            visualDensity: args('visualDensity'),
            padding: args('padding'),
            alignment: args('alignment'),
            splashRadius: args('splashRadius'),
            color: args('color'),
            focusColor: args('focusColor'),
            hoverColor: args('hoverColor'),
            highlightColor: args('highlightColor'),
            splashColor: args('splashColor'),
            disabledColor: args('disabledColor'),
            onPressed: args('onPressed'),
            mouseCursor: args('mouseCursor'),
            focusNode: args('focusNode'),
            autofocus: args('autofocus'),
            tooltip: args('tooltip'),
            enableFeedback: args('enableFeedback'),
            constraints: args('constraints'),
            style: args('style'),
            isSelected: args('isSelected'),
            selectedIcon: args('selectedIcon'),
            icon: args('icon'),
          ),
        );

  @Goto(_i1.IconButton.outlined)
  IconButton.outlined({
    _i2.Key? key,
    double? iconSize,
    _i1.VisualDensity? visualDensity,
    _i3.EdgeInsetsGeometry? padding,
    _i3.AlignmentGeometry? alignment,
    double? splashRadius,
    ui.Color? color,
    ui.Color? focusColor,
    ui.Color? hoverColor,
    ui.Color? highlightColor,
    ui.Color? splashColor,
    ui.Color? disabledColor,
    required ui.VoidCallback? onPressed,
    _i4.MouseCursor? mouseCursor,
    _i5.FocusNode? focusNode,
    bool autofocus = false,
    String? tooltip,
    bool? enableFeedback,
    _i6.BoxConstraints? constraints,
    _i1.ButtonStyle? style,
    bool? isSelected,
    _i5.Widget? selectedIcon,
    required _i5.Widget icon,
    // Associate with key
    Stream<_i2.Key?>? $key,
    // Associate with iconSize
    Stream<double?>? $iconSize,
    // Associate with visualDensity
    Stream<_i1.VisualDensity?>? $visualDensity,
    // Associate with padding
    Stream<_i3.EdgeInsetsGeometry?>? $padding,
    // Associate with alignment
    Stream<_i3.AlignmentGeometry?>? $alignment,
    // Associate with splashRadius
    Stream<double?>? $splashRadius,
    // Associate with color
    Stream<ui.Color?>? $color,
    // Associate with focusColor
    Stream<ui.Color?>? $focusColor,
    // Associate with hoverColor
    Stream<ui.Color?>? $hoverColor,
    // Associate with highlightColor
    Stream<ui.Color?>? $highlightColor,
    // Associate with splashColor
    Stream<ui.Color?>? $splashColor,
    // Associate with disabledColor
    Stream<ui.Color?>? $disabledColor,
    // Associate with onPressed
    Stream<ui.VoidCallback?>? $onPressed,
    // Associate with mouseCursor
    Stream<_i4.MouseCursor?>? $mouseCursor,
    // Associate with focusNode
    Stream<_i5.FocusNode?>? $focusNode,
    // Associate with autofocus
    Stream<bool>? $autofocus,
    // Associate with tooltip
    Stream<String?>? $tooltip,
    // Associate with enableFeedback
    Stream<bool?>? $enableFeedback,
    // Associate with constraints
    Stream<_i6.BoxConstraints?>? $constraints,
    // Associate with style
    Stream<_i1.ButtonStyle?>? $style,
    // Associate with isSelected
    Stream<bool?>? $isSelected,
    // Associate with selectedIcon
    Stream<_i5.Widget?>? $selectedIcon,
    // Associate with icon
    Stream<_i5.Widget>? $icon,
  }) : super(
          Argument(
            {
              'key': key,
              'iconSize': iconSize,
              'visualDensity': visualDensity,
              'padding': padding,
              'alignment': alignment,
              'splashRadius': splashRadius,
              'color': color,
              'focusColor': focusColor,
              'hoverColor': hoverColor,
              'highlightColor': highlightColor,
              'splashColor': splashColor,
              'disabledColor': disabledColor,
              'onPressed': onPressed,
              'mouseCursor': mouseCursor,
              'focusNode': focusNode,
              'autofocus': autofocus,
              'tooltip': tooltip,
              'enableFeedback': enableFeedback,
              'constraints': constraints,
              'style': style,
              'isSelected': isSelected,
              'selectedIcon': selectedIcon,
              'icon': icon,
            },
            stream: {
              'key': $key,
              'iconSize': $iconSize,
              'visualDensity': $visualDensity,
              'padding': $padding,
              'alignment': $alignment,
              'splashRadius': $splashRadius,
              'color': $color,
              'focusColor': $focusColor,
              'hoverColor': $hoverColor,
              'highlightColor': $highlightColor,
              'splashColor': $splashColor,
              'disabledColor': $disabledColor,
              'onPressed': $onPressed,
              'mouseCursor': $mouseCursor,
              'focusNode': $focusNode,
              'autofocus': $autofocus,
              'tooltip': $tooltip,
              'enableFeedback': $enableFeedback,
              'constraints': $constraints,
              'style': $style,
              'isSelected': $isSelected,
              'selectedIcon': $selectedIcon,
              'icon': $icon,
            },
          ),
          builder: (args) => _i1.IconButton.outlined(
            key: args('key'),
            iconSize: args('iconSize'),
            visualDensity: args('visualDensity'),
            padding: args('padding'),
            alignment: args('alignment'),
            splashRadius: args('splashRadius'),
            color: args('color'),
            focusColor: args('focusColor'),
            hoverColor: args('hoverColor'),
            highlightColor: args('highlightColor'),
            splashColor: args('splashColor'),
            disabledColor: args('disabledColor'),
            onPressed: args('onPressed'),
            mouseCursor: args('mouseCursor'),
            focusNode: args('focusNode'),
            autofocus: args('autofocus'),
            tooltip: args('tooltip'),
            enableFeedback: args('enableFeedback'),
            constraints: args('constraints'),
            style: args('style'),
            isSelected: args('isSelected'),
            selectedIcon: args('selectedIcon'),
            icon: args('icon'),
          ),
        );
}
