library rxflutterify_binding; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:ui' as ui;

import 'package:flutter/animation.dart' as _i3;
import 'package:flutter/foundation.dart' as _i2;
import 'package:flutter/painting.dart' as _i4;
import 'package:flutter/widgets.dart' as _i1;

import '../wrapper.dart';

final class AnimatedModalBarrier extends Wrapper {
  @Goto(_i1.AnimatedModalBarrier.new)
  AnimatedModalBarrier(
    $ $config, {
    _i2.Key? key,
    required _i3.Animation<ui.Color?> color,
    bool dismissible = true,
    String? semanticsLabel,
    bool? barrierSemanticsDismissible,
    ui.VoidCallback? onDismiss,
    _i2.ValueNotifier<_i4.EdgeInsets>? clipDetailsNotifier,
    String? semanticsOnTapHint,
  }) : super(
          Argument({
            #key: key,
            #color: color,
            #dismissible: dismissible,
            #semanticsLabel: semanticsLabel,
            #barrierSemanticsDismissible: barrierSemanticsDismissible,
            #onDismiss: onDismiss,
            #clipDetailsNotifier: clipDetailsNotifier,
            #semanticsOnTapHint: semanticsOnTapHint,
          }),
          builder: (args) => _i1.AnimatedModalBarrier(
            key: args(#key),
            color: args(#color),
            dismissible: args(#dismissible),
            semanticsLabel: args(#semanticsLabel),
            barrierSemanticsDismissible: args(#barrierSemanticsDismissible),
            onDismiss: args(#onDismiss),
            clipDetailsNotifier: args(#clipDetailsNotifier),
            semanticsOnTapHint: args(#semanticsOnTapHint),
          ),
        );
}

final class ModalBarrier extends Wrapper {
  @Goto(_i1.ModalBarrier.new)
  ModalBarrier(
    $ $config, {
    _i2.Key? key,
    ui.Color? color,
    bool dismissible = true,
    ui.VoidCallback? onDismiss,
    String? semanticsLabel,
    bool? barrierSemanticsDismissible = true,
    _i2.ValueNotifier<_i4.EdgeInsets>? clipDetailsNotifier,
    String? semanticsOnTapHint,
  }) : super(
          Argument({
            #key: key,
            #color: color,
            #dismissible: dismissible,
            #onDismiss: onDismiss,
            #semanticsLabel: semanticsLabel,
            #barrierSemanticsDismissible: barrierSemanticsDismissible,
            #clipDetailsNotifier: clipDetailsNotifier,
            #semanticsOnTapHint: semanticsOnTapHint,
          }),
          builder: (args) => _i1.ModalBarrier(
            key: args(#key),
            color: args(#color),
            dismissible: args(#dismissible),
            onDismiss: args(#onDismiss),
            semanticsLabel: args(#semanticsLabel),
            barrierSemanticsDismissible: args(#barrierSemanticsDismissible),
            clipDetailsNotifier: args(#clipDetailsNotifier),
            semanticsOnTapHint: args(#semanticsOnTapHint),
          ),
        );
}
