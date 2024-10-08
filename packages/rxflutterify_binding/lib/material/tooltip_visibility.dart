library rxflutterify_binding; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:flutter/foundation.dart' as _i2;
import 'package:flutter/material.dart' as _i1;
import 'package:flutter/widgets.dart' as _i3;

import '../wrapper.dart';

final class TooltipVisibility extends Wrapper {
  @Goto(_i1.TooltipVisibility.new)
  TooltipVisibility(
    $ $config, {
    _i2.Key? key,
    required bool visible,
    required _i3.Widget child,
  }) : super(
          Argument({
            #key: key,
            #visible: visible,
            #child: child,
          }),
          builder: (args) => _i1.TooltipVisibility(
            key: args(#key),
            visible: args(#visible),
            child: args(#child),
          ),
        );
}
