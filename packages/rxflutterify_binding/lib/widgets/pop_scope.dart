library rxflutterify_binding; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:flutter/foundation.dart' as _i2;
import 'package:flutter/widgets.dart' as _i1;

import '../wrapper.dart';

final class PopScope extends Wrapper {
  @Goto(_i1.PopScope.new)
  PopScope(
    $ $config, {
    _i2.Key? key,
    required _i1.Widget child,
    bool canPop = true,
    _i1.PopInvokedCallback? onPopInvoked,
  }) : super(
          Argument({
            #key: key,
            #child: child,
            #canPop: canPop,
            #onPopInvoked: onPopInvoked,
          }),
          builder: (args) => _i1.PopScope(
            key: args(#key),
            child: args(#child),
            canPop: args(#canPop),
            onPopInvoked: args(#onPopInvoked),
          ),
        );
}
