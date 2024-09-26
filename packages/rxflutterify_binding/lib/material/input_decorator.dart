library rxflutterify_binding; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:ui' as ui;

import 'package:flutter/foundation.dart' as _i2;
import 'package:flutter/material.dart' as _i1;
import 'package:flutter/painting.dart' as _i3;
import 'package:flutter/widgets.dart' as _i4;

import '../wrapper.dart';

final class InputDecorator extends Wrapper {
  @Goto(_i1.InputDecorator.new)
  InputDecorator(
    $ $config, {
    _i2.Key? key,
    required _i1.InputDecoration decoration,
    _i3.TextStyle? baseStyle,
    ui.TextAlign? textAlign,
    _i3.TextAlignVertical? textAlignVertical,
    bool isFocused = false,
    bool isHovering = false,
    bool expands = false,
    bool isEmpty = false,
    _i4.Widget? child,
  }) : super(
          Argument({
            #key: key,
            #decoration: decoration,
            #baseStyle: baseStyle,
            #textAlign: textAlign,
            #textAlignVertical: textAlignVertical,
            #isFocused: isFocused,
            #isHovering: isHovering,
            #expands: expands,
            #isEmpty: isEmpty,
            #child: child,
          }),
          builder: (args) => _i1.InputDecorator(
            key: args(#key),
            decoration: args(#decoration),
            baseStyle: args(#baseStyle),
            textAlign: args(#textAlign),
            textAlignVertical: args(#textAlignVertical),
            isFocused: args(#isFocused),
            isHovering: args(#isHovering),
            expands: args(#expands),
            isEmpty: args(#isEmpty),
            child: args(#child),
          ),
        );
}
