library rxflutterify_binding; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:ui' as ui;

import 'package:flutter/foundation.dart' as _i2;
import 'package:flutter/widgets.dart' as _i1;

import '../wrapper.dart';

final class ImageFiltered extends Wrapper {
  @Goto(_i1.ImageFiltered.new)
  ImageFiltered(
    $ $config, {
    _i2.Key? key,
    required ui.ImageFilter imageFilter,
    _i1.Widget? child,
    bool enabled = true,
  }) : super(
          Argument({
            #key: key,
            #imageFilter: imageFilter,
            #child: child,
            #enabled: enabled,
          }),
          builder: (args) => _i1.ImageFiltered(
            key: args(#key),
            imageFilter: args(#imageFilter),
            child: args(#child),
            enabled: args(#enabled),
          ),
        );
}
