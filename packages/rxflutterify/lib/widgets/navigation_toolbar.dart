library rxflutterify; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:flutter/foundation.dart' as _i2;
import 'package:flutter/widgets.dart' as _i1;

import '../wrapper.dart';

final class NavigationToolbar extends Wrapper {
  @Goto(_i1.NavigationToolbar.new)
  NavigationToolbar(
    $ $config, {
    _i2.Key? key,
    _i1.Widget? leading,
    _i1.Widget? middle,
    _i1.Widget? trailing,
    bool centerMiddle = true,
    double middleSpacing = _i1.NavigationToolbar.kMiddleSpacing,
  }) : super(
          Argument({
            #key: key,
            #leading: leading,
            #middle: middle,
            #trailing: trailing,
            #centerMiddle: centerMiddle,
            #middleSpacing: middleSpacing,
          }),
          builder: (args) => _i1.NavigationToolbar(
            key: args(#key),
            leading: args(#leading),
            middle: args(#middle),
            trailing: args(#trailing),
            centerMiddle: args(#centerMiddle),
            middleSpacing: args(#middleSpacing),
          ),
        );
}
