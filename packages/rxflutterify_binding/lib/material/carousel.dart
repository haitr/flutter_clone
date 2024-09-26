library rxflutterify_binding; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:ui' as ui;

import 'package:flutter/foundation.dart' as _i2;
import 'package:flutter/material.dart' as _i1;
import 'package:flutter/painting.dart' as _i3;
import 'package:flutter/widgets.dart' as _i4;

import '../wrapper.dart';

final class CarouselView extends Wrapper {
  @Goto(_i1.CarouselView.new)
  CarouselView(
    $ $config, {
    _i2.Key? key,
    _i3.EdgeInsets? padding,
    ui.Color? backgroundColor,
    double? elevation,
    _i3.ShapeBorder? shape,
    _i4.WidgetStateProperty<ui.Color?>? overlayColor,
    bool itemSnapping = false,
    double shrinkExtent = 0.0,
    _i1.CarouselController? controller,
    _i3.Axis scrollDirection = _i3.Axis.horizontal,
    bool reverse = false,
    _i2.ValueChanged<int>? onTap,
    required double itemExtent,
    required List<_i4.Widget> children,
  }) : super(
          Argument({
            #key: key,
            #padding: padding,
            #backgroundColor: backgroundColor,
            #elevation: elevation,
            #shape: shape,
            #overlayColor: overlayColor,
            #itemSnapping: itemSnapping,
            #shrinkExtent: shrinkExtent,
            #controller: controller,
            #scrollDirection: scrollDirection,
            #reverse: reverse,
            #onTap: onTap,
            #itemExtent: itemExtent,
            #children: children,
          }),
          builder: (args) => _i1.CarouselView(
            key: args(#key),
            padding: args(#padding),
            backgroundColor: args(#backgroundColor),
            elevation: args(#elevation),
            shape: args(#shape),
            overlayColor: args(#overlayColor),
            itemSnapping: args(#itemSnapping),
            shrinkExtent: args(#shrinkExtent),
            controller: args(#controller),
            scrollDirection: args(#scrollDirection),
            reverse: args(#reverse),
            onTap: args(#onTap),
            itemExtent: args(#itemExtent),
            children: args(#children),
          ),
        );
}
