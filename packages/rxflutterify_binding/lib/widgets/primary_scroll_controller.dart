library rxflutterify_binding; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:flutter/foundation.dart' as _i2;
import 'package:flutter/painting.dart' as _i3;
import 'package:flutter/widgets.dart' as _i1;

import '../wrapper.dart';

final class PrimaryScrollController extends Wrapper {
  @Goto(_i1.PrimaryScrollController.new)
  PrimaryScrollController(
    $ $config, {
    _i2.Key? key,
    required _i1.ScrollController controller,
    Set<_i2.TargetPlatform> automaticallyInheritForPlatforms = _kMobilePlatforms,
    _i3.Axis? scrollDirection = _i3.Axis.vertical,
    required _i1.Widget child,
  }) : super(
          Argument({
            #key: key,
            #controller: controller,
            #automaticallyInheritForPlatforms: automaticallyInheritForPlatforms,
            #scrollDirection: scrollDirection,
            #child: child,
          }),
          builder: (args) => _i1.PrimaryScrollController(
            key: args(#key),
            controller: args(#controller),
            automaticallyInheritForPlatforms: args(#automaticallyInheritForPlatforms),
            scrollDirection: args(#scrollDirection),
            child: args(#child),
          ),
        );

  @Goto(_i1.PrimaryScrollController.none)
  PrimaryScrollController.none(
    $ $config, {
    _i2.Key? key,
    required _i1.Widget child,
  }) : super(
          Argument({
            #key: key,
            #child: child,
          }),
          builder: (args) => _i1.PrimaryScrollController.none(
            key: args(#key),
            child: args(#child),
          ),
        );
}

const _kMobilePlatforms = {
  _i2.TargetPlatform.android,
  _i2.TargetPlatform.iOS,
  _i2.TargetPlatform.fuchsia,
};
