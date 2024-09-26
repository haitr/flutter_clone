library rxflutterify; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:flutter/foundation.dart' as _i2;
import 'package:flutter/widgets.dart' as _i1;

import '../wrapper.dart';

final class SliverResizingHeader extends Wrapper {
  @Goto(_i1.SliverResizingHeader.new)
  SliverResizingHeader(
    $ $config, {
    _i2.Key? key,
    _i1.Widget? minExtentPrototype,
    _i1.Widget? maxExtentPrototype,
    _i1.Widget? child,
  }) : super(
          Argument({
            #key: key,
            #minExtentPrototype: minExtentPrototype,
            #maxExtentPrototype: maxExtentPrototype,
            #child: child,
          }),
          builder: (args) => _i1.SliverResizingHeader(
            key: args(#key),
            minExtentPrototype: args(#minExtentPrototype),
            maxExtentPrototype: args(#maxExtentPrototype),
            child: args(#child),
          ),
        );
}
