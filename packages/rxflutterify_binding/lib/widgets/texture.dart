library rxflutterify_binding; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:ui' as ui;

import 'package:flutter/foundation.dart' as _i2;
import 'package:flutter/widgets.dart' as _i1;

import '../wrapper.dart';

final class Texture extends Wrapper {
  @Goto(_i1.Texture.new)
  Texture(
    $ $config, {
    _i2.Key? key,
    required int textureId,
    bool freeze = false,
    ui.FilterQuality filterQuality = ui.FilterQuality.low,
  }) : super(
          Argument({
            #key: key,
            #textureId: textureId,
            #freeze: freeze,
            #filterQuality: filterQuality,
          }),
          builder: (args) => _i1.Texture(
            key: args(#key),
            textureId: args(#textureId),
            freeze: args(#freeze),
            filterQuality: args(#filterQuality),
          ),
        );
}
