library rxflutterify_binding; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:flutter/animation.dart' as _i3;
import 'package:flutter/foundation.dart' as _i2;
import 'package:flutter/widgets.dart' as _i1;

import '../wrapper.dart';

final class AnimatedSwitcher extends Wrapper {
  @Goto(_i1.AnimatedSwitcher.new)
  AnimatedSwitcher(
    $ $config, {
    _i2.Key? key,
    _i1.Widget? child,
    required Duration duration,
    Duration? reverseDuration,
    _i3.Curve switchInCurve = _i3.Curves.linear,
    _i3.Curve switchOutCurve = _i3.Curves.linear,
    _i1.AnimatedSwitcherTransitionBuilder transitionBuilder = _i1.AnimatedSwitcher.defaultTransitionBuilder,
    _i1.AnimatedSwitcherLayoutBuilder layoutBuilder = _i1.AnimatedSwitcher.defaultLayoutBuilder,
  }) : super(
          Argument({
            #key: key,
            #child: child,
            #duration: duration,
            #reverseDuration: reverseDuration,
            #switchInCurve: switchInCurve,
            #switchOutCurve: switchOutCurve,
            #transitionBuilder: transitionBuilder,
            #layoutBuilder: layoutBuilder,
          }),
          builder: (args) => _i1.AnimatedSwitcher(
            key: args(#key),
            child: args(#child),
            duration: args(#duration),
            reverseDuration: args(#reverseDuration),
            switchInCurve: args(#switchInCurve),
            switchOutCurve: args(#switchOutCurve),
            transitionBuilder: args(#transitionBuilder),
            layoutBuilder: args(#layoutBuilder),
          ),
        );
}
