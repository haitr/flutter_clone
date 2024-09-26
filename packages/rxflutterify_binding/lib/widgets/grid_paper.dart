library rxflutterify_binding; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:ui' as ui;

import 'package:flutter/foundation.dart' as _i2;
import 'package:flutter/widgets.dart' as _i1;

import '../wrapper.dart';

final class GridPaper extends Wrapper {
  @Goto(_i1.GridPaper.new)
  GridPaper(
    $ $config, {
    _i2.Key? key,
    ui.Color color = const ui.Color(0x7FC3E8F3),
    double interval = 100.0,
    int divisions = 2,
    int subdivisions = 5,
    _i1.Widget? child,
  }) : super(
          Argument({
            #key: key,
            #color: color,
            #interval: interval,
            #divisions: divisions,
            #subdivisions: subdivisions,
            #child: child,
          }),
          builder: (args) => _i1.GridPaper(
            key: args(#key),
            color: args(#color),
            interval: args(#interval),
            divisions: args(#divisions),
            subdivisions: args(#subdivisions),
            child: args(#child),
          ),
        );
}
