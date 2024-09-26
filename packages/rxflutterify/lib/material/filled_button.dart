library rxflutterify; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:ui' as ui;

import 'package:flutter/foundation.dart' as _i2;
import 'package:flutter/material.dart' as _i1;
import 'package:flutter/widgets.dart' as _i3;

import '../wrapper.dart';

final class FilledButton extends Wrapper {
  @Goto(_i1.FilledButton.new)
  FilledButton({
    _i2.Key? key,
    required ui.VoidCallback? onPressed,
    ui.VoidCallback? onLongPress,
    _i2.ValueChanged<bool>? onHover,
    _i2.ValueChanged<bool>? onFocusChange,
    _i1.ButtonStyle? style,
    _i3.FocusNode? focusNode,
    bool autofocus = false,
    ui.Clip? clipBehavior = ui.Clip.none,
    _i3.WidgetStatesController? statesController,
    required _i3.Widget? child,
    _i1.IconAlignment iconAlignment = _i1.IconAlignment.start,
    // Associate with key
    Stream<_i2.Key?>? $key,
    // Associate with onPressed
    Stream<ui.VoidCallback?>? $onPressed,
    // Associate with onLongPress
    Stream<ui.VoidCallback?>? $onLongPress,
    // Associate with onHover
    Stream<_i2.ValueChanged<bool>?>? $onHover,
    // Associate with onFocusChange
    Stream<_i2.ValueChanged<bool>?>? $onFocusChange,
    // Associate with style
    Stream<_i1.ButtonStyle?>? $style,
    // Associate with focusNode
    Stream<_i3.FocusNode?>? $focusNode,
    // Associate with autofocus
    Stream<bool>? $autofocus,
    // Associate with clipBehavior
    Stream<ui.Clip?>? $clipBehavior,
    // Associate with statesController
    Stream<_i3.WidgetStatesController?>? $statesController,
    // Associate with child
    Stream<_i3.Widget?>? $child,
    // Associate with iconAlignment
    Stream<_i1.IconAlignment>? $iconAlignment,
  }) : super(
          Argument(
            {
              'key': key,
              'onPressed': onPressed,
              'onLongPress': onLongPress,
              'onHover': onHover,
              'onFocusChange': onFocusChange,
              'style': style,
              'focusNode': focusNode,
              'autofocus': autofocus,
              'clipBehavior': clipBehavior,
              'statesController': statesController,
              'child': child,
              'iconAlignment': iconAlignment,
            },
            stream: {
              'key': $key,
              'onPressed': $onPressed,
              'onLongPress': $onLongPress,
              'onHover': $onHover,
              'onFocusChange': $onFocusChange,
              'style': $style,
              'focusNode': $focusNode,
              'autofocus': $autofocus,
              'clipBehavior': $clipBehavior,
              'statesController': $statesController,
              'child': $child,
              'iconAlignment': $iconAlignment,
            },
          ),
          builder: (args) => _i1.FilledButton(
            key: args('key'),
            onPressed: args('onPressed'),
            onLongPress: args('onLongPress'),
            onHover: args('onHover'),
            onFocusChange: args('onFocusChange'),
            style: args('style'),
            focusNode: args('focusNode'),
            autofocus: args('autofocus'),
            clipBehavior: args('clipBehavior'),
            statesController: args('statesController'),
            child: args('child'),
            iconAlignment: args('iconAlignment'),
          ),
        );

  @Goto(_i1.FilledButton.tonal)
  FilledButton.tonal({
    _i2.Key? key,
    required ui.VoidCallback? onPressed,
    ui.VoidCallback? onLongPress,
    _i2.ValueChanged<bool>? onHover,
    _i2.ValueChanged<bool>? onFocusChange,
    _i1.ButtonStyle? style,
    _i3.FocusNode? focusNode,
    bool autofocus = false,
    ui.Clip? clipBehavior = ui.Clip.none,
    _i3.WidgetStatesController? statesController,
    required _i3.Widget? child,
    // Associate with key
    Stream<_i2.Key?>? $key,
    // Associate with onPressed
    Stream<ui.VoidCallback?>? $onPressed,
    // Associate with onLongPress
    Stream<ui.VoidCallback?>? $onLongPress,
    // Associate with onHover
    Stream<_i2.ValueChanged<bool>?>? $onHover,
    // Associate with onFocusChange
    Stream<_i2.ValueChanged<bool>?>? $onFocusChange,
    // Associate with style
    Stream<_i1.ButtonStyle?>? $style,
    // Associate with focusNode
    Stream<_i3.FocusNode?>? $focusNode,
    // Associate with autofocus
    Stream<bool>? $autofocus,
    // Associate with clipBehavior
    Stream<ui.Clip?>? $clipBehavior,
    // Associate with statesController
    Stream<_i3.WidgetStatesController?>? $statesController,
    // Associate with child
    Stream<_i3.Widget?>? $child,
  }) : super(
          Argument(
            {
              'key': key,
              'onPressed': onPressed,
              'onLongPress': onLongPress,
              'onHover': onHover,
              'onFocusChange': onFocusChange,
              'style': style,
              'focusNode': focusNode,
              'autofocus': autofocus,
              'clipBehavior': clipBehavior,
              'statesController': statesController,
              'child': child,
            },
            stream: {
              'key': $key,
              'onPressed': $onPressed,
              'onLongPress': $onLongPress,
              'onHover': $onHover,
              'onFocusChange': $onFocusChange,
              'style': $style,
              'focusNode': $focusNode,
              'autofocus': $autofocus,
              'clipBehavior': $clipBehavior,
              'statesController': $statesController,
              'child': $child,
            },
          ),
          builder: (args) => _i1.FilledButton.tonal(
            key: args('key'),
            onPressed: args('onPressed'),
            onLongPress: args('onLongPress'),
            onHover: args('onHover'),
            onFocusChange: args('onFocusChange'),
            style: args('style'),
            focusNode: args('focusNode'),
            autofocus: args('autofocus'),
            clipBehavior: args('clipBehavior'),
            statesController: args('statesController'),
            child: args('child'),
          ),
        );

  @Goto(_i1.FilledButton.icon)
  FilledButton.icon({
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
    // Associate with key
    Stream<_i2.Key?>? $key,
    // Associate with onPressed
    Stream<ui.VoidCallback?>? $onPressed,
    // Associate with onLongPress
    Stream<ui.VoidCallback?>? $onLongPress,
    // Associate with onHover
    Stream<_i2.ValueChanged<bool>?>? $onHover,
    // Associate with onFocusChange
    Stream<_i2.ValueChanged<bool>?>? $onFocusChange,
    // Associate with style
    Stream<_i1.ButtonStyle?>? $style,
    // Associate with focusNode
    Stream<_i3.FocusNode?>? $focusNode,
    // Associate with autofocus
    Stream<bool?>? $autofocus,
    // Associate with clipBehavior
    Stream<ui.Clip?>? $clipBehavior,
    // Associate with statesController
    Stream<_i3.WidgetStatesController?>? $statesController,
    // Associate with icon
    Stream<_i3.Widget?>? $icon,
    // Associate with label
    Stream<_i3.Widget>? $label,
    // Associate with iconAlignment
    Stream<_i1.IconAlignment>? $iconAlignment,
  }) : super(
          Argument(
            {
              'key': key,
              'onPressed': onPressed,
              'onLongPress': onLongPress,
              'onHover': onHover,
              'onFocusChange': onFocusChange,
              'style': style,
              'focusNode': focusNode,
              'autofocus': autofocus,
              'clipBehavior': clipBehavior,
              'statesController': statesController,
              'icon': icon,
              'label': label,
              'iconAlignment': iconAlignment,
            },
            stream: {
              'key': $key,
              'onPressed': $onPressed,
              'onLongPress': $onLongPress,
              'onHover': $onHover,
              'onFocusChange': $onFocusChange,
              'style': $style,
              'focusNode': $focusNode,
              'autofocus': $autofocus,
              'clipBehavior': $clipBehavior,
              'statesController': $statesController,
              'icon': $icon,
              'label': $label,
              'iconAlignment': $iconAlignment,
            },
          ),
          builder: (args) => _i1.FilledButton.icon(
            key: args('key'),
            onPressed: args('onPressed'),
            onLongPress: args('onLongPress'),
            onHover: args('onHover'),
            onFocusChange: args('onFocusChange'),
            style: args('style'),
            focusNode: args('focusNode'),
            autofocus: args('autofocus'),
            clipBehavior: args('clipBehavior'),
            statesController: args('statesController'),
            icon: args('icon'),
            label: args('label'),
            iconAlignment: args('iconAlignment'),
          ),
        );

  @Goto(_i1.FilledButton.tonalIcon)
  FilledButton.tonalIcon({
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
    // Associate with key
    Stream<_i2.Key?>? $key,
    // Associate with onPressed
    Stream<ui.VoidCallback?>? $onPressed,
    // Associate with onLongPress
    Stream<ui.VoidCallback?>? $onLongPress,
    // Associate with onHover
    Stream<_i2.ValueChanged<bool>?>? $onHover,
    // Associate with onFocusChange
    Stream<_i2.ValueChanged<bool>?>? $onFocusChange,
    // Associate with style
    Stream<_i1.ButtonStyle?>? $style,
    // Associate with focusNode
    Stream<_i3.FocusNode?>? $focusNode,
    // Associate with autofocus
    Stream<bool?>? $autofocus,
    // Associate with clipBehavior
    Stream<ui.Clip?>? $clipBehavior,
    // Associate with statesController
    Stream<_i3.WidgetStatesController?>? $statesController,
    // Associate with icon
    Stream<_i3.Widget?>? $icon,
    // Associate with label
    Stream<_i3.Widget>? $label,
    // Associate with iconAlignment
    Stream<_i1.IconAlignment>? $iconAlignment,
  }) : super(
          Argument(
            {
              'key': key,
              'onPressed': onPressed,
              'onLongPress': onLongPress,
              'onHover': onHover,
              'onFocusChange': onFocusChange,
              'style': style,
              'focusNode': focusNode,
              'autofocus': autofocus,
              'clipBehavior': clipBehavior,
              'statesController': statesController,
              'icon': icon,
              'label': label,
              'iconAlignment': iconAlignment,
            },
            stream: {
              'key': $key,
              'onPressed': $onPressed,
              'onLongPress': $onLongPress,
              'onHover': $onHover,
              'onFocusChange': $onFocusChange,
              'style': $style,
              'focusNode': $focusNode,
              'autofocus': $autofocus,
              'clipBehavior': $clipBehavior,
              'statesController': $statesController,
              'icon': $icon,
              'label': $label,
              'iconAlignment': $iconAlignment,
            },
          ),
          builder: (args) => _i1.FilledButton.tonalIcon(
            key: args('key'),
            onPressed: args('onPressed'),
            onLongPress: args('onLongPress'),
            onHover: args('onHover'),
            onFocusChange: args('onFocusChange'),
            style: args('style'),
            focusNode: args('focusNode'),
            autofocus: args('autofocus'),
            clipBehavior: args('clipBehavior'),
            statesController: args('statesController'),
            icon: args('icon'),
            label: args('label'),
            iconAlignment: args('iconAlignment'),
          ),
        );
}
