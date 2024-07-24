library rxflutter; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:ui' as ui;

import 'package:flutter/foundation.dart' as _i2;
import 'package:flutter/gestures.dart' as _i6;
import 'package:flutter/material.dart' as _i1;
import 'package:flutter/painting.dart' as _i5;
import 'package:flutter/rendering.dart' as _i4;
import 'package:flutter/widgets.dart' as _i3;

import '../wrapper.dart';

final class ReorderableListView extends Wrapper {
  @Goto(_i1.ReorderableListView.new)
  ReorderableListView({
    _i2.Key? key,
    required List<_i3.Widget> children,
    required _i3.ReorderCallback onReorder,
    void Function(int)? onReorderStart,
    void Function(int)? onReorderEnd,
    double? itemExtent,
    _i4.ItemExtentBuilder? itemExtentBuilder,
    _i3.Widget? prototypeItem,
    _i3.ReorderItemProxyDecorator? proxyDecorator,
    bool buildDefaultDragHandles = true,
    _i5.EdgeInsets? padding,
    _i3.Widget? header,
    _i3.Widget? footer,
    _i5.Axis scrollDirection = _i5.Axis.vertical,
    bool reverse = false,
    _i3.ScrollController? scrollController,
    bool? primary,
    _i3.ScrollPhysics? physics,
    bool shrinkWrap = false,
    double anchor = 0.0,
    double? cacheExtent,
    _i6.DragStartBehavior dragStartBehavior = _i6.DragStartBehavior.start,
    _i3.ScrollViewKeyboardDismissBehavior keyboardDismissBehavior = _i3.ScrollViewKeyboardDismissBehavior.manual,
    String? restorationId,
    ui.Clip clipBehavior = ui.Clip.hardEdge,
    double? autoScrollerVelocityScalar,
    // Associate with key
    Stream<_i2.Key?>? $key,
    // Associate with children
    Stream<List<_i3.Widget>>? $children,
    // Associate with onReorder
    Stream<_i3.ReorderCallback>? $onReorder,
    // Associate with onReorderStart
    Stream<void Function(int)?>? $onReorderStart,
    // Associate with onReorderEnd
    Stream<void Function(int)?>? $onReorderEnd,
    // Associate with itemExtent
    Stream<double?>? $itemExtent,
    // Associate with itemExtentBuilder
    Stream<_i4.ItemExtentBuilder?>? $itemExtentBuilder,
    // Associate with prototypeItem
    Stream<_i3.Widget?>? $prototypeItem,
    // Associate with proxyDecorator
    Stream<_i3.ReorderItemProxyDecorator?>? $proxyDecorator,
    // Associate with buildDefaultDragHandles
    Stream<bool>? $buildDefaultDragHandles,
    // Associate with padding
    Stream<_i5.EdgeInsets?>? $padding,
    // Associate with header
    Stream<_i3.Widget?>? $header,
    // Associate with footer
    Stream<_i3.Widget?>? $footer,
    // Associate with scrollDirection
    Stream<_i5.Axis>? $scrollDirection,
    // Associate with reverse
    Stream<bool>? $reverse,
    // Associate with scrollController
    Stream<_i3.ScrollController?>? $scrollController,
    // Associate with primary
    Stream<bool?>? $primary,
    // Associate with physics
    Stream<_i3.ScrollPhysics?>? $physics,
    // Associate with shrinkWrap
    Stream<bool>? $shrinkWrap,
    // Associate with anchor
    Stream<double>? $anchor,
    // Associate with cacheExtent
    Stream<double?>? $cacheExtent,
    // Associate with dragStartBehavior
    Stream<_i6.DragStartBehavior>? $dragStartBehavior,
    // Associate with keyboardDismissBehavior
    Stream<_i3.ScrollViewKeyboardDismissBehavior>? $keyboardDismissBehavior,
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
              'children': children,
              'onReorder': onReorder,
              'onReorderStart': onReorderStart,
              'onReorderEnd': onReorderEnd,
              'itemExtent': itemExtent,
              'itemExtentBuilder': itemExtentBuilder,
              'prototypeItem': prototypeItem,
              'proxyDecorator': proxyDecorator,
              'buildDefaultDragHandles': buildDefaultDragHandles,
              'padding': padding,
              'header': header,
              'footer': footer,
              'scrollDirection': scrollDirection,
              'reverse': reverse,
              'scrollController': scrollController,
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
              'children': $children,
              'onReorder': $onReorder,
              'onReorderStart': $onReorderStart,
              'onReorderEnd': $onReorderEnd,
              'itemExtent': $itemExtent,
              'itemExtentBuilder': $itemExtentBuilder,
              'prototypeItem': $prototypeItem,
              'proxyDecorator': $proxyDecorator,
              'buildDefaultDragHandles': $buildDefaultDragHandles,
              'padding': $padding,
              'header': $header,
              'footer': $footer,
              'scrollDirection': $scrollDirection,
              'reverse': $reverse,
              'scrollController': $scrollController,
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
          builder: (args) => _i1.ReorderableListView(
            key: args('key'),
            children: args('children'),
            onReorder: args('onReorder'),
            onReorderStart: args('onReorderStart'),
            onReorderEnd: args('onReorderEnd'),
            itemExtent: args('itemExtent'),
            itemExtentBuilder: args('itemExtentBuilder'),
            prototypeItem: args('prototypeItem'),
            proxyDecorator: args('proxyDecorator'),
            buildDefaultDragHandles: args('buildDefaultDragHandles'),
            padding: args('padding'),
            header: args('header'),
            footer: args('footer'),
            scrollDirection: args('scrollDirection'),
            reverse: args('reverse'),
            scrollController: args('scrollController'),
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

  @Goto(_i1.ReorderableListView.builder)
  ReorderableListView.builder({
    _i2.Key? key,
    required _i3.IndexedWidgetBuilder itemBuilder,
    required int itemCount,
    required _i3.ReorderCallback onReorder,
    void Function(int)? onReorderStart,
    void Function(int)? onReorderEnd,
    double? itemExtent,
    _i4.ItemExtentBuilder? itemExtentBuilder,
    _i3.Widget? prototypeItem,
    _i3.ReorderItemProxyDecorator? proxyDecorator,
    bool buildDefaultDragHandles = true,
    _i5.EdgeInsets? padding,
    _i3.Widget? header,
    _i3.Widget? footer,
    _i5.Axis scrollDirection = _i5.Axis.vertical,
    bool reverse = false,
    _i3.ScrollController? scrollController,
    bool? primary,
    _i3.ScrollPhysics? physics,
    bool shrinkWrap = false,
    double anchor = 0.0,
    double? cacheExtent,
    _i6.DragStartBehavior dragStartBehavior = _i6.DragStartBehavior.start,
    _i3.ScrollViewKeyboardDismissBehavior keyboardDismissBehavior = _i3.ScrollViewKeyboardDismissBehavior.manual,
    String? restorationId,
    ui.Clip clipBehavior = ui.Clip.hardEdge,
    double? autoScrollerVelocityScalar,
    // Associate with key
    Stream<_i2.Key?>? $key,
    // Associate with itemBuilder
    Stream<_i3.IndexedWidgetBuilder>? $itemBuilder,
    // Associate with itemCount
    Stream<int>? $itemCount,
    // Associate with onReorder
    Stream<_i3.ReorderCallback>? $onReorder,
    // Associate with onReorderStart
    Stream<void Function(int)?>? $onReorderStart,
    // Associate with onReorderEnd
    Stream<void Function(int)?>? $onReorderEnd,
    // Associate with itemExtent
    Stream<double?>? $itemExtent,
    // Associate with itemExtentBuilder
    Stream<_i4.ItemExtentBuilder?>? $itemExtentBuilder,
    // Associate with prototypeItem
    Stream<_i3.Widget?>? $prototypeItem,
    // Associate with proxyDecorator
    Stream<_i3.ReorderItemProxyDecorator?>? $proxyDecorator,
    // Associate with buildDefaultDragHandles
    Stream<bool>? $buildDefaultDragHandles,
    // Associate with padding
    Stream<_i5.EdgeInsets?>? $padding,
    // Associate with header
    Stream<_i3.Widget?>? $header,
    // Associate with footer
    Stream<_i3.Widget?>? $footer,
    // Associate with scrollDirection
    Stream<_i5.Axis>? $scrollDirection,
    // Associate with reverse
    Stream<bool>? $reverse,
    // Associate with scrollController
    Stream<_i3.ScrollController?>? $scrollController,
    // Associate with primary
    Stream<bool?>? $primary,
    // Associate with physics
    Stream<_i3.ScrollPhysics?>? $physics,
    // Associate with shrinkWrap
    Stream<bool>? $shrinkWrap,
    // Associate with anchor
    Stream<double>? $anchor,
    // Associate with cacheExtent
    Stream<double?>? $cacheExtent,
    // Associate with dragStartBehavior
    Stream<_i6.DragStartBehavior>? $dragStartBehavior,
    // Associate with keyboardDismissBehavior
    Stream<_i3.ScrollViewKeyboardDismissBehavior>? $keyboardDismissBehavior,
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
              'buildDefaultDragHandles': buildDefaultDragHandles,
              'padding': padding,
              'header': header,
              'footer': footer,
              'scrollDirection': scrollDirection,
              'reverse': reverse,
              'scrollController': scrollController,
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
              'buildDefaultDragHandles': $buildDefaultDragHandles,
              'padding': $padding,
              'header': $header,
              'footer': $footer,
              'scrollDirection': $scrollDirection,
              'reverse': $reverse,
              'scrollController': $scrollController,
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
          builder: (args) => _i1.ReorderableListView.builder(
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
            buildDefaultDragHandles: args('buildDefaultDragHandles'),
            padding: args('padding'),
            header: args('header'),
            footer: args('footer'),
            scrollDirection: args('scrollDirection'),
            reverse: args('reverse'),
            scrollController: args('scrollController'),
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
