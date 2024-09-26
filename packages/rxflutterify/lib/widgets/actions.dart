library rxflutterify; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:flutter/foundation.dart' as _i2;
import 'package:flutter/services.dart' as _i3;
import 'package:flutter/widgets.dart' as _i1;

import '../wrapper.dart';

final class Actions extends Wrapper {
  @Goto(_i1.Actions.new)
  Actions({
    _i2.Key? key,
    _i1.ActionDispatcher? dispatcher,
    required Map<Type, _i1.Action<_i1.Intent>> actions,
    required _i1.Widget child,
    // Associate with key
    Stream<_i2.Key?>? $key,
    // Associate with dispatcher
    Stream<_i1.ActionDispatcher?>? $dispatcher,
    // Associate with actions
    Stream<Map<Type, _i1.Action<_i1.Intent>>>? $actions,
    // Associate with child
    Stream<_i1.Widget>? $child,
  }) : super(
          Argument(
            {
              'key': key,
              'dispatcher': dispatcher,
              'actions': actions,
              'child': child,
            },
            stream: {
              'key': $key,
              'dispatcher': $dispatcher,
              'actions': $actions,
              'child': $child,
            },
          ),
          builder: (args) => _i1.Actions(
            key: args('key'),
            dispatcher: args('dispatcher'),
            actions: args('actions'),
            child: args('child'),
          ),
        );
}

final class FocusableActionDetector extends Wrapper {
  @Goto(_i1.FocusableActionDetector.new)
  FocusableActionDetector({
    _i2.Key? key,
    bool enabled = true,
    _i1.FocusNode? focusNode,
    bool autofocus = false,
    bool descendantsAreFocusable = true,
    bool descendantsAreTraversable = true,
    Map<_i1.ShortcutActivator, _i1.Intent>? shortcuts,
    Map<Type, _i1.Action<_i1.Intent>>? actions,
    _i2.ValueChanged<bool>? onShowFocusHighlight,
    _i2.ValueChanged<bool>? onShowHoverHighlight,
    _i2.ValueChanged<bool>? onFocusChange,
    _i3.MouseCursor mouseCursor = _i3.MouseCursor.defer,
    bool includeFocusSemantics = true,
    required _i1.Widget child,
    // Associate with key
    Stream<_i2.Key?>? $key,
    // Associate with enabled
    Stream<bool>? $enabled,
    // Associate with focusNode
    Stream<_i1.FocusNode?>? $focusNode,
    // Associate with autofocus
    Stream<bool>? $autofocus,
    // Associate with descendantsAreFocusable
    Stream<bool>? $descendantsAreFocusable,
    // Associate with descendantsAreTraversable
    Stream<bool>? $descendantsAreTraversable,
    // Associate with shortcuts
    Stream<Map<_i1.ShortcutActivator, _i1.Intent>?>? $shortcuts,
    // Associate with actions
    Stream<Map<Type, _i1.Action<_i1.Intent>>?>? $actions,
    // Associate with onShowFocusHighlight
    Stream<_i2.ValueChanged<bool>?>? $onShowFocusHighlight,
    // Associate with onShowHoverHighlight
    Stream<_i2.ValueChanged<bool>?>? $onShowHoverHighlight,
    // Associate with onFocusChange
    Stream<_i2.ValueChanged<bool>?>? $onFocusChange,
    // Associate with mouseCursor
    Stream<_i3.MouseCursor>? $mouseCursor,
    // Associate with includeFocusSemantics
    Stream<bool>? $includeFocusSemantics,
    // Associate with child
    Stream<_i1.Widget>? $child,
  }) : super(
          Argument(
            {
              'key': key,
              'enabled': enabled,
              'focusNode': focusNode,
              'autofocus': autofocus,
              'descendantsAreFocusable': descendantsAreFocusable,
              'descendantsAreTraversable': descendantsAreTraversable,
              'shortcuts': shortcuts,
              'actions': actions,
              'onShowFocusHighlight': onShowFocusHighlight,
              'onShowHoverHighlight': onShowHoverHighlight,
              'onFocusChange': onFocusChange,
              'mouseCursor': mouseCursor,
              'includeFocusSemantics': includeFocusSemantics,
              'child': child,
            },
            stream: {
              'key': $key,
              'enabled': $enabled,
              'focusNode': $focusNode,
              'autofocus': $autofocus,
              'descendantsAreFocusable': $descendantsAreFocusable,
              'descendantsAreTraversable': $descendantsAreTraversable,
              'shortcuts': $shortcuts,
              'actions': $actions,
              'onShowFocusHighlight': $onShowFocusHighlight,
              'onShowHoverHighlight': $onShowHoverHighlight,
              'onFocusChange': $onFocusChange,
              'mouseCursor': $mouseCursor,
              'includeFocusSemantics': $includeFocusSemantics,
              'child': $child,
            },
          ),
          builder: (args) => _i1.FocusableActionDetector(
            key: args('key'),
            enabled: args('enabled'),
            focusNode: args('focusNode'),
            autofocus: args('autofocus'),
            descendantsAreFocusable: args('descendantsAreFocusable'),
            descendantsAreTraversable: args('descendantsAreTraversable'),
            shortcuts: args('shortcuts'),
            actions: args('actions'),
            onShowFocusHighlight: args('onShowFocusHighlight'),
            onShowHoverHighlight: args('onShowHoverHighlight'),
            onFocusChange: args('onFocusChange'),
            mouseCursor: args('mouseCursor'),
            includeFocusSemantics: args('includeFocusSemantics'),
            child: args('child'),
          ),
        );
}

final class ActionListener extends Wrapper {
  @Goto(_i1.ActionListener.new)
  ActionListener({
    _i2.Key? key,
    required _i1.ActionListenerCallback listener,
    required _i1.Action<_i1.Intent> action,
    required _i1.Widget child,
    // Associate with key
    Stream<_i2.Key?>? $key,
    // Associate with listener
    Stream<_i1.ActionListenerCallback>? $listener,
    // Associate with action
    Stream<_i1.Action<_i1.Intent>>? $action,
    // Associate with child
    Stream<_i1.Widget>? $child,
  }) : super(
          Argument(
            {
              'key': key,
              'listener': listener,
              'action': action,
              'child': child,
            },
            stream: {
              'key': $key,
              'listener': $listener,
              'action': $action,
              'child': $child,
            },
          ),
          builder: (args) => _i1.ActionListener(
            key: args('key'),
            listener: args('listener'),
            action: args('action'),
            child: args('child'),
          ),
        );
}
