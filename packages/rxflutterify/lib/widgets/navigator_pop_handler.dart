library rxflutterify; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:ui' as ui;

import 'package:flutter/foundation.dart' as _i2;
import 'package:flutter/widgets.dart' as _i1;

import '../wrapper.dart';

final class NavigatorPopHandler extends Wrapper {
  @Goto(_i1.NavigatorPopHandler.new)
  NavigatorPopHandler({
    _i2.Key? key,
    ui.VoidCallback? onPop,
    bool enabled = true,
    required _i1.Widget child,
    // Associate with key
    Stream<_i2.Key?>? $key,
    // Associate with onPop
    Stream<ui.VoidCallback?>? $onPop,
    // Associate with enabled
    Stream<bool>? $enabled,
    // Associate with child
    Stream<_i1.Widget>? $child,
  }) : super(
          Argument(
            {
              'key': key,
              'onPop': onPop,
              'enabled': enabled,
              'child': child,
            },
            stream: {
              'key': $key,
              'onPop': $onPop,
              'enabled': $enabled,
              'child': $child,
            },
          ),
          builder: (args) => _i1.NavigatorPopHandler(
            key: args('key'),
            onPop: args('onPop'),
            enabled: args('enabled'),
            child: args('child'),
          ),
        );
}
