library rxflutter; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:ui' as ui;

import 'package:flutter/cupertino.dart' as _i1;
import 'package:flutter/foundation.dart' as _i2;
import 'package:flutter/widgets.dart' as _i3;

import '../wrapper.dart';

final class CupertinoTextSelectionToolbarButton extends Wrapper {
  @Goto(_i1.CupertinoTextSelectionToolbarButton.new)
  CupertinoTextSelectionToolbarButton({
    _i2.Key? key,
    ui.VoidCallback? onPressed,
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
          builder: (args) => _i1.CupertinoTextSelectionToolbarButton(
            key: args('key'),
            onPressed: args('onPressed'),
            child: args('child'),
          ),
        );

  @Goto(_i1.CupertinoTextSelectionToolbarButton.text)
  CupertinoTextSelectionToolbarButton.text({
    _i2.Key? key,
    ui.VoidCallback? onPressed,
    required String? text,
    // Associate with key
    Stream<_i2.Key?>? $key,
    // Associate with onPressed
    Stream<ui.VoidCallback?>? $onPressed,
    // Associate with text
    Stream<String?>? $text,
  }) : super(
          Argument(
            {
              'key': key,
              'onPressed': onPressed,
              'text': text,
            },
            stream: {
              'key': $key,
              'onPressed': $onPressed,
              'text': $text,
            },
          ),
          builder: (args) => _i1.CupertinoTextSelectionToolbarButton.text(
            key: args('key'),
            onPressed: args('onPressed'),
            text: args('text'),
          ),
        );

  @Goto(_i1.CupertinoTextSelectionToolbarButton.buttonItem)
  CupertinoTextSelectionToolbarButton.buttonItem({
    _i2.Key? key,
    required _i3.ContextMenuButtonItem buttonItem,
    // Associate with key
    Stream<_i2.Key?>? $key,
    // Associate with buttonItem
    Stream<_i3.ContextMenuButtonItem>? $buttonItem,
  }) : super(
          Argument(
            {
              'key': key,
              'buttonItem': buttonItem,
            },
            stream: {
              'key': $key,
              'buttonItem': $buttonItem,
            },
          ),
          builder: (args) => _i1.CupertinoTextSelectionToolbarButton.buttonItem(
            key: args('key'),
            buttonItem: args('buttonItem'),
          ),
        );
}
