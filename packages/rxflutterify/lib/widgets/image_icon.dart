library rxflutterify; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:ui' as ui;

import 'package:flutter/foundation.dart' as _i3;
import 'package:flutter/painting.dart' as _i2;
import 'package:flutter/widgets.dart' as _i1;

import '../wrapper.dart';

final class ImageIcon extends Wrapper {
  @Goto(_i1.ImageIcon.new)
  ImageIcon(
    _i2.ImageProvider? image, {
    _i3.Key? key,
    double? size,
    ui.Color? color,
    String? semanticLabel,
    // Associate with image
    Stream<_i2.ImageProvider?>? $image,
    // Associate with key
    Stream<_i3.Key?>? $key,
    // Associate with size
    Stream<double?>? $size,
    // Associate with color
    Stream<ui.Color?>? $color,
    // Associate with semanticLabel
    Stream<String?>? $semanticLabel,
  }) : super(
          Argument(
            {
              'image': image,
              'key': key,
              'size': size,
              'color': color,
              'semanticLabel': semanticLabel,
            },
            stream: {
              'image': $image,
              'key': $key,
              'size': $size,
              'color': $color,
              'semanticLabel': $semanticLabel,
            },
          ),
          builder: (args) => _i1.ImageIcon(
            args('image'),
            key: args('key'),
            size: args('size'),
            color: args('color'),
            semanticLabel: args('semanticLabel'),
          ),
        );
}
