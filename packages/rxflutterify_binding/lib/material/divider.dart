library rxflutterify_binding; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:ui' as ui;

import 'package:flutter/foundation.dart' as _i2;
import 'package:flutter/material.dart' as _i1;

import '../wrapper.dart';

final class Divider extends Wrapper {
  @Goto(_i1.Divider.new)
  Divider(
    $ $config, {
    _i2.Key? key,
    double? height,
    double? thickness,
    double? indent,
    double? endIndent,
    ui.Color? color,
  }) : super(
          Argument({
            #key: key,
            #height: height,
            #thickness: thickness,
            #indent: indent,
            #endIndent: endIndent,
            #color: color,
          }),
          builder: (args) => _i1.Divider(
            key: args(#key),
            height: args(#height),
            thickness: args(#thickness),
            indent: args(#indent),
            endIndent: args(#endIndent),
            color: args(#color),
          ),
        );
}

final class VerticalDivider extends Wrapper {
  @Goto(_i1.VerticalDivider.new)
  VerticalDivider(
    $ $config, {
    _i2.Key? key,
    double? width,
    double? thickness,
    double? indent,
    double? endIndent,
    ui.Color? color,
  }) : super(
          Argument({
            #key: key,
            #width: width,
            #thickness: thickness,
            #indent: indent,
            #endIndent: endIndent,
            #color: color,
          }),
          builder: (args) => _i1.VerticalDivider(
            key: args(#key),
            width: args(#width),
            thickness: args(#thickness),
            indent: args(#indent),
            endIndent: args(#endIndent),
            color: args(#color),
          ),
        );
}
