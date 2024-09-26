library rxflutterify; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:flutter/foundation.dart' as _i2;
import 'package:flutter/widgets.dart' as _i1;

import '../wrapper.dart';

final class Focus extends Wrapper {
  @Goto(_i1.Focus.new)
  Focus({
    _i2.Key? key,
    required _i1.Widget child,
    _i1.FocusNode? focusNode,
    _i1.FocusNode? parentNode,
    bool autofocus = false,
    _i2.ValueChanged<bool>? onFocusChange,
    _i1.FocusOnKeyEventCallback? onKeyEvent,
    _i1.FocusOnKeyCallback? onKey,
    bool? canRequestFocus,
    bool? skipTraversal,
    bool? descendantsAreFocusable,
    bool? descendantsAreTraversable,
    bool includeSemantics = true,
    String? debugLabel,
    // Associate with key
    Stream<_i2.Key?>? $key,
    // Associate with child
    Stream<_i1.Widget>? $child,
    // Associate with focusNode
    Stream<_i1.FocusNode?>? $focusNode,
    // Associate with parentNode
    Stream<_i1.FocusNode?>? $parentNode,
    // Associate with autofocus
    Stream<bool>? $autofocus,
    // Associate with onFocusChange
    Stream<_i2.ValueChanged<bool>?>? $onFocusChange,
    // Associate with onKeyEvent
    Stream<_i1.FocusOnKeyEventCallback?>? $onKeyEvent,
    // Associate with onKey
    Stream<_i1.FocusOnKeyCallback?>? $onKey,
    // Associate with canRequestFocus
    Stream<bool?>? $canRequestFocus,
    // Associate with skipTraversal
    Stream<bool?>? $skipTraversal,
    // Associate with descendantsAreFocusable
    Stream<bool?>? $descendantsAreFocusable,
    // Associate with descendantsAreTraversable
    Stream<bool?>? $descendantsAreTraversable,
    // Associate with includeSemantics
    Stream<bool>? $includeSemantics,
    // Associate with debugLabel
    Stream<String?>? $debugLabel,
  }) : super(
          Argument(
            {
              'key': key,
              'child': child,
              'focusNode': focusNode,
              'parentNode': parentNode,
              'autofocus': autofocus,
              'onFocusChange': onFocusChange,
              'onKeyEvent': onKeyEvent,
              'onKey': onKey,
              'canRequestFocus': canRequestFocus,
              'skipTraversal': skipTraversal,
              'descendantsAreFocusable': descendantsAreFocusable,
              'descendantsAreTraversable': descendantsAreTraversable,
              'includeSemantics': includeSemantics,
              'debugLabel': debugLabel,
            },
            stream: {
              'key': $key,
              'child': $child,
              'focusNode': $focusNode,
              'parentNode': $parentNode,
              'autofocus': $autofocus,
              'onFocusChange': $onFocusChange,
              'onKeyEvent': $onKeyEvent,
              'onKey': $onKey,
              'canRequestFocus': $canRequestFocus,
              'skipTraversal': $skipTraversal,
              'descendantsAreFocusable': $descendantsAreFocusable,
              'descendantsAreTraversable': $descendantsAreTraversable,
              'includeSemantics': $includeSemantics,
              'debugLabel': $debugLabel,
            },
          ),
          builder: (args) => _i1.Focus(
            key: args('key'),
            child: args('child'),
            focusNode: args('focusNode'),
            parentNode: args('parentNode'),
            autofocus: args('autofocus'),
            onFocusChange: args('onFocusChange'),
            onKeyEvent: args('onKeyEvent'),
            onKey: args('onKey'),
            canRequestFocus: args('canRequestFocus'),
            skipTraversal: args('skipTraversal'),
            descendantsAreFocusable: args('descendantsAreFocusable'),
            descendantsAreTraversable: args('descendantsAreTraversable'),
            includeSemantics: args('includeSemantics'),
            debugLabel: args('debugLabel'),
          ),
        );

  @Goto(_i1.Focus.withExternalFocusNode)
  Focus.withExternalFocusNode({
    _i2.Key? key,
    required _i1.Widget child,
    required _i1.FocusNode focusNode,
    _i1.FocusNode? parentNode,
    bool autofocus = false,
    _i2.ValueChanged<bool>? onFocusChange,
    bool includeSemantics = true,
    // Associate with key
    Stream<_i2.Key?>? $key,
    // Associate with child
    Stream<_i1.Widget>? $child,
    // Associate with focusNode
    Stream<_i1.FocusNode>? $focusNode,
    // Associate with parentNode
    Stream<_i1.FocusNode?>? $parentNode,
    // Associate with autofocus
    Stream<bool>? $autofocus,
    // Associate with onFocusChange
    Stream<_i2.ValueChanged<bool>?>? $onFocusChange,
    // Associate with includeSemantics
    Stream<bool>? $includeSemantics,
  }) : super(
          Argument(
            {
              'key': key,
              'child': child,
              'focusNode': focusNode,
              'parentNode': parentNode,
              'autofocus': autofocus,
              'onFocusChange': onFocusChange,
              'includeSemantics': includeSemantics,
            },
            stream: {
              'key': $key,
              'child': $child,
              'focusNode': $focusNode,
              'parentNode': $parentNode,
              'autofocus': $autofocus,
              'onFocusChange': $onFocusChange,
              'includeSemantics': $includeSemantics,
            },
          ),
          builder: (args) => _FocusWithExternalFocusNode(
            key: args('key'),
            child: args('child'),
            focusNode: args('focusNode'),
            parentNode: args('parentNode'),
            autofocus: args('autofocus'),
            onFocusChange: args('onFocusChange'),
            includeSemantics: args('includeSemantics'),
          ),
        );
}

final class ExcludeFocus extends Wrapper {
  @Goto(_i1.ExcludeFocus.new)
  ExcludeFocus({
    _i2.Key? key,
    bool excluding = true,
    required _i1.Widget child,
    // Associate with key
    Stream<_i2.Key?>? $key,
    // Associate with excluding
    Stream<bool>? $excluding,
    // Associate with child
    Stream<_i1.Widget>? $child,
  }) : super(
          Argument(
            {
              'key': key,
              'excluding': excluding,
              'child': child,
            },
            stream: {
              'key': $key,
              'excluding': $excluding,
              'child': $child,
            },
          ),
          builder: (args) => _i1.ExcludeFocus(
            key: args('key'),
            excluding: args('excluding'),
            child: args('child'),
          ),
        );
}

final class FocusScope extends Wrapper {
  @Goto(_i1.FocusScope.new)
  FocusScope({
    _i2.Key? key,
    _i1.FocusScopeNode? node,
    _i1.FocusNode? parentNode,
    required _i1.Widget child,
    bool autofocus = false,
    _i2.ValueChanged<bool>? onFocusChange,
    bool? canRequestFocus,
    bool? skipTraversal,
    _i1.FocusOnKeyEventCallback? onKeyEvent,
    _i1.FocusOnKeyCallback? onKey,
    String? debugLabel,
    // Associate with key
    Stream<_i2.Key?>? $key,
    // Associate with node
    Stream<_i1.FocusScopeNode?>? $node,
    // Associate with parentNode
    Stream<_i1.FocusNode?>? $parentNode,
    // Associate with child
    Stream<_i1.Widget>? $child,
    // Associate with autofocus
    Stream<bool>? $autofocus,
    // Associate with onFocusChange
    Stream<_i2.ValueChanged<bool>?>? $onFocusChange,
    // Associate with canRequestFocus
    Stream<bool?>? $canRequestFocus,
    // Associate with skipTraversal
    Stream<bool?>? $skipTraversal,
    // Associate with onKeyEvent
    Stream<_i1.FocusOnKeyEventCallback?>? $onKeyEvent,
    // Associate with onKey
    Stream<_i1.FocusOnKeyCallback?>? $onKey,
    // Associate with debugLabel
    Stream<String?>? $debugLabel,
  }) : super(
          Argument(
            {
              'key': key,
              'node': node,
              'parentNode': parentNode,
              'child': child,
              'autofocus': autofocus,
              'onFocusChange': onFocusChange,
              'canRequestFocus': canRequestFocus,
              'skipTraversal': skipTraversal,
              'onKeyEvent': onKeyEvent,
              'onKey': onKey,
              'debugLabel': debugLabel,
            },
            stream: {
              'key': $key,
              'node': $node,
              'parentNode': $parentNode,
              'child': $child,
              'autofocus': $autofocus,
              'onFocusChange': $onFocusChange,
              'canRequestFocus': $canRequestFocus,
              'skipTraversal': $skipTraversal,
              'onKeyEvent': $onKeyEvent,
              'onKey': $onKey,
              'debugLabel': $debugLabel,
            },
          ),
          builder: (args) => _i1.FocusScope(
            key: args('key'),
            node: args('node'),
            parentNode: args('parentNode'),
            child: args('child'),
            autofocus: args('autofocus'),
            onFocusChange: args('onFocusChange'),
            canRequestFocus: args('canRequestFocus'),
            skipTraversal: args('skipTraversal'),
            onKeyEvent: args('onKeyEvent'),
            onKey: args('onKey'),
            debugLabel: args('debugLabel'),
          ),
        );

  @Goto(_i1.FocusScope.withExternalFocusNode)
  FocusScope.withExternalFocusNode({
    _i2.Key? key,
    required _i1.Widget child,
    required _i1.FocusScopeNode focusScopeNode,
    _i1.FocusNode? parentNode,
    bool autofocus = false,
    _i2.ValueChanged<bool>? onFocusChange,
    // Associate with key
    Stream<_i2.Key?>? $key,
    // Associate with child
    Stream<_i1.Widget>? $child,
    // Associate with focusScopeNode
    Stream<_i1.FocusScopeNode>? $focusScopeNode,
    // Associate with parentNode
    Stream<_i1.FocusNode?>? $parentNode,
    // Associate with autofocus
    Stream<bool>? $autofocus,
    // Associate with onFocusChange
    Stream<_i2.ValueChanged<bool>?>? $onFocusChange,
  }) : super(
          Argument(
            {
              'key': key,
              'child': child,
              'focusScopeNode': focusScopeNode,
              'parentNode': parentNode,
              'autofocus': autofocus,
              'onFocusChange': onFocusChange,
            },
            stream: {
              'key': $key,
              'child': $child,
              'focusScopeNode': $focusScopeNode,
              'parentNode': $parentNode,
              'autofocus': $autofocus,
              'onFocusChange': $onFocusChange,
            },
          ),
          builder: (args) => _FocusScopeWithExternalFocusNode(
            key: args('key'),
            child: args('child'),
            focusScopeNode: args('focusScopeNode'),
            parentNode: args('parentNode'),
            autofocus: args('autofocus'),
            onFocusChange: args('onFocusChange'),
          ),
        );
}

class _FocusWithExternalFocusNode extends _i1.Focus {
  const _FocusWithExternalFocusNode(
      {super.key,
      required super.child,
      required _i1.FocusNode super.focusNode,
      super.parentNode,
      super.autofocus,
      super.onFocusChange,
      super.includeSemantics});
  @override
  bool get _usingExternalFocus => true;
  @override
  _i1.FocusOnKeyEventCallback? get onKeyEvent => focusNode!.onKeyEvent;
  @override
  _i1.FocusOnKeyCallback? get onKey => focusNode!.onKey;
  @override
  bool get canRequestFocus => focusNode!.canRequestFocus;
  @override
  bool get skipTraversal => focusNode!.skipTraversal;
  @override
  bool get descendantsAreFocusable => focusNode!.descendantsAreFocusable;
  @override
  bool? get _descendantsAreTraversable => focusNode!.descendantsAreTraversable;
  @override
  String? get debugLabel => focusNode!.debugLabel;
}

class _FocusScopeWithExternalFocusNode extends _i1.FocusScope {
  const _FocusScopeWithExternalFocusNode(
      {super.key, required super.child, required _i1.FocusScopeNode focusScopeNode, super.parentNode, super.autofocus, super.onFocusChange})
      : super(node: focusScopeNode);
  @override
  bool get _usingExternalFocus => true;
  @override
  _i1.FocusOnKeyEventCallback? get onKeyEvent => focusNode!.onKeyEvent;
  @override
  _i1.FocusOnKeyCallback? get onKey => focusNode!.onKey;
  @override
  bool get canRequestFocus => focusNode!.canRequestFocus;
  @override
  bool get skipTraversal => focusNode!.skipTraversal;
  @override
  bool get descendantsAreFocusable => focusNode!.descendantsAreFocusable;
  @override
  bool get descendantsAreTraversable => focusNode!.descendantsAreTraversable;
  @override
  String? get debugLabel => focusNode!.debugLabel;
}
