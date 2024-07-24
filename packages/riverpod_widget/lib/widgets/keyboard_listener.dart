library rxflutterify; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:flutter/foundation.dart' as _i2;
import 'package:flutter/services.dart' as _i3;
import 'package:flutter/widgets.dart' as _i1;

import '../wrapper.dart';

final class KeyboardListener extends Wrapper {
  @Goto(_i1.KeyboardListener.new)
  KeyboardListener(
    $ $config, {
    _i2.Key? key,
    required _i1.FocusNode focusNode,
    bool autofocus = false,
    bool includeSemantics = true,
    _i2.ValueChanged<_i3.KeyEvent>? onKeyEvent,
    required _i1.Widget child,
  }) : super(
          Argument({
            #key: key,
            #focusNode: focusNode,
            #autofocus: autofocus,
            #includeSemantics: includeSemantics,
            #onKeyEvent: onKeyEvent,
            #child: child,
          }),
          builder: (args) => _i1.KeyboardListener(
            key: args(#key),
            focusNode: args(#focusNode),
            autofocus: args(#autofocus),
            includeSemantics: args(#includeSemantics),
            onKeyEvent: args(#onKeyEvent),
            child: args(#child),
          ),
        );
}
