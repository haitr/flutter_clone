library rxflutter; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:flutter/foundation.dart' as _i2;
import 'package:flutter/widgets.dart' as _i1;

import '../wrapper.dart';

final class ScrollConfiguration extends Wrapper {
  @Goto(_i1.ScrollConfiguration.new)
  ScrollConfiguration({
    _i2.Key? key,
    required _i1.ScrollBehavior behavior,
    required _i1.Widget child,
    // Associate with key
    Stream<_i2.Key?>? $key,
    // Associate with behavior
    Stream<_i1.ScrollBehavior>? $behavior,
    // Associate with child
    Stream<_i1.Widget>? $child,
  }) : super(
          Argument(
            {
              'key': key,
              'behavior': behavior,
              'child': child,
            },
            stream: {
              'key': $key,
              'behavior': $behavior,
              'child': $child,
            },
          ),
          builder: (args) => _i1.ScrollConfiguration(
            key: args('key'),
            behavior: args('behavior'),
            child: args('child'),
          ),
        );
}
