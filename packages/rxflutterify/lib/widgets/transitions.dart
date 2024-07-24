library rxflutterify; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:ui' as ui;

import 'package:flutter/animation.dart' as _i3;
import 'package:flutter/foundation.dart' as _i2;
import 'package:flutter/painting.dart' as _i5;
import 'package:flutter/rendering.dart' as _i4;
import 'package:flutter/widgets.dart' as _i1;

import '../wrapper.dart';

final class SlideTransition extends Wrapper {
  @Goto(_i1.SlideTransition.new)
  SlideTransition(
    $ $config, {
    _i2.Key? key,
    required _i3.Animation<ui.Offset> position,
    bool transformHitTests = true,
    ui.TextDirection? textDirection,
    _i1.Widget? child,
  }) : super(
          Argument({
            #key: key,
            #position: position,
            #transformHitTests: transformHitTests,
            #textDirection: textDirection,
            #child: child,
          }),
          builder: (args) => _i1.SlideTransition(
            key: args(#key),
            position: args(#position),
            transformHitTests: args(#transformHitTests),
            textDirection: args(#textDirection),
            child: args(#child),
          ),
        );
}

final class PositionedTransition extends Wrapper {
  @Goto(_i1.PositionedTransition.new)
  PositionedTransition(
    $ $config, {
    _i2.Key? key,
    required _i3.Animation<_i4.RelativeRect> rect,
    required _i1.Widget child,
  }) : super(
          Argument({
            #key: key,
            #rect: rect,
            #child: child,
          }),
          builder: (args) => _i1.PositionedTransition(
            key: args(#key),
            rect: args(#rect),
            child: args(#child),
          ),
        );
}

final class DefaultTextStyleTransition extends Wrapper {
  @Goto(_i1.DefaultTextStyleTransition.new)
  DefaultTextStyleTransition(
    $ $config, {
    _i2.Key? key,
    required _i3.Animation<_i5.TextStyle> style,
    required _i1.Widget child,
    ui.TextAlign? textAlign,
    bool softWrap = true,
    _i5.TextOverflow overflow = _i5.TextOverflow.clip,
    int? maxLines,
  }) : super(
          Argument({
            #key: key,
            #style: style,
            #child: child,
            #textAlign: textAlign,
            #softWrap: softWrap,
            #overflow: overflow,
            #maxLines: maxLines,
          }),
          builder: (args) => _i1.DefaultTextStyleTransition(
            key: args(#key),
            style: args(#style),
            child: args(#child),
            textAlign: args(#textAlign),
            softWrap: args(#softWrap),
            overflow: args(#overflow),
            maxLines: args(#maxLines),
          ),
        );
}

final class RotationTransition extends Wrapper {
  @Goto(_i1.RotationTransition.new)
  RotationTransition(
    $ $config, {
    _i2.Key? key,
    required _i3.Animation<double> turns,
    _i5.Alignment alignment = _i5.Alignment.center,
    ui.FilterQuality? filterQuality,
    _i1.Widget? child,
  }) : super(
          Argument({
            #key: key,
            #turns: turns,
            #alignment: alignment,
            #filterQuality: filterQuality,
            #child: child,
          }),
          builder: (args) => _i1.RotationTransition(
            key: args(#key),
            turns: args(#turns),
            alignment: args(#alignment),
            filterQuality: args(#filterQuality),
            child: args(#child),
          ),
        );
}

final class AnimatedBuilder extends Wrapper {
  @Goto(_i1.AnimatedBuilder.new)
  AnimatedBuilder(
    $ $config, {
    _i2.Key? key,
    required _i2.Listenable animation,
    required _i1.TransitionBuilder builder,
    _i1.Widget? child,
  }) : super(
          Argument({
            #key: key,
            #animation: animation,
            #builder: builder,
            #child: child,
          }),
          builder: (args) => _i1.AnimatedBuilder(
            key: args(#key),
            animation: args(#animation),
            builder: args(#builder),
            child: args(#child),
          ),
        );
}

final class MatrixTransition extends Wrapper {
  @Goto(_i1.MatrixTransition.new)
  MatrixTransition(
    $ $config, {
    _i2.Key? key,
    required _i3.Animation<double> animation,
    required _i1.TransformCallback onTransform,
    _i5.Alignment alignment = _i5.Alignment.center,
    ui.FilterQuality? filterQuality,
    _i1.Widget? child,
  }) : super(
          Argument({
            #key: key,
            #animation: animation,
            #onTransform: onTransform,
            #alignment: alignment,
            #filterQuality: filterQuality,
            #child: child,
          }),
          builder: (args) => _i1.MatrixTransition(
            key: args(#key),
            animation: args(#animation),
            onTransform: args(#onTransform),
            alignment: args(#alignment),
            filterQuality: args(#filterQuality),
            child: args(#child),
          ),
        );
}

final class FadeTransition extends Wrapper {
  @Goto(_i1.FadeTransition.new)
  FadeTransition(
    $ $config, {
    _i2.Key? key,
    required _i3.Animation<double> opacity,
    bool alwaysIncludeSemantics = false,
    _i1.Widget? child,
  }) : super(
          Argument({
            #key: key,
            #opacity: opacity,
            #alwaysIncludeSemantics: alwaysIncludeSemantics,
            #child: child,
          }),
          builder: (args) => _i1.FadeTransition(
            key: args(#key),
            opacity: args(#opacity),
            alwaysIncludeSemantics: args(#alwaysIncludeSemantics),
            child: args(#child),
          ),
        );
}

final class AlignTransition extends Wrapper {
  @Goto(_i1.AlignTransition.new)
  AlignTransition(
    $ $config, {
    _i2.Key? key,
    required _i3.Animation<_i5.AlignmentGeometry> alignment,
    required _i1.Widget child,
    double? widthFactor,
    double? heightFactor,
  }) : super(
          Argument({
            #key: key,
            #alignment: alignment,
            #child: child,
            #widthFactor: widthFactor,
            #heightFactor: heightFactor,
          }),
          builder: (args) => _i1.AlignTransition(
            key: args(#key),
            alignment: args(#alignment),
            child: args(#child),
            widthFactor: args(#widthFactor),
            heightFactor: args(#heightFactor),
          ),
        );
}

final class SizeTransition extends Wrapper {
  @Goto(_i1.SizeTransition.new)
  SizeTransition(
    $ $config, {
    _i2.Key? key,
    _i5.Axis axis = _i5.Axis.vertical,
    required _i3.Animation<double> sizeFactor,
    double axisAlignment = 0.0,
    double? fixedCrossAxisSizeFactor,
    _i1.Widget? child,
  }) : super(
          Argument({
            #key: key,
            #axis: axis,
            #sizeFactor: sizeFactor,
            #axisAlignment: axisAlignment,
            #fixedCrossAxisSizeFactor: fixedCrossAxisSizeFactor,
            #child: child,
          }),
          builder: (args) => _i1.SizeTransition(
            key: args(#key),
            axis: args(#axis),
            sizeFactor: args(#sizeFactor),
            axisAlignment: args(#axisAlignment),
            fixedCrossAxisSizeFactor: args(#fixedCrossAxisSizeFactor),
            child: args(#child),
          ),
        );
}

final class SliverFadeTransition extends Wrapper {
  @Goto(_i1.SliverFadeTransition.new)
  SliverFadeTransition(
    $ $config, {
    _i2.Key? key,
    required _i3.Animation<double> opacity,
    bool alwaysIncludeSemantics = false,
    _i1.Widget? sliver,
  }) : super(
          Argument({
            #key: key,
            #opacity: opacity,
            #alwaysIncludeSemantics: alwaysIncludeSemantics,
            #sliver: sliver,
          }),
          builder: (args) => _i1.SliverFadeTransition(
            key: args(#key),
            opacity: args(#opacity),
            alwaysIncludeSemantics: args(#alwaysIncludeSemantics),
            sliver: args(#sliver),
          ),
        );
}

final class DecoratedBoxTransition extends Wrapper {
  @Goto(_i1.DecoratedBoxTransition.new)
  DecoratedBoxTransition(
    $ $config, {
    _i2.Key? key,
    required _i3.Animation<_i5.Decoration> decoration,
    _i4.DecorationPosition position = _i4.DecorationPosition.background,
    required _i1.Widget child,
  }) : super(
          Argument({
            #key: key,
            #decoration: decoration,
            #position: position,
            #child: child,
          }),
          builder: (args) => _i1.DecoratedBoxTransition(
            key: args(#key),
            decoration: args(#decoration),
            position: args(#position),
            child: args(#child),
          ),
        );
}

final class ScaleTransition extends Wrapper {
  @Goto(_i1.ScaleTransition.new)
  ScaleTransition(
    $ $config, {
    _i2.Key? key,
    required _i3.Animation<double> scale,
    _i5.Alignment alignment = _i5.Alignment.center,
    ui.FilterQuality? filterQuality,
    _i1.Widget? child,
  }) : super(
          Argument({
            #key: key,
            #scale: scale,
            #alignment: alignment,
            #filterQuality: filterQuality,
            #child: child,
          }),
          builder: (args) => _i1.ScaleTransition(
            key: args(#key),
            scale: args(#scale),
            alignment: args(#alignment),
            filterQuality: args(#filterQuality),
            child: args(#child),
          ),
        );
}

final class ListenableBuilder extends Wrapper {
  @Goto(_i1.ListenableBuilder.new)
  ListenableBuilder(
    $ $config, {
    _i2.Key? key,
    required _i2.Listenable listenable,
    required _i1.TransitionBuilder builder,
    _i1.Widget? child,
  }) : super(
          Argument({
            #key: key,
            #listenable: listenable,
            #builder: builder,
            #child: child,
          }),
          builder: (args) => _i1.ListenableBuilder(
            key: args(#key),
            listenable: args(#listenable),
            builder: args(#builder),
            child: args(#child),
          ),
        );
}

final class RelativePositionedTransition extends Wrapper {
  @Goto(_i1.RelativePositionedTransition.new)
  RelativePositionedTransition(
    $ $config, {
    _i2.Key? key,
    required _i3.Animation<ui.Rect?> rect,
    required ui.Size size,
    required _i1.Widget child,
  }) : super(
          Argument({
            #key: key,
            #rect: rect,
            #size: size,
            #child: child,
          }),
          builder: (args) => _i1.RelativePositionedTransition(
            key: args(#key),
            rect: args(#rect),
            size: args(#size),
            child: args(#child),
          ),
        );
}
