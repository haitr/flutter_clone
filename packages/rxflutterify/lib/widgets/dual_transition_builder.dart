library rxflutterify; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:flutter/animation.dart' as _i3;
import 'package:flutter/foundation.dart' as _i2;
import 'package:flutter/widgets.dart' as _i1;

import '../wrapper.dart';

final class DualTransitionBuilder extends Wrapper {
  @Goto(_i1.DualTransitionBuilder.new)
  DualTransitionBuilder({
    _i2.Key? key,
    required _i3.Animation<double> animation,
    required _i1.AnimatedTransitionBuilder forwardBuilder,
    required _i1.AnimatedTransitionBuilder reverseBuilder,
    _i1.Widget? child,
    // Associate with key
    Stream<_i2.Key?>? $key,
    // Associate with animation
    Stream<_i3.Animation<double>>? $animation,
    // Associate with forwardBuilder
    Stream<_i1.AnimatedTransitionBuilder>? $forwardBuilder,
    // Associate with reverseBuilder
    Stream<_i1.AnimatedTransitionBuilder>? $reverseBuilder,
    // Associate with child
    Stream<_i1.Widget?>? $child,
  }) : super(
          Argument(
            {
              'key': key,
              'animation': animation,
              'forwardBuilder': forwardBuilder,
              'reverseBuilder': reverseBuilder,
              'child': child,
            },
            stream: {
              'key': $key,
              'animation': $animation,
              'forwardBuilder': $forwardBuilder,
              'reverseBuilder': $reverseBuilder,
              'child': $child,
            },
          ),
          builder: (args) => _i1.DualTransitionBuilder(
            key: args('key'),
            animation: args('animation'),
            forwardBuilder: args('forwardBuilder'),
            reverseBuilder: args('reverseBuilder'),
            child: args('child'),
          ),
        );
}
