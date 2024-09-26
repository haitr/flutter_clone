library rxflutterify; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:ui' as ui;

import 'package:flutter/foundation.dart' as _i2;
import 'package:flutter/material.dart' as _i1;
import 'package:flutter/widgets.dart' as _i3;

import '../wrapper.dart';

final class DesktopTextSelectionToolbarButton extends Wrapper {
  @Goto(_i1.DesktopTextSelectionToolbarButton.new)
  DesktopTextSelectionToolbarButton({
    _i2.Key? key,
    required ui.VoidCallback? onPressed,
    required _i3.Widget child,
    // Associate with key
    Stream<_i2.Key?>? $key,
    // Associate with onPressed
    Stream<ui.VoidCallback?>? $onPressed,
    // Associate with child
    Stream<_i3.Widget>? $child,
  }) : super(
          Argument(
            {
              'key': key,
              'onPressed': onPressed,
              'child': child,
            },
            stream: {
              'key': $key,
              'onPressed': $onPressed,
              'child': $child,
            },
          ),
          builder: (args) => _i1.DesktopTextSelectionToolbarButton(
            key: args('key'),
            onPressed: args('onPressed'),
            child: args('child'),
          ),
        );

  @Goto(_i1.DesktopTextSelectionToolbarButton.text)
  DesktopTextSelectionToolbarButton.text({
    _i2.Key? key,
    required _i3.BuildContext context,
    required ui.VoidCallback? onPressed,
    required String text,
    // Associate with key
    Stream<_i2.Key?>? $key,
    // Associate with context
    Stream<_i3.BuildContext>? $context,
    // Associate with onPressed
    Stream<ui.VoidCallback?>? $onPressed,
    // Associate with text
    Stream<String>? $text,
  }) : super(
          Argument(
            {
              'key': key,
              'context': context,
              'onPressed': onPressed,
              'text': text,
            },
            stream: {
              'key': $key,
              'context': $context,
              'onPressed': $onPressed,
              'text': $text,
            },
          ),
          builder: (args) => _i1.DesktopTextSelectionToolbarButton.text(
            key: args('key'),
            context: args('context'),
            onPressed: args('onPressed'),
            text: args('text'),
          ),
        );
}
