library rxflutterify; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:ui' as ui;

import 'package:flutter/cupertino.dart' as _i1;
import 'package:flutter/foundation.dart' as _i2;
import 'package:flutter/widgets.dart' as _i3;

import '../wrapper.dart';

final class CupertinoDesktopTextSelectionToolbarButton extends Wrapper {
  @Goto(_i1.CupertinoDesktopTextSelectionToolbarButton.new)
  CupertinoDesktopTextSelectionToolbarButton(
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
          builder: (args) => _i1.CupertinoDesktopTextSelectionToolbarButton(
            key: args(#key),
            onPressed: args(#onPressed),
            child: args(#child),
          ),
        );

  @Goto(_i1.CupertinoDesktopTextSelectionToolbarButton.text)
  CupertinoDesktopTextSelectionToolbarButton.text(
    $ $config, {
    _i2.Key? key,
    required ui.VoidCallback? onPressed,
    required String? text,
  }) : super(
          Argument({
            #key: key,
            #onPressed: onPressed,
            #text: text,
          }),
          builder: (args) => _i1.CupertinoDesktopTextSelectionToolbarButton.text(
            key: args(#key),
            onPressed: args(#onPressed),
            text: args(#text),
          ),
        );

  @Goto(_i1.CupertinoDesktopTextSelectionToolbarButton.buttonItem)
  CupertinoDesktopTextSelectionToolbarButton.buttonItem(
    $ $config, {
    _i2.Key? key,
    required _i3.ContextMenuButtonItem buttonItem,
  }) : super(
          Argument({
            #key: key,
            #buttonItem: buttonItem,
          }),
          builder: (args) => _i1.CupertinoDesktopTextSelectionToolbarButton.buttonItem(
            key: args(#key),
            buttonItem: args(#buttonItem),
          ),
        );
}
