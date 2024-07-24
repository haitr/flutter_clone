library rxflutterify; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:ui' as ui;

import 'package:flutter/foundation.dart' as _i2;
import 'package:flutter/painting.dart' as _i4;
import 'package:flutter/rendering.dart' as _i3;
import 'package:flutter/widgets.dart' as _i1;

import '../wrapper.dart';

final class OverflowBar extends Wrapper {
  @Goto(_i1.OverflowBar.new)
  OverflowBar(
    $ $config, {
    _i2.Key? key,
    double spacing = 0.0,
    _i3.MainAxisAlignment? alignment,
    double overflowSpacing = 0.0,
    _i1.OverflowBarAlignment overflowAlignment = _i1.OverflowBarAlignment.start,
    _i4.VerticalDirection overflowDirection = _i4.VerticalDirection.down,
    ui.TextDirection? textDirection,
    List<_i1.Widget> children = const [],
  }) : super(
          Argument({
            #key: key,
            #spacing: spacing,
            #alignment: alignment,
            #overflowSpacing: overflowSpacing,
            #overflowAlignment: overflowAlignment,
            #overflowDirection: overflowDirection,
            #textDirection: textDirection,
            #children: children,
          }),
          builder: (args) => _i1.OverflowBar(
            key: args(#key),
            spacing: args(#spacing),
            alignment: args(#alignment),
            overflowSpacing: args(#overflowSpacing),
            overflowAlignment: args(#overflowAlignment),
            overflowDirection: args(#overflowDirection),
            textDirection: args(#textDirection),
            children: args(#children),
          ),
        );
}
