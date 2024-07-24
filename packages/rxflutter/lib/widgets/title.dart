library rxflutter; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:ui' as ui;

import 'package:flutter/foundation.dart' as _i2;
import 'package:flutter/widgets.dart' as _i1;

import '../wrapper.dart';

final class Title extends Wrapper {
  @Goto(_i1.Title.new)
  Title({
    _i2.Key? key,
    String title = '',
    required ui.Color color,
    required _i1.Widget child,
    // Associate with key
    Stream<_i2.Key?>? $key,
    // Associate with title
    Stream<String>? $title,
    // Associate with color
    Stream<ui.Color>? $color,
    // Associate with child
    Stream<_i1.Widget>? $child,
  }) : super(
          Argument(
            {
              'key': key,
              'title': title,
              'color': color,
              'child': child,
            },
            stream: {
              'key': $key,
              'title': $title,
              'color': $color,
              'child': $child,
            },
          ),
          builder: (args) => _i1.Title(
            key: args('key'),
            title: args('title'),
            color: args('color'),
            child: args('child'),
          ),
        );
}
