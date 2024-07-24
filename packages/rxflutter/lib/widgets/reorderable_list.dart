library rxflutter; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:ui' as ui;

import 'package:flutter/foundation.dart' as _i2;
import 'package:flutter/gestures.dart' as _i5;
import 'package:flutter/painting.dart' as _i4;
import 'package:flutter/rendering.dart' as _i3;
import 'package:flutter/widgets.dart' as _i1;

import '../wrapper.dart';

final class ReorderableDelayedDragStartListener extends Wrapper {
  @Goto(_i1.ReorderableDelayedDragStartListener.new)
  ReorderableDelayedDragStartListener({
    _i2.Key? key,
    required _i1.Widget child,
    required int index,
    bool enabled = true,
    // Associate with key
    Stream<_i2.Key?>? $key,
    // Associate with child
    Stream<_i1.Widget>? $child,
    // Associate with index
    Stream<int>? $index,
    // Associate with enabled
    Stream<bool>? $enabled,
  }) : super(
          Argument(
            {
              'key': key,
              'child': child,
              'index': index,
              'enabled': enabled,
            },
            stream: {
              'key': $key,
              'child': $child,
              'index': $index,
              'enabled': $enabled,
            },
          ),
          builder: (args) => _i1.ReorderableDelayedDragStartListener(
            key: args('key'),
            child: args('child'),
            index: args('index'),
            enabled: args('enabled'),
          ),
        );
}

final class ReorderableList extends Wrapper {
  @Goto(_i1.ReorderableList.new)
  ReorderableList({
    _i2.Key? key,
    required _i1.IndexedWidgetBuilder itemBuilder,
    required int itemCount,
    required _i1.ReorderCallback onReorder,
    void Function(int)? onReorderStart,
    void Function(int)? onReorderEnd,
    double? itemExtent,
    _i3.ItemExtentBuilder? itemExtentBuilder,
    _i1.Widget? prototypeItem,
    _i1.ReorderItemProxyDecorator? proxyDecorator,
    _i4.EdgeInsetsGeometry? padding,
    _i4.Axis scrollDirection = _i4.Axis.vertical,
    bool reverse = false,
    _i1.ScrollController? controller,
    bool? primary,
    _i1.ScrollPhysics? physics,
    bool shrinkWrap = false,
    double anchor = 0.0,
    double? cacheExtent,
    _i5.DragStartBehavior dragStartBehavior = _i5.DragStartBehavior.start,
    _i1.ScrollViewKeyboardDismissBehavior keyboardDismissBehavior = _i1.ScrollViewKeyboardDismissBehavior.manual,
    String? restorationId,
    ui.Clip clipBehavior = ui.Clip.hardEdge,
    double? autoScrollerVelocityScalar,
    // Associate with key
    Stream<_i2.Key?>? $key,
    // Associate with itemBuilder
    Stream<_i1.IndexedWidgetBuilder>? $itemBuilder,
    // Associate with itemCount
    Stream<int>? $itemCount,
    // Associate with onReorder
    Stream<_i1.ReorderCallback>? $onReorder,
    // Associate with onReorderStart
    Stream<void Function(int)?>? $onReorderStart,
    // Associate with onReorderEnd
    Stream<void Function(int)?>? $onReorderEnd,
    // Associate with itemExtent
    Stream<double?>? $itemExtent,
    // Associate with itemExtentBuilder
    Stream<_i3.ItemExtentBuilder?>? $itemExtentBuilder,
    // Associate with prototypeItem
    Stream<_i1.Widget?>? $prototypeItem,
    // Associate with proxyDecorator
    Stream<_i1.ReorderItemProxyDecorator?>? $proxyDecorator,
    // Associate with padding
    Stream<_i4.EdgeInsetsGeometry?>? $padding,
    // Associate with scrollDirection
    Stream<_i4.Axis>? $scrollDirection,
    // Associate with reverse
    Stream<bool>? $reverse,
    // Associate with controller
    Stream<_i1.ScrollController?>? $controller,
    // Associate with primary
    Stream<bool?>? $primary,
    // Associate with physics
    Stream<_i1.ScrollPhysics?>? $physics,
    // Associate with shrinkWrap
    Stream<bool>? $shrinkWrap,
    // Associate with anchor
    Stream<double>? $anchor,
    // Associate with cacheExtent
    Stream<double?>? $cacheExtent,
    // Associate with dragStartBehavior
    Stream<_i5.DragStartBehavior>? $dragStartBehavior,
    // Associate with keyboardDismissBehavior
    Stream<_i1.ScrollViewKeyboardDismissBehavior>? $keyboardDismissBehavior,
    // Associate with restorationId
    Stream<String?>? $restorationId,
    // Associate with clipBehavior
    Stream<ui.Clip>? $clipBehavior,
    // Associate with autoScrollerVelocityScalar
    Stream<double?>? $autoScrollerVelocityScalar,
  }) : super(
          Argument(
            {
              'key': key,
              'itemBuilder': itemBuilder,
              'itemCount': itemCount,
              'onReorder': onReorder,
              'onReorderStart': onReorderStart,
              'onReorderEnd': onReorderEnd,
              'itemExtent': itemExtent,
              'itemExtentBuilder': itemExtentBuilder,
              'prototypeItem': prototypeItem,
              'proxyDecorator': proxyDecorator,
              'padding': padding,
              'scrollDirection': scrollDirection,
              'reverse': reverse,
              'controller': controller,
              'primary': primary,
              'physics': physics,
              'shrinkWrap': shrinkWrap,
              'anchor': anchor,
              'cacheExtent': cacheExtent,
              'dragStartBehavior': dragStartBehavior,
              'keyboardDismissBehavior': keyboardDismissBehavior,
              'restorationId': restorationId,
              'clipBehavior': clipBehavior,
              'autoScrollerVelocityScalar': autoScrollerVelocityScalar,
            },
            stream: {
              'key': $key,
              'itemBuilder': $itemBuilder,
              'itemCount': $itemCount,
              'onReorder': $onReorder,
              'onReorderStart': $onReorderStart,
              'onReorderEnd': $onReorderEnd,
              'itemExtent': $itemExtent,
              'itemExtentBuilder': $itemExtentBuilder,
              'prototypeItem': $prototypeItem,
              'proxyDecorator': $proxyDecorator,
              'padding': $padding,
              'scrollDirection': $scrollDirection,
              'reverse': $reverse,
              'controller': $controller,
              'primary': $primary,
              'physics': $physics,
              'shrinkWrap': $shrinkWrap,
              'anchor': $anchor,
              'cacheExtent': $cacheExtent,
              'dragStartBehavior': $dragStartBehavior,
              'keyboardDismissBehavior': $keyboardDismissBehavior,
              'restorationId': $restorationId,
              'clipBehavior': $clipBehavior,
              'autoScrollerVelocityScalar': $autoScrollerVelocityScalar,
            },
          ),
          builder: (args) => _i1.ReorderableList(
            key: args('key'),
            itemBuilder: args('itemBuilder'),
            itemCount: args('itemCount'),
            onReorder: args('onReorder'),
            onReorderStart: args('onReorderStart'),
            onReorderEnd: args('onReorderEnd'),
            itemExtent: args('itemExtent'),
            itemExtentBuilder: args('itemExtentBuilder'),
            prototypeItem: args('prototypeItem'),
            proxyDecorator: args('proxyDecorator'),
            padding: args('padding'),
            scrollDirection: args('scrollDirection'),
            reverse: args('reverse'),
            controller: args('controller'),
            primary: args('primary'),
            physics: args('physics'),
            shrinkWrap: args('shrinkWrap'),
            anchor: args('anchor'),
            cacheExtent: args('cacheExtent'),
            dragStartBehavior: args('dragStartBehavior'),
            keyboardDismissBehavior: args('keyboardDismissBehavior'),
            restorationId: args('restorationId'),
            clipBehavior: args('clipBehavior'),
            autoScrollerVelocityScalar: args('autoScrollerVelocityScalar'),
          ),
        );
}

final class ReorderableDragStartListener extends Wrapper {
  @Goto(_i1.ReorderableDragStartListener.new)
  ReorderableDragStartListener({
    _i2.Key? key,
    required _i1.Widget child,
    required int index,
    bool enabled = true,
    // Associate with key
    Stream<_i2.Key?>? $key,
    // Associate with child
    Stream<_i1.Widget>? $child,
    // Associate with index
    Stream<int>? $index,
    // Associate with enabled
    Stream<bool>? $enabled,
  }) : super(
          Argument(
            {
              'key': key,
              'child': child,
              'index': index,
              'enabled': enabled,
            },
            stream: {
              'key': $key,
              'child': $child,
              'index': $index,
              'enabled': $enabled,
            },
          ),
          builder: (args) => _i1.ReorderableDragStartListener(
            key: args('key'),
            child: args('child'),
            index: args('index'),
            enabled: args('enabled'),
          ),
        );
}

final class SliverReorderableList extends Wrapper {
  @Goto(_i1.SliverReorderableList.new)
  SliverReorderableList({
    _i2.Key? key,
    required _i1.IndexedWidgetBuilder itemBuilder,
    _i1.ChildIndexGetter? findChildIndexCallback,
    required int itemCount,
    required _i1.ReorderCallback onReorder,
    void Function(int)? onReorderStart,
    void Function(int)? onReorderEnd,
    double? itemExtent,
    _i3.ItemExtentBuilder? itemExtentBuilder,
    _i1.Widget? prototypeItem,
    _i1.ReorderItemProxyDecorator? proxyDecorator,
    double? autoScrollerVelocityScalar,
    // Associate with key
    Stream<_i2.Key?>? $key,
    // Associate with itemBuilder
    Stream<_i1.IndexedWidgetBuilder>? $itemBuilder,
    // Associate with findChildIndexCallback
    Stream<_i1.ChildIndexGetter?>? $findChildIndexCallback,
    // Associate with itemCount
    Stream<int>? $itemCount,
    // Associate with onReorder
    Stream<_i1.ReorderCallback>? $onReorder,
    // Associate with onReorderStart
    Stream<void Function(int)?>? $onReorderStart,
    // Associate with onReorderEnd
    Stream<void Function(int)?>? $onReorderEnd,
    // Associate with itemExtent
    Stream<double?>? $itemExtent,
    // Associate with itemExtentBuilder
    Stream<_i3.ItemExtentBuilder?>? $itemExtentBuilder,
    // Associate with prototypeItem
    Stream<_i1.Widget?>? $prototypeItem,
    // Associate with proxyDecorator
    Stream<_i1.ReorderItemProxyDecorator?>? $proxyDecorator,
    // Associate with autoScrollerVelocityScalar
    Stream<double?>? $autoScrollerVelocityScalar,
  }) : super(
          Argument(
            {
              'key': key,
              'itemBuilder': itemBuilder,
              'findChildIndexCallback': findChildIndexCallback,
              'itemCount': itemCount,
              'onReorder': onReorder,
              'onReorderStart': onReorderStart,
              'onReorderEnd': onReorderEnd,
              'itemExtent': itemExtent,
              'itemExtentBuilder': itemExtentBuilder,
              'prototypeItem': prototypeItem,
              'proxyDecorator': proxyDecorator,
              'autoScrollerVelocityScalar': autoScrollerVelocityScalar,
            },
            stream: {
              'key': $key,
              'itemBuilder': $itemBuilder,
              'findChildIndexCallback': $findChildIndexCallback,
              'itemCount': $itemCount,
              'onReorder': $onReorder,
              'onReorderStart': $onReorderStart,
              'onReorderEnd': $onReorderEnd,
              'itemExtent': $itemExtent,
              'itemExtentBuilder': $itemExtentBuilder,
              'prototypeItem': $prototypeItem,
              'proxyDecorator': $proxyDecorator,
              'autoScrollerVelocityScalar': $autoScrollerVelocityScalar,
            },
          ),
          builder: (args) => _i1.SliverReorderableList(
            key: args('key'),
            itemBuilder: args('itemBuilder'),
            findChildIndexCallback: args('findChildIndexCallback'),
            itemCount: args('itemCount'),
            onReorder: args('onReorder'),
            onReorderStart: args('onReorderStart'),
            onReorderEnd: args('onReorderEnd'),
            itemExtent: args('itemExtent'),
            itemExtentBuilder: args('itemExtentBuilder'),
            prototypeItem: args('prototypeItem'),
            proxyDecorator: args('proxyDecorator'),
            autoScrollerVelocityScalar: args('autoScrollerVelocityScalar'),
          ),
        );
}
