library rxflutterify; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:ui' as ui;

import 'package:flutter/foundation.dart' as _i2;
import 'package:flutter/rendering.dart' as _i3;
import 'package:flutter/widgets.dart' as _i1;

import '../wrapper.dart';

final class ListWheelScrollView extends Wrapper {
  @Goto(_i1.ListWheelScrollView.new)
  ListWheelScrollView({
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
    _i3.HitTestBehavior hitTestBehavior = _i3.HitTestBehavior.opaque,
    String? restorationId,
    _i1.ScrollBehavior? scrollBehavior,
    required List<_i1.Widget> children,
    // Associate with key
    Stream<_i2.Key?>? $key,
    // Associate with controller
    Stream<_i1.ScrollController?>? $controller,
    // Associate with physics
    Stream<_i1.ScrollPhysics?>? $physics,
    // Associate with diameterRatio
    Stream<double>? $diameterRatio,
    // Associate with perspective
    Stream<double>? $perspective,
    // Associate with offAxisFraction
    Stream<double>? $offAxisFraction,
    // Associate with useMagnifier
    Stream<bool>? $useMagnifier,
    // Associate with magnification
    Stream<double>? $magnification,
    // Associate with overAndUnderCenterOpacity
    Stream<double>? $overAndUnderCenterOpacity,
    // Associate with itemExtent
    Stream<double>? $itemExtent,
    // Associate with squeeze
    Stream<double>? $squeeze,
    // Associate with onSelectedItemChanged
    Stream<_i2.ValueChanged<int>?>? $onSelectedItemChanged,
    // Associate with renderChildrenOutsideViewport
    Stream<bool>? $renderChildrenOutsideViewport,
    // Associate with clipBehavior
    Stream<ui.Clip>? $clipBehavior,
    // Associate with hitTestBehavior
    Stream<_i3.HitTestBehavior>? $hitTestBehavior,
    // Associate with restorationId
    Stream<String?>? $restorationId,
    // Associate with scrollBehavior
    Stream<_i1.ScrollBehavior?>? $scrollBehavior,
    // Associate with children
    Stream<List<_i1.Widget>>? $children,
  }) : super(
          Argument(
            {
              'key': key,
              'controller': controller,
              'physics': physics,
              'diameterRatio': diameterRatio,
              'perspective': perspective,
              'offAxisFraction': offAxisFraction,
              'useMagnifier': useMagnifier,
              'magnification': magnification,
              'overAndUnderCenterOpacity': overAndUnderCenterOpacity,
              'itemExtent': itemExtent,
              'squeeze': squeeze,
              'onSelectedItemChanged': onSelectedItemChanged,
              'renderChildrenOutsideViewport': renderChildrenOutsideViewport,
              'clipBehavior': clipBehavior,
              'hitTestBehavior': hitTestBehavior,
              'restorationId': restorationId,
              'scrollBehavior': scrollBehavior,
              'children': children,
            },
            stream: {
              'key': $key,
              'controller': $controller,
              'physics': $physics,
              'diameterRatio': $diameterRatio,
              'perspective': $perspective,
              'offAxisFraction': $offAxisFraction,
              'useMagnifier': $useMagnifier,
              'magnification': $magnification,
              'overAndUnderCenterOpacity': $overAndUnderCenterOpacity,
              'itemExtent': $itemExtent,
              'squeeze': $squeeze,
              'onSelectedItemChanged': $onSelectedItemChanged,
              'renderChildrenOutsideViewport': $renderChildrenOutsideViewport,
              'clipBehavior': $clipBehavior,
              'hitTestBehavior': $hitTestBehavior,
              'restorationId': $restorationId,
              'scrollBehavior': $scrollBehavior,
              'children': $children,
            },
          ),
          builder: (args) => _i1.ListWheelScrollView(
            key: args('key'),
            controller: args('controller'),
            physics: args('physics'),
            diameterRatio: args('diameterRatio'),
            perspective: args('perspective'),
            offAxisFraction: args('offAxisFraction'),
            useMagnifier: args('useMagnifier'),
            magnification: args('magnification'),
            overAndUnderCenterOpacity: args('overAndUnderCenterOpacity'),
            itemExtent: args('itemExtent'),
            squeeze: args('squeeze'),
            onSelectedItemChanged: args('onSelectedItemChanged'),
            renderChildrenOutsideViewport: args('renderChildrenOutsideViewport'),
            clipBehavior: args('clipBehavior'),
            hitTestBehavior: args('hitTestBehavior'),
            restorationId: args('restorationId'),
            scrollBehavior: args('scrollBehavior'),
            children: args('children'),
          ),
        );

  @Goto(_i1.ListWheelScrollView.useDelegate)
  ListWheelScrollView.useDelegate({
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
    _i3.HitTestBehavior hitTestBehavior = _i3.HitTestBehavior.opaque,
    String? restorationId,
    _i1.ScrollBehavior? scrollBehavior,
    required _i1.ListWheelChildDelegate childDelegate,
    // Associate with key
    Stream<_i2.Key?>? $key,
    // Associate with controller
    Stream<_i1.ScrollController?>? $controller,
    // Associate with physics
    Stream<_i1.ScrollPhysics?>? $physics,
    // Associate with diameterRatio
    Stream<double>? $diameterRatio,
    // Associate with perspective
    Stream<double>? $perspective,
    // Associate with offAxisFraction
    Stream<double>? $offAxisFraction,
    // Associate with useMagnifier
    Stream<bool>? $useMagnifier,
    // Associate with magnification
    Stream<double>? $magnification,
    // Associate with overAndUnderCenterOpacity
    Stream<double>? $overAndUnderCenterOpacity,
    // Associate with itemExtent
    Stream<double>? $itemExtent,
    // Associate with squeeze
    Stream<double>? $squeeze,
    // Associate with onSelectedItemChanged
    Stream<_i2.ValueChanged<int>?>? $onSelectedItemChanged,
    // Associate with renderChildrenOutsideViewport
    Stream<bool>? $renderChildrenOutsideViewport,
    // Associate with clipBehavior
    Stream<ui.Clip>? $clipBehavior,
    // Associate with hitTestBehavior
    Stream<_i3.HitTestBehavior>? $hitTestBehavior,
    // Associate with restorationId
    Stream<String?>? $restorationId,
    // Associate with scrollBehavior
    Stream<_i1.ScrollBehavior?>? $scrollBehavior,
    // Associate with childDelegate
    Stream<_i1.ListWheelChildDelegate>? $childDelegate,
  }) : super(
          Argument(
            {
              'key': key,
              'controller': controller,
              'physics': physics,
              'diameterRatio': diameterRatio,
              'perspective': perspective,
              'offAxisFraction': offAxisFraction,
              'useMagnifier': useMagnifier,
              'magnification': magnification,
              'overAndUnderCenterOpacity': overAndUnderCenterOpacity,
              'itemExtent': itemExtent,
              'squeeze': squeeze,
              'onSelectedItemChanged': onSelectedItemChanged,
              'renderChildrenOutsideViewport': renderChildrenOutsideViewport,
              'clipBehavior': clipBehavior,
              'hitTestBehavior': hitTestBehavior,
              'restorationId': restorationId,
              'scrollBehavior': scrollBehavior,
              'childDelegate': childDelegate,
            },
            stream: {
              'key': $key,
              'controller': $controller,
              'physics': $physics,
              'diameterRatio': $diameterRatio,
              'perspective': $perspective,
              'offAxisFraction': $offAxisFraction,
              'useMagnifier': $useMagnifier,
              'magnification': $magnification,
              'overAndUnderCenterOpacity': $overAndUnderCenterOpacity,
              'itemExtent': $itemExtent,
              'squeeze': $squeeze,
              'onSelectedItemChanged': $onSelectedItemChanged,
              'renderChildrenOutsideViewport': $renderChildrenOutsideViewport,
              'clipBehavior': $clipBehavior,
              'hitTestBehavior': $hitTestBehavior,
              'restorationId': $restorationId,
              'scrollBehavior': $scrollBehavior,
              'childDelegate': $childDelegate,
            },
          ),
          builder: (args) => _i1.ListWheelScrollView.useDelegate(
            key: args('key'),
            controller: args('controller'),
            physics: args('physics'),
            diameterRatio: args('diameterRatio'),
            perspective: args('perspective'),
            offAxisFraction: args('offAxisFraction'),
            useMagnifier: args('useMagnifier'),
            magnification: args('magnification'),
            overAndUnderCenterOpacity: args('overAndUnderCenterOpacity'),
            itemExtent: args('itemExtent'),
            squeeze: args('squeeze'),
            onSelectedItemChanged: args('onSelectedItemChanged'),
            renderChildrenOutsideViewport: args('renderChildrenOutsideViewport'),
            clipBehavior: args('clipBehavior'),
            hitTestBehavior: args('hitTestBehavior'),
            restorationId: args('restorationId'),
            scrollBehavior: args('scrollBehavior'),
            childDelegate: args('childDelegate'),
          ),
        );
}

final class ListWheelViewport extends Wrapper {
  @Goto(_i1.ListWheelViewport.new)
  ListWheelViewport({
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
    // Associate with key
    Stream<_i2.Key?>? $key,
    // Associate with diameterRatio
    Stream<double>? $diameterRatio,
    // Associate with perspective
    Stream<double>? $perspective,
    // Associate with offAxisFraction
    Stream<double>? $offAxisFraction,
    // Associate with useMagnifier
    Stream<bool>? $useMagnifier,
    // Associate with magnification
    Stream<double>? $magnification,
    // Associate with overAndUnderCenterOpacity
    Stream<double>? $overAndUnderCenterOpacity,
    // Associate with itemExtent
    Stream<double>? $itemExtent,
    // Associate with squeeze
    Stream<double>? $squeeze,
    // Associate with renderChildrenOutsideViewport
    Stream<bool>? $renderChildrenOutsideViewport,
    // Associate with offset
    Stream<_i3.ViewportOffset>? $offset,
    // Associate with childDelegate
    Stream<_i1.ListWheelChildDelegate>? $childDelegate,
    // Associate with clipBehavior
    Stream<ui.Clip>? $clipBehavior,
  }) : super(
          Argument(
            {
              'key': key,
              'diameterRatio': diameterRatio,
              'perspective': perspective,
              'offAxisFraction': offAxisFraction,
              'useMagnifier': useMagnifier,
              'magnification': magnification,
              'overAndUnderCenterOpacity': overAndUnderCenterOpacity,
              'itemExtent': itemExtent,
              'squeeze': squeeze,
              'renderChildrenOutsideViewport': renderChildrenOutsideViewport,
              'offset': offset,
              'childDelegate': childDelegate,
              'clipBehavior': clipBehavior,
            },
            stream: {
              'key': $key,
              'diameterRatio': $diameterRatio,
              'perspective': $perspective,
              'offAxisFraction': $offAxisFraction,
              'useMagnifier': $useMagnifier,
              'magnification': $magnification,
              'overAndUnderCenterOpacity': $overAndUnderCenterOpacity,
              'itemExtent': $itemExtent,
              'squeeze': $squeeze,
              'renderChildrenOutsideViewport': $renderChildrenOutsideViewport,
              'offset': $offset,
              'childDelegate': $childDelegate,
              'clipBehavior': $clipBehavior,
            },
          ),
          builder: (args) => _i1.ListWheelViewport(
            key: args('key'),
            diameterRatio: args('diameterRatio'),
            perspective: args('perspective'),
            offAxisFraction: args('offAxisFraction'),
            useMagnifier: args('useMagnifier'),
            magnification: args('magnification'),
            overAndUnderCenterOpacity: args('overAndUnderCenterOpacity'),
            itemExtent: args('itemExtent'),
            squeeze: args('squeeze'),
            renderChildrenOutsideViewport: args('renderChildrenOutsideViewport'),
            offset: args('offset'),
            childDelegate: args('childDelegate'),
            clipBehavior: args('clipBehavior'),
          ),
        );
}
