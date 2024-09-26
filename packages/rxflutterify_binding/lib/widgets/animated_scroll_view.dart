library rxflutterify_binding; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:ui' as ui;

import 'package:flutter/foundation.dart' as _i2;
import 'package:flutter/painting.dart' as _i4;
import 'package:flutter/rendering.dart' as _i3;
import 'package:flutter/widgets.dart' as _i1;

import '../wrapper.dart';

final class AnimatedGrid extends Wrapper {
  @Goto(_i1.AnimatedGrid.new)
  AnimatedGrid(
    $ $config, {
    _i2.Key? key,
    required _i1.AnimatedItemBuilder itemBuilder,
    required _i3.SliverGridDelegate gridDelegate,
    int initialItemCount = 0,
    _i4.Axis scrollDirection = _i4.Axis.vertical,
    bool reverse = false,
    _i1.ScrollController? controller,
    bool? primary,
    _i1.ScrollPhysics? physics,
    _i4.EdgeInsetsGeometry? padding,
    ui.Clip clipBehavior = ui.Clip.hardEdge,
  }) : super(
          Argument({
            #key: key,
            #itemBuilder: itemBuilder,
            #gridDelegate: gridDelegate,
            #initialItemCount: initialItemCount,
            #scrollDirection: scrollDirection,
            #reverse: reverse,
            #controller: controller,
            #primary: primary,
            #physics: physics,
            #padding: padding,
            #clipBehavior: clipBehavior,
          }),
          builder: (args) => _i1.AnimatedGrid(
            key: args(#key),
            itemBuilder: args(#itemBuilder),
            gridDelegate: args(#gridDelegate),
            initialItemCount: args(#initialItemCount),
            scrollDirection: args(#scrollDirection),
            reverse: args(#reverse),
            controller: args(#controller),
            primary: args(#primary),
            physics: args(#physics),
            padding: args(#padding),
            clipBehavior: args(#clipBehavior),
          ),
        );
}

final class SliverAnimatedList extends Wrapper {
  @Goto(_i1.SliverAnimatedList.new)
  SliverAnimatedList(
    $ $config, {
    _i2.Key? key,
    required _i1.AnimatedItemBuilder itemBuilder,
    _i1.ChildIndexGetter? findChildIndexCallback,
    int initialItemCount = 0,
  }) : super(
          Argument({
            #key: key,
            #itemBuilder: itemBuilder,
            #findChildIndexCallback: findChildIndexCallback,
            #initialItemCount: initialItemCount,
          }),
          builder: (args) => _i1.SliverAnimatedList(
            key: args(#key),
            itemBuilder: args(#itemBuilder),
            findChildIndexCallback: args(#findChildIndexCallback),
            initialItemCount: args(#initialItemCount),
          ),
        );
}

final class SliverAnimatedGrid extends Wrapper {
  @Goto(_i1.SliverAnimatedGrid.new)
  SliverAnimatedGrid(
    $ $config, {
    _i2.Key? key,
    required _i1.AnimatedItemBuilder itemBuilder,
    required _i3.SliverGridDelegate gridDelegate,
    _i1.ChildIndexGetter? findChildIndexCallback,
    int initialItemCount = 0,
  }) : super(
          Argument({
            #key: key,
            #itemBuilder: itemBuilder,
            #gridDelegate: gridDelegate,
            #findChildIndexCallback: findChildIndexCallback,
            #initialItemCount: initialItemCount,
          }),
          builder: (args) => _i1.SliverAnimatedGrid(
            key: args(#key),
            itemBuilder: args(#itemBuilder),
            gridDelegate: args(#gridDelegate),
            findChildIndexCallback: args(#findChildIndexCallback),
            initialItemCount: args(#initialItemCount),
          ),
        );
}

final class AnimatedList extends Wrapper {
  @Goto(_i1.AnimatedList.new)
  AnimatedList(
    $ $config, {
    _i2.Key? key,
    required _i1.AnimatedItemBuilder itemBuilder,
    int initialItemCount = 0,
    _i4.Axis scrollDirection = _i4.Axis.vertical,
    bool reverse = false,
    _i1.ScrollController? controller,
    bool? primary,
    _i1.ScrollPhysics? physics,
    bool shrinkWrap = false,
    _i4.EdgeInsetsGeometry? padding,
    ui.Clip clipBehavior = ui.Clip.hardEdge,
  }) : super(
          Argument({
            #key: key,
            #itemBuilder: itemBuilder,
            #initialItemCount: initialItemCount,
            #scrollDirection: scrollDirection,
            #reverse: reverse,
            #controller: controller,
            #primary: primary,
            #physics: physics,
            #shrinkWrap: shrinkWrap,
            #padding: padding,
            #clipBehavior: clipBehavior,
          }),
          builder: (args) => _i1.AnimatedList(
            key: args(#key),
            itemBuilder: args(#itemBuilder),
            initialItemCount: args(#initialItemCount),
            scrollDirection: args(#scrollDirection),
            reverse: args(#reverse),
            controller: args(#controller),
            primary: args(#primary),
            physics: args(#physics),
            shrinkWrap: args(#shrinkWrap),
            padding: args(#padding),
            clipBehavior: args(#clipBehavior),
          ),
        );

  @Goto(_i1.AnimatedList.separated)
  AnimatedList.separated(
    $ $config, {
    _i2.Key? key,
    required _i1.AnimatedItemBuilder itemBuilder,
    required _i1.AnimatedItemBuilder separatorBuilder,
    required _i1.AnimatedItemBuilder removedSeparatorBuilder,
    int initialItemCount = 0,
    _i4.Axis scrollDirection = _i4.Axis.vertical,
    bool reverse = false,
    _i1.ScrollController? controller,
    bool? primary,
    _i1.ScrollPhysics? physics,
    bool shrinkWrap = false,
    _i4.EdgeInsetsGeometry? padding,
    ui.Clip clipBehavior = ui.Clip.hardEdge,
  }) : super(
          Argument({
            #key: key,
            #itemBuilder: itemBuilder,
            #separatorBuilder: separatorBuilder,
            #removedSeparatorBuilder: removedSeparatorBuilder,
            #initialItemCount: initialItemCount,
            #scrollDirection: scrollDirection,
            #reverse: reverse,
            #controller: controller,
            #primary: primary,
            #physics: physics,
            #shrinkWrap: shrinkWrap,
            #padding: padding,
            #clipBehavior: clipBehavior,
          }),
          builder: (args) => _i1.AnimatedList.separated(
            key: args(#key),
            itemBuilder: args(#itemBuilder),
            separatorBuilder: args(#separatorBuilder),
            removedSeparatorBuilder: args(#removedSeparatorBuilder),
            initialItemCount: args(#initialItemCount),
            scrollDirection: args(#scrollDirection),
            reverse: args(#reverse),
            controller: args(#controller),
            primary: args(#primary),
            physics: args(#physics),
            shrinkWrap: args(#shrinkWrap),
            padding: args(#padding),
            clipBehavior: args(#clipBehavior),
          ),
        );
}
