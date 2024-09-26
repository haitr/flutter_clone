library rxflutterify_binding; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:ui' as ui;

import 'package:flutter/foundation.dart' as _i2;
import 'package:flutter/material.dart' as _i1;
import 'package:flutter/widgets.dart' as _i3;

import '../wrapper.dart';

final class DesktopTextSelectionToolbarButton extends Wrapper {
  @Goto(_i1.DesktopTextSelectionToolbarButton.new)
  DesktopTextSelectionToolbarButton(
    $ $config, {
    _i2.Key? key,
    required ui.VoidCallback? onPressed,
    required _i3.Widget child,
  }) : super(
          Argument({
            #key: key,
            #onPressed: onPressed,
            #child: child,
          }),
          builder: (args) => _i1.DesktopTextSelectionToolbarButton(
            key: args(#key),
            onPressed: args(#onPressed),
            child: args(#child),
          ),
        );

  @Goto(_i1.DesktopTextSelectionToolbarButton.text)
  DesktopTextSelectionToolbarButton.text(
    $ $config, {
    _i2.Key? key,
    required _i3.BuildContext context,
    required ui.VoidCallback? onPressed,
    required String text,
  }) : super(
          Argument({
            #key: key,
            #context: context,
            #onPressed: onPressed,
            #text: text,
          }),
          builder: (args) => _i1.DesktopTextSelectionToolbarButton.text(
            key: args(#key),
            context: args(#context),
            onPressed: args(#onPressed),
            text: args(#text),
          ),
        );
}
