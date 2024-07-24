library rxflutter; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:flutter/foundation.dart' as _i2;
import 'package:flutter/widgets.dart' as _i1;

import '../wrapper.dart';

final class IconTheme extends Wrapper {
  @Goto(_i1.IconTheme.new)
  IconTheme({
    _i2.Key? key,
    required _i1.IconThemeData data,
    required _i1.Widget child,
    // Associate with key
    Stream<_i2.Key?>? $key,
    // Associate with data
    Stream<_i1.IconThemeData>? $data,
    // Associate with child
    Stream<_i1.Widget>? $child,
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
          builder: (args) => _i1.IconTheme(
            key: args('key'),
            data: args('data'),
            child: args('child'),
          ),
        );
}
