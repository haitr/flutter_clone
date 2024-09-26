library rxflutterify_binding; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:ui' as ui;

import 'package:flutter/foundation.dart' as _i2;
import 'package:flutter/gestures.dart' as _i4;
import 'package:flutter/painting.dart' as _i3;
import 'package:flutter/rendering.dart' as _i5;
import 'package:flutter/widgets.dart' as _i1;

import '../wrapper.dart';

final class PageView extends Wrapper {
  @Goto(_i1.PageView.new)
  PageView(
    $ $config, {
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
    _i5.HitTestBehavior hitTestBehavior = _i5.HitTestBehavior.opaque,
    _i1.ScrollBehavior? scrollBehavior,
    bool padEnds = true,
  }) : super(
          Argument({
            #key: key,
            #scrollDirection: scrollDirection,
            #reverse: reverse,
            #controller: controller,
            #physics: physics,
            #pageSnapping: pageSnapping,
            #onPageChanged: onPageChanged,
            #children: children,
            #dragStartBehavior: dragStartBehavior,
            #allowImplicitScrolling: allowImplicitScrolling,
            #restorationId: restorationId,
            #clipBehavior: clipBehavior,
            #hitTestBehavior: hitTestBehavior,
            #scrollBehavior: scrollBehavior,
            #padEnds: padEnds,
          }),
          builder: (args) => _i1.PageView(
            key: args(#key),
            scrollDirection: args(#scrollDirection),
            reverse: args(#reverse),
            controller: args(#controller),
            physics: args(#physics),
            pageSnapping: args(#pageSnapping),
            onPageChanged: args(#onPageChanged),
            children: args(#children),
            dragStartBehavior: args(#dragStartBehavior),
            allowImplicitScrolling: args(#allowImplicitScrolling),
            restorationId: args(#restorationId),
            clipBehavior: args(#clipBehavior),
            hitTestBehavior: args(#hitTestBehavior),
            scrollBehavior: args(#scrollBehavior),
            padEnds: args(#padEnds),
          ),
        );

  @Goto(_i1.PageView.builder)
  PageView.builder(
    $ $config, {
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
    _i5.HitTestBehavior hitTestBehavior = _i5.HitTestBehavior.opaque,
    _i1.ScrollBehavior? scrollBehavior,
    bool padEnds = true,
  }) : super(
          Argument({
            #key: key,
            #scrollDirection: scrollDirection,
            #reverse: reverse,
            #controller: controller,
            #physics: physics,
            #pageSnapping: pageSnapping,
            #onPageChanged: onPageChanged,
            #itemBuilder: itemBuilder,
            #findChildIndexCallback: findChildIndexCallback,
            #itemCount: itemCount,
            #dragStartBehavior: dragStartBehavior,
            #allowImplicitScrolling: allowImplicitScrolling,
            #restorationId: restorationId,
            #clipBehavior: clipBehavior,
            #hitTestBehavior: hitTestBehavior,
            #scrollBehavior: scrollBehavior,
            #padEnds: padEnds,
          }),
          builder: (args) => _i1.PageView.builder(
            key: args(#key),
            scrollDirection: args(#scrollDirection),
            reverse: args(#reverse),
            controller: args(#controller),
            physics: args(#physics),
            pageSnapping: args(#pageSnapping),
            onPageChanged: args(#onPageChanged),
            itemBuilder: args(#itemBuilder),
            findChildIndexCallback: args(#findChildIndexCallback),
            itemCount: args(#itemCount),
            dragStartBehavior: args(#dragStartBehavior),
            allowImplicitScrolling: args(#allowImplicitScrolling),
            restorationId: args(#restorationId),
            clipBehavior: args(#clipBehavior),
            hitTestBehavior: args(#hitTestBehavior),
            scrollBehavior: args(#scrollBehavior),
            padEnds: args(#padEnds),
          ),
        );

  @Goto(_i1.PageView.custom)
  PageView.custom(
    $ $config, {
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
    _i5.HitTestBehavior hitTestBehavior = _i5.HitTestBehavior.opaque,
    _i1.ScrollBehavior? scrollBehavior,
    bool padEnds = true,
  }) : super(
          Argument({
            #key: key,
            #scrollDirection: scrollDirection,
            #reverse: reverse,
            #controller: controller,
            #physics: physics,
            #pageSnapping: pageSnapping,
            #onPageChanged: onPageChanged,
            #childrenDelegate: childrenDelegate,
            #dragStartBehavior: dragStartBehavior,
            #allowImplicitScrolling: allowImplicitScrolling,
            #restorationId: restorationId,
            #clipBehavior: clipBehavior,
            #hitTestBehavior: hitTestBehavior,
            #scrollBehavior: scrollBehavior,
            #padEnds: padEnds,
          }),
          builder: (args) => _i1.PageView.custom(
            key: args(#key),
            scrollDirection: args(#scrollDirection),
            reverse: args(#reverse),
            controller: args(#controller),
            physics: args(#physics),
            pageSnapping: args(#pageSnapping),
            onPageChanged: args(#onPageChanged),
            childrenDelegate: args(#childrenDelegate),
            dragStartBehavior: args(#dragStartBehavior),
            allowImplicitScrolling: args(#allowImplicitScrolling),
            restorationId: args(#restorationId),
            clipBehavior: args(#clipBehavior),
            hitTestBehavior: args(#hitTestBehavior),
            scrollBehavior: args(#scrollBehavior),
            padEnds: args(#padEnds),
          ),
        );
}
