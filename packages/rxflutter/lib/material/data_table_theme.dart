library rxflutter; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:flutter/foundation.dart' as _i2;
import 'package:flutter/material.dart' as _i1;
import 'package:flutter/widgets.dart' as _i3;

import '../wrapper.dart';

final class DataTableTheme extends Wrapper {
  @Goto(_i1.DataTableTheme.new)
  DataTableTheme({
    _i2.Key? key,
    required _i1.DataTableThemeData data,
    required _i3.Widget child,
    // Associate with key
    Stream<_i2.Key?>? $key,
    // Associate with data
    Stream<_i1.DataTableThemeData>? $data,
    // Associate with child
    Stream<_i3.Widget>? $child,
  }) : super(
          Argument(
            {
              'key': key,
              'data': data,
              'child': child,
            },
            stream: {
              'key': $key,
              'data': $data,
              'child': $child,
            },
          ),
          builder: (args) => _i1.DataTableTheme(
            key: args('key'),
            data: args('data'),
            child: args('child'),
          ),
        );
}
