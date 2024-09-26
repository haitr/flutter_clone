library rxflutterify_binding; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:ui' as ui;

import 'package:flutter/foundation.dart' as _i2;
import 'package:flutter/material.dart' as _i1;
import 'package:flutter/painting.dart' as _i4;
import 'package:flutter/widgets.dart' as _i3;

import '../wrapper.dart';

final class CheckboxMenuButton extends Wrapper {
  @Goto(_i1.CheckboxMenuButton.new)
  CheckboxMenuButton(
    $ $config, {
    _i2.Key? key,
    required bool? value,
    bool tristate = false,
    bool isError = false,
    required _i2.ValueChanged<bool?>? onChanged,
    _i2.ValueChanged<bool>? onHover,
    _i2.ValueChanged<bool>? onFocusChange,
    _i3.FocusNode? focusNode,
    _i3.MenuSerializableShortcut? shortcut,
    _i1.ButtonStyle? style,
    _i3.WidgetStatesController? statesController,
    ui.Clip clipBehavior = ui.Clip.none,
    _i3.Widget? trailingIcon,
    bool closeOnActivate = true,
    required _i3.Widget? child,
  }) : super(
          Argument({
            #key: key,
            #value: value,
            #tristate: tristate,
            #isError: isError,
            #onChanged: onChanged,
            #onHover: onHover,
            #onFocusChange: onFocusChange,
            #focusNode: focusNode,
            #shortcut: shortcut,
            #style: style,
            #statesController: statesController,
            #clipBehavior: clipBehavior,
            #trailingIcon: trailingIcon,
            #closeOnActivate: closeOnActivate,
            #child: child,
          }),
          builder: (args) => _i1.CheckboxMenuButton(
            key: args(#key),
            value: args(#value),
            tristate: args(#tristate),
            isError: args(#isError),
            onChanged: args(#onChanged),
            onHover: args(#onHover),
            onFocusChange: args(#onFocusChange),
            focusNode: args(#focusNode),
            shortcut: args(#shortcut),
            style: args(#style),
            statesController: args(#statesController),
            clipBehavior: args(#clipBehavior),
            trailingIcon: args(#trailingIcon),
            closeOnActivate: args(#closeOnActivate),
            child: args(#child),
          ),
        );
}

final class MenuAnchor extends Wrapper {
  @Goto(_i1.MenuAnchor.new)
  MenuAnchor(
    $ $config, {
    _i2.Key? key,
    _i1.MenuController? controller,
    _i3.FocusNode? childFocusNode,
    _i1.MenuStyle? style,
    ui.Offset? alignmentOffset = ui.Offset.zero,
    ui.Clip clipBehavior = ui.Clip.hardEdge,
    bool anchorTapClosesMenu = false,
    bool consumeOutsideTap = false,
    ui.VoidCallback? onOpen,
    ui.VoidCallback? onClose,
    bool crossAxisUnconstrained = true,
    required List<_i3.Widget> menuChildren,
    _i1.MenuAnchorChildBuilder? builder,
    _i3.Widget? child,
  }) : super(
          Argument({
            #key: key,
            #controller: controller,
            #childFocusNode: childFocusNode,
            #style: style,
            #alignmentOffset: alignmentOffset,
            #clipBehavior: clipBehavior,
            #anchorTapClosesMenu: anchorTapClosesMenu,
            #consumeOutsideTap: consumeOutsideTap,
            #onOpen: onOpen,
            #onClose: onClose,
            #crossAxisUnconstrained: crossAxisUnconstrained,
            #menuChildren: menuChildren,
            #builder: builder,
            #child: child,
          }),
          builder: (args) => _i1.MenuAnchor(
            key: args(#key),
            controller: args(#controller),
            childFocusNode: args(#childFocusNode),
            style: args(#style),
            alignmentOffset: args(#alignmentOffset),
            clipBehavior: args(#clipBehavior),
            anchorTapClosesMenu: args(#anchorTapClosesMenu),
            consumeOutsideTap: args(#consumeOutsideTap),
            onOpen: args(#onOpen),
            onClose: args(#onClose),
            crossAxisUnconstrained: args(#crossAxisUnconstrained),
            menuChildren: args(#menuChildren),
            builder: args(#builder),
            child: args(#child),
          ),
        );
}

final class MenuBar extends Wrapper {
  @Goto(_i1.MenuBar.new)
  MenuBar(
    $ $config, {
    _i2.Key? key,
    _i1.MenuStyle? style,
    ui.Clip clipBehavior = ui.Clip.none,
    _i1.MenuController? controller,
    required List<_i3.Widget> children,
  }) : super(
          Argument({
            #key: key,
            #style: style,
            #clipBehavior: clipBehavior,
            #controller: controller,
            #children: children,
          }),
          builder: (args) => _i1.MenuBar(
            key: args(#key),
            style: args(#style),
            clipBehavior: args(#clipBehavior),
            controller: args(#controller),
            children: args(#children),
          ),
        );
}

final class RadioMenuButton<T> extends Wrapper {
  @Goto(_i1.RadioMenuButton.new)
  RadioMenuButton(
    $ $config, {
    _i2.Key? key,
    required T value,
    required T? groupValue,
    required _i2.ValueChanged<T?>? onChanged,
    bool toggleable = false,
    _i2.ValueChanged<bool>? onHover,
    _i2.ValueChanged<bool>? onFocusChange,
    _i3.FocusNode? focusNode,
    _i3.MenuSerializableShortcut? shortcut,
    _i1.ButtonStyle? style,
    _i3.WidgetStatesController? statesController,
    ui.Clip clipBehavior = ui.Clip.none,
    _i3.Widget? trailingIcon,
    bool closeOnActivate = true,
    required _i3.Widget? child,
  }) : super(
          Argument({
            #key: key,
            #value: value,
            #groupValue: groupValue,
            #onChanged: onChanged,
            #toggleable: toggleable,
            #onHover: onHover,
            #onFocusChange: onFocusChange,
            #focusNode: focusNode,
            #shortcut: shortcut,
            #style: style,
            #statesController: statesController,
            #clipBehavior: clipBehavior,
            #trailingIcon: trailingIcon,
            #closeOnActivate: closeOnActivate,
            #child: child,
          }),
          builder: (args) => _i1.RadioMenuButton<T>(
            key: args(#key),
            value: args(#value),
            groupValue: args(#groupValue),
            onChanged: args(#onChanged),
            toggleable: args(#toggleable),
            onHover: args(#onHover),
            onFocusChange: args(#onFocusChange),
            focusNode: args(#focusNode),
            shortcut: args(#shortcut),
            style: args(#style),
            statesController: args(#statesController),
            clipBehavior: args(#clipBehavior),
            trailingIcon: args(#trailingIcon),
            closeOnActivate: args(#closeOnActivate),
            child: args(#child),
          ),
        );
}

final class MenuItemButton extends Wrapper {
  @Goto(_i1.MenuItemButton.new)
  MenuItemButton(
    $ $config, {
    _i2.Key? key,
    ui.VoidCallback? onPressed,
    _i2.ValueChanged<bool>? onHover,
    bool requestFocusOnHover = true,
    _i2.ValueChanged<bool>? onFocusChange,
    _i3.FocusNode? focusNode,
    bool autofocus = false,
    _i3.MenuSerializableShortcut? shortcut,
    String? semanticsLabel,
    _i1.ButtonStyle? style,
    _i3.WidgetStatesController? statesController,
    ui.Clip clipBehavior = ui.Clip.none,
    _i3.Widget? leadingIcon,
    _i3.Widget? trailingIcon,
    bool closeOnActivate = true,
    _i4.Axis overflowAxis = _i4.Axis.horizontal,
    _i3.Widget? child,
  }) : super(
          Argument({
            #key: key,
            #onPressed: onPressed,
            #onHover: onHover,
            #requestFocusOnHover: requestFocusOnHover,
            #onFocusChange: onFocusChange,
            #focusNode: focusNode,
            #autofocus: autofocus,
            #shortcut: shortcut,
            #semanticsLabel: semanticsLabel,
            #style: style,
            #statesController: statesController,
            #clipBehavior: clipBehavior,
            #leadingIcon: leadingIcon,
            #trailingIcon: trailingIcon,
            #closeOnActivate: closeOnActivate,
            #overflowAxis: overflowAxis,
            #child: child,
          }),
          builder: (args) => _i1.MenuItemButton(
            key: args(#key),
            onPressed: args(#onPressed),
            onHover: args(#onHover),
            requestFocusOnHover: args(#requestFocusOnHover),
            onFocusChange: args(#onFocusChange),
            focusNode: args(#focusNode),
            autofocus: args(#autofocus),
            shortcut: args(#shortcut),
            semanticsLabel: args(#semanticsLabel),
            style: args(#style),
            statesController: args(#statesController),
            clipBehavior: args(#clipBehavior),
            leadingIcon: args(#leadingIcon),
            trailingIcon: args(#trailingIcon),
            closeOnActivate: args(#closeOnActivate),
            overflowAxis: args(#overflowAxis),
            child: args(#child),
          ),
        );
}

final class MenuAcceleratorCallbackBinding extends Wrapper {
  @Goto(_i1.MenuAcceleratorCallbackBinding.new)
  MenuAcceleratorCallbackBinding(
    $ $config, {
    _i2.Key? key,
    ui.VoidCallback? onInvoke,
    bool hasSubmenu = false,
    required _i3.Widget child,
  }) : super(
          Argument({
            #key: key,
            #onInvoke: onInvoke,
            #hasSubmenu: hasSubmenu,
            #child: child,
          }),
          builder: (args) => _i1.MenuAcceleratorCallbackBinding(
            key: args(#key),
            onInvoke: args(#onInvoke),
            hasSubmenu: args(#hasSubmenu),
            child: args(#child),
          ),
        );
}

final class SubmenuButton extends Wrapper {
  @Goto(_i1.SubmenuButton.new)
  SubmenuButton(
    $ $config, {
    _i2.Key? key,
    _i2.ValueChanged<bool>? onHover,
    _i2.ValueChanged<bool>? onFocusChange,
    ui.VoidCallback? onOpen,
    ui.VoidCallback? onClose,
    _i1.MenuController? controller,
    _i1.ButtonStyle? style,
    _i1.MenuStyle? menuStyle,
    ui.Offset? alignmentOffset,
    ui.Clip clipBehavior = ui.Clip.hardEdge,
    _i3.FocusNode? focusNode,
    _i3.WidgetStatesController? statesController,
    _i3.Widget? leadingIcon,
    _i3.Widget? trailingIcon,
    required List<_i3.Widget> menuChildren,
    required _i3.Widget? child,
  }) : super(
          Argument({
            #key: key,
            #onHover: onHover,
            #onFocusChange: onFocusChange,
            #onOpen: onOpen,
            #onClose: onClose,
            #controller: controller,
            #style: style,
            #menuStyle: menuStyle,
            #alignmentOffset: alignmentOffset,
            #clipBehavior: clipBehavior,
            #focusNode: focusNode,
            #statesController: statesController,
            #leadingIcon: leadingIcon,
            #trailingIcon: trailingIcon,
            #menuChildren: menuChildren,
            #child: child,
          }),
          builder: (args) => _i1.SubmenuButton(
            key: args(#key),
            onHover: args(#onHover),
            onFocusChange: args(#onFocusChange),
            onOpen: args(#onOpen),
            onClose: args(#onClose),
            controller: args(#controller),
            style: args(#style),
            menuStyle: args(#menuStyle),
            alignmentOffset: args(#alignmentOffset),
            clipBehavior: args(#clipBehavior),
            focusNode: args(#focusNode),
            statesController: args(#statesController),
            leadingIcon: args(#leadingIcon),
            trailingIcon: args(#trailingIcon),
            menuChildren: args(#menuChildren),
            child: args(#child),
          ),
        );
}

final class MenuAcceleratorLabel extends Wrapper {
  @Goto(_i1.MenuAcceleratorLabel.new)
  MenuAcceleratorLabel(
    $ $config,
    String label, {
    _i2.Key? key,
    _i1.MenuAcceleratorChildBuilder builder = _i1.MenuAcceleratorLabel.defaultLabelBuilder,
  }) : super(
          Argument({
            #label: label,
            #key: key,
            #builder: builder,
          }),
          builder: (args) => _i1.MenuAcceleratorLabel(
            args(#label),
            key: args(#key),
            builder: args(#builder),
          ),
        );
}
