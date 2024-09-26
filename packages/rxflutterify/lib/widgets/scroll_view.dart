library rxflutterify; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:ui' as ui;

import 'package:flutter/foundation.dart' as _i2;
import 'package:flutter/gestures.dart' as _i5;
import 'package:flutter/painting.dart' as _i3;
import 'package:flutter/rendering.dart' as _i4;
import 'package:flutter/widgets.dart' as _i1;

import '../wrapper.dart';

final class ListView extends Wrapper {
  @Goto(_i1.ListView.new)
  ListView({
    _i2.Key? key,
    _i3.Axis scrollDirection = _i3.Axis.vertical,
    bool reverse = false,
    _i1.ScrollController? controller,
    bool? primary,
    _i1.ScrollPhysics? physics,
    bool shrinkWrap = false,
    _i3.EdgeInsetsGeometry? padding,
    double? itemExtent,
    _i4.ItemExtentBuilder? itemExtentBuilder,
    _i1.Widget? prototypeItem,
    bool addAutomaticKeepAlives = true,
    bool addRepaintBoundaries = true,
    bool addSemanticIndexes = true,
    double? cacheExtent,
    List<_i1.Widget> children = const [],
    int? semanticChildCount,
    _i5.DragStartBehavior dragStartBehavior = _i5.DragStartBehavior.start,
    _i1.ScrollViewKeyboardDismissBehavior keyboardDismissBehavior = _i1.ScrollViewKeyboardDismissBehavior.manual,
    String? restorationId,
    ui.Clip clipBehavior = ui.Clip.hardEdge,
    _i4.HitTestBehavior hitTestBehavior = _i4.HitTestBehavior.opaque,
    // Associate with key
    Stream<_i2.Key?>? $key,
    // Associate with scrollDirection
    Stream<_i3.Axis>? $scrollDirection,
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
    // Associate with padding
    Stream<_i3.EdgeInsetsGeometry?>? $padding,
    // Associate with itemExtent
    Stream<double?>? $itemExtent,
    // Associate with itemExtentBuilder
    Stream<_i4.ItemExtentBuilder?>? $itemExtentBuilder,
    // Associate with prototypeItem
    Stream<_i1.Widget?>? $prototypeItem,
    // Associate with addAutomaticKeepAlives
    Stream<bool>? $addAutomaticKeepAlives,
    // Associate with addRepaintBoundaries
    Stream<bool>? $addRepaintBoundaries,
    // Associate with addSemanticIndexes
    Stream<bool>? $addSemanticIndexes,
    // Associate with cacheExtent
    Stream<double?>? $cacheExtent,
    // Associate with children
    Stream<List<_i1.Widget>>? $children,
    // Associate with semanticChildCount
    Stream<int?>? $semanticChildCount,
    // Associate with dragStartBehavior
    Stream<_i5.DragStartBehavior>? $dragStartBehavior,
    // Associate with keyboardDismissBehavior
    Stream<_i1.ScrollViewKeyboardDismissBehavior>? $keyboardDismissBehavior,
    // Associate with restorationId
    Stream<String?>? $restorationId,
    // Associate with clipBehavior
    Stream<ui.Clip>? $clipBehavior,
    // Associate with hitTestBehavior
    Stream<_i4.HitTestBehavior>? $hitTestBehavior,
  }) : super(
          Argument(
            {
              'key': key,
              'scrollDirection': scrollDirection,
              'reverse': reverse,
              'controller': controller,
              'primary': primary,
              'physics': physics,
              'shrinkWrap': shrinkWrap,
              'padding': padding,
              'itemExtent': itemExtent,
              'itemExtentBuilder': itemExtentBuilder,
              'prototypeItem': prototypeItem,
              'addAutomaticKeepAlives': addAutomaticKeepAlives,
              'addRepaintBoundaries': addRepaintBoundaries,
              'addSemanticIndexes': addSemanticIndexes,
              'cacheExtent': cacheExtent,
              'children': children,
              'semanticChildCount': semanticChildCount,
              'dragStartBehavior': dragStartBehavior,
              'keyboardDismissBehavior': keyboardDismissBehavior,
              'restorationId': restorationId,
              'clipBehavior': clipBehavior,
              'hitTestBehavior': hitTestBehavior,
            },
            stream: {
              'key': $key,
              'scrollDirection': $scrollDirection,
              'reverse': $reverse,
              'controller': $controller,
              'primary': $primary,
              'physics': $physics,
              'shrinkWrap': $shrinkWrap,
              'padding': $padding,
              'itemExtent': $itemExtent,
              'itemExtentBuilder': $itemExtentBuilder,
              'prototypeItem': $prototypeItem,
              'addAutomaticKeepAlives': $addAutomaticKeepAlives,
              'addRepaintBoundaries': $addRepaintBoundaries,
              'addSemanticIndexes': $addSemanticIndexes,
              'cacheExtent': $cacheExtent,
              'children': $children,
              'semanticChildCount': $semanticChildCount,
              'dragStartBehavior': $dragStartBehavior,
              'keyboardDismissBehavior': $keyboardDismissBehavior,
              'restorationId': $restorationId,
              'clipBehavior': $clipBehavior,
              'hitTestBehavior': $hitTestBehavior,
            },
          ),
          builder: (args) => _i1.ListView(
            key: args('key'),
            scrollDirection: args('scrollDirection'),
            reverse: args('reverse'),
            controller: args('controller'),
            primary: args('primary'),
            physics: args('physics'),
            shrinkWrap: args('shrinkWrap'),
            padding: args('padding'),
            itemExtent: args('itemExtent'),
            itemExtentBuilder: args('itemExtentBuilder'),
            prototypeItem: args('prototypeItem'),
            addAutomaticKeepAlives: args('addAutomaticKeepAlives'),
            addRepaintBoundaries: args('addRepaintBoundaries'),
            addSemanticIndexes: args('addSemanticIndexes'),
            cacheExtent: args('cacheExtent'),
            children: args('children'),
            semanticChildCount: args('semanticChildCount'),
            dragStartBehavior: args('dragStartBehavior'),
            keyboardDismissBehavior: args('keyboardDismissBehavior'),
            restorationId: args('restorationId'),
            clipBehavior: args('clipBehavior'),
            hitTestBehavior: args('hitTestBehavior'),
          ),
        );

  @Goto(_i1.ListView.builder)
  ListView.builder({
    _i2.Key? key,
    _i3.Axis scrollDirection = _i3.Axis.vertical,
    bool reverse = false,
    _i1.ScrollController? controller,
    bool? primary,
    _i1.ScrollPhysics? physics,
    bool shrinkWrap = false,
    _i3.EdgeInsetsGeometry? padding,
    double? itemExtent,
    _i4.ItemExtentBuilder? itemExtentBuilder,
    _i1.Widget? prototypeItem,
    required _i1.NullableIndexedWidgetBuilder itemBuilder,
    _i1.ChildIndexGetter? findChildIndexCallback,
    int? itemCount,
    bool addAutomaticKeepAlives = true,
    bool addRepaintBoundaries = true,
    bool addSemanticIndexes = true,
    double? cacheExtent,
    int? semanticChildCount,
    _i5.DragStartBehavior dragStartBehavior = _i5.DragStartBehavior.start,
    _i1.ScrollViewKeyboardDismissBehavior keyboardDismissBehavior = _i1.ScrollViewKeyboardDismissBehavior.manual,
    String? restorationId,
    ui.Clip clipBehavior = ui.Clip.hardEdge,
    _i4.HitTestBehavior hitTestBehavior = _i4.HitTestBehavior.opaque,
    // Associate with key
    Stream<_i2.Key?>? $key,
    // Associate with scrollDirection
    Stream<_i3.Axis>? $scrollDirection,
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
    // Associate with padding
    Stream<_i3.EdgeInsetsGeometry?>? $padding,
    // Associate with itemExtent
    Stream<double?>? $itemExtent,
    // Associate with itemExtentBuilder
    Stream<_i4.ItemExtentBuilder?>? $itemExtentBuilder,
    // Associate with prototypeItem
    Stream<_i1.Widget?>? $prototypeItem,
    // Associate with itemBuilder
    Stream<_i1.NullableIndexedWidgetBuilder>? $itemBuilder,
    // Associate with findChildIndexCallback
    Stream<_i1.ChildIndexGetter?>? $findChildIndexCallback,
    // Associate with itemCount
    Stream<int?>? $itemCount,
    // Associate with addAutomaticKeepAlives
    Stream<bool>? $addAutomaticKeepAlives,
    // Associate with addRepaintBoundaries
    Stream<bool>? $addRepaintBoundaries,
    // Associate with addSemanticIndexes
    Stream<bool>? $addSemanticIndexes,
    // Associate with cacheExtent
    Stream<double?>? $cacheExtent,
    // Associate with semanticChildCount
    Stream<int?>? $semanticChildCount,
    // Associate with dragStartBehavior
    Stream<_i5.DragStartBehavior>? $dragStartBehavior,
    // Associate with keyboardDismissBehavior
    Stream<_i1.ScrollViewKeyboardDismissBehavior>? $keyboardDismissBehavior,
    // Associate with restorationId
    Stream<String?>? $restorationId,
    // Associate with clipBehavior
    Stream<ui.Clip>? $clipBehavior,
    // Associate with hitTestBehavior
    Stream<_i4.HitTestBehavior>? $hitTestBehavior,
  }) : super(
          Argument(
            {
              'key': key,
              'scrollDirection': scrollDirection,
              'reverse': reverse,
              'controller': controller,
              'primary': primary,
              'physics': physics,
              'shrinkWrap': shrinkWrap,
              'padding': padding,
              'itemExtent': itemExtent,
              'itemExtentBuilder': itemExtentBuilder,
              'prototypeItem': prototypeItem,
              'itemBuilder': itemBuilder,
              'findChildIndexCallback': findChildIndexCallback,
              'itemCount': itemCount,
              'addAutomaticKeepAlives': addAutomaticKeepAlives,
              'addRepaintBoundaries': addRepaintBoundaries,
              'addSemanticIndexes': addSemanticIndexes,
              'cacheExtent': cacheExtent,
              'semanticChildCount': semanticChildCount,
              'dragStartBehavior': dragStartBehavior,
              'keyboardDismissBehavior': keyboardDismissBehavior,
              'restorationId': restorationId,
              'clipBehavior': clipBehavior,
              'hitTestBehavior': hitTestBehavior,
            },
            stream: {
              'key': $key,
              'scrollDirection': $scrollDirection,
              'reverse': $reverse,
              'controller': $controller,
              'primary': $primary,
              'physics': $physics,
              'shrinkWrap': $shrinkWrap,
              'padding': $padding,
              'itemExtent': $itemExtent,
              'itemExtentBuilder': $itemExtentBuilder,
              'prototypeItem': $prototypeItem,
              'itemBuilder': $itemBuilder,
              'findChildIndexCallback': $findChildIndexCallback,
              'itemCount': $itemCount,
              'addAutomaticKeepAlives': $addAutomaticKeepAlives,
              'addRepaintBoundaries': $addRepaintBoundaries,
              'addSemanticIndexes': $addSemanticIndexes,
              'cacheExtent': $cacheExtent,
              'semanticChildCount': $semanticChildCount,
              'dragStartBehavior': $dragStartBehavior,
              'keyboardDismissBehavior': $keyboardDismissBehavior,
              'restorationId': $restorationId,
              'clipBehavior': $clipBehavior,
              'hitTestBehavior': $hitTestBehavior,
            },
          ),
          builder: (args) => _i1.ListView.builder(
            key: args('key'),
            scrollDirection: args('scrollDirection'),
            reverse: args('reverse'),
            controller: args('controller'),
            primary: args('primary'),
            physics: args('physics'),
            shrinkWrap: args('shrinkWrap'),
            padding: args('padding'),
            itemExtent: args('itemExtent'),
            itemExtentBuilder: args('itemExtentBuilder'),
            prototypeItem: args('prototypeItem'),
            itemBuilder: args('itemBuilder'),
            findChildIndexCallback: args('findChildIndexCallback'),
            itemCount: args('itemCount'),
            addAutomaticKeepAlives: args('addAutomaticKeepAlives'),
            addRepaintBoundaries: args('addRepaintBoundaries'),
            addSemanticIndexes: args('addSemanticIndexes'),
            cacheExtent: args('cacheExtent'),
            semanticChildCount: args('semanticChildCount'),
            dragStartBehavior: args('dragStartBehavior'),
            keyboardDismissBehavior: args('keyboardDismissBehavior'),
            restorationId: args('restorationId'),
            clipBehavior: args('clipBehavior'),
            hitTestBehavior: args('hitTestBehavior'),
          ),
        );

  @Goto(_i1.ListView.separated)
  ListView.separated({
    _i2.Key? key,
    _i3.Axis scrollDirection = _i3.Axis.vertical,
    bool reverse = false,
    _i1.ScrollController? controller,
    bool? primary,
    _i1.ScrollPhysics? physics,
    bool shrinkWrap = false,
    _i3.EdgeInsetsGeometry? padding,
    required _i1.NullableIndexedWidgetBuilder itemBuilder,
    _i1.ChildIndexGetter? findChildIndexCallback,
    required _i1.IndexedWidgetBuilder separatorBuilder,
    required int itemCount,
    bool addAutomaticKeepAlives = true,
    bool addRepaintBoundaries = true,
    bool addSemanticIndexes = true,
    double? cacheExtent,
    _i5.DragStartBehavior dragStartBehavior = _i5.DragStartBehavior.start,
    _i1.ScrollViewKeyboardDismissBehavior keyboardDismissBehavior = _i1.ScrollViewKeyboardDismissBehavior.manual,
    String? restorationId,
    ui.Clip clipBehavior = ui.Clip.hardEdge,
    _i4.HitTestBehavior hitTestBehavior = _i4.HitTestBehavior.opaque,
    // Associate with key
    Stream<_i2.Key?>? $key,
    // Associate with scrollDirection
    Stream<_i3.Axis>? $scrollDirection,
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
    // Associate with padding
    Stream<_i3.EdgeInsetsGeometry?>? $padding,
    // Associate with itemBuilder
    Stream<_i1.NullableIndexedWidgetBuilder>? $itemBuilder,
    // Associate with findChildIndexCallback
    Stream<_i1.ChildIndexGetter?>? $findChildIndexCallback,
    // Associate with separatorBuilder
    Stream<_i1.IndexedWidgetBuilder>? $separatorBuilder,
    // Associate with itemCount
    Stream<int>? $itemCount,
    // Associate with addAutomaticKeepAlives
    Stream<bool>? $addAutomaticKeepAlives,
    // Associate with addRepaintBoundaries
    Stream<bool>? $addRepaintBoundaries,
    // Associate with addSemanticIndexes
    Stream<bool>? $addSemanticIndexes,
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
    // Associate with hitTestBehavior
    Stream<_i4.HitTestBehavior>? $hitTestBehavior,
  }) : super(
          Argument(
            {
              'key': key,
              'scrollDirection': scrollDirection,
              'reverse': reverse,
              'controller': controller,
              'primary': primary,
              'physics': physics,
              'shrinkWrap': shrinkWrap,
              'padding': padding,
              'itemBuilder': itemBuilder,
              'findChildIndexCallback': findChildIndexCallback,
              'separatorBuilder': separatorBuilder,
              'itemCount': itemCount,
              'addAutomaticKeepAlives': addAutomaticKeepAlives,
              'addRepaintBoundaries': addRepaintBoundaries,
              'addSemanticIndexes': addSemanticIndexes,
              'cacheExtent': cacheExtent,
              'dragStartBehavior': dragStartBehavior,
              'keyboardDismissBehavior': keyboardDismissBehavior,
              'restorationId': restorationId,
              'clipBehavior': clipBehavior,
              'hitTestBehavior': hitTestBehavior,
            },
            stream: {
              'key': $key,
              'scrollDirection': $scrollDirection,
              'reverse': $reverse,
              'controller': $controller,
              'primary': $primary,
              'physics': $physics,
              'shrinkWrap': $shrinkWrap,
              'padding': $padding,
              'itemBuilder': $itemBuilder,
              'findChildIndexCallback': $findChildIndexCallback,
              'separatorBuilder': $separatorBuilder,
              'itemCount': $itemCount,
              'addAutomaticKeepAlives': $addAutomaticKeepAlives,
              'addRepaintBoundaries': $addRepaintBoundaries,
              'addSemanticIndexes': $addSemanticIndexes,
              'cacheExtent': $cacheExtent,
              'dragStartBehavior': $dragStartBehavior,
              'keyboardDismissBehavior': $keyboardDismissBehavior,
              'restorationId': $restorationId,
              'clipBehavior': $clipBehavior,
              'hitTestBehavior': $hitTestBehavior,
            },
          ),
          builder: (args) => _i1.ListView.separated(
            key: args('key'),
            scrollDirection: args('scrollDirection'),
            reverse: args('reverse'),
            controller: args('controller'),
            primary: args('primary'),
            physics: args('physics'),
            shrinkWrap: args('shrinkWrap'),
            padding: args('padding'),
            itemBuilder: args('itemBuilder'),
            findChildIndexCallback: args('findChildIndexCallback'),
            separatorBuilder: args('separatorBuilder'),
            itemCount: args('itemCount'),
            addAutomaticKeepAlives: args('addAutomaticKeepAlives'),
            addRepaintBoundaries: args('addRepaintBoundaries'),
            addSemanticIndexes: args('addSemanticIndexes'),
            cacheExtent: args('cacheExtent'),
            dragStartBehavior: args('dragStartBehavior'),
            keyboardDismissBehavior: args('keyboardDismissBehavior'),
            restorationId: args('restorationId'),
            clipBehavior: args('clipBehavior'),
            hitTestBehavior: args('hitTestBehavior'),
          ),
        );

  @Goto(_i1.ListView.custom)
  ListView.custom({
    _i2.Key? key,
    _i3.Axis scrollDirection = _i3.Axis.vertical,
    bool reverse = false,
    _i1.ScrollController? controller,
    bool? primary,
    _i1.ScrollPhysics? physics,
    bool shrinkWrap = false,
    _i3.EdgeInsetsGeometry? padding,
    double? itemExtent,
    _i1.Widget? prototypeItem,
    _i4.ItemExtentBuilder? itemExtentBuilder,
    required _i1.SliverChildDelegate childrenDelegate,
    double? cacheExtent,
    int? semanticChildCount,
    _i5.DragStartBehavior dragStartBehavior = _i5.DragStartBehavior.start,
    _i1.ScrollViewKeyboardDismissBehavior keyboardDismissBehavior = _i1.ScrollViewKeyboardDismissBehavior.manual,
    String? restorationId,
    ui.Clip clipBehavior = ui.Clip.hardEdge,
    _i4.HitTestBehavior hitTestBehavior = _i4.HitTestBehavior.opaque,
    // Associate with key
    Stream<_i2.Key?>? $key,
    // Associate with scrollDirection
    Stream<_i3.Axis>? $scrollDirection,
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
    // Associate with padding
    Stream<_i3.EdgeInsetsGeometry?>? $padding,
    // Associate with itemExtent
    Stream<double?>? $itemExtent,
    // Associate with prototypeItem
    Stream<_i1.Widget?>? $prototypeItem,
    // Associate with itemExtentBuilder
    Stream<_i4.ItemExtentBuilder?>? $itemExtentBuilder,
    // Associate with childrenDelegate
    Stream<_i1.SliverChildDelegate>? $childrenDelegate,
    // Associate with cacheExtent
    Stream<double?>? $cacheExtent,
    // Associate with semanticChildCount
    Stream<int?>? $semanticChildCount,
    // Associate with dragStartBehavior
    Stream<_i5.DragStartBehavior>? $dragStartBehavior,
    // Associate with keyboardDismissBehavior
    Stream<_i1.ScrollViewKeyboardDismissBehavior>? $keyboardDismissBehavior,
    // Associate with restorationId
    Stream<String?>? $restorationId,
    // Associate with clipBehavior
    Stream<ui.Clip>? $clipBehavior,
    // Associate with hitTestBehavior
    Stream<_i4.HitTestBehavior>? $hitTestBehavior,
  }) : super(
          Argument(
            {
              'key': key,
              'scrollDirection': scrollDirection,
              'reverse': reverse,
              'controller': controller,
              'primary': primary,
              'physics': physics,
              'shrinkWrap': shrinkWrap,
              'padding': padding,
              'itemExtent': itemExtent,
              'prototypeItem': prototypeItem,
              'itemExtentBuilder': itemExtentBuilder,
              'childrenDelegate': childrenDelegate,
              'cacheExtent': cacheExtent,
              'semanticChildCount': semanticChildCount,
              'dragStartBehavior': dragStartBehavior,
              'keyboardDismissBehavior': keyboardDismissBehavior,
              'restorationId': restorationId,
              'clipBehavior': clipBehavior,
              'hitTestBehavior': hitTestBehavior,
            },
            stream: {
              'key': $key,
              'scrollDirection': $scrollDirection,
              'reverse': $reverse,
              'controller': $controller,
              'primary': $primary,
              'physics': $physics,
              'shrinkWrap': $shrinkWrap,
              'padding': $padding,
              'itemExtent': $itemExtent,
              'prototypeItem': $prototypeItem,
              'itemExtentBuilder': $itemExtentBuilder,
              'childrenDelegate': $childrenDelegate,
              'cacheExtent': $cacheExtent,
              'semanticChildCount': $semanticChildCount,
              'dragStartBehavior': $dragStartBehavior,
              'keyboardDismissBehavior': $keyboardDismissBehavior,
              'restorationId': $restorationId,
              'clipBehavior': $clipBehavior,
              'hitTestBehavior': $hitTestBehavior,
            },
          ),
          builder: (args) => _i1.ListView.custom(
            key: args('key'),
            scrollDirection: args('scrollDirection'),
            reverse: args('reverse'),
            controller: args('controller'),
            primary: args('primary'),
            physics: args('physics'),
            shrinkWrap: args('shrinkWrap'),
            padding: args('padding'),
            itemExtent: args('itemExtent'),
            prototypeItem: args('prototypeItem'),
            itemExtentBuilder: args('itemExtentBuilder'),
            childrenDelegate: args('childrenDelegate'),
            cacheExtent: args('cacheExtent'),
            semanticChildCount: args('semanticChildCount'),
            dragStartBehavior: args('dragStartBehavior'),
            keyboardDismissBehavior: args('keyboardDismissBehavior'),
            restorationId: args('restorationId'),
            clipBehavior: args('clipBehavior'),
            hitTestBehavior: args('hitTestBehavior'),
          ),
        );
}

final class CustomScrollView extends Wrapper {
  @Goto(_i1.CustomScrollView.new)
  CustomScrollView({
    _i2.Key? key,
    _i3.Axis scrollDirection = _i3.Axis.vertical,
    bool reverse = false,
    _i1.ScrollController? controller,
    bool? primary,
    _i1.ScrollPhysics? physics,
    _i1.ScrollBehavior? scrollBehavior,
    bool shrinkWrap = false,
    _i2.Key? center,
    double anchor = 0.0,
    double? cacheExtent,
    List<_i1.Widget> slivers = const [],
    int? semanticChildCount,
    _i5.DragStartBehavior dragStartBehavior = _i5.DragStartBehavior.start,
    _i1.ScrollViewKeyboardDismissBehavior keyboardDismissBehavior = _i1.ScrollViewKeyboardDismissBehavior.manual,
    String? restorationId,
    ui.Clip clipBehavior = ui.Clip.hardEdge,
    _i4.HitTestBehavior hitTestBehavior = _i4.HitTestBehavior.opaque,
    // Associate with key
    Stream<_i2.Key?>? $key,
    // Associate with scrollDirection
    Stream<_i3.Axis>? $scrollDirection,
    // Associate with reverse
    Stream<bool>? $reverse,
    // Associate with controller
    Stream<_i1.ScrollController?>? $controller,
    // Associate with primary
    Stream<bool?>? $primary,
    // Associate with physics
    Stream<_i1.ScrollPhysics?>? $physics,
    // Associate with scrollBehavior
    Stream<_i1.ScrollBehavior?>? $scrollBehavior,
    // Associate with shrinkWrap
    Stream<bool>? $shrinkWrap,
    // Associate with center
    Stream<_i2.Key?>? $center,
    // Associate with anchor
    Stream<double>? $anchor,
    // Associate with cacheExtent
    Stream<double?>? $cacheExtent,
    // Associate with slivers
    Stream<List<_i1.Widget>>? $slivers,
    // Associate with semanticChildCount
    Stream<int?>? $semanticChildCount,
    // Associate with dragStartBehavior
    Stream<_i5.DragStartBehavior>? $dragStartBehavior,
    // Associate with keyboardDismissBehavior
    Stream<_i1.ScrollViewKeyboardDismissBehavior>? $keyboardDismissBehavior,
    // Associate with restorationId
    Stream<String?>? $restorationId,
    // Associate with clipBehavior
    Stream<ui.Clip>? $clipBehavior,
    // Associate with hitTestBehavior
    Stream<_i4.HitTestBehavior>? $hitTestBehavior,
  }) : super(
          Argument(
            {
              'key': key,
              'scrollDirection': scrollDirection,
              'reverse': reverse,
              'controller': controller,
              'primary': primary,
              'physics': physics,
              'scrollBehavior': scrollBehavior,
              'shrinkWrap': shrinkWrap,
              'center': center,
              'anchor': anchor,
              'cacheExtent': cacheExtent,
              'slivers': slivers,
              'semanticChildCount': semanticChildCount,
              'dragStartBehavior': dragStartBehavior,
              'keyboardDismissBehavior': keyboardDismissBehavior,
              'restorationId': restorationId,
              'clipBehavior': clipBehavior,
              'hitTestBehavior': hitTestBehavior,
            },
            stream: {
              'key': $key,
              'scrollDirection': $scrollDirection,
              'reverse': $reverse,
              'controller': $controller,
              'primary': $primary,
              'physics': $physics,
              'scrollBehavior': $scrollBehavior,
              'shrinkWrap': $shrinkWrap,
              'center': $center,
              'anchor': $anchor,
              'cacheExtent': $cacheExtent,
              'slivers': $slivers,
              'semanticChildCount': $semanticChildCount,
              'dragStartBehavior': $dragStartBehavior,
              'keyboardDismissBehavior': $keyboardDismissBehavior,
              'restorationId': $restorationId,
              'clipBehavior': $clipBehavior,
              'hitTestBehavior': $hitTestBehavior,
            },
          ),
          builder: (args) => _i1.CustomScrollView(
            key: args('key'),
            scrollDirection: args('scrollDirection'),
            reverse: args('reverse'),
            controller: args('controller'),
            primary: args('primary'),
            physics: args('physics'),
            scrollBehavior: args('scrollBehavior'),
            shrinkWrap: args('shrinkWrap'),
            center: args('center'),
            anchor: args('anchor'),
            cacheExtent: args('cacheExtent'),
            slivers: args('slivers'),
            semanticChildCount: args('semanticChildCount'),
            dragStartBehavior: args('dragStartBehavior'),
            keyboardDismissBehavior: args('keyboardDismissBehavior'),
            restorationId: args('restorationId'),
            clipBehavior: args('clipBehavior'),
            hitTestBehavior: args('hitTestBehavior'),
          ),
        );
}

final class GridView extends Wrapper {
  @Goto(_i1.GridView.new)
  GridView({
    _i2.Key? key,
    _i3.Axis scrollDirection = _i3.Axis.vertical,
    bool reverse = false,
    _i1.ScrollController? controller,
    bool? primary,
    _i1.ScrollPhysics? physics,
    bool shrinkWrap = false,
    _i3.EdgeInsetsGeometry? padding,
    required _i4.SliverGridDelegate gridDelegate,
    bool addAutomaticKeepAlives = true,
    bool addRepaintBoundaries = true,
    bool addSemanticIndexes = true,
    double? cacheExtent,
    List<_i1.Widget> children = const [],
    int? semanticChildCount,
    _i5.DragStartBehavior dragStartBehavior = _i5.DragStartBehavior.start,
    ui.Clip clipBehavior = ui.Clip.hardEdge,
    _i1.ScrollViewKeyboardDismissBehavior keyboardDismissBehavior = _i1.ScrollViewKeyboardDismissBehavior.manual,
    String? restorationId,
    _i4.HitTestBehavior hitTestBehavior = _i4.HitTestBehavior.opaque,
    // Associate with key
    Stream<_i2.Key?>? $key,
    // Associate with scrollDirection
    Stream<_i3.Axis>? $scrollDirection,
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
    // Associate with padding
    Stream<_i3.EdgeInsetsGeometry?>? $padding,
    // Associate with gridDelegate
    Stream<_i4.SliverGridDelegate>? $gridDelegate,
    // Associate with addAutomaticKeepAlives
    Stream<bool>? $addAutomaticKeepAlives,
    // Associate with addRepaintBoundaries
    Stream<bool>? $addRepaintBoundaries,
    // Associate with addSemanticIndexes
    Stream<bool>? $addSemanticIndexes,
    // Associate with cacheExtent
    Stream<double?>? $cacheExtent,
    // Associate with children
    Stream<List<_i1.Widget>>? $children,
    // Associate with semanticChildCount
    Stream<int?>? $semanticChildCount,
    // Associate with dragStartBehavior
    Stream<_i5.DragStartBehavior>? $dragStartBehavior,
    // Associate with clipBehavior
    Stream<ui.Clip>? $clipBehavior,
    // Associate with keyboardDismissBehavior
    Stream<_i1.ScrollViewKeyboardDismissBehavior>? $keyboardDismissBehavior,
    // Associate with restorationId
    Stream<String?>? $restorationId,
    // Associate with hitTestBehavior
    Stream<_i4.HitTestBehavior>? $hitTestBehavior,
  }) : super(
          Argument(
            {
              'key': key,
              'scrollDirection': scrollDirection,
              'reverse': reverse,
              'controller': controller,
              'primary': primary,
              'physics': physics,
              'shrinkWrap': shrinkWrap,
              'padding': padding,
              'gridDelegate': gridDelegate,
              'addAutomaticKeepAlives': addAutomaticKeepAlives,
              'addRepaintBoundaries': addRepaintBoundaries,
              'addSemanticIndexes': addSemanticIndexes,
              'cacheExtent': cacheExtent,
              'children': children,
              'semanticChildCount': semanticChildCount,
              'dragStartBehavior': dragStartBehavior,
              'clipBehavior': clipBehavior,
              'keyboardDismissBehavior': keyboardDismissBehavior,
              'restorationId': restorationId,
              'hitTestBehavior': hitTestBehavior,
            },
            stream: {
              'key': $key,
              'scrollDirection': $scrollDirection,
              'reverse': $reverse,
              'controller': $controller,
              'primary': $primary,
              'physics': $physics,
              'shrinkWrap': $shrinkWrap,
              'padding': $padding,
              'gridDelegate': $gridDelegate,
              'addAutomaticKeepAlives': $addAutomaticKeepAlives,
              'addRepaintBoundaries': $addRepaintBoundaries,
              'addSemanticIndexes': $addSemanticIndexes,
              'cacheExtent': $cacheExtent,
              'children': $children,
              'semanticChildCount': $semanticChildCount,
              'dragStartBehavior': $dragStartBehavior,
              'clipBehavior': $clipBehavior,
              'keyboardDismissBehavior': $keyboardDismissBehavior,
              'restorationId': $restorationId,
              'hitTestBehavior': $hitTestBehavior,
            },
          ),
          builder: (args) => _i1.GridView(
            key: args('key'),
            scrollDirection: args('scrollDirection'),
            reverse: args('reverse'),
            controller: args('controller'),
            primary: args('primary'),
            physics: args('physics'),
            shrinkWrap: args('shrinkWrap'),
            padding: args('padding'),
            gridDelegate: args('gridDelegate'),
            addAutomaticKeepAlives: args('addAutomaticKeepAlives'),
            addRepaintBoundaries: args('addRepaintBoundaries'),
            addSemanticIndexes: args('addSemanticIndexes'),
            cacheExtent: args('cacheExtent'),
            children: args('children'),
            semanticChildCount: args('semanticChildCount'),
            dragStartBehavior: args('dragStartBehavior'),
            clipBehavior: args('clipBehavior'),
            keyboardDismissBehavior: args('keyboardDismissBehavior'),
            restorationId: args('restorationId'),
            hitTestBehavior: args('hitTestBehavior'),
          ),
        );

  @Goto(_i1.GridView.builder)
  GridView.builder({
    _i2.Key? key,
    _i3.Axis scrollDirection = _i3.Axis.vertical,
    bool reverse = false,
    _i1.ScrollController? controller,
    bool? primary,
    _i1.ScrollPhysics? physics,
    bool shrinkWrap = false,
    _i3.EdgeInsetsGeometry? padding,
    required _i4.SliverGridDelegate gridDelegate,
    required _i1.NullableIndexedWidgetBuilder itemBuilder,
    _i1.ChildIndexGetter? findChildIndexCallback,
    int? itemCount,
    bool addAutomaticKeepAlives = true,
    bool addRepaintBoundaries = true,
    bool addSemanticIndexes = true,
    double? cacheExtent,
    int? semanticChildCount,
    _i5.DragStartBehavior dragStartBehavior = _i5.DragStartBehavior.start,
    _i1.ScrollViewKeyboardDismissBehavior keyboardDismissBehavior = _i1.ScrollViewKeyboardDismissBehavior.manual,
    String? restorationId,
    ui.Clip clipBehavior = ui.Clip.hardEdge,
    _i4.HitTestBehavior hitTestBehavior = _i4.HitTestBehavior.opaque,
    // Associate with key
    Stream<_i2.Key?>? $key,
    // Associate with scrollDirection
    Stream<_i3.Axis>? $scrollDirection,
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
    // Associate with padding
    Stream<_i3.EdgeInsetsGeometry?>? $padding,
    // Associate with gridDelegate
    Stream<_i4.SliverGridDelegate>? $gridDelegate,
    // Associate with itemBuilder
    Stream<_i1.NullableIndexedWidgetBuilder>? $itemBuilder,
    // Associate with findChildIndexCallback
    Stream<_i1.ChildIndexGetter?>? $findChildIndexCallback,
    // Associate with itemCount
    Stream<int?>? $itemCount,
    // Associate with addAutomaticKeepAlives
    Stream<bool>? $addAutomaticKeepAlives,
    // Associate with addRepaintBoundaries
    Stream<bool>? $addRepaintBoundaries,
    // Associate with addSemanticIndexes
    Stream<bool>? $addSemanticIndexes,
    // Associate with cacheExtent
    Stream<double?>? $cacheExtent,
    // Associate with semanticChildCount
    Stream<int?>? $semanticChildCount,
    // Associate with dragStartBehavior
    Stream<_i5.DragStartBehavior>? $dragStartBehavior,
    // Associate with keyboardDismissBehavior
    Stream<_i1.ScrollViewKeyboardDismissBehavior>? $keyboardDismissBehavior,
    // Associate with restorationId
    Stream<String?>? $restorationId,
    // Associate with clipBehavior
    Stream<ui.Clip>? $clipBehavior,
    // Associate with hitTestBehavior
    Stream<_i4.HitTestBehavior>? $hitTestBehavior,
  }) : super(
          Argument(
            {
              'key': key,
              'scrollDirection': scrollDirection,
              'reverse': reverse,
              'controller': controller,
              'primary': primary,
              'physics': physics,
              'shrinkWrap': shrinkWrap,
              'padding': padding,
              'gridDelegate': gridDelegate,
              'itemBuilder': itemBuilder,
              'findChildIndexCallback': findChildIndexCallback,
              'itemCount': itemCount,
              'addAutomaticKeepAlives': addAutomaticKeepAlives,
              'addRepaintBoundaries': addRepaintBoundaries,
              'addSemanticIndexes': addSemanticIndexes,
              'cacheExtent': cacheExtent,
              'semanticChildCount': semanticChildCount,
              'dragStartBehavior': dragStartBehavior,
              'keyboardDismissBehavior': keyboardDismissBehavior,
              'restorationId': restorationId,
              'clipBehavior': clipBehavior,
              'hitTestBehavior': hitTestBehavior,
            },
            stream: {
              'key': $key,
              'scrollDirection': $scrollDirection,
              'reverse': $reverse,
              'controller': $controller,
              'primary': $primary,
              'physics': $physics,
              'shrinkWrap': $shrinkWrap,
              'padding': $padding,
              'gridDelegate': $gridDelegate,
              'itemBuilder': $itemBuilder,
              'findChildIndexCallback': $findChildIndexCallback,
              'itemCount': $itemCount,
              'addAutomaticKeepAlives': $addAutomaticKeepAlives,
              'addRepaintBoundaries': $addRepaintBoundaries,
              'addSemanticIndexes': $addSemanticIndexes,
              'cacheExtent': $cacheExtent,
              'semanticChildCount': $semanticChildCount,
              'dragStartBehavior': $dragStartBehavior,
              'keyboardDismissBehavior': $keyboardDismissBehavior,
              'restorationId': $restorationId,
              'clipBehavior': $clipBehavior,
              'hitTestBehavior': $hitTestBehavior,
            },
          ),
          builder: (args) => _i1.GridView.builder(
            key: args('key'),
            scrollDirection: args('scrollDirection'),
            reverse: args('reverse'),
            controller: args('controller'),
            primary: args('primary'),
            physics: args('physics'),
            shrinkWrap: args('shrinkWrap'),
            padding: args('padding'),
            gridDelegate: args('gridDelegate'),
            itemBuilder: args('itemBuilder'),
            findChildIndexCallback: args('findChildIndexCallback'),
            itemCount: args('itemCount'),
            addAutomaticKeepAlives: args('addAutomaticKeepAlives'),
            addRepaintBoundaries: args('addRepaintBoundaries'),
            addSemanticIndexes: args('addSemanticIndexes'),
            cacheExtent: args('cacheExtent'),
            semanticChildCount: args('semanticChildCount'),
            dragStartBehavior: args('dragStartBehavior'),
            keyboardDismissBehavior: args('keyboardDismissBehavior'),
            restorationId: args('restorationId'),
            clipBehavior: args('clipBehavior'),
            hitTestBehavior: args('hitTestBehavior'),
          ),
        );

  @Goto(_i1.GridView.custom)
  GridView.custom({
    _i2.Key? key,
    _i3.Axis scrollDirection = _i3.Axis.vertical,
    bool reverse = false,
    _i1.ScrollController? controller,
    bool? primary,
    _i1.ScrollPhysics? physics,
    bool shrinkWrap = false,
    _i3.EdgeInsetsGeometry? padding,
    required _i4.SliverGridDelegate gridDelegate,
    required _i1.SliverChildDelegate childrenDelegate,
    double? cacheExtent,
    int? semanticChildCount,
    _i5.DragStartBehavior dragStartBehavior = _i5.DragStartBehavior.start,
    _i1.ScrollViewKeyboardDismissBehavior keyboardDismissBehavior = _i1.ScrollViewKeyboardDismissBehavior.manual,
    String? restorationId,
    ui.Clip clipBehavior = ui.Clip.hardEdge,
    _i4.HitTestBehavior hitTestBehavior = _i4.HitTestBehavior.opaque,
    // Associate with key
    Stream<_i2.Key?>? $key,
    // Associate with scrollDirection
    Stream<_i3.Axis>? $scrollDirection,
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
    // Associate with padding
    Stream<_i3.EdgeInsetsGeometry?>? $padding,
    // Associate with gridDelegate
    Stream<_i4.SliverGridDelegate>? $gridDelegate,
    // Associate with childrenDelegate
    Stream<_i1.SliverChildDelegate>? $childrenDelegate,
    // Associate with cacheExtent
    Stream<double?>? $cacheExtent,
    // Associate with semanticChildCount
    Stream<int?>? $semanticChildCount,
    // Associate with dragStartBehavior
    Stream<_i5.DragStartBehavior>? $dragStartBehavior,
    // Associate with keyboardDismissBehavior
    Stream<_i1.ScrollViewKeyboardDismissBehavior>? $keyboardDismissBehavior,
    // Associate with restorationId
    Stream<String?>? $restorationId,
    // Associate with clipBehavior
    Stream<ui.Clip>? $clipBehavior,
    // Associate with hitTestBehavior
    Stream<_i4.HitTestBehavior>? $hitTestBehavior,
  }) : super(
          Argument(
            {
              'key': key,
              'scrollDirection': scrollDirection,
              'reverse': reverse,
              'controller': controller,
              'primary': primary,
              'physics': physics,
              'shrinkWrap': shrinkWrap,
              'padding': padding,
              'gridDelegate': gridDelegate,
              'childrenDelegate': childrenDelegate,
              'cacheExtent': cacheExtent,
              'semanticChildCount': semanticChildCount,
              'dragStartBehavior': dragStartBehavior,
              'keyboardDismissBehavior': keyboardDismissBehavior,
              'restorationId': restorationId,
              'clipBehavior': clipBehavior,
              'hitTestBehavior': hitTestBehavior,
            },
            stream: {
              'key': $key,
              'scrollDirection': $scrollDirection,
              'reverse': $reverse,
              'controller': $controller,
              'primary': $primary,
              'physics': $physics,
              'shrinkWrap': $shrinkWrap,
              'padding': $padding,
              'gridDelegate': $gridDelegate,
              'childrenDelegate': $childrenDelegate,
              'cacheExtent': $cacheExtent,
              'semanticChildCount': $semanticChildCount,
              'dragStartBehavior': $dragStartBehavior,
              'keyboardDismissBehavior': $keyboardDismissBehavior,
              'restorationId': $restorationId,
              'clipBehavior': $clipBehavior,
              'hitTestBehavior': $hitTestBehavior,
            },
          ),
          builder: (args) => _i1.GridView.custom(
            key: args('key'),
            scrollDirection: args('scrollDirection'),
            reverse: args('reverse'),
            controller: args('controller'),
            primary: args('primary'),
            physics: args('physics'),
            shrinkWrap: args('shrinkWrap'),
            padding: args('padding'),
            gridDelegate: args('gridDelegate'),
            childrenDelegate: args('childrenDelegate'),
            cacheExtent: args('cacheExtent'),
            semanticChildCount: args('semanticChildCount'),
            dragStartBehavior: args('dragStartBehavior'),
            keyboardDismissBehavior: args('keyboardDismissBehavior'),
            restorationId: args('restorationId'),
            clipBehavior: args('clipBehavior'),
            hitTestBehavior: args('hitTestBehavior'),
          ),
        );

  @Goto(_i1.GridView.count)
  GridView.count({
    _i2.Key? key,
    _i3.Axis scrollDirection = _i3.Axis.vertical,
    bool reverse = false,
    _i1.ScrollController? controller,
    bool? primary,
    _i1.ScrollPhysics? physics,
    bool shrinkWrap = false,
    _i3.EdgeInsetsGeometry? padding,
    required int crossAxisCount,
    double mainAxisSpacing = 0.0,
    double crossAxisSpacing = 0.0,
    double childAspectRatio = 1.0,
    bool addAutomaticKeepAlives = true,
    bool addRepaintBoundaries = true,
    bool addSemanticIndexes = true,
    double? cacheExtent,
    List<_i1.Widget> children = const [],
    int? semanticChildCount,
    _i5.DragStartBehavior dragStartBehavior = _i5.DragStartBehavior.start,
    _i1.ScrollViewKeyboardDismissBehavior keyboardDismissBehavior = _i1.ScrollViewKeyboardDismissBehavior.manual,
    String? restorationId,
    ui.Clip clipBehavior = ui.Clip.hardEdge,
    _i4.HitTestBehavior hitTestBehavior = _i4.HitTestBehavior.opaque,
    // Associate with key
    Stream<_i2.Key?>? $key,
    // Associate with scrollDirection
    Stream<_i3.Axis>? $scrollDirection,
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
    // Associate with padding
    Stream<_i3.EdgeInsetsGeometry?>? $padding,
    // Associate with crossAxisCount
    Stream<int>? $crossAxisCount,
    // Associate with mainAxisSpacing
    Stream<double>? $mainAxisSpacing,
    // Associate with crossAxisSpacing
    Stream<double>? $crossAxisSpacing,
    // Associate with childAspectRatio
    Stream<double>? $childAspectRatio,
    // Associate with addAutomaticKeepAlives
    Stream<bool>? $addAutomaticKeepAlives,
    // Associate with addRepaintBoundaries
    Stream<bool>? $addRepaintBoundaries,
    // Associate with addSemanticIndexes
    Stream<bool>? $addSemanticIndexes,
    // Associate with cacheExtent
    Stream<double?>? $cacheExtent,
    // Associate with children
    Stream<List<_i1.Widget>>? $children,
    // Associate with semanticChildCount
    Stream<int?>? $semanticChildCount,
    // Associate with dragStartBehavior
    Stream<_i5.DragStartBehavior>? $dragStartBehavior,
    // Associate with keyboardDismissBehavior
    Stream<_i1.ScrollViewKeyboardDismissBehavior>? $keyboardDismissBehavior,
    // Associate with restorationId
    Stream<String?>? $restorationId,
    // Associate with clipBehavior
    Stream<ui.Clip>? $clipBehavior,
    // Associate with hitTestBehavior
    Stream<_i4.HitTestBehavior>? $hitTestBehavior,
  }) : super(
          Argument(
            {
              'key': key,
              'scrollDirection': scrollDirection,
              'reverse': reverse,
              'controller': controller,
              'primary': primary,
              'physics': physics,
              'shrinkWrap': shrinkWrap,
              'padding': padding,
              'crossAxisCount': crossAxisCount,
              'mainAxisSpacing': mainAxisSpacing,
              'crossAxisSpacing': crossAxisSpacing,
              'childAspectRatio': childAspectRatio,
              'addAutomaticKeepAlives': addAutomaticKeepAlives,
              'addRepaintBoundaries': addRepaintBoundaries,
              'addSemanticIndexes': addSemanticIndexes,
              'cacheExtent': cacheExtent,
              'children': children,
              'semanticChildCount': semanticChildCount,
              'dragStartBehavior': dragStartBehavior,
              'keyboardDismissBehavior': keyboardDismissBehavior,
              'restorationId': restorationId,
              'clipBehavior': clipBehavior,
              'hitTestBehavior': hitTestBehavior,
            },
            stream: {
              'key': $key,
              'scrollDirection': $scrollDirection,
              'reverse': $reverse,
              'controller': $controller,
              'primary': $primary,
              'physics': $physics,
              'shrinkWrap': $shrinkWrap,
              'padding': $padding,
              'crossAxisCount': $crossAxisCount,
              'mainAxisSpacing': $mainAxisSpacing,
              'crossAxisSpacing': $crossAxisSpacing,
              'childAspectRatio': $childAspectRatio,
              'addAutomaticKeepAlives': $addAutomaticKeepAlives,
              'addRepaintBoundaries': $addRepaintBoundaries,
              'addSemanticIndexes': $addSemanticIndexes,
              'cacheExtent': $cacheExtent,
              'children': $children,
              'semanticChildCount': $semanticChildCount,
              'dragStartBehavior': $dragStartBehavior,
              'keyboardDismissBehavior': $keyboardDismissBehavior,
              'restorationId': $restorationId,
              'clipBehavior': $clipBehavior,
              'hitTestBehavior': $hitTestBehavior,
            },
          ),
          builder: (args) => _i1.GridView.count(
            key: args('key'),
            scrollDirection: args('scrollDirection'),
            reverse: args('reverse'),
            controller: args('controller'),
            primary: args('primary'),
            physics: args('physics'),
            shrinkWrap: args('shrinkWrap'),
            padding: args('padding'),
            crossAxisCount: args('crossAxisCount'),
            mainAxisSpacing: args('mainAxisSpacing'),
            crossAxisSpacing: args('crossAxisSpacing'),
            childAspectRatio: args('childAspectRatio'),
            addAutomaticKeepAlives: args('addAutomaticKeepAlives'),
            addRepaintBoundaries: args('addRepaintBoundaries'),
            addSemanticIndexes: args('addSemanticIndexes'),
            cacheExtent: args('cacheExtent'),
            children: args('children'),
            semanticChildCount: args('semanticChildCount'),
            dragStartBehavior: args('dragStartBehavior'),
            keyboardDismissBehavior: args('keyboardDismissBehavior'),
            restorationId: args('restorationId'),
            clipBehavior: args('clipBehavior'),
            hitTestBehavior: args('hitTestBehavior'),
          ),
        );

  @Goto(_i1.GridView.extent)
  GridView.extent({
    _i2.Key? key,
    _i3.Axis scrollDirection = _i3.Axis.vertical,
    bool reverse = false,
    _i1.ScrollController? controller,
    bool? primary,
    _i1.ScrollPhysics? physics,
    bool shrinkWrap = false,
    _i3.EdgeInsetsGeometry? padding,
    required double maxCrossAxisExtent,
    double mainAxisSpacing = 0.0,
    double crossAxisSpacing = 0.0,
    double childAspectRatio = 1.0,
    bool addAutomaticKeepAlives = true,
    bool addRepaintBoundaries = true,
    bool addSemanticIndexes = true,
    double? cacheExtent,
    List<_i1.Widget> children = const [],
    int? semanticChildCount,
    _i5.DragStartBehavior dragStartBehavior = _i5.DragStartBehavior.start,
    _i1.ScrollViewKeyboardDismissBehavior keyboardDismissBehavior = _i1.ScrollViewKeyboardDismissBehavior.manual,
    String? restorationId,
    ui.Clip clipBehavior = ui.Clip.hardEdge,
    _i4.HitTestBehavior hitTestBehavior = _i4.HitTestBehavior.opaque,
    // Associate with key
    Stream<_i2.Key?>? $key,
    // Associate with scrollDirection
    Stream<_i3.Axis>? $scrollDirection,
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
    // Associate with padding
    Stream<_i3.EdgeInsetsGeometry?>? $padding,
    // Associate with maxCrossAxisExtent
    Stream<double>? $maxCrossAxisExtent,
    // Associate with mainAxisSpacing
    Stream<double>? $mainAxisSpacing,
    // Associate with crossAxisSpacing
    Stream<double>? $crossAxisSpacing,
    // Associate with childAspectRatio
    Stream<double>? $childAspectRatio,
    // Associate with addAutomaticKeepAlives
    Stream<bool>? $addAutomaticKeepAlives,
    // Associate with addRepaintBoundaries
    Stream<bool>? $addRepaintBoundaries,
    // Associate with addSemanticIndexes
    Stream<bool>? $addSemanticIndexes,
    // Associate with cacheExtent
    Stream<double?>? $cacheExtent,
    // Associate with children
    Stream<List<_i1.Widget>>? $children,
    // Associate with semanticChildCount
    Stream<int?>? $semanticChildCount,
    // Associate with dragStartBehavior
    Stream<_i5.DragStartBehavior>? $dragStartBehavior,
    // Associate with keyboardDismissBehavior
    Stream<_i1.ScrollViewKeyboardDismissBehavior>? $keyboardDismissBehavior,
    // Associate with restorationId
    Stream<String?>? $restorationId,
    // Associate with clipBehavior
    Stream<ui.Clip>? $clipBehavior,
    // Associate with hitTestBehavior
    Stream<_i4.HitTestBehavior>? $hitTestBehavior,
  }) : super(
          Argument(
            {
              'key': key,
              'scrollDirection': scrollDirection,
              'reverse': reverse,
              'controller': controller,
              'primary': primary,
              'physics': physics,
              'shrinkWrap': shrinkWrap,
              'padding': padding,
              'maxCrossAxisExtent': maxCrossAxisExtent,
              'mainAxisSpacing': mainAxisSpacing,
              'crossAxisSpacing': crossAxisSpacing,
              'childAspectRatio': childAspectRatio,
              'addAutomaticKeepAlives': addAutomaticKeepAlives,
              'addRepaintBoundaries': addRepaintBoundaries,
              'addSemanticIndexes': addSemanticIndexes,
              'cacheExtent': cacheExtent,
              'children': children,
              'semanticChildCount': semanticChildCount,
              'dragStartBehavior': dragStartBehavior,
              'keyboardDismissBehavior': keyboardDismissBehavior,
              'restorationId': restorationId,
              'clipBehavior': clipBehavior,
              'hitTestBehavior': hitTestBehavior,
            },
            stream: {
              'key': $key,
              'scrollDirection': $scrollDirection,
              'reverse': $reverse,
              'controller': $controller,
              'primary': $primary,
              'physics': $physics,
              'shrinkWrap': $shrinkWrap,
              'padding': $padding,
              'maxCrossAxisExtent': $maxCrossAxisExtent,
              'mainAxisSpacing': $mainAxisSpacing,
              'crossAxisSpacing': $crossAxisSpacing,
              'childAspectRatio': $childAspectRatio,
              'addAutomaticKeepAlives': $addAutomaticKeepAlives,
              'addRepaintBoundaries': $addRepaintBoundaries,
              'addSemanticIndexes': $addSemanticIndexes,
              'cacheExtent': $cacheExtent,
              'children': $children,
              'semanticChildCount': $semanticChildCount,
              'dragStartBehavior': $dragStartBehavior,
              'keyboardDismissBehavior': $keyboardDismissBehavior,
              'restorationId': $restorationId,
              'clipBehavior': $clipBehavior,
              'hitTestBehavior': $hitTestBehavior,
            },
          ),
          builder: (args) => _i1.GridView.extent(
            key: args('key'),
            scrollDirection: args('scrollDirection'),
            reverse: args('reverse'),
            controller: args('controller'),
            primary: args('primary'),
            physics: args('physics'),
            shrinkWrap: args('shrinkWrap'),
            padding: args('padding'),
            maxCrossAxisExtent: args('maxCrossAxisExtent'),
            mainAxisSpacing: args('mainAxisSpacing'),
            crossAxisSpacing: args('crossAxisSpacing'),
            childAspectRatio: args('childAspectRatio'),
            addAutomaticKeepAlives: args('addAutomaticKeepAlives'),
            addRepaintBoundaries: args('addRepaintBoundaries'),
            addSemanticIndexes: args('addSemanticIndexes'),
            cacheExtent: args('cacheExtent'),
            children: args('children'),
            semanticChildCount: args('semanticChildCount'),
            dragStartBehavior: args('dragStartBehavior'),
            keyboardDismissBehavior: args('keyboardDismissBehavior'),
            restorationId: args('restorationId'),
            clipBehavior: args('clipBehavior'),
            hitTestBehavior: args('hitTestBehavior'),
          ),
        );
}
