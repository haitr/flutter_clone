library rxflutterify; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:flutter/foundation.dart' as _i2;
import 'package:flutter/material.dart' as _i1;
import 'package:flutter/widgets.dart' as _i3;

import '../wrapper.dart';

final class GridTile extends Wrapper {
  @Goto(_i1.GridTile.new)
  GridTile({
    _i2.Key? key,
    _i3.Widget? header,
    _i3.Widget? footer,
    required _i3.Widget child,
    // Associate with key
    Stream<_i2.Key?>? $key,
    // Associate with header
    Stream<_i3.Widget?>? $header,
    // Associate with footer
    Stream<_i3.Widget?>? $footer,
    // Associate with child
    Stream<_i3.Widget>? $child,
  }) : super(
          Argument(
            {
              'key': key,
              'header': header,
              'footer': footer,
              'child': child,
            },
            stream: {
              'key': $key,
              'header': $header,
              'footer': $footer,
              'child': $child,
            },
          ),
          builder: (args) => _i1.GridTile(
            key: args('key'),
            header: args('header'),
            footer: args('footer'),
            child: args('child'),
          ),
        );
}
