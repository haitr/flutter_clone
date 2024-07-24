library rxflutterify; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:ui' as ui;

import 'package:flutter/foundation.dart' as _i2;
import 'package:flutter/services.dart' as _i3;
import 'package:flutter/widgets.dart' as _i1;

import '../wrapper.dart';

final class DefaultSelectionStyle extends Wrapper {
  @Goto(_i1.DefaultSelectionStyle.new)
  DefaultSelectionStyle(
    $ $config, {
    _i2.Key? key,
    ui.Color? cursorColor,
    ui.Color? selectionColor,
    _i3.MouseCursor? mouseCursor,
    required _i1.Widget child,
  }) : super(
          Argument({
            #key: key,
            #cursorColor: cursorColor,
            #selectionColor: selectionColor,
            #mouseCursor: mouseCursor,
            #child: child,
          }),
          builder: (args) => _i1.DefaultSelectionStyle(
            key: args(#key),
            cursorColor: args(#cursorColor),
            selectionColor: args(#selectionColor),
            mouseCursor: args(#mouseCursor),
            child: args(#child),
          ),
        );

  @Goto(_i1.DefaultSelectionStyle.fallback)
  DefaultSelectionStyle.fallback(
    $ $config, {
    _i2.Key? key,
  }) : super(
          Argument({#key: key}),
          builder: (args) => _i1.DefaultSelectionStyle.fallback(key: args(#key)),
        );
}
