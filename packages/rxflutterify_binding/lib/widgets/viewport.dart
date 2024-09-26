library rxflutterify_binding; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:ui' as ui;

import 'package:flutter/foundation.dart' as _i2;
import 'package:flutter/painting.dart' as _i3;
import 'package:flutter/rendering.dart' as _i4;
import 'package:flutter/widgets.dart' as _i1;

import '../wrapper.dart';

final class ShrinkWrappingViewport extends Wrapper {
  @Goto(_i1.ShrinkWrappingViewport.new)
  ShrinkWrappingViewport(
    $ $config, {
    _i2.Key? key,
    _i3.AxisDirection axisDirection = _i3.AxisDirection.down,
    _i3.AxisDirection? crossAxisDirection,
    required _i4.ViewportOffset offset,
    ui.Clip clipBehavior = ui.Clip.hardEdge,
    List<_i1.Widget> slivers = const [],
  }) : super(
          Argument({
            #key: key,
            #axisDirection: axisDirection,
            #crossAxisDirection: crossAxisDirection,
            #offset: offset,
            #clipBehavior: clipBehavior,
            #slivers: slivers,
          }),
          builder: (args) => _i1.ShrinkWrappingViewport(
            key: args(#key),
            axisDirection: args(#axisDirection),
            crossAxisDirection: args(#crossAxisDirection),
            offset: args(#offset),
            clipBehavior: args(#clipBehavior),
            slivers: args(#slivers),
          ),
        );
}

final class Viewport extends Wrapper {
  @Goto(_i1.Viewport.new)
  Viewport(
    $ $config, {
    _i2.Key? key,
    _i3.AxisDirection axisDirection = _i3.AxisDirection.down,
    _i3.AxisDirection? crossAxisDirection,
    double anchor = 0.0,
    required _i4.ViewportOffset offset,
    _i2.Key? center,
    double? cacheExtent,
    _i4.CacheExtentStyle cacheExtentStyle = _i4.CacheExtentStyle.pixel,
    ui.Clip clipBehavior = ui.Clip.hardEdge,
    List<_i1.Widget> slivers = const [],
  }) : super(
          Argument({
            #key: key,
            #axisDirection: axisDirection,
            #crossAxisDirection: crossAxisDirection,
            #anchor: anchor,
            #offset: offset,
            #center: center,
            #cacheExtent: cacheExtent,
            #cacheExtentStyle: cacheExtentStyle,
            #clipBehavior: clipBehavior,
            #slivers: slivers,
          }),
          builder: (args) => _i1.Viewport(
            key: args(#key),
            axisDirection: args(#axisDirection),
            crossAxisDirection: args(#crossAxisDirection),
            anchor: args(#anchor),
            offset: args(#offset),
            center: args(#center),
            cacheExtent: args(#cacheExtent),
            cacheExtentStyle: args(#cacheExtentStyle),
            clipBehavior: args(#clipBehavior),
            slivers: args(#slivers),
          ),
        );
}
