library rxflutter; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:ui' as ui;

import 'package:flutter/foundation.dart' as _i2;
import 'package:flutter/widgets.dart' as _i1;

import '../wrapper.dart';

final class DisplayFeatureSubScreen extends Wrapper {
  @Goto(_i1.DisplayFeatureSubScreen.new)
  DisplayFeatureSubScreen({
    _i2.Key? key,
    ui.Offset? anchorPoint,
    required _i1.Widget child,
    // Associate with key
    Stream<_i2.Key?>? $key,
    // Associate with anchorPoint
    Stream<ui.Offset?>? $anchorPoint,
    // Associate with child
    Stream<_i1.Widget>? $child,
  }) : super(
          Argument(
            {
              'key': key,
              'anchorPoint': anchorPoint,
              'child': child,
            },
            stream: {
              'key': $key,
              'anchorPoint': $anchorPoint,
              'child': $child,
            },
          ),
          builder: (args) => _i1.DisplayFeatureSubScreen(
            key: args('key'),
            anchorPoint: args('anchorPoint'),
            child: args('child'),
          ),
        );
}
