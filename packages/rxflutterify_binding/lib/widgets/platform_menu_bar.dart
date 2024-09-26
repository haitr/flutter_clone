library rxflutterify_binding; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:flutter/foundation.dart' as _i2;
import 'package:flutter/widgets.dart' as _i1;

import '../wrapper.dart';

final class PlatformMenuBar extends Wrapper {
  @Goto(_i1.PlatformMenuBar.new)
  PlatformMenuBar(
    $ $config, {
    _i2.Key? key,
    required List<_i1.PlatformMenuItem> menus,
    _i1.Widget? child,
  }) : super(
          Argument({
            #key: key,
            #menus: menus,
            #child: child,
          }),
          builder: (args) => _i1.PlatformMenuBar(
            key: args(#key),
            menus: args(#menus),
            child: args(#child),
          ),
        );
}
