library rxflutterify; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:ui' as ui;

import 'package:flutter/cupertino.dart' as _i1;
import 'package:flutter/foundation.dart' as _i2;
import 'package:flutter/widgets.dart' as _i3;

import '../wrapper.dart';

final class CupertinoContextMenuAction extends Wrapper {
  @Goto(_i1.CupertinoContextMenuAction.new)
  CupertinoContextMenuAction({
    _i2.Key? key,
    required _i3.Widget child,
    bool isDefaultAction = false,
    bool isDestructiveAction = false,
    ui.VoidCallback? onPressed,
    _i3.IconData? trailingIcon,
    // Associate with key
    Stream<_i2.Key?>? $key,
    // Associate with child
    Stream<_i3.Widget>? $child,
    // Associate with isDefaultAction
    Stream<bool>? $isDefaultAction,
    // Associate with isDestructiveAction
    Stream<bool>? $isDestructiveAction,
    // Associate with onPressed
    Stream<ui.VoidCallback?>? $onPressed,
    // Associate with trailingIcon
    Stream<_i3.IconData?>? $trailingIcon,
  }) : super(
          Argument(
            {
              'key': key,
              'child': child,
              'isDefaultAction': isDefaultAction,
              'isDestructiveAction': isDestructiveAction,
              'onPressed': onPressed,
              'trailingIcon': trailingIcon,
            },
            stream: {
              'key': $key,
              'child': $child,
              'isDefaultAction': $isDefaultAction,
              'isDestructiveAction': $isDestructiveAction,
              'onPressed': $onPressed,
              'trailingIcon': $trailingIcon,
            },
          ),
          builder: (args) => _i1.CupertinoContextMenuAction(
            key: args('key'),
            child: args('child'),
            isDefaultAction: args('isDefaultAction'),
            isDestructiveAction: args('isDestructiveAction'),
            onPressed: args('onPressed'),
            trailingIcon: args('trailingIcon'),
          ),
        );
}
