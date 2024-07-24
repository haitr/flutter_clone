library rxflutterify; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:ui' as ui;

import 'package:flutter/foundation.dart' as _i2;
import 'package:flutter/rendering.dart' as _i3;
import 'package:flutter/widgets.dart' as _i1;

import '../wrapper.dart';

final class ListWheelScrollView extends Wrapper {
  @Goto(_i1.ListWheelScrollView.new)
  ListWheelScrollView(
    $ $config, {
    _i2.Key? key,
    _i1.ScrollController? controller,
    _i1.ScrollPhysics? physics,
    double diameterRatio = _i3.RenderListWheelViewport.defaultDiameterRatio,
    double perspective = _i3.RenderListWheelViewport.defaultPerspective,
    double offAxisFraction = 0.0,
    bool useMagnifier = false,
    double magnification = 1.0,
    double overAndUnderCenterOpacity = 1.0,
    required double itemExtent,
    double squeeze = 1.0,
    _i2.ValueChanged<int>? onSelectedItemChanged,
    bool renderChildrenOutsideViewport = false,
    ui.Clip clipBehavior = ui.Clip.hardEdge,
    String? restorationId,
    _i1.ScrollBehavior? scrollBehavior,
    required List<_i1.Widget> children,
  }) : super(
          Argument({
            #key: key,
            #controller: controller,
            #physics: physics,
            #diameterRatio: diameterRatio,
            #perspective: perspective,
            #offAxisFraction: offAxisFraction,
            #useMagnifier: useMagnifier,
            #magnification: magnification,
            #overAndUnderCenterOpacity: overAndUnderCenterOpacity,
            #itemExtent: itemExtent,
            #squeeze: squeeze,
            #onSelectedItemChanged: onSelectedItemChanged,
            #renderChildrenOutsideViewport: renderChildrenOutsideViewport,
            #clipBehavior: clipBehavior,
            #restorationId: restorationId,
            #scrollBehavior: scrollBehavior,
            #children: children,
          }),
          builder: (args) => _i1.ListWheelScrollView(
            key: args(#key),
            controller: args(#controller),
            physics: args(#physics),
            diameterRatio: args(#diameterRatio),
            perspective: args(#perspective),
            offAxisFraction: args(#offAxisFraction),
            useMagnifier: args(#useMagnifier),
            magnification: args(#magnification),
            overAndUnderCenterOpacity: args(#overAndUnderCenterOpacity),
            itemExtent: args(#itemExtent),
            squeeze: args(#squeeze),
            onSelectedItemChanged: args(#onSelectedItemChanged),
            renderChildrenOutsideViewport: args(#renderChildrenOutsideViewport),
            clipBehavior: args(#clipBehavior),
            restorationId: args(#restorationId),
            scrollBehavior: args(#scrollBehavior),
            children: args(#children),
          ),
        );

  @Goto(_i1.ListWheelScrollView.useDelegate)
  ListWheelScrollView.useDelegate(
    $ $config, {
    _i2.Key? key,
    _i1.ScrollController? controller,
    _i1.ScrollPhysics? physics,
    double diameterRatio = _i3.RenderListWheelViewport.defaultDiameterRatio,
    double perspective = _i3.RenderListWheelViewport.defaultPerspective,
    double offAxisFraction = 0.0,
    bool useMagnifier = false,
    double magnification = 1.0,
    double overAndUnderCenterOpacity = 1.0,
    required double itemExtent,
    double squeeze = 1.0,
    _i2.ValueChanged<int>? onSelectedItemChanged,
    bool renderChildrenOutsideViewport = false,
    ui.Clip clipBehavior = ui.Clip.hardEdge,
    String? restorationId,
    _i1.ScrollBehavior? scrollBehavior,
    required _i1.ListWheelChildDelegate childDelegate,
  }) : super(
          Argument({
            #key: key,
            #controller: controller,
            #physics: physics,
            #diameterRatio: diameterRatio,
            #perspective: perspective,
            #offAxisFraction: offAxisFraction,
            #useMagnifier: useMagnifier,
            #magnification: magnification,
            #overAndUnderCenterOpacity: overAndUnderCenterOpacity,
            #itemExtent: itemExtent,
            #squeeze: squeeze,
            #onSelectedItemChanged: onSelectedItemChanged,
            #renderChildrenOutsideViewport: renderChildrenOutsideViewport,
            #clipBehavior: clipBehavior,
            #restorationId: restorationId,
            #scrollBehavior: scrollBehavior,
            #childDelegate: childDelegate,
          }),
          builder: (args) => _i1.ListWheelScrollView.useDelegate(
            key: args(#key),
            controller: args(#controller),
            physics: args(#physics),
            diameterRatio: args(#diameterRatio),
            perspective: args(#perspective),
            offAxisFraction: args(#offAxisFraction),
            useMagnifier: args(#useMagnifier),
            magnification: args(#magnification),
            overAndUnderCenterOpacity: args(#overAndUnderCenterOpacity),
            itemExtent: args(#itemExtent),
            squeeze: args(#squeeze),
            onSelectedItemChanged: args(#onSelectedItemChanged),
            renderChildrenOutsideViewport: args(#renderChildrenOutsideViewport),
            clipBehavior: args(#clipBehavior),
            restorationId: args(#restorationId),
            scrollBehavior: args(#scrollBehavior),
            childDelegate: args(#childDelegate),
          ),
        );
}

final class ListWheelViewport extends Wrapper {
  @Goto(_i1.ListWheelViewport.new)
  ListWheelViewport(
    $ $config, {
    _i2.Key? key,
    double diameterRatio = _i3.RenderListWheelViewport.defaultDiameterRatio,
    double perspective = _i3.RenderListWheelViewport.defaultPerspective,
    double offAxisFraction = 0.0,
    bool useMagnifier = false,
    double magnification = 1.0,
    double overAndUnderCenterOpacity = 1.0,
    required double itemExtent,
    double squeeze = 1.0,
    bool renderChildrenOutsideViewport = false,
    required _i3.ViewportOffset offset,
    required _i1.ListWheelChildDelegate childDelegate,
    ui.Clip clipBehavior = ui.Clip.hardEdge,
  }) : super(
          Argument({
            #key: key,
            #diameterRatio: diameterRatio,
            #perspective: perspective,
            #offAxisFraction: offAxisFraction,
            #useMagnifier: useMagnifier,
            #magnification: magnification,
            #overAndUnderCenterOpacity: overAndUnderCenterOpacity,
            #itemExtent: itemExtent,
            #squeeze: squeeze,
            #renderChildrenOutsideViewport: renderChildrenOutsideViewport,
            #offset: offset,
            #childDelegate: childDelegate,
            #clipBehavior: clipBehavior,
          }),
          builder: (args) => _i1.ListWheelViewport(
            key: args(#key),
            diameterRatio: args(#diameterRatio),
            perspective: args(#perspective),
            offAxisFraction: args(#offAxisFraction),
            useMagnifier: args(#useMagnifier),
            magnification: args(#magnification),
            overAndUnderCenterOpacity: args(#overAndUnderCenterOpacity),
            itemExtent: args(#itemExtent),
            squeeze: args(#squeeze),
            renderChildrenOutsideViewport: args(#renderChildrenOutsideViewport),
            offset: args(#offset),
            childDelegate: args(#childDelegate),
            clipBehavior: args(#clipBehavior),
          ),
        );
}
