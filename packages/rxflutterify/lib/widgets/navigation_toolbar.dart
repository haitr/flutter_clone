library rxflutterify; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:flutter/foundation.dart' as _i2;
import 'package:flutter/widgets.dart' as _i1;

import '../wrapper.dart';

final class NavigationToolbar extends Wrapper {
  @Goto(_i1.NavigationToolbar.new)
  NavigationToolbar({
    _i2.Key? key,
    _i1.Widget? leading,
    _i1.Widget? middle,
    _i1.Widget? trailing,
    bool centerMiddle = true,
    double middleSpacing = _i1.NavigationToolbar.kMiddleSpacing,
    // Associate with key
    Stream<_i2.Key?>? $key,
    // Associate with leading
    Stream<_i1.Widget?>? $leading,
    // Associate with middle
    Stream<_i1.Widget?>? $middle,
    // Associate with trailing
    Stream<_i1.Widget?>? $trailing,
    // Associate with centerMiddle
    Stream<bool>? $centerMiddle,
    // Associate with middleSpacing
    Stream<double>? $middleSpacing,
  }) : super(
          Argument(
            {
              'key': key,
              'leading': leading,
              'middle': middle,
              'trailing': trailing,
              'centerMiddle': centerMiddle,
              'middleSpacing': middleSpacing,
            },
            stream: {
              'key': $key,
              'leading': $leading,
              'middle': $middle,
              'trailing': $trailing,
              'centerMiddle': $centerMiddle,
              'middleSpacing': $middleSpacing,
            },
          ),
          builder: (args) => _i1.NavigationToolbar(
            key: args('key'),
            leading: args('leading'),
            middle: args('middle'),
            trailing: args('trailing'),
            centerMiddle: args('centerMiddle'),
            middleSpacing: args('middleSpacing'),
          ),
        );
}
