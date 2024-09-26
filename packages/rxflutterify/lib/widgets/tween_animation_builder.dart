library rxflutterify; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:ui' as ui;

import 'package:flutter/animation.dart' as _i3;
import 'package:flutter/foundation.dart' as _i2;
import 'package:flutter/widgets.dart' as _i1;

import '../wrapper.dart';

final class TweenAnimationBuilder<T extends Object?> extends Wrapper {
  @Goto(_i1.TweenAnimationBuilder.new)
  TweenAnimationBuilder({
    _i2.Key? key,
    required _i3.Tween<T> tween,
    required Duration duration,
    _i3.Curve curve = _i3.Curves.linear,
    required _i1.ValueWidgetBuilder<T> builder,
    ui.VoidCallback? onEnd,
    _i1.Widget? child,
    // Associate with key
    Stream<_i2.Key?>? $key,
    // Associate with tween
    Stream<_i3.Tween<T>>? $tween,
    // Associate with duration
    Stream<Duration>? $duration,
    // Associate with curve
    Stream<_i3.Curve>? $curve,
    // Associate with builder
    Stream<_i1.ValueWidgetBuilder<T>>? $builder,
    // Associate with onEnd
    Stream<ui.VoidCallback?>? $onEnd,
    // Associate with child
    Stream<_i1.Widget?>? $child,
  }) : super(
          Argument(
            {
              'key': key,
              'tween': tween,
              'duration': duration,
              'curve': curve,
              'builder': builder,
              'onEnd': onEnd,
              'child': child,
            },
            stream: {
              'key': $key,
              'tween': $tween,
              'duration': $duration,
              'curve': $curve,
              'builder': $builder,
              'onEnd': $onEnd,
              'child': $child,
            },
          ),
          builder: (args) => _i1.TweenAnimationBuilder<T>(
            key: args('key'),
            tween: args('tween'),
            duration: args('duration'),
            curve: args('curve'),
            builder: args('builder'),
            onEnd: args('onEnd'),
            child: args('child'),
          ),
        );
}
