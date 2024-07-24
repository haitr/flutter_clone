library rxflutter; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:ui' as ui;

import 'package:flutter/animation.dart' as _i3;
import 'package:flutter/foundation.dart' as _i2;
import 'package:flutter/painting.dart' as _i5;
import 'package:flutter/rendering.dart' as _i4;
import 'package:flutter/widgets.dart' as _i1;

import '../wrapper.dart';

final class SlideTransition extends Wrapper {
  @Goto(_i1.SlideTransition.new)
  SlideTransition({
    _i2.Key? key,
    required _i3.Animation<ui.Offset> position,
    bool transformHitTests = true,
    ui.TextDirection? textDirection,
    _i1.Widget? child,
    // Associate with key
    Stream<_i2.Key?>? $key,
    // Associate with position
    Stream<_i3.Animation<ui.Offset>>? $position,
    // Associate with transformHitTests
    Stream<bool>? $transformHitTests,
    // Associate with textDirection
    Stream<ui.TextDirection?>? $textDirection,
    // Associate with child
    Stream<_i1.Widget?>? $child,
  }) : super(
          Argument(
            {
              'key': key,
              'position': position,
              'transformHitTests': transformHitTests,
              'textDirection': textDirection,
              'child': child,
            },
            stream: {
              'key': $key,
              'position': $position,
              'transformHitTests': $transformHitTests,
              'textDirection': $textDirection,
              'child': $child,
            },
          ),
          builder: (args) => _i1.SlideTransition(
            key: args('key'),
            position: args('position'),
            transformHitTests: args('transformHitTests'),
            textDirection: args('textDirection'),
            child: args('child'),
          ),
        );
}

final class PositionedTransition extends Wrapper {
  @Goto(_i1.PositionedTransition.new)
  PositionedTransition({
    _i2.Key? key,
    required _i3.Animation<_i4.RelativeRect> rect,
    required _i1.Widget child,
    // Associate with key
    Stream<_i2.Key?>? $key,
    // Associate with rect
    Stream<_i3.Animation<_i4.RelativeRect>>? $rect,
    // Associate with child
    Stream<_i1.Widget>? $child,
  }) : super(
          Argument(
            {
              'key': key,
              'rect': rect,
              'child': child,
            },
            stream: {
              'key': $key,
              'rect': $rect,
              'child': $child,
            },
          ),
          builder: (args) => _i1.PositionedTransition(
            key: args('key'),
            rect: args('rect'),
            child: args('child'),
          ),
        );
}

final class DefaultTextStyleTransition extends Wrapper {
  @Goto(_i1.DefaultTextStyleTransition.new)
  DefaultTextStyleTransition({
    _i2.Key? key,
    required _i3.Animation<_i5.TextStyle> style,
    required _i1.Widget child,
    ui.TextAlign? textAlign,
    bool softWrap = true,
    _i5.TextOverflow overflow = _i5.TextOverflow.clip,
    int? maxLines,
    // Associate with key
    Stream<_i2.Key?>? $key,
    // Associate with style
    Stream<_i3.Animation<_i5.TextStyle>>? $style,
    // Associate with child
    Stream<_i1.Widget>? $child,
    // Associate with textAlign
    Stream<ui.TextAlign?>? $textAlign,
    // Associate with softWrap
    Stream<bool>? $softWrap,
    // Associate with overflow
    Stream<_i5.TextOverflow>? $overflow,
    // Associate with maxLines
    Stream<int?>? $maxLines,
  }) : super(
          Argument(
            {
              'key': key,
              'style': style,
              'child': child,
              'textAlign': textAlign,
              'softWrap': softWrap,
              'overflow': overflow,
              'maxLines': maxLines,
            },
            stream: {
              'key': $key,
              'style': $style,
              'child': $child,
              'textAlign': $textAlign,
              'softWrap': $softWrap,
              'overflow': $overflow,
              'maxLines': $maxLines,
            },
          ),
          builder: (args) => _i1.DefaultTextStyleTransition(
            key: args('key'),
            style: args('style'),
            child: args('child'),
            textAlign: args('textAlign'),
            softWrap: args('softWrap'),
            overflow: args('overflow'),
            maxLines: args('maxLines'),
          ),
        );
}

final class RotationTransition extends Wrapper {
  @Goto(_i1.RotationTransition.new)
  RotationTransition({
    _i2.Key? key,
    required _i3.Animation<double> turns,
    _i5.Alignment alignment = _i5.Alignment.center,
    ui.FilterQuality? filterQuality,
    _i1.Widget? child,
    // Associate with key
    Stream<_i2.Key?>? $key,
    // Associate with turns
    Stream<_i3.Animation<double>>? $turns,
    // Associate with alignment
    Stream<_i5.Alignment>? $alignment,
    // Associate with filterQuality
    Stream<ui.FilterQuality?>? $filterQuality,
    // Associate with child
    Stream<_i1.Widget?>? $child,
  }) : super(
          Argument(
            {
              'key': key,
              'turns': turns,
              'alignment': alignment,
              'filterQuality': filterQuality,
              'child': child,
            },
            stream: {
              'key': $key,
              'turns': $turns,
              'alignment': $alignment,
              'filterQuality': $filterQuality,
              'child': $child,
            },
          ),
          builder: (args) => _i1.RotationTransition(
            key: args('key'),
            turns: args('turns'),
            alignment: args('alignment'),
            filterQuality: args('filterQuality'),
            child: args('child'),
          ),
        );
}

final class AnimatedBuilder extends Wrapper {
  @Goto(_i1.AnimatedBuilder.new)
  AnimatedBuilder({
    _i2.Key? key,
    required _i2.Listenable animation,
    required _i1.TransitionBuilder builder,
    _i1.Widget? child,
    // Associate with key
    Stream<_i2.Key?>? $key,
    // Associate with animation
    Stream<_i2.Listenable>? $animation,
    // Associate with builder
    Stream<_i1.TransitionBuilder>? $builder,
    // Associate with child
    Stream<_i1.Widget?>? $child,
  }) : super(
          Argument(
            {
              'key': key,
              'animation': animation,
              'builder': builder,
              'child': child,
            },
            stream: {
              'key': $key,
              'animation': $animation,
              'builder': $builder,
              'child': $child,
            },
          ),
          builder: (args) => _i1.AnimatedBuilder(
            key: args('key'),
            animation: args('animation'),
            builder: args('builder'),
            child: args('child'),
          ),
        );
}

final class MatrixTransition extends Wrapper {
  @Goto(_i1.MatrixTransition.new)
  MatrixTransition({
    _i2.Key? key,
    required _i3.Animation<double> animation,
    required _i1.TransformCallback onTransform,
    _i5.Alignment alignment = _i5.Alignment.center,
    ui.FilterQuality? filterQuality,
    _i1.Widget? child,
    // Associate with key
    Stream<_i2.Key?>? $key,
    // Associate with animation
    Stream<_i3.Animation<double>>? $animation,
    // Associate with onTransform
    Stream<_i1.TransformCallback>? $onTransform,
    // Associate with alignment
    Stream<_i5.Alignment>? $alignment,
    // Associate with filterQuality
    Stream<ui.FilterQuality?>? $filterQuality,
    // Associate with child
    Stream<_i1.Widget?>? $child,
  }) : super(
          Argument(
            {
              'key': key,
              'animation': animation,
              'onTransform': onTransform,
              'alignment': alignment,
              'filterQuality': filterQuality,
              'child': child,
            },
            stream: {
              'key': $key,
              'animation': $animation,
              'onTransform': $onTransform,
              'alignment': $alignment,
              'filterQuality': $filterQuality,
              'child': $child,
            },
          ),
          builder: (args) => _i1.MatrixTransition(
            key: args('key'),
            animation: args('animation'),
            onTransform: args('onTransform'),
            alignment: args('alignment'),
            filterQuality: args('filterQuality'),
            child: args('child'),
          ),
        );
}

final class FadeTransition extends Wrapper {
  @Goto(_i1.FadeTransition.new)
  FadeTransition({
    _i2.Key? key,
    required _i3.Animation<double> opacity,
    bool alwaysIncludeSemantics = false,
    _i1.Widget? child,
    // Associate with key
    Stream<_i2.Key?>? $key,
    // Associate with opacity
    Stream<_i3.Animation<double>>? $opacity,
    // Associate with alwaysIncludeSemantics
    Stream<bool>? $alwaysIncludeSemantics,
    // Associate with child
    Stream<_i1.Widget?>? $child,
  }) : super(
          Argument(
            {
              'key': key,
              'opacity': opacity,
              'alwaysIncludeSemantics': alwaysIncludeSemantics,
              'child': child,
            },
            stream: {
              'key': $key,
              'opacity': $opacity,
              'alwaysIncludeSemantics': $alwaysIncludeSemantics,
              'child': $child,
            },
          ),
          builder: (args) => _i1.FadeTransition(
            key: args('key'),
            opacity: args('opacity'),
            alwaysIncludeSemantics: args('alwaysIncludeSemantics'),
            child: args('child'),
          ),
        );
}

final class AlignTransition extends Wrapper {
  @Goto(_i1.AlignTransition.new)
  AlignTransition({
    _i2.Key? key,
    required _i3.Animation<_i5.AlignmentGeometry> alignment,
    required _i1.Widget child,
    double? widthFactor,
    double? heightFactor,
    // Associate with key
    Stream<_i2.Key?>? $key,
    // Associate with alignment
    Stream<_i3.Animation<_i5.AlignmentGeometry>>? $alignment,
    // Associate with child
    Stream<_i1.Widget>? $child,
    // Associate with widthFactor
    Stream<double?>? $widthFactor,
    // Associate with heightFactor
    Stream<double?>? $heightFactor,
  }) : super(
          Argument(
            {
              'key': key,
              'alignment': alignment,
              'child': child,
              'widthFactor': widthFactor,
              'heightFactor': heightFactor,
            },
            stream: {
              'key': $key,
              'alignment': $alignment,
              'child': $child,
              'widthFactor': $widthFactor,
              'heightFactor': $heightFactor,
            },
          ),
          builder: (args) => _i1.AlignTransition(
            key: args('key'),
            alignment: args('alignment'),
            child: args('child'),
            widthFactor: args('widthFactor'),
            heightFactor: args('heightFactor'),
          ),
        );
}

final class SizeTransition extends Wrapper {
  @Goto(_i1.SizeTransition.new)
  SizeTransition({
    _i2.Key? key,
    _i5.Axis axis = _i5.Axis.vertical,
    required _i3.Animation<double> sizeFactor,
    double axisAlignment = 0.0,
    double? fixedCrossAxisSizeFactor,
    _i1.Widget? child,
    // Associate with key
    Stream<_i2.Key?>? $key,
    // Associate with axis
    Stream<_i5.Axis>? $axis,
    // Associate with sizeFactor
    Stream<_i3.Animation<double>>? $sizeFactor,
    // Associate with axisAlignment
    Stream<double>? $axisAlignment,
    // Associate with fixedCrossAxisSizeFactor
    Stream<double?>? $fixedCrossAxisSizeFactor,
    // Associate with child
    Stream<_i1.Widget?>? $child,
  }) : super(
          Argument(
            {
              'key': key,
              'axis': axis,
              'sizeFactor': sizeFactor,
              'axisAlignment': axisAlignment,
              'fixedCrossAxisSizeFactor': fixedCrossAxisSizeFactor,
              'child': child,
            },
            stream: {
              'key': $key,
              'axis': $axis,
              'sizeFactor': $sizeFactor,
              'axisAlignment': $axisAlignment,
              'fixedCrossAxisSizeFactor': $fixedCrossAxisSizeFactor,
              'child': $child,
            },
          ),
          builder: (args) => _i1.SizeTransition(
            key: args('key'),
            axis: args('axis'),
            sizeFactor: args('sizeFactor'),
            axisAlignment: args('axisAlignment'),
            fixedCrossAxisSizeFactor: args('fixedCrossAxisSizeFactor'),
            child: args('child'),
          ),
        );
}

final class SliverFadeTransition extends Wrapper {
  @Goto(_i1.SliverFadeTransition.new)
  SliverFadeTransition({
    _i2.Key? key,
    required _i3.Animation<double> opacity,
    bool alwaysIncludeSemantics = false,
    _i1.Widget? sliver,
    // Associate with key
    Stream<_i2.Key?>? $key,
    // Associate with opacity
    Stream<_i3.Animation<double>>? $opacity,
    // Associate with alwaysIncludeSemantics
    Stream<bool>? $alwaysIncludeSemantics,
    // Associate with sliver
    Stream<_i1.Widget?>? $sliver,
  }) : super(
          Argument(
            {
              'key': key,
              'opacity': opacity,
              'alwaysIncludeSemantics': alwaysIncludeSemantics,
              'sliver': sliver,
            },
            stream: {
              'key': $key,
              'opacity': $opacity,
              'alwaysIncludeSemantics': $alwaysIncludeSemantics,
              'sliver': $sliver,
            },
          ),
          builder: (args) => _i1.SliverFadeTransition(
            key: args('key'),
            opacity: args('opacity'),
            alwaysIncludeSemantics: args('alwaysIncludeSemantics'),
            sliver: args('sliver'),
          ),
        );
}

final class DecoratedBoxTransition extends Wrapper {
  @Goto(_i1.DecoratedBoxTransition.new)
  DecoratedBoxTransition({
    _i2.Key? key,
    required _i3.Animation<_i5.Decoration> decoration,
    _i4.DecorationPosition position = _i4.DecorationPosition.background,
    required _i1.Widget child,
    // Associate with key
    Stream<_i2.Key?>? $key,
    // Associate with decoration
    Stream<_i3.Animation<_i5.Decoration>>? $decoration,
    // Associate with position
    Stream<_i4.DecorationPosition>? $position,
    // Associate with child
    Stream<_i1.Widget>? $child,
  }) : super(
          Argument(
            {
              'key': key,
              'decoration': decoration,
              'position': position,
              'child': child,
            },
            stream: {
              'key': $key,
              'decoration': $decoration,
              'position': $position,
              'child': $child,
            },
          ),
          builder: (args) => _i1.DecoratedBoxTransition(
            key: args('key'),
            decoration: args('decoration'),
            position: args('position'),
            child: args('child'),
          ),
        );
}

final class ScaleTransition extends Wrapper {
  @Goto(_i1.ScaleTransition.new)
  ScaleTransition({
    _i2.Key? key,
    required _i3.Animation<double> scale,
    _i5.Alignment alignment = _i5.Alignment.center,
    ui.FilterQuality? filterQuality,
    _i1.Widget? child,
    // Associate with key
    Stream<_i2.Key?>? $key,
    // Associate with scale
    Stream<_i3.Animation<double>>? $scale,
    // Associate with alignment
    Stream<_i5.Alignment>? $alignment,
    // Associate with filterQuality
    Stream<ui.FilterQuality?>? $filterQuality,
    // Associate with child
    Stream<_i1.Widget?>? $child,
  }) : super(
          Argument(
            {
              'key': key,
              'scale': scale,
              'alignment': alignment,
              'filterQuality': filterQuality,
              'child': child,
            },
            stream: {
              'key': $key,
              'scale': $scale,
              'alignment': $alignment,
              'filterQuality': $filterQuality,
              'child': $child,
            },
          ),
          builder: (args) => _i1.ScaleTransition(
            key: args('key'),
            scale: args('scale'),
            alignment: args('alignment'),
            filterQuality: args('filterQuality'),
            child: args('child'),
          ),
        );
}

final class ListenableBuilder extends Wrapper {
  @Goto(_i1.ListenableBuilder.new)
  ListenableBuilder({
    _i2.Key? key,
    required _i2.Listenable listenable,
    required _i1.TransitionBuilder builder,
    _i1.Widget? child,
    // Associate with key
    Stream<_i2.Key?>? $key,
    // Associate with listenable
    Stream<_i2.Listenable>? $listenable,
    // Associate with builder
    Stream<_i1.TransitionBuilder>? $builder,
    // Associate with child
    Stream<_i1.Widget?>? $child,
  }) : super(
          Argument(
            {
              'key': key,
              'listenable': listenable,
              'builder': builder,
              'child': child,
            },
            stream: {
              'key': $key,
              'listenable': $listenable,
              'builder': $builder,
              'child': $child,
            },
          ),
          builder: (args) => _i1.ListenableBuilder(
            key: args('key'),
            listenable: args('listenable'),
            builder: args('builder'),
            child: args('child'),
          ),
        );
}

final class RelativePositionedTransition extends Wrapper {
  @Goto(_i1.RelativePositionedTransition.new)
  RelativePositionedTransition({
    _i2.Key? key,
    required _i3.Animation<ui.Rect?> rect,
    required ui.Size size,
    required _i1.Widget child,
    // Associate with key
    Stream<_i2.Key?>? $key,
    // Associate with rect
    Stream<_i3.Animation<ui.Rect?>>? $rect,
    // Associate with size
    Stream<ui.Size>? $size,
    // Associate with child
    Stream<_i1.Widget>? $child,
  }) : super(
          Argument(
            {
              'key': key,
              'rect': rect,
              'size': size,
              'child': child,
            },
            stream: {
              'key': $key,
              'rect': $rect,
              'size': $size,
              'child': $child,
            },
          ),
          builder: (args) => _i1.RelativePositionedTransition(
            key: args('key'),
            rect: args('rect'),
            size: args('size'),
            child: args('child'),
          ),
        );
}
