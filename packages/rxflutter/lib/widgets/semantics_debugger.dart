library rxflutter; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:ui' as ui;

import 'package:flutter/foundation.dart' as _i2;
import 'package:flutter/painting.dart' as _i3;
import 'package:flutter/widgets.dart' as _i1;

import '../wrapper.dart';

final class SemanticsDebugger extends Wrapper {
  @Goto(_i1.SemanticsDebugger.new)
  SemanticsDebugger({
    _i2.Key? key,
    required _i1.Widget child,
    _i3.TextStyle labelStyle = const _i3.TextStyle(
      color: ui.Color(0xFF000000),
      fontSize: 10.0,
      height: 0.8,
    ),
    // Associate with key
    Stream<_i2.Key?>? $key,
    // Associate with child
    Stream<_i1.Widget>? $child,
    // Associate with labelStyle
    Stream<_i3.TextStyle>? $labelStyle,
  }) : super(
          Argument(
            {
              'key': key,
              'child': child,
              'labelStyle': labelStyle,
            },
            stream: {
              'key': $key,
              'child': $child,
              'labelStyle': $labelStyle,
            },
          ),
          builder: (args) => _i1.SemanticsDebugger(
            key: args('key'),
            child: args('child'),
            labelStyle: args('labelStyle'),
          ),
        );
}
