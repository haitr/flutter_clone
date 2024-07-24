library rxflutterify; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:flutter/foundation.dart' as _i2;
import 'package:flutter/widgets.dart' as _i1;

import '../wrapper.dart';

final class Spacer extends Wrapper {
  @Goto(_i1.Spacer.new)
  Spacer(
    $ $config, {
    _i2.Key? key,
    int flex = 1,
  }) : super(
          Argument({
            #key: key,
            #flex: flex,
          }),
          builder: (args) => _i1.Spacer(
            key: args(#key),
            flex: args(#flex),
          ),
        );
}
