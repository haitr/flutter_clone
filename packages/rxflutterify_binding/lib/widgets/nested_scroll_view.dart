library rxflutterify_binding; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:ui' as ui;

import 'package:flutter/foundation.dart' as _i2;
import 'package:flutter/gestures.dart' as _i5;
import 'package:flutter/painting.dart' as _i3;
import 'package:flutter/rendering.dart' as _i4;
import 'package:flutter/widgets.dart' as _i1;

import '../wrapper.dart';

final class NestedScrollViewViewport extends Wrapper {
  @Goto(_i1.NestedScrollViewViewport.new)
  NestedScrollViewViewport(
    $ $config, {
    _i2.Key? key,
    _i3.AxisDirection axisDirection = _i3.AxisDirection.down,
    _i3.AxisDirection? crossAxisDirection,
    double anchor = 0.0,
    required _i4.ViewportOffset offset,
    _i2.Key? center,
    List<_i1.Widget> slivers = const [],
    required _i1.SliverOverlapAbsorberHandle handle,
    ui.Clip clipBehavior = ui.Clip.hardEdge,
  }) : super(
          Argument({
            #key: key,
            #axisDirection: axisDirection,
            #crossAxisDirection: crossAxisDirection,
            #anchor: anchor,
            #offset: offset,
            #center: center,
            #slivers: slivers,
            #handle: handle,
            #clipBehavior: clipBehavior,
          }),
          builder: (args) => _i1.NestedScrollViewViewport(
            key: args(#key),
            axisDirection: args(#axisDirection),
            crossAxisDirection: args(#crossAxisDirection),
            anchor: args(#anchor),
            offset: args(#offset),
            center: args(#center),
            slivers: args(#slivers),
            handle: args(#handle),
            clipBehavior: args(#clipBehavior),
          ),
        );
}

final class NestedScrollView extends Wrapper {
  @Goto(_i1.NestedScrollView.new)
  NestedScrollView(
    $ $config, {
    _i2.Key? key,
    _i1.ScrollController? controller,
    _i3.Axis scrollDirection = _i3.Axis.vertical,
    bool reverse = false,
    _i1.ScrollPhysics? physics,
    required _i1.NestedScrollViewHeaderSliversBuilder headerSliverBuilder,
    required _i1.Widget body,
    _i5.DragStartBehavior dragStartBehavior = _i5.DragStartBehavior.start,
    bool floatHeaderSlivers = false,
    ui.Clip clipBehavior = ui.Clip.hardEdge,
    _i4.HitTestBehavior hitTestBehavior = _i4.HitTestBehavior.opaque,
    String? restorationId,
    _i1.ScrollBehavior? scrollBehavior,
  }) : super(
          Argument({
            #key: key,
            #controller: controller,
            #scrollDirection: scrollDirection,
            #reverse: reverse,
            #physics: physics,
            #headerSliverBuilder: headerSliverBuilder,
            #body: body,
            #dragStartBehavior: dragStartBehavior,
            #floatHeaderSlivers: floatHeaderSlivers,
            #clipBehavior: clipBehavior,
            #hitTestBehavior: hitTestBehavior,
            #restorationId: restorationId,
            #scrollBehavior: scrollBehavior,
          }),
          builder: (args) => _i1.NestedScrollView(
            key: args(#key),
            controller: args(#controller),
            scrollDirection: args(#scrollDirection),
            reverse: args(#reverse),
            physics: args(#physics),
            headerSliverBuilder: args(#headerSliverBuilder),
            body: args(#body),
            dragStartBehavior: args(#dragStartBehavior),
            floatHeaderSlivers: args(#floatHeaderSlivers),
            clipBehavior: args(#clipBehavior),
            hitTestBehavior: args(#hitTestBehavior),
            restorationId: args(#restorationId),
            scrollBehavior: args(#scrollBehavior),
          ),
        );
}

final class SliverOverlapAbsorber extends Wrapper {
  @Goto(_i1.SliverOverlapAbsorber.new)
  SliverOverlapAbsorber(
    $ $config, {
    _i2.Key? key,
    required _i1.SliverOverlapAbsorberHandle handle,
    _i1.Widget? sliver,
  }) : super(
          Argument({
            #key: key,
            #handle: handle,
            #sliver: sliver,
          }),
          builder: (args) => _i1.SliverOverlapAbsorber(
            key: args(#key),
            handle: args(#handle),
            sliver: args(#sliver),
          ),
        );
}

final class SliverOverlapInjector extends Wrapper {
  @Goto(_i1.SliverOverlapInjector.new)
  SliverOverlapInjector(
    $ $config, {
    _i2.Key? key,
    required _i1.SliverOverlapAbsorberHandle handle,
    _i1.Widget? sliver,
  }) : super(
          Argument({
            #key: key,
            #handle: handle,
            #sliver: sliver,
          }),
          builder: (args) => _i1.SliverOverlapInjector(
            key: args(#key),
            handle: args(#handle),
            sliver: args(#sliver),
          ),
        );
}
