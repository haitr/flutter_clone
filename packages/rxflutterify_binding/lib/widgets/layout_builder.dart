library rxflutterify_binding; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:flutter/foundation.dart' as _i2;
import 'package:flutter/rendering.dart' as _i3;
import 'package:flutter/widgets.dart' as _i1;

import '../wrapper.dart';

final class LayoutBuilder extends Wrapper {
  @Goto(_i1.LayoutBuilder.new)
  LayoutBuilder(
    $ $config, {
    _i2.Key? key,
    required _i1.Widget Function(
      _i1.BuildContext,
      _i3.BoxConstraints,
    ) builder,
  }) : super(
          Argument({
            #key: key,
            #builder: builder,
          }),
          builder: (args) => _i1.LayoutBuilder(
            key: args(#key),
            builder: args(#builder),
          ),
        );
}
