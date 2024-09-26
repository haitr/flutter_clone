library rxflutterify; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:ui' as ui;

import 'package:flutter/foundation.dart' as _i2;
import 'package:flutter/material.dart' as _i1;
import 'package:flutter/widgets.dart' as _i3;

import '../wrapper.dart';

final class CheckboxMenuButton extends Wrapper {
  @Goto(_i1.CheckboxMenuButton.new)
  CheckboxMenuButton({
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
    // Associate with key
    Stream<_i2.Key?>? $key,
    // Associate with value
    Stream<bool?>? $value,
    // Associate with tristate
    Stream<bool>? $tristate,
    // Associate with isError
    Stream<bool>? $isError,
    // Associate with onChanged
    Stream<_i2.ValueChanged<bool?>?>? $onChanged,
    // Associate with onHover
    Stream<_i2.ValueChanged<bool>?>? $onHover,
    // Associate with onFocusChange
    Stream<_i2.ValueChanged<bool>?>? $onFocusChange,
    // Associate with focusNode
    Stream<_i3.FocusNode?>? $focusNode,
    // Associate with shortcut
    Stream<_i3.MenuSerializableShortcut?>? $shortcut,
    // Associate with style
    Stream<_i1.ButtonStyle?>? $style,
    // Associate with statesController
    Stream<_i3.WidgetStatesController?>? $statesController,
    // Associate with clipBehavior
    Stream<ui.Clip>? $clipBehavior,
    // Associate with trailingIcon
    Stream<_i3.Widget?>? $trailingIcon,
    // Associate with closeOnActivate
    Stream<bool>? $closeOnActivate,
    // Associate with child
    Stream<_i3.Widget?>? $child,
  }) : super(
          Argument(
            {
              'key': key,
              'value': value,
              'tristate': tristate,
              'isError': isError,
              'onChanged': onChanged,
              'onHover': onHover,
              'onFocusChange': onFocusChange,
              'focusNode': focusNode,
              'shortcut': shortcut,
              'style': style,
              'statesController': statesController,
              'clipBehavior': clipBehavior,
              'trailingIcon': trailingIcon,
              'closeOnActivate': closeOnActivate,
              'child': child,
            },
            stream: {
              'key': $key,
              'value': $value,
              'tristate': $tristate,
              'isError': $isError,
              'onChanged': $onChanged,
              'onHover': $onHover,
              'onFocusChange': $onFocusChange,
              'focusNode': $focusNode,
              'shortcut': $shortcut,
              'style': $style,
              'statesController': $statesController,
              'clipBehavior': $clipBehavior,
              'trailingIcon': $trailingIcon,
              'closeOnActivate': $closeOnActivate,
              'child': $child,
            },
          ),
          builder: (args) => _i1.CheckboxMenuButton(
            key: args('key'),
            value: args('value'),
            tristate: args('tristate'),
            isError: args('isError'),
            onChanged: args('onChanged'),
            onHover: args('onHover'),
            onFocusChange: args('onFocusChange'),
            focusNode: args('focusNode'),
            shortcut: args('shortcut'),
            style: args('style'),
            statesController: args('statesController'),
            clipBehavior: args('clipBehavior'),
            trailingIcon: args('trailingIcon'),
            closeOnActivate: args('closeOnActivate'),
            child: args('child'),
          ),
        );
}

final class MenuAnchor extends Wrapper {
  @Goto(_i1.MenuAnchor.new)
  MenuAnchor({
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
    // Associate with key
    Stream<_i2.Key?>? $key,
    // Associate with controller
    Stream<_i1.MenuController?>? $controller,
    // Associate with childFocusNode
    Stream<_i3.FocusNode?>? $childFocusNode,
    // Associate with style
    Stream<_i1.MenuStyle?>? $style,
    // Associate with alignmentOffset
    Stream<ui.Offset?>? $alignmentOffset,
    // Associate with clipBehavior
    Stream<ui.Clip>? $clipBehavior,
    // Associate with anchorTapClosesMenu
    Stream<bool>? $anchorTapClosesMenu,
    // Associate with consumeOutsideTap
    Stream<bool>? $consumeOutsideTap,
    // Associate with onOpen
    Stream<ui.VoidCallback?>? $onOpen,
    // Associate with onClose
    Stream<ui.VoidCallback?>? $onClose,
    // Associate with crossAxisUnconstrained
    Stream<bool>? $crossAxisUnconstrained,
    // Associate with menuChildren
    Stream<List<_i3.Widget>>? $menuChildren,
    // Associate with builder
    Stream<_i1.MenuAnchorChildBuilder?>? $builder,
    // Associate with child
    Stream<_i3.Widget?>? $child,
  }) : super(
          Argument(
            {
              'key': key,
              'controller': controller,
              'childFocusNode': childFocusNode,
              'style': style,
              'alignmentOffset': alignmentOffset,
              'clipBehavior': clipBehavior,
              'anchorTapClosesMenu': anchorTapClosesMenu,
              'consumeOutsideTap': consumeOutsideTap,
              'onOpen': onOpen,
              'onClose': onClose,
              'crossAxisUnconstrained': crossAxisUnconstrained,
              'menuChildren': menuChildren,
              'builder': builder,
              'child': child,
            },
            stream: {
              'key': $key,
              'controller': $controller,
              'childFocusNode': $childFocusNode,
              'style': $style,
              'alignmentOffset': $alignmentOffset,
              'clipBehavior': $clipBehavior,
              'anchorTapClosesMenu': $anchorTapClosesMenu,
              'consumeOutsideTap': $consumeOutsideTap,
              'onOpen': $onOpen,
              'onClose': $onClose,
              'crossAxisUnconstrained': $crossAxisUnconstrained,
              'menuChildren': $menuChildren,
              'builder': $builder,
              'child': $child,
            },
          ),
          builder: (args) => _i1.MenuAnchor(
            key: args('key'),
            controller: args('controller'),
            childFocusNode: args('childFocusNode'),
            style: args('style'),
            alignmentOffset: args('alignmentOffset'),
            clipBehavior: args('clipBehavior'),
            anchorTapClosesMenu: args('anchorTapClosesMenu'),
            consumeOutsideTap: args('consumeOutsideTap'),
            onOpen: args('onOpen'),
            onClose: args('onClose'),
            crossAxisUnconstrained: args('crossAxisUnconstrained'),
            menuChildren: args('menuChildren'),
            builder: args('builder'),
            child: args('child'),
          ),
        );
}

final class MenuBar extends Wrapper {
  @Goto(_i1.MenuBar.new)
  MenuBar({
    _i2.Key? key,
    _i1.MenuStyle? style,
    ui.Clip clipBehavior = ui.Clip.none,
    _i1.MenuController? controller,
    required List<_i3.Widget> children,
    // Associate with key
    Stream<_i2.Key?>? $key,
    // Associate with style
    Stream<_i1.MenuStyle?>? $style,
    // Associate with clipBehavior
    Stream<ui.Clip>? $clipBehavior,
    // Associate with controller
    Stream<_i1.MenuController?>? $controller,
    // Associate with children
    Stream<List<_i3.Widget>>? $children,
  }) : super(
          Argument(
            {
              'key': key,
              'style': style,
              'clipBehavior': clipBehavior,
              'controller': controller,
              'children': children,
            },
            stream: {
              'key': $key,
              'style': $style,
              'clipBehavior': $clipBehavior,
              'controller': $controller,
              'children': $children,
            },
          ),
          builder: (args) => _i1.MenuBar(
            key: args('key'),
            style: args('style'),
            clipBehavior: args('clipBehavior'),
            controller: args('controller'),
            children: args('children'),
          ),
        );
}

final class RadioMenuButton<T> extends Wrapper {
  @Goto(_i1.RadioMenuButton.new)
  RadioMenuButton({
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
    // Associate with key
    Stream<_i2.Key?>? $key,
    // Associate with value
    Stream<T>? $value,
    // Associate with groupValue
    Stream<T?>? $groupValue,
    // Associate with onChanged
    Stream<_i2.ValueChanged<T?>?>? $onChanged,
    // Associate with toggleable
    Stream<bool>? $toggleable,
    // Associate with onHover
    Stream<_i2.ValueChanged<bool>?>? $onHover,
    // Associate with onFocusChange
    Stream<_i2.ValueChanged<bool>?>? $onFocusChange,
    // Associate with focusNode
    Stream<_i3.FocusNode?>? $focusNode,
    // Associate with shortcut
    Stream<_i3.MenuSerializableShortcut?>? $shortcut,
    // Associate with style
    Stream<_i1.ButtonStyle?>? $style,
    // Associate with statesController
    Stream<_i3.WidgetStatesController?>? $statesController,
    // Associate with clipBehavior
    Stream<ui.Clip>? $clipBehavior,
    // Associate with trailingIcon
    Stream<_i3.Widget?>? $trailingIcon,
    // Associate with closeOnActivate
    Stream<bool>? $closeOnActivate,
    // Associate with child
    Stream<_i3.Widget?>? $child,
  }) : super(
          Argument(
            {
              'key': key,
              'value': value,
              'groupValue': groupValue,
              'onChanged': onChanged,
              'toggleable': toggleable,
              'onHover': onHover,
              'onFocusChange': onFocusChange,
              'focusNode': focusNode,
              'shortcut': shortcut,
              'style': style,
              'statesController': statesController,
              'clipBehavior': clipBehavior,
              'trailingIcon': trailingIcon,
              'closeOnActivate': closeOnActivate,
              'child': child,
            },
            stream: {
              'key': $key,
              'value': $value,
              'groupValue': $groupValue,
              'onChanged': $onChanged,
              'toggleable': $toggleable,
              'onHover': $onHover,
              'onFocusChange': $onFocusChange,
              'focusNode': $focusNode,
              'shortcut': $shortcut,
              'style': $style,
              'statesController': $statesController,
              'clipBehavior': $clipBehavior,
              'trailingIcon': $trailingIcon,
              'closeOnActivate': $closeOnActivate,
              'child': $child,
            },
          ),
          builder: (args) => _i1.RadioMenuButton<T>(
            key: args('key'),
            value: args('value'),
            groupValue: args('groupValue'),
            onChanged: args('onChanged'),
            toggleable: args('toggleable'),
            onHover: args('onHover'),
            onFocusChange: args('onFocusChange'),
            focusNode: args('focusNode'),
            shortcut: args('shortcut'),
            style: args('style'),
            statesController: args('statesController'),
            clipBehavior: args('clipBehavior'),
            trailingIcon: args('trailingIcon'),
            closeOnActivate: args('closeOnActivate'),
            child: args('child'),
          ),
        );
}

final class MenuItemButton extends Wrapper {
  @Goto(_i1.MenuItemButton.new)
  MenuItemButton({
    _i2.Key? key,
    ui.VoidCallback? onPressed,
    _i2.ValueChanged<bool>? onHover,
    bool requestFocusOnHover = true,
    _i2.ValueChanged<bool>? onFocusChange,
    _i3.FocusNode? focusNode,
    _i3.MenuSerializableShortcut? shortcut,
    _i1.ButtonStyle? style,
    _i3.WidgetStatesController? statesController,
    ui.Clip clipBehavior = ui.Clip.none,
    _i3.Widget? leadingIcon,
    _i3.Widget? trailingIcon,
    bool closeOnActivate = true,
    required _i3.Widget? child,
    // Associate with key
    Stream<_i2.Key?>? $key,
    // Associate with onPressed
    Stream<ui.VoidCallback?>? $onPressed,
    // Associate with onHover
    Stream<_i2.ValueChanged<bool>?>? $onHover,
    // Associate with requestFocusOnHover
    Stream<bool>? $requestFocusOnHover,
    // Associate with onFocusChange
    Stream<_i2.ValueChanged<bool>?>? $onFocusChange,
    // Associate with focusNode
    Stream<_i3.FocusNode?>? $focusNode,
    // Associate with shortcut
    Stream<_i3.MenuSerializableShortcut?>? $shortcut,
    // Associate with style
    Stream<_i1.ButtonStyle?>? $style,
    // Associate with statesController
    Stream<_i3.WidgetStatesController?>? $statesController,
    // Associate with clipBehavior
    Stream<ui.Clip>? $clipBehavior,
    // Associate with leadingIcon
    Stream<_i3.Widget?>? $leadingIcon,
    // Associate with trailingIcon
    Stream<_i3.Widget?>? $trailingIcon,
    // Associate with closeOnActivate
    Stream<bool>? $closeOnActivate,
    // Associate with child
    Stream<_i3.Widget?>? $child,
  }) : super(
          Argument(
            {
              'key': key,
              'onPressed': onPressed,
              'onHover': onHover,
              'requestFocusOnHover': requestFocusOnHover,
              'onFocusChange': onFocusChange,
              'focusNode': focusNode,
              'shortcut': shortcut,
              'style': style,
              'statesController': statesController,
              'clipBehavior': clipBehavior,
              'leadingIcon': leadingIcon,
              'trailingIcon': trailingIcon,
              'closeOnActivate': closeOnActivate,
              'child': child,
            },
            stream: {
              'key': $key,
              'onPressed': $onPressed,
              'onHover': $onHover,
              'requestFocusOnHover': $requestFocusOnHover,
              'onFocusChange': $onFocusChange,
              'focusNode': $focusNode,
              'shortcut': $shortcut,
              'style': $style,
              'statesController': $statesController,
              'clipBehavior': $clipBehavior,
              'leadingIcon': $leadingIcon,
              'trailingIcon': $trailingIcon,
              'closeOnActivate': $closeOnActivate,
              'child': $child,
            },
          ),
          builder: (args) => _i1.MenuItemButton(
            key: args('key'),
            onPressed: args('onPressed'),
            onHover: args('onHover'),
            requestFocusOnHover: args('requestFocusOnHover'),
            onFocusChange: args('onFocusChange'),
            focusNode: args('focusNode'),
            shortcut: args('shortcut'),
            style: args('style'),
            statesController: args('statesController'),
            clipBehavior: args('clipBehavior'),
            leadingIcon: args('leadingIcon'),
            trailingIcon: args('trailingIcon'),
            closeOnActivate: args('closeOnActivate'),
            child: args('child'),
          ),
        );
}

final class MenuAcceleratorCallbackBinding extends Wrapper {
  @Goto(_i1.MenuAcceleratorCallbackBinding.new)
  MenuAcceleratorCallbackBinding({
    _i2.Key? key,
    ui.VoidCallback? onInvoke,
    bool hasSubmenu = false,
    required _i3.Widget child,
    // Associate with key
    Stream<_i2.Key?>? $key,
    // Associate with onInvoke
    Stream<ui.VoidCallback?>? $onInvoke,
    // Associate with hasSubmenu
    Stream<bool>? $hasSubmenu,
    // Associate with child
    Stream<_i3.Widget>? $child,
  }) : super(
          Argument(
            {
              'key': key,
              'onInvoke': onInvoke,
              'hasSubmenu': hasSubmenu,
              'child': child,
            },
            stream: {
              'key': $key,
              'onInvoke': $onInvoke,
              'hasSubmenu': $hasSubmenu,
              'child': $child,
            },
          ),
          builder: (args) => _i1.MenuAcceleratorCallbackBinding(
            key: args('key'),
            onInvoke: args('onInvoke'),
            hasSubmenu: args('hasSubmenu'),
            child: args('child'),
          ),
        );
}

final class SubmenuButton extends Wrapper {
  @Goto(_i1.SubmenuButton.new)
  SubmenuButton({
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
    // Associate with key
    Stream<_i2.Key?>? $key,
    // Associate with onHover
    Stream<_i2.ValueChanged<bool>?>? $onHover,
    // Associate with onFocusChange
    Stream<_i2.ValueChanged<bool>?>? $onFocusChange,
    // Associate with onOpen
    Stream<ui.VoidCallback?>? $onOpen,
    // Associate with onClose
    Stream<ui.VoidCallback?>? $onClose,
    // Associate with controller
    Stream<_i1.MenuController?>? $controller,
    // Associate with style
    Stream<_i1.ButtonStyle?>? $style,
    // Associate with menuStyle
    Stream<_i1.MenuStyle?>? $menuStyle,
    // Associate with alignmentOffset
    Stream<ui.Offset?>? $alignmentOffset,
    // Associate with clipBehavior
    Stream<ui.Clip>? $clipBehavior,
    // Associate with focusNode
    Stream<_i3.FocusNode?>? $focusNode,
    // Associate with statesController
    Stream<_i3.WidgetStatesController?>? $statesController,
    // Associate with leadingIcon
    Stream<_i3.Widget?>? $leadingIcon,
    // Associate with trailingIcon
    Stream<_i3.Widget?>? $trailingIcon,
    // Associate with menuChildren
    Stream<List<_i3.Widget>>? $menuChildren,
    // Associate with child
    Stream<_i3.Widget?>? $child,
  }) : super(
          Argument(
            {
              'key': key,
              'onHover': onHover,
              'onFocusChange': onFocusChange,
              'onOpen': onOpen,
              'onClose': onClose,
              'controller': controller,
              'style': style,
              'menuStyle': menuStyle,
              'alignmentOffset': alignmentOffset,
              'clipBehavior': clipBehavior,
              'focusNode': focusNode,
              'statesController': statesController,
              'leadingIcon': leadingIcon,
              'trailingIcon': trailingIcon,
              'menuChildren': menuChildren,
              'child': child,
            },
            stream: {
              'key': $key,
              'onHover': $onHover,
              'onFocusChange': $onFocusChange,
              'onOpen': $onOpen,
              'onClose': $onClose,
              'controller': $controller,
              'style': $style,
              'menuStyle': $menuStyle,
              'alignmentOffset': $alignmentOffset,
              'clipBehavior': $clipBehavior,
              'focusNode': $focusNode,
              'statesController': $statesController,
              'leadingIcon': $leadingIcon,
              'trailingIcon': $trailingIcon,
              'menuChildren': $menuChildren,
              'child': $child,
            },
          ),
          builder: (args) => _i1.SubmenuButton(
            key: args('key'),
            onHover: args('onHover'),
            onFocusChange: args('onFocusChange'),
            onOpen: args('onOpen'),
            onClose: args('onClose'),
            controller: args('controller'),
            style: args('style'),
            menuStyle: args('menuStyle'),
            alignmentOffset: args('alignmentOffset'),
            clipBehavior: args('clipBehavior'),
            focusNode: args('focusNode'),
            statesController: args('statesController'),
            leadingIcon: args('leadingIcon'),
            trailingIcon: args('trailingIcon'),
            menuChildren: args('menuChildren'),
            child: args('child'),
          ),
        );
}

final class MenuAcceleratorLabel extends Wrapper {
  @Goto(_i1.MenuAcceleratorLabel.new)
  MenuAcceleratorLabel(
    String label, {
    _i2.Key? key,
    _i1.MenuAcceleratorChildBuilder builder = _i1.MenuAcceleratorLabel.defaultLabelBuilder,
    // Associate with label
    Stream<String>? $label,
    // Associate with key
    Stream<_i2.Key?>? $key,
    // Associate with builder
    Stream<_i1.MenuAcceleratorChildBuilder>? $builder,
  }) : super(
          Argument(
            {
              'label': label,
              'key': key,
              'builder': builder,
            },
            stream: {
              'label': $label,
              'key': $key,
              'builder': $builder,
            },
          ),
          builder: (args) => _i1.MenuAcceleratorLabel(
            args('label'),
            key: args('key'),
            builder: args('builder'),
          ),
        );
}
