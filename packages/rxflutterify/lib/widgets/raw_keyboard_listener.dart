library rxflutterify; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:flutter/foundation.dart' as _i2;
import 'package:flutter/services.dart' as _i3;
import 'package:flutter/widgets.dart' as _i1;

import '../wrapper.dart';

final class RawKeyboardListener extends Wrapper {
  @Goto(_i1.RawKeyboardListener.new)
  RawKeyboardListener({
    _i2.Key? key,
    required _i1.FocusNode focusNode,
    bool autofocus = false,
    bool includeSemantics = true,
    _i2.ValueChanged<_i3.RawKeyEvent>? onKey,
    required _i1.Widget child,
    // Associate with key
    Stream<_i2.Key?>? $key,
    // Associate with focusNode
    Stream<_i1.FocusNode>? $focusNode,
    // Associate with autofocus
    Stream<bool>? $autofocus,
    // Associate with includeSemantics
    Stream<bool>? $includeSemantics,
    // Associate with onKey
    Stream<_i2.ValueChanged<_i3.RawKeyEvent>?>? $onKey,
    // Associate with child
    Stream<_i1.Widget>? $child,
  }) : super(
          Argument(
            {
              'key': key,
              'focusNode': focusNode,
              'autofocus': autofocus,
              'includeSemantics': includeSemantics,
              'onKey': onKey,
              'child': child,
            },
            stream: {
              'key': $key,
              'focusNode': $focusNode,
              'autofocus': $autofocus,
              'includeSemantics': $includeSemantics,
              'onKey': $onKey,
              'child': $child,
            },
          ),
          builder: (args) => _i1.RawKeyboardListener(
            key: args('key'),
            focusNode: args('focusNode'),
            autofocus: args('autofocus'),
            includeSemantics: args('includeSemantics'),
            onKey: args('onKey'),
            child: args('child'),
          ),
        );
}
