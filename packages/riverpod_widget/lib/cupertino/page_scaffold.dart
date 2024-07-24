library rxflutterify; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:ui' as ui;

import 'package:flutter/cupertino.dart' as _i1;
import 'package:flutter/foundation.dart' as _i2;
import 'package:flutter/widgets.dart' as _i3;

import '../wrapper.dart';

final class CupertinoPageScaffold extends Wrapper {
  @Goto(_i1.CupertinoPageScaffold.new)
  CupertinoPageScaffold(
    $ $config, {
    _i2.Key? key,
    _i1.ObstructingPreferredSizeWidget? navigationBar,
    ui.Color? backgroundColor,
    bool resizeToAvoidBottomInset = true,
    required _i3.Widget child,
  }) : super(
          Argument({
            #key: key,
            #navigationBar: navigationBar,
            #backgroundColor: backgroundColor,
            #resizeToAvoidBottomInset: resizeToAvoidBottomInset,
            #child: child,
          }),
          builder: (args) => _i1.CupertinoPageScaffold(
            key: args(#key),
            navigationBar: args(#navigationBar),
            backgroundColor: args(#backgroundColor),
            resizeToAvoidBottomInset: args(#resizeToAvoidBottomInset),
            child: args(#child),
          ),
        );
}
