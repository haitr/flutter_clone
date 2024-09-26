library rxflutterify; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:ui' as ui;

import 'package:flutter/foundation.dart' as _i2;
import 'package:flutter/material.dart' as _i1;
import 'package:flutter/painting.dart' as _i3;
import 'package:flutter/widgets.dart' as _i4;

import '../wrapper.dart';

final class InputDecorator extends Wrapper {
  @Goto(_i1.InputDecorator.new)
  InputDecorator({
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
    // Associate with key
    Stream<_i2.Key?>? $key,
    // Associate with decoration
    Stream<_i1.InputDecoration>? $decoration,
    // Associate with baseStyle
    Stream<_i3.TextStyle?>? $baseStyle,
    // Associate with textAlign
    Stream<ui.TextAlign?>? $textAlign,
    // Associate with textAlignVertical
    Stream<_i3.TextAlignVertical?>? $textAlignVertical,
    // Associate with isFocused
    Stream<bool>? $isFocused,
    // Associate with isHovering
    Stream<bool>? $isHovering,
    // Associate with expands
    Stream<bool>? $expands,
    // Associate with isEmpty
    Stream<bool>? $isEmpty,
    // Associate with child
    Stream<_i4.Widget?>? $child,
  }) : super(
          Argument(
            {
              'key': key,
              'decoration': decoration,
              'baseStyle': baseStyle,
              'textAlign': textAlign,
              'textAlignVertical': textAlignVertical,
              'isFocused': isFocused,
              'isHovering': isHovering,
              'expands': expands,
              'isEmpty': isEmpty,
              'child': child,
            },
            stream: {
              'key': $key,
              'decoration': $decoration,
              'baseStyle': $baseStyle,
              'textAlign': $textAlign,
              'textAlignVertical': $textAlignVertical,
              'isFocused': $isFocused,
              'isHovering': $isHovering,
              'expands': $expands,
              'isEmpty': $isEmpty,
              'child': $child,
            },
          ),
          builder: (args) => _i1.InputDecorator(
            key: args('key'),
            decoration: args('decoration'),
            baseStyle: args('baseStyle'),
            textAlign: args('textAlign'),
            textAlignVertical: args('textAlignVertical'),
            isFocused: args('isFocused'),
            isHovering: args('isHovering'),
            expands: args('expands'),
            isEmpty: args('isEmpty'),
            child: args('child'),
          ),
        );
}
