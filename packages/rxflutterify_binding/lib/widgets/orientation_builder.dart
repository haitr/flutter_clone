library rxflutterify_binding; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:flutter/foundation.dart' as _i2;
import 'package:flutter/widgets.dart' as _i1;

import '../wrapper.dart';

final class OrientationBuilder extends Wrapper {
  @Goto(_i1.OrientationBuilder.new)
  OrientationBuilder(
    $ $config, {
    _i2.Key? key,
    required _i1.OrientationWidgetBuilder builder,
  }) : super(
          Argument({
            #key: key,
            #builder: builder,
          }),
          builder: (args) => _i1.OrientationBuilder(
            key: args(#key),
            builder: args(#builder),
          ),
        );
}
