library rxflutterify; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:flutter/foundation.dart' as _i2;
import 'package:flutter/widgets.dart' as _i1;

import '../wrapper.dart';

final class WillPopScope extends Wrapper {
  @Goto(_i1.WillPopScope.new)
  WillPopScope(
    $ $config, {
    _i2.Key? key,
    required _i1.Widget child,
    required _i1.WillPopCallback? onWillPop,
  }) : super(
          Argument({
            #key: key,
            #child: child,
            #onWillPop: onWillPop,
          }),
          builder: (args) => _i1.WillPopScope(
            key: args(#key),
            child: args(#child),
            onWillPop: args(#onWillPop),
          ),
        );
}
