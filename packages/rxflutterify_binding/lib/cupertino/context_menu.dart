library rxflutterify_binding; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:flutter/cupertino.dart' as _i1;
import 'package:flutter/foundation.dart' as _i2;
import 'package:flutter/widgets.dart' as _i3;

import '../wrapper.dart';

final class CupertinoContextMenu extends Wrapper {
  @Goto(_i1.CupertinoContextMenu.new)
  CupertinoContextMenu(
    $ $config, {
    _i2.Key? key,
    required List<_i3.Widget> actions,
    required _i3.Widget child,
    bool enableHapticFeedback = false,
  }) : super(
          Argument({
            #key: key,
            #actions: actions,
            #child: child,
            #enableHapticFeedback: enableHapticFeedback,
          }),
          builder: (args) => _i1.CupertinoContextMenu(
            key: args(#key),
            actions: args(#actions),
            child: args(#child),
            enableHapticFeedback: args(#enableHapticFeedback),
          ),
        );

  @Goto(_i1.CupertinoContextMenu.builder)
  CupertinoContextMenu.builder(
    $ $config, {
    _i2.Key? key,
    required List<_i3.Widget> actions,
    required _i1.CupertinoContextMenuBuilder builder,
    bool enableHapticFeedback = false,
  }) : super(
          Argument({
            #key: key,
            #actions: actions,
            #builder: builder,
            #enableHapticFeedback: enableHapticFeedback,
          }),
          builder: (args) => _i1.CupertinoContextMenu.builder(
            key: args(#key),
            actions: args(#actions),
            builder: args(#builder),
            enableHapticFeedback: args(#enableHapticFeedback),
          ),
        );
}
