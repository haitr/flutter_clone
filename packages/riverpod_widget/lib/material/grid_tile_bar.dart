library rxflutterify; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:ui' as ui;

import 'package:flutter/foundation.dart' as _i2;
import 'package:flutter/material.dart' as _i1;
import 'package:flutter/widgets.dart' as _i3;

import '../wrapper.dart';

final class GridTileBar extends Wrapper {
  @Goto(_i1.GridTileBar.new)
  GridTileBar(
    $ $config, {
    _i2.Key? key,
    ui.Color? backgroundColor,
    _i3.Widget? leading,
    _i3.Widget? title,
    _i3.Widget? subtitle,
    _i3.Widget? trailing,
  }) : super(
          Argument({
            #key: key,
            #backgroundColor: backgroundColor,
            #leading: leading,
            #title: title,
            #subtitle: subtitle,
            #trailing: trailing,
          }),
          builder: (args) => _i1.GridTileBar(
            key: args(#key),
            backgroundColor: args(#backgroundColor),
            leading: args(#leading),
            title: args(#title),
            subtitle: args(#subtitle),
            trailing: args(#trailing),
          ),
        );
}
