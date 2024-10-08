library rxflutterify; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:flutter/foundation.dart' as _i2;
import 'package:flutter/widgets.dart' as _i1;

import '../wrapper.dart';

final class PlatformSelectableRegionContextMenu extends Wrapper {
  @Goto(_i1.PlatformSelectableRegionContextMenu.new)
  PlatformSelectableRegionContextMenu(
    $ $config, {
    required _i1.Widget child,
    _i2.Key? key,
  }) : super(
          Argument({
            #child: child,
            #key: key,
          }),
          builder: (args) => _i1.PlatformSelectableRegionContextMenu(
            child: args(#child),
            key: args(#key),
          ),
        );
}
