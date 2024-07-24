library rxflutterify; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:ui' as ui;

import 'package:flutter/cupertino.dart' as _i1;
import 'package:flutter/foundation.dart' as _i2;
import 'package:flutter/widgets.dart' as _i3;

import '../wrapper.dart';

final class CupertinoDesktopTextSelectionToolbar extends Wrapper {
  @Goto(_i1.CupertinoDesktopTextSelectionToolbar.new)
  CupertinoDesktopTextSelectionToolbar(
    $ $config, {
    _i2.Key? key,
    required ui.Offset anchor,
    required List<_i3.Widget> children,
  }) : super(
          Argument({
            #key: key,
            #anchor: anchor,
            #children: children,
          }),
          builder: (args) => _i1.CupertinoDesktopTextSelectionToolbar(
            key: args(#key),
            anchor: args(#anchor),
            children: args(#children),
          ),
        );
}
