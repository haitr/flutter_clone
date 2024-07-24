library rxflutterify; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:flutter/foundation.dart' as _i2;
import 'package:flutter/widgets.dart' as _i1;

import '../wrapper.dart';

final class ScrollNotificationObserver extends Wrapper {
  @Goto(_i1.ScrollNotificationObserver.new)
  ScrollNotificationObserver(
    $ $config, {
    _i2.Key? key,
    required _i1.Widget child,
  }) : super(
          Argument({
            #key: key,
            #child: child,
          }),
          builder: (args) => _i1.ScrollNotificationObserver(
            key: args(#key),
            child: args(#child),
          ),
        );
}
