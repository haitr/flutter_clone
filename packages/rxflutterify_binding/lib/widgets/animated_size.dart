library rxflutterify_binding; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:ui' as ui;

import 'package:flutter/animation.dart' as _i4;
import 'package:flutter/foundation.dart' as _i2;
import 'package:flutter/painting.dart' as _i3;
import 'package:flutter/widgets.dart' as _i1;

import '../wrapper.dart';

final class AnimatedSize extends Wrapper {
  @Goto(_i1.AnimatedSize.new)
  AnimatedSize(
    $ $config, {
    _i2.Key? key,
    _i1.Widget? child,
    _i3.AlignmentGeometry alignment = _i3.Alignment.center,
    _i4.Curve curve = _i4.Curves.linear,
    required Duration duration,
    Duration? reverseDuration,
    ui.Clip clipBehavior = ui.Clip.hardEdge,
    ui.VoidCallback? onEnd,
  }) : super(
          Argument({
            #key: key,
            #child: child,
            #alignment: alignment,
            #curve: curve,
            #duration: duration,
            #reverseDuration: reverseDuration,
            #clipBehavior: clipBehavior,
            #onEnd: onEnd,
          }),
          builder: (args) => _i1.AnimatedSize(
            key: args(#key),
            child: args(#child),
            alignment: args(#alignment),
            curve: args(#curve),
            duration: args(#duration),
            reverseDuration: args(#reverseDuration),
            clipBehavior: args(#clipBehavior),
            onEnd: args(#onEnd),
          ),
        );
}
