library rxflutterify; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:ui' as ui;

import 'package:flutter/foundation.dart' as _i2;
import 'package:flutter/material.dart' as _i1;
import 'package:flutter/painting.dart' as _i3;
import 'package:flutter/widgets.dart' as _i4;

import '../wrapper.dart';

final class CarouselView extends Wrapper {
  @Goto(_i1.CarouselView.new)
  CarouselView({
    _i2.Key? key,
    _i3.EdgeInsets? padding,
    ui.Color? backgroundColor,
    double? elevation,
    _i3.ShapeBorder? shape,
    _i4.WidgetStateProperty<ui.Color?>? overlayColor,
    bool itemSnapping = false,
    double shrinkExtent = 0.0,
    _i1.CarouselController? controller,
    _i3.Axis scrollDirection = _i3.Axis.horizontal,
    bool reverse = false,
    _i2.ValueChanged<int>? onTap,
    required double itemExtent,
    required List<_i4.Widget> children,
    // Associate with key
    Stream<_i2.Key?>? $key,
    // Associate with padding
    Stream<_i3.EdgeInsets?>? $padding,
    // Associate with backgroundColor
    Stream<ui.Color?>? $backgroundColor,
    // Associate with elevation
    Stream<double?>? $elevation,
    // Associate with shape
    Stream<_i3.ShapeBorder?>? $shape,
    // Associate with overlayColor
    Stream<_i4.WidgetStateProperty<ui.Color?>?>? $overlayColor,
    // Associate with itemSnapping
    Stream<bool>? $itemSnapping,
    // Associate with shrinkExtent
    Stream<double>? $shrinkExtent,
    // Associate with controller
    Stream<_i1.CarouselController?>? $controller,
    // Associate with scrollDirection
    Stream<_i3.Axis>? $scrollDirection,
    // Associate with reverse
    Stream<bool>? $reverse,
    // Associate with onTap
    Stream<_i2.ValueChanged<int>?>? $onTap,
    // Associate with itemExtent
    Stream<double>? $itemExtent,
    // Associate with children
    Stream<List<_i4.Widget>>? $children,
  }) : super(
          Argument(
            {
              'key': key,
              'padding': padding,
              'backgroundColor': backgroundColor,
              'elevation': elevation,
              'shape': shape,
              'overlayColor': overlayColor,
              'itemSnapping': itemSnapping,
              'shrinkExtent': shrinkExtent,
              'controller': controller,
              'scrollDirection': scrollDirection,
              'reverse': reverse,
              'onTap': onTap,
              'itemExtent': itemExtent,
              'children': children,
            },
            stream: {
              'key': $key,
              'padding': $padding,
              'backgroundColor': $backgroundColor,
              'elevation': $elevation,
              'shape': $shape,
              'overlayColor': $overlayColor,
              'itemSnapping': $itemSnapping,
              'shrinkExtent': $shrinkExtent,
              'controller': $controller,
              'scrollDirection': $scrollDirection,
              'reverse': $reverse,
              'onTap': $onTap,
              'itemExtent': $itemExtent,
              'children': $children,
            },
          ),
          builder: (args) => _i1.CarouselView(
            key: args('key'),
            padding: args('padding'),
            backgroundColor: args('backgroundColor'),
            elevation: args('elevation'),
            shape: args('shape'),
            overlayColor: args('overlayColor'),
            itemSnapping: args('itemSnapping'),
            shrinkExtent: args('shrinkExtent'),
            controller: args('controller'),
            scrollDirection: args('scrollDirection'),
            reverse: args('reverse'),
            onTap: args('onTap'),
            itemExtent: args('itemExtent'),
            children: args('children'),
          ),
        );
}
