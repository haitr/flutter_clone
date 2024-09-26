library rxflutterify_binding; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:flutter/animation.dart' as _i3;
import 'package:flutter/cupertino.dart' as _i1;
import 'package:flutter/foundation.dart' as _i2;
import 'package:flutter/widgets.dart' as _i4;

import '../wrapper.dart';

final class CupertinoPageTransition extends Wrapper {
  @Goto(_i1.CupertinoPageTransition.new)
  CupertinoPageTransition(
    $ $config, {
    _i2.Key? key,
    required _i3.Animation<double> primaryRouteAnimation,
    required _i3.Animation<double> secondaryRouteAnimation,
    required _i4.Widget child,
    required bool linearTransition,
  }) : super(
          Argument({
            #key: key,
            #primaryRouteAnimation: primaryRouteAnimation,
            #secondaryRouteAnimation: secondaryRouteAnimation,
            #child: child,
            #linearTransition: linearTransition,
          }),
          builder: (args) => _i1.CupertinoPageTransition(
            key: args(#key),
            primaryRouteAnimation: args(#primaryRouteAnimation),
            secondaryRouteAnimation: args(#secondaryRouteAnimation),
            child: args(#child),
            linearTransition: args(#linearTransition),
          ),
        );
}

final class CupertinoFullscreenDialogTransition extends Wrapper {
  @Goto(_i1.CupertinoFullscreenDialogTransition.new)
  CupertinoFullscreenDialogTransition(
    $ $config, {
    _i2.Key? key,
    required _i3.Animation<double> primaryRouteAnimation,
    required _i3.Animation<double> secondaryRouteAnimation,
    required _i4.Widget child,
    required bool linearTransition,
  }) : super(
          Argument({
            #key: key,
            #primaryRouteAnimation: primaryRouteAnimation,
            #secondaryRouteAnimation: secondaryRouteAnimation,
            #child: child,
            #linearTransition: linearTransition,
          }),
          builder: (args) => _i1.CupertinoFullscreenDialogTransition(
            key: args(#key),
            primaryRouteAnimation: args(#primaryRouteAnimation),
            secondaryRouteAnimation: args(#secondaryRouteAnimation),
            child: args(#child),
            linearTransition: args(#linearTransition),
          ),
        );
}
