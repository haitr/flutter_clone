library rxflutterify_binding; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:flutter/foundation.dart' as _i2;
import 'package:flutter/material.dart' as _i1;
import 'package:flutter/widgets.dart' as _i3;

import '../wrapper.dart';

final class DefaultTabController extends Wrapper {
  @Goto(_i1.DefaultTabController.new)
  DefaultTabController(
    $ $config, {
    _i2.Key? key,
    required int length,
    int initialIndex = 0,
    required _i3.Widget child,
    Duration? animationDuration,
  }) : super(
          Argument({
            #key: key,
            #length: length,
            #initialIndex: initialIndex,
            #child: child,
            #animationDuration: animationDuration,
          }),
          builder: (args) => _i1.DefaultTabController(
            key: args(#key),
            length: args(#length),
            initialIndex: args(#initialIndex),
            child: args(#child),
            animationDuration: args(#animationDuration),
          ),
        );
}
