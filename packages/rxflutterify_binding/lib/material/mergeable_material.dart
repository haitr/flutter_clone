library rxflutterify_binding; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:ui' as ui;

import 'package:flutter/foundation.dart' as _i2;
import 'package:flutter/material.dart' as _i1;
import 'package:flutter/painting.dart' as _i3;

import '../wrapper.dart';

final class MergeableMaterial extends Wrapper {
  @Goto(_i1.MergeableMaterial.new)
  MergeableMaterial(
    $ $config, {
    _i2.Key? key,
    _i3.Axis mainAxis = _i3.Axis.vertical,
    double elevation = 2,
    bool hasDividers = false,
    List<_i1.MergeableMaterialItem> children = const [],
    ui.Color? dividerColor,
  }) : super(
          Argument({
            #key: key,
            #mainAxis: mainAxis,
            #elevation: elevation,
            #hasDividers: hasDividers,
            #children: children,
            #dividerColor: dividerColor,
          }),
          builder: (args) => _i1.MergeableMaterial(
            key: args(#key),
            mainAxis: args(#mainAxis),
            elevation: args(#elevation),
            hasDividers: args(#hasDividers),
            children: args(#children),
            dividerColor: args(#dividerColor),
          ),
        );
}
