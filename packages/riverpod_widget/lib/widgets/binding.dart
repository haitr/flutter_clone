library rxflutterify; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:flutter/foundation.dart' as _i2;
import 'package:flutter/widgets.dart' as _i1;

import '../wrapper.dart';

final class RootWidget extends Wrapper {
  @Goto(_i1.RootWidget.new)
  RootWidget(
    $ $config, {
    _i2.Key? key,
    _i1.Widget? child,
    String? debugShortDescription,
  }) : super(
          Argument({
            #key: key,
            #child: child,
            #debugShortDescription: debugShortDescription,
          }),
          builder: (args) => _i1.RootWidget(
            key: args(#key),
            child: args(#child),
            debugShortDescription: args(#debugShortDescription),
          ),
        );
}
