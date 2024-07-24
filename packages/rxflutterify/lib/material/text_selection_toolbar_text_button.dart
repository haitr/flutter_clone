library rxflutterify; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:ui' as ui;

import 'package:flutter/foundation.dart' as _i2;
import 'package:flutter/material.dart' as _i1;
import 'package:flutter/painting.dart' as _i4;
import 'package:flutter/widgets.dart' as _i3;

import '../wrapper.dart';

final class TextSelectionToolbarTextButton extends Wrapper {
  @Goto(_i1.TextSelectionToolbarTextButton.new)
  TextSelectionToolbarTextButton(
    $ $config, {
    _i2.Key? key,
    required _i3.Widget child,
    required _i4.EdgeInsets padding,
    ui.VoidCallback? onPressed,
    _i4.AlignmentGeometry? alignment,
  }) : super(
          Argument({
            #key: key,
            #child: child,
            #padding: padding,
            #onPressed: onPressed,
            #alignment: alignment,
          }),
          builder: (args) => _i1.TextSelectionToolbarTextButton(
            key: args(#key),
            child: args(#child),
            padding: args(#padding),
            onPressed: args(#onPressed),
            alignment: args(#alignment),
          ),
        );
}
