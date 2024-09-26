library rxflutterify_binding; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:ui' as ui;

import 'package:flutter/cupertino.dart' as _i1;
import 'package:flutter/foundation.dart' as _i2;
import 'package:flutter/widgets.dart' as _i3;

import '../wrapper.dart';

final class CupertinoScrollbar extends Wrapper {
  @Goto(_i1.CupertinoScrollbar.new)
  CupertinoScrollbar(
    $ $config, {
    _i2.Key? key,
    required _i3.Widget child,
    _i3.ScrollController? controller,
    bool? thumbVisibility,
    double thickness = _i1.CupertinoScrollbar.defaultThickness,
    double thicknessWhileDragging = _i1.CupertinoScrollbar.defaultThicknessWhileDragging,
    ui.Radius radius = _i1.CupertinoScrollbar.defaultRadius,
    ui.Radius radiusWhileDragging = _i1.CupertinoScrollbar.defaultRadiusWhileDragging,
    _i3.ScrollNotificationPredicate? notificationPredicate,
    _i3.ScrollbarOrientation? scrollbarOrientation,
  }) : super(
          Argument({
            #key: key,
            #child: child,
            #controller: controller,
            #thumbVisibility: thumbVisibility,
            #thickness: thickness,
            #thicknessWhileDragging: thicknessWhileDragging,
            #radius: radius,
            #radiusWhileDragging: radiusWhileDragging,
            #notificationPredicate: notificationPredicate,
            #scrollbarOrientation: scrollbarOrientation,
          }),
          builder: (args) => _i1.CupertinoScrollbar(
            key: args(#key),
            child: args(#child),
            controller: args(#controller),
            thumbVisibility: args(#thumbVisibility),
            thickness: args(#thickness),
            thicknessWhileDragging: args(#thicknessWhileDragging),
            radius: args(#radius),
            radiusWhileDragging: args(#radiusWhileDragging),
            notificationPredicate: args(#notificationPredicate),
            scrollbarOrientation: args(#scrollbarOrientation),
          ),
        );
}
