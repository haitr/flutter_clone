library rxflutterify_binding; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:flutter/animation.dart' as _i4;
import 'package:flutter/foundation.dart' as _i2;
import 'package:flutter/material.dart' as _i1;
import 'package:flutter/painting.dart' as _i3;
import 'package:flutter/widgets.dart' as _i5;

import '../wrapper.dart';

final class DrawerHeader extends Wrapper {
  @Goto(_i1.DrawerHeader.new)
  DrawerHeader(
    $ $config, {
    _i2.Key? key,
    _i3.Decoration? decoration,
    _i3.EdgeInsetsGeometry? margin = const _i3.EdgeInsets.only(bottom: 8.0),
    _i3.EdgeInsetsGeometry padding = const _i3.EdgeInsets.fromLTRB(
      16.0,
      16.0,
      16.0,
      8.0,
    ),
    Duration duration = const Duration(milliseconds: 250),
    _i4.Curve curve = _i4.Curves.fastOutSlowIn,
    required _i5.Widget? child,
  }) : super(
          Argument({
            #key: key,
            #decoration: decoration,
            #margin: margin,
            #padding: padding,
            #duration: duration,
            #curve: curve,
            #child: child,
          }),
          builder: (args) => _i1.DrawerHeader(
            key: args(#key),
            decoration: args(#decoration),
            margin: args(#margin),
            padding: args(#padding),
            duration: args(#duration),
            curve: args(#curve),
            child: args(#child),
          ),
        );
}
