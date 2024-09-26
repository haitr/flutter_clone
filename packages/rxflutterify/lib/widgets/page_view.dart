library rxflutterify; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:ui' as ui;

import 'package:flutter/foundation.dart' as _i2;
import 'package:flutter/gestures.dart' as _i4;
import 'package:flutter/painting.dart' as _i3;
import 'package:flutter/widgets.dart' as _i1;

import '../wrapper.dart';

final class PageView extends Wrapper {
  @Goto(_i1.PageView.new)
  PageView({
    _i2.Key? key,
    _i3.Axis scrollDirection = _i3.Axis.horizontal,
    bool reverse = false,
    _i1.PageController? controller,
    _i1.ScrollPhysics? physics,
    bool pageSnapping = true,
    _i2.ValueChanged<int>? onPageChanged,
    List<_i1.Widget> children = const [],
    _i4.DragStartBehavior dragStartBehavior = _i4.DragStartBehavior.start,
    bool allowImplicitScrolling = false,
    String? restorationId,
    ui.Clip clipBehavior = ui.Clip.hardEdge,
    _i1.ScrollBehavior? scrollBehavior,
    bool padEnds = true,
    // Associate with key
    Stream<_i2.Key?>? $key,
    // Associate with scrollDirection
    Stream<_i3.Axis>? $scrollDirection,
    // Associate with reverse
    Stream<bool>? $reverse,
    // Associate with controller
    Stream<_i1.PageController?>? $controller,
    // Associate with physics
    Stream<_i1.ScrollPhysics?>? $physics,
    // Associate with pageSnapping
    Stream<bool>? $pageSnapping,
    // Associate with onPageChanged
    Stream<_i2.ValueChanged<int>?>? $onPageChanged,
    // Associate with children
    Stream<List<_i1.Widget>>? $children,
    // Associate with dragStartBehavior
    Stream<_i4.DragStartBehavior>? $dragStartBehavior,
    // Associate with allowImplicitScrolling
    Stream<bool>? $allowImplicitScrolling,
    // Associate with restorationId
    Stream<String?>? $restorationId,
    // Associate with clipBehavior
    Stream<ui.Clip>? $clipBehavior,
    // Associate with scrollBehavior
    Stream<_i1.ScrollBehavior?>? $scrollBehavior,
    // Associate with padEnds
    Stream<bool>? $padEnds,
  }) : super(
          Argument(
            {
              'key': key,
              'scrollDirection': scrollDirection,
              'reverse': reverse,
              'controller': controller,
              'physics': physics,
              'pageSnapping': pageSnapping,
              'onPageChanged': onPageChanged,
              'children': children,
              'dragStartBehavior': dragStartBehavior,
              'allowImplicitScrolling': allowImplicitScrolling,
              'restorationId': restorationId,
              'clipBehavior': clipBehavior,
              'scrollBehavior': scrollBehavior,
              'padEnds': padEnds,
            },
            stream: {
              'key': $key,
              'scrollDirection': $scrollDirection,
              'reverse': $reverse,
              'controller': $controller,
              'physics': $physics,
              'pageSnapping': $pageSnapping,
              'onPageChanged': $onPageChanged,
              'children': $children,
              'dragStartBehavior': $dragStartBehavior,
              'allowImplicitScrolling': $allowImplicitScrolling,
              'restorationId': $restorationId,
              'clipBehavior': $clipBehavior,
              'scrollBehavior': $scrollBehavior,
              'padEnds': $padEnds,
            },
          ),
          builder: (args) => _i1.PageView(
            key: args('key'),
            scrollDirection: args('scrollDirection'),
            reverse: args('reverse'),
            controller: args('controller'),
            physics: args('physics'),
            pageSnapping: args('pageSnapping'),
            onPageChanged: args('onPageChanged'),
            children: args('children'),
            dragStartBehavior: args('dragStartBehavior'),
            allowImplicitScrolling: args('allowImplicitScrolling'),
            restorationId: args('restorationId'),
            clipBehavior: args('clipBehavior'),
            scrollBehavior: args('scrollBehavior'),
            padEnds: args('padEnds'),
          ),
        );

  @Goto(_i1.PageView.builder)
  PageView.builder({
    _i2.Key? key,
    _i3.Axis scrollDirection = _i3.Axis.horizontal,
    bool reverse = false,
    _i1.PageController? controller,
    _i1.ScrollPhysics? physics,
    bool pageSnapping = true,
    _i2.ValueChanged<int>? onPageChanged,
    required _i1.NullableIndexedWidgetBuilder itemBuilder,
    _i1.ChildIndexGetter? findChildIndexCallback,
    int? itemCount,
    _i4.DragStartBehavior dragStartBehavior = _i4.DragStartBehavior.start,
    bool allowImplicitScrolling = false,
    String? restorationId,
    ui.Clip clipBehavior = ui.Clip.hardEdge,
    _i1.ScrollBehavior? scrollBehavior,
    bool padEnds = true,
    // Associate with key
    Stream<_i2.Key?>? $key,
    // Associate with scrollDirection
    Stream<_i3.Axis>? $scrollDirection,
    // Associate with reverse
    Stream<bool>? $reverse,
    // Associate with controller
    Stream<_i1.PageController?>? $controller,
    // Associate with physics
    Stream<_i1.ScrollPhysics?>? $physics,
    // Associate with pageSnapping
    Stream<bool>? $pageSnapping,
    // Associate with onPageChanged
    Stream<_i2.ValueChanged<int>?>? $onPageChanged,
    // Associate with itemBuilder
    Stream<_i1.NullableIndexedWidgetBuilder>? $itemBuilder,
    // Associate with findChildIndexCallback
    Stream<_i1.ChildIndexGetter?>? $findChildIndexCallback,
    // Associate with itemCount
    Stream<int?>? $itemCount,
    // Associate with dragStartBehavior
    Stream<_i4.DragStartBehavior>? $dragStartBehavior,
    // Associate with allowImplicitScrolling
    Stream<bool>? $allowImplicitScrolling,
    // Associate with restorationId
    Stream<String?>? $restorationId,
    // Associate with clipBehavior
    Stream<ui.Clip>? $clipBehavior,
    // Associate with scrollBehavior
    Stream<_i1.ScrollBehavior?>? $scrollBehavior,
    // Associate with padEnds
    Stream<bool>? $padEnds,
  }) : super(
          Argument(
            {
              'key': key,
              'scrollDirection': scrollDirection,
              'reverse': reverse,
              'controller': controller,
              'physics': physics,
              'pageSnapping': pageSnapping,
              'onPageChanged': onPageChanged,
              'itemBuilder': itemBuilder,
              'findChildIndexCallback': findChildIndexCallback,
              'itemCount': itemCount,
              'dragStartBehavior': dragStartBehavior,
              'allowImplicitScrolling': allowImplicitScrolling,
              'restorationId': restorationId,
              'clipBehavior': clipBehavior,
              'scrollBehavior': scrollBehavior,
              'padEnds': padEnds,
            },
            stream: {
              'key': $key,
              'scrollDirection': $scrollDirection,
              'reverse': $reverse,
              'controller': $controller,
              'physics': $physics,
              'pageSnapping': $pageSnapping,
              'onPageChanged': $onPageChanged,
              'itemBuilder': $itemBuilder,
              'findChildIndexCallback': $findChildIndexCallback,
              'itemCount': $itemCount,
              'dragStartBehavior': $dragStartBehavior,
              'allowImplicitScrolling': $allowImplicitScrolling,
              'restorationId': $restorationId,
              'clipBehavior': $clipBehavior,
              'scrollBehavior': $scrollBehavior,
              'padEnds': $padEnds,
            },
          ),
          builder: (args) => _i1.PageView.builder(
            key: args('key'),
            scrollDirection: args('scrollDirection'),
            reverse: args('reverse'),
            controller: args('controller'),
            physics: args('physics'),
            pageSnapping: args('pageSnapping'),
            onPageChanged: args('onPageChanged'),
            itemBuilder: args('itemBuilder'),
            findChildIndexCallback: args('findChildIndexCallback'),
            itemCount: args('itemCount'),
            dragStartBehavior: args('dragStartBehavior'),
            allowImplicitScrolling: args('allowImplicitScrolling'),
            restorationId: args('restorationId'),
            clipBehavior: args('clipBehavior'),
            scrollBehavior: args('scrollBehavior'),
            padEnds: args('padEnds'),
          ),
        );

  @Goto(_i1.PageView.custom)
  PageView.custom({
    _i2.Key? key,
    _i3.Axis scrollDirection = _i3.Axis.horizontal,
    bool reverse = false,
    _i1.PageController? controller,
    _i1.ScrollPhysics? physics,
    bool pageSnapping = true,
    _i2.ValueChanged<int>? onPageChanged,
    required _i1.SliverChildDelegate childrenDelegate,
    _i4.DragStartBehavior dragStartBehavior = _i4.DragStartBehavior.start,
    bool allowImplicitScrolling = false,
    String? restorationId,
    ui.Clip clipBehavior = ui.Clip.hardEdge,
    _i1.ScrollBehavior? scrollBehavior,
    bool padEnds = true,
    // Associate with key
    Stream<_i2.Key?>? $key,
    // Associate with scrollDirection
    Stream<_i3.Axis>? $scrollDirection,
    // Associate with reverse
    Stream<bool>? $reverse,
    // Associate with controller
    Stream<_i1.PageController?>? $controller,
    // Associate with physics
    Stream<_i1.ScrollPhysics?>? $physics,
    // Associate with pageSnapping
    Stream<bool>? $pageSnapping,
    // Associate with onPageChanged
    Stream<_i2.ValueChanged<int>?>? $onPageChanged,
    // Associate with childrenDelegate
    Stream<_i1.SliverChildDelegate>? $childrenDelegate,
    // Associate with dragStartBehavior
    Stream<_i4.DragStartBehavior>? $dragStartBehavior,
    // Associate with allowImplicitScrolling
    Stream<bool>? $allowImplicitScrolling,
    // Associate with restorationId
    Stream<String?>? $restorationId,
    // Associate with clipBehavior
    Stream<ui.Clip>? $clipBehavior,
    // Associate with scrollBehavior
    Stream<_i1.ScrollBehavior?>? $scrollBehavior,
    // Associate with padEnds
    Stream<bool>? $padEnds,
  }) : super(
          Argument(
            {
              'key': key,
              'scrollDirection': scrollDirection,
              'reverse': reverse,
              'controller': controller,
              'physics': physics,
              'pageSnapping': pageSnapping,
              'onPageChanged': onPageChanged,
              'childrenDelegate': childrenDelegate,
              'dragStartBehavior': dragStartBehavior,
              'allowImplicitScrolling': allowImplicitScrolling,
              'restorationId': restorationId,
              'clipBehavior': clipBehavior,
              'scrollBehavior': scrollBehavior,
              'padEnds': padEnds,
            },
            stream: {
              'key': $key,
              'scrollDirection': $scrollDirection,
              'reverse': $reverse,
              'controller': $controller,
              'physics': $physics,
              'pageSnapping': $pageSnapping,
              'onPageChanged': $onPageChanged,
              'childrenDelegate': $childrenDelegate,
              'dragStartBehavior': $dragStartBehavior,
              'allowImplicitScrolling': $allowImplicitScrolling,
              'restorationId': $restorationId,
              'clipBehavior': $clipBehavior,
              'scrollBehavior': $scrollBehavior,
              'padEnds': $padEnds,
            },
          ),
          builder: (args) => _i1.PageView.custom(
            key: args('key'),
            scrollDirection: args('scrollDirection'),
            reverse: args('reverse'),
            controller: args('controller'),
            physics: args('physics'),
            pageSnapping: args('pageSnapping'),
            onPageChanged: args('onPageChanged'),
            childrenDelegate: args('childrenDelegate'),
            dragStartBehavior: args('dragStartBehavior'),
            allowImplicitScrolling: args('allowImplicitScrolling'),
            restorationId: args('restorationId'),
            clipBehavior: args('clipBehavior'),
            scrollBehavior: args('scrollBehavior'),
            padEnds: args('padEnds'),
          ),
        );
}
