library rxflutterify_binding; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:ui' as ui;

import 'package:flutter/foundation.dart' as _i2;
import 'package:flutter/material.dart' as _i1;
import 'package:flutter/widgets.dart' as _i3;

import '../wrapper.dart';

final class ElevatedButton extends Wrapper {
  @Goto(_i1.ElevatedButton.new)
  ElevatedButton(
    $ $config, {
    _i2.Key? key,
    required ui.VoidCallback? onPressed,
    ui.VoidCallback? onLongPress,
    _i2.ValueChanged<bool>? onHover,
    _i2.ValueChanged<bool>? onFocusChange,
    _i1.ButtonStyle? style,
    _i3.FocusNode? focusNode,
    bool autofocus = false,
    ui.Clip? clipBehavior,
    _i3.WidgetStatesController? statesController,
    required _i3.Widget? child,
    _i1.IconAlignment iconAlignment = _i1.IconAlignment.start,
  }) : super(
          Argument({
            #key: key,
            #onPressed: onPressed,
            #onLongPress: onLongPress,
            #onHover: onHover,
            #onFocusChange: onFocusChange,
            #style: style,
            #focusNode: focusNode,
            #autofocus: autofocus,
            #clipBehavior: clipBehavior,
            #statesController: statesController,
            #child: child,
            #iconAlignment: iconAlignment,
          }),
          builder: (args) => _i1.ElevatedButton(
            key: args(#key),
            onPressed: args(#onPressed),
            onLongPress: args(#onLongPress),
            onHover: args(#onHover),
            onFocusChange: args(#onFocusChange),
            style: args(#style),
            focusNode: args(#focusNode),
            autofocus: args(#autofocus),
            clipBehavior: args(#clipBehavior),
            statesController: args(#statesController),
            child: args(#child),
            iconAlignment: args(#iconAlignment),
          ),
        );

  @Goto(_i1.ElevatedButton.icon)
  ElevatedButton.icon(
    $ $config, {
    _i2.Key? key,
    required ui.VoidCallback? onPressed,
    ui.VoidCallback? onLongPress,
    _i2.ValueChanged<bool>? onHover,
    _i2.ValueChanged<bool>? onFocusChange,
    _i1.ButtonStyle? style,
    _i3.FocusNode? focusNode,
    bool? autofocus,
    ui.Clip? clipBehavior,
    _i3.WidgetStatesController? statesController,
    _i3.Widget? icon,
    required _i3.Widget label,
    _i1.IconAlignment iconAlignment = _i1.IconAlignment.start,
  }) : super(
          Argument({
            #key: key,
            #onPressed: onPressed,
            #onLongPress: onLongPress,
            #onHover: onHover,
            #onFocusChange: onFocusChange,
            #style: style,
            #focusNode: focusNode,
            #autofocus: autofocus,
            #clipBehavior: clipBehavior,
            #statesController: statesController,
            #icon: icon,
            #label: label,
            #iconAlignment: iconAlignment,
          }),
          builder: (args) => _i1.ElevatedButton.icon(
            key: args(#key),
            onPressed: args(#onPressed),
            onLongPress: args(#onLongPress),
            onHover: args(#onHover),
            onFocusChange: args(#onFocusChange),
            style: args(#style),
            focusNode: args(#focusNode),
            autofocus: args(#autofocus),
            clipBehavior: args(#clipBehavior),
            statesController: args(#statesController),
            icon: args(#icon),
            label: args(#label),
            iconAlignment: args(#iconAlignment),
          ),
        );
}
