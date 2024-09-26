library rxflutterify; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:flutter/foundation.dart' as _i2;
import 'package:flutter/widgets.dart' as _i1;

import '../wrapper.dart';

final class LookupBoundary extends Wrapper {
  @Goto(_i1.LookupBoundary.new)
  LookupBoundary({
    _i2.Key? key,
    required _i1.Widget child,
    // Associate with key
    Stream<_i2.Key?>? $key,
    // Associate with child
    Stream<_i1.Widget>? $child,
  }) : super(
          Argument(
            {
              'key': key,
              'child': child,
            },
            stream: {
              'key': $key,
              'child': $child,
            },
          ),
          builder: (args) => _i1.LookupBoundary(
            key: args('key'),
            child: args('child'),
          ),
        );
}
