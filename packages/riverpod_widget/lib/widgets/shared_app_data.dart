library rxflutterify; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:flutter/foundation.dart' as _i2;
import 'package:flutter/widgets.dart' as _i1;

import '../wrapper.dart';

final class SharedAppData extends Wrapper {
  @Goto(_i1.SharedAppData.new)
  SharedAppData(
    $ $config, {
    _i2.Key? key,
    required _i1.Widget child,
  }) : super(
          Argument({
            #key: key,
            #child: child,
          }),
          builder: (args) => _i1.SharedAppData(
            key: args(#key),
            child: args(#child),
          ),
        );
}
