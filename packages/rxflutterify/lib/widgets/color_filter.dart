library rxflutterify; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:ui' as ui;

import 'package:flutter/foundation.dart' as _i2;
import 'package:flutter/widgets.dart' as _i1;

import '../wrapper.dart';

final class ColorFiltered extends Wrapper {
  @Goto(_i1.ColorFiltered.new)
  ColorFiltered(
    $ $config, {
    required ui.ColorFilter colorFilter,
    _i1.Widget? child,
    _i2.Key? key,
  }) : super(
          Argument({
            #colorFilter: colorFilter,
            #child: child,
            #key: key,
          }),
          builder: (args) => _i1.ColorFiltered(
            colorFilter: args(#colorFilter),
            child: args(#child),
            key: args(#key),
          ),
        );
}
