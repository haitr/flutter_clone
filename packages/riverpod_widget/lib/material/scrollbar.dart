library rxflutterify; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:ui' as ui;

import 'package:flutter/foundation.dart' as _i2;
import 'package:flutter/material.dart' as _i1;
import 'package:flutter/widgets.dart' as _i3;

import '../wrapper.dart';

final class Scrollbar extends Wrapper {
  @Goto(_i1.Scrollbar.new)
  Scrollbar(
    $ $config, {
    _i2.Key? key,
    required _i3.Widget child,
    _i3.ScrollController? controller,
    bool? thumbVisibility,
    bool? trackVisibility,
    double? thickness,
    ui.Radius? radius,
    _i3.ScrollNotificationPredicate? notificationPredicate,
    bool? interactive,
    _i3.ScrollbarOrientation? scrollbarOrientation,
  }) : super(
          Argument({
            #key: key,
            #child: child,
            #controller: controller,
            #thumbVisibility: thumbVisibility,
            #trackVisibility: trackVisibility,
            #thickness: thickness,
            #radius: radius,
            #notificationPredicate: notificationPredicate,
            #interactive: interactive,
            #scrollbarOrientation: scrollbarOrientation,
          }),
          builder: (args) => _i1.Scrollbar(
            key: args(#key),
            child: args(#child),
            controller: args(#controller),
            thumbVisibility: args(#thumbVisibility),
            trackVisibility: args(#trackVisibility),
            thickness: args(#thickness),
            radius: args(#radius),
            notificationPredicate: args(#notificationPredicate),
            interactive: args(#interactive),
            scrollbarOrientation: args(#scrollbarOrientation),
          ),
        );
}
