library rxflutterify_binding; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:ui' as ui;

import 'package:flutter/foundation.dart' as _i2;
import 'package:flutter/painting.dart' as _i3;
import 'package:flutter/rendering.dart' as _i4;
import 'package:flutter/widgets.dart' as _i1;

import '../wrapper.dart';

final class Container extends Wrapper {
  @Goto(_i1.Container.new)
  Container(
    $ $config, {
    _i2.Key? key,
    _i3.AlignmentGeometry? alignment,
    _i3.EdgeInsetsGeometry? padding,
    ui.Color? color,
    _i3.Decoration? decoration,
    _i3.Decoration? foregroundDecoration,
    double? width,
    double? height,
    _i4.BoxConstraints? constraints,
    _i3.EdgeInsetsGeometry? margin,
    _i4.Matrix4? transform,
    _i3.AlignmentGeometry? transformAlignment,
    _i1.Widget? child,
    ui.Clip clipBehavior = ui.Clip.none,
  }) : super(
          Argument({
            #key: key,
            #alignment: alignment,
            #padding: padding,
            #color: color,
            #decoration: decoration,
            #foregroundDecoration: foregroundDecoration,
            #width: width,
            #height: height,
            #constraints: constraints,
            #margin: margin,
            #transform: transform,
            #transformAlignment: transformAlignment,
            #child: child,
            #clipBehavior: clipBehavior,
          }),
          builder: (args) => _i1.Container(
            key: args(#key),
            alignment: args(#alignment),
            padding: args(#padding),
            color: args(#color),
            decoration: args(#decoration),
            foregroundDecoration: args(#foregroundDecoration),
            width: args(#width),
            height: args(#height),
            constraints: args(#constraints),
            margin: args(#margin),
            transform: args(#transform),
            transformAlignment: args(#transformAlignment),
            child: args(#child),
            clipBehavior: args(#clipBehavior),
          ),
        );
}

final class DecoratedBox extends Wrapper {
  @Goto(_i1.DecoratedBox.new)
  DecoratedBox(
    $ $config, {
    _i2.Key? key,
    required _i3.Decoration decoration,
    _i4.DecorationPosition position = _i4.DecorationPosition.background,
    _i1.Widget? child,
  }) : super(
          Argument({
            #key: key,
            #decoration: decoration,
            #position: position,
            #child: child,
          }),
          builder: (args) => _i1.DecoratedBox(
            key: args(#key),
            decoration: args(#decoration),
            position: args(#position),
            child: args(#child),
          ),
        );
}
