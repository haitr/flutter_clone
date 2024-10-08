library rxflutterify_binding; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:ui' as ui;

import 'package:flutter/animation.dart' as _i4;
import 'package:flutter/foundation.dart' as _i2;
import 'package:flutter/painting.dart' as _i3;
import 'package:flutter/rendering.dart' as _i5;
import 'package:flutter/widgets.dart' as _i1;

import '../wrapper.dart';

final class AnimatedFractionallySizedBox extends Wrapper {
  @Goto(_i1.AnimatedFractionallySizedBox.new)
  AnimatedFractionallySizedBox(
    $ $config, {
    _i2.Key? key,
    _i3.AlignmentGeometry alignment = _i3.Alignment.center,
    _i1.Widget? child,
    double? heightFactor,
    double? widthFactor,
    _i4.Curve curve = _i4.Curves.linear,
    required Duration duration,
    ui.VoidCallback? onEnd,
  }) : super(
          Argument({
            #key: key,
            #alignment: alignment,
            #child: child,
            #heightFactor: heightFactor,
            #widthFactor: widthFactor,
            #curve: curve,
            #duration: duration,
            #onEnd: onEnd,
          }),
          builder: (args) => _i1.AnimatedFractionallySizedBox(
            key: args(#key),
            alignment: args(#alignment),
            child: args(#child),
            heightFactor: args(#heightFactor),
            widthFactor: args(#widthFactor),
            curve: args(#curve),
            duration: args(#duration),
            onEnd: args(#onEnd),
          ),
        );
}

final class AnimatedScale extends Wrapper {
  @Goto(_i1.AnimatedScale.new)
  AnimatedScale(
    $ $config, {
    _i2.Key? key,
    _i1.Widget? child,
    required double scale,
    _i3.Alignment alignment = _i3.Alignment.center,
    ui.FilterQuality? filterQuality,
    _i4.Curve curve = _i4.Curves.linear,
    required Duration duration,
    ui.VoidCallback? onEnd,
  }) : super(
          Argument({
            #key: key,
            #child: child,
            #scale: scale,
            #alignment: alignment,
            #filterQuality: filterQuality,
            #curve: curve,
            #duration: duration,
            #onEnd: onEnd,
          }),
          builder: (args) => _i1.AnimatedScale(
            key: args(#key),
            child: args(#child),
            scale: args(#scale),
            alignment: args(#alignment),
            filterQuality: args(#filterQuality),
            curve: args(#curve),
            duration: args(#duration),
            onEnd: args(#onEnd),
          ),
        );
}

final class AnimatedContainer extends Wrapper {
  @Goto(_i1.AnimatedContainer.new)
  AnimatedContainer(
    $ $config, {
    _i2.Key? key,
    _i3.AlignmentGeometry? alignment,
    _i3.EdgeInsetsGeometry? padding,
    ui.Color? color,
    _i3.Decoration? decoration,
    _i3.Decoration? foregroundDecoration,
    double? width,
    double? height,
    _i5.BoxConstraints? constraints,
    _i3.EdgeInsetsGeometry? margin,
    _i5.Matrix4? transform,
    _i3.AlignmentGeometry? transformAlignment,
    _i1.Widget? child,
    ui.Clip clipBehavior = ui.Clip.none,
    _i4.Curve curve = _i4.Curves.linear,
    required Duration duration,
    ui.VoidCallback? onEnd,
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
            #curve: curve,
            #duration: duration,
            #onEnd: onEnd,
          }),
          builder: (args) => _i1.AnimatedContainer(
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
            curve: args(#curve),
            duration: args(#duration),
            onEnd: args(#onEnd),
          ),
        );
}

final class AnimatedPhysicalModel extends Wrapper {
  @Goto(_i1.AnimatedPhysicalModel.new)
  AnimatedPhysicalModel(
    $ $config, {
    _i2.Key? key,
    required _i1.Widget child,
    _i3.BoxShape shape = _i3.BoxShape.rectangle,
    ui.Clip clipBehavior = ui.Clip.none,
    _i3.BorderRadius? borderRadius,
    double elevation = 0.0,
    required ui.Color color,
    bool animateColor = true,
    required ui.Color shadowColor,
    bool animateShadowColor = true,
    _i4.Curve curve = _i4.Curves.linear,
    required Duration duration,
    ui.VoidCallback? onEnd,
  }) : super(
          Argument({
            #key: key,
            #child: child,
            #shape: shape,
            #clipBehavior: clipBehavior,
            #borderRadius: borderRadius,
            #elevation: elevation,
            #color: color,
            #animateColor: animateColor,
            #shadowColor: shadowColor,
            #animateShadowColor: animateShadowColor,
            #curve: curve,
            #duration: duration,
            #onEnd: onEnd,
          }),
          builder: (args) => _i1.AnimatedPhysicalModel(
            key: args(#key),
            child: args(#child),
            shape: args(#shape),
            clipBehavior: args(#clipBehavior),
            borderRadius: args(#borderRadius),
            elevation: args(#elevation),
            color: args(#color),
            animateColor: args(#animateColor),
            shadowColor: args(#shadowColor),
            animateShadowColor: args(#animateShadowColor),
            curve: args(#curve),
            duration: args(#duration),
            onEnd: args(#onEnd),
          ),
        );
}

final class SliverAnimatedOpacity extends Wrapper {
  @Goto(_i1.SliverAnimatedOpacity.new)
  SliverAnimatedOpacity(
    $ $config, {
    _i2.Key? key,
    _i1.Widget? sliver,
    required double opacity,
    _i4.Curve curve = _i4.Curves.linear,
    required Duration duration,
    ui.VoidCallback? onEnd,
    bool alwaysIncludeSemantics = false,
  }) : super(
          Argument({
            #key: key,
            #sliver: sliver,
            #opacity: opacity,
            #curve: curve,
            #duration: duration,
            #onEnd: onEnd,
            #alwaysIncludeSemantics: alwaysIncludeSemantics,
          }),
          builder: (args) => _i1.SliverAnimatedOpacity(
            key: args(#key),
            sliver: args(#sliver),
            opacity: args(#opacity),
            curve: args(#curve),
            duration: args(#duration),
            onEnd: args(#onEnd),
            alwaysIncludeSemantics: args(#alwaysIncludeSemantics),
          ),
        );
}

final class AnimatedPositionedDirectional extends Wrapper {
  @Goto(_i1.AnimatedPositionedDirectional.new)
  AnimatedPositionedDirectional(
    $ $config, {
    _i2.Key? key,
    required _i1.Widget child,
    double? start,
    double? top,
    double? end,
    double? bottom,
    double? width,
    double? height,
    _i4.Curve curve = _i4.Curves.linear,
    required Duration duration,
    ui.VoidCallback? onEnd,
  }) : super(
          Argument({
            #key: key,
            #child: child,
            #start: start,
            #top: top,
            #end: end,
            #bottom: bottom,
            #width: width,
            #height: height,
            #curve: curve,
            #duration: duration,
            #onEnd: onEnd,
          }),
          builder: (args) => _i1.AnimatedPositionedDirectional(
            key: args(#key),
            child: args(#child),
            start: args(#start),
            top: args(#top),
            end: args(#end),
            bottom: args(#bottom),
            width: args(#width),
            height: args(#height),
            curve: args(#curve),
            duration: args(#duration),
            onEnd: args(#onEnd),
          ),
        );
}

final class AnimatedRotation extends Wrapper {
  @Goto(_i1.AnimatedRotation.new)
  AnimatedRotation(
    $ $config, {
    _i2.Key? key,
    _i1.Widget? child,
    required double turns,
    _i3.Alignment alignment = _i3.Alignment.center,
    ui.FilterQuality? filterQuality,
    _i4.Curve curve = _i4.Curves.linear,
    required Duration duration,
    ui.VoidCallback? onEnd,
  }) : super(
          Argument({
            #key: key,
            #child: child,
            #turns: turns,
            #alignment: alignment,
            #filterQuality: filterQuality,
            #curve: curve,
            #duration: duration,
            #onEnd: onEnd,
          }),
          builder: (args) => _i1.AnimatedRotation(
            key: args(#key),
            child: args(#child),
            turns: args(#turns),
            alignment: args(#alignment),
            filterQuality: args(#filterQuality),
            curve: args(#curve),
            duration: args(#duration),
            onEnd: args(#onEnd),
          ),
        );
}

final class AnimatedPositioned extends Wrapper {
  @Goto(_i1.AnimatedPositioned.new)
  AnimatedPositioned(
    $ $config, {
    _i2.Key? key,
    required _i1.Widget child,
    double? left,
    double? top,
    double? right,
    double? bottom,
    double? width,
    double? height,
    _i4.Curve curve = _i4.Curves.linear,
    required Duration duration,
    ui.VoidCallback? onEnd,
  }) : super(
          Argument({
            #key: key,
            #child: child,
            #left: left,
            #top: top,
            #right: right,
            #bottom: bottom,
            #width: width,
            #height: height,
            #curve: curve,
            #duration: duration,
            #onEnd: onEnd,
          }),
          builder: (args) => _i1.AnimatedPositioned(
            key: args(#key),
            child: args(#child),
            left: args(#left),
            top: args(#top),
            right: args(#right),
            bottom: args(#bottom),
            width: args(#width),
            height: args(#height),
            curve: args(#curve),
            duration: args(#duration),
            onEnd: args(#onEnd),
          ),
        );

  @Goto(_i1.AnimatedPositioned.fromRect)
  AnimatedPositioned.fromRect(
    $ $config, {
    _i2.Key? key,
    required _i1.Widget child,
    required ui.Rect rect,
    _i4.Curve curve = _i4.Curves.linear,
    required Duration duration,
    ui.VoidCallback? onEnd,
  }) : super(
          Argument({
            #key: key,
            #child: child,
            #rect: rect,
            #curve: curve,
            #duration: duration,
            #onEnd: onEnd,
          }),
          builder: (args) => _i1.AnimatedPositioned.fromRect(
            key: args(#key),
            child: args(#child),
            rect: args(#rect),
            curve: args(#curve),
            duration: args(#duration),
            onEnd: args(#onEnd),
          ),
        );
}

final class AnimatedOpacity extends Wrapper {
  @Goto(_i1.AnimatedOpacity.new)
  AnimatedOpacity(
    $ $config, {
    _i2.Key? key,
    _i1.Widget? child,
    required double opacity,
    _i4.Curve curve = _i4.Curves.linear,
    required Duration duration,
    ui.VoidCallback? onEnd,
    bool alwaysIncludeSemantics = false,
  }) : super(
          Argument({
            #key: key,
            #child: child,
            #opacity: opacity,
            #curve: curve,
            #duration: duration,
            #onEnd: onEnd,
            #alwaysIncludeSemantics: alwaysIncludeSemantics,
          }),
          builder: (args) => _i1.AnimatedOpacity(
            key: args(#key),
            child: args(#child),
            opacity: args(#opacity),
            curve: args(#curve),
            duration: args(#duration),
            onEnd: args(#onEnd),
            alwaysIncludeSemantics: args(#alwaysIncludeSemantics),
          ),
        );
}

final class AnimatedDefaultTextStyle extends Wrapper {
  @Goto(_i1.AnimatedDefaultTextStyle.new)
  AnimatedDefaultTextStyle(
    $ $config, {
    _i2.Key? key,
    required _i1.Widget child,
    required _i3.TextStyle style,
    ui.TextAlign? textAlign,
    bool softWrap = true,
    _i3.TextOverflow overflow = _i3.TextOverflow.clip,
    int? maxLines,
    _i3.TextWidthBasis textWidthBasis = _i3.TextWidthBasis.parent,
    ui.TextHeightBehavior? textHeightBehavior,
    _i4.Curve curve = _i4.Curves.linear,
    required Duration duration,
    ui.VoidCallback? onEnd,
  }) : super(
          Argument({
            #key: key,
            #child: child,
            #style: style,
            #textAlign: textAlign,
            #softWrap: softWrap,
            #overflow: overflow,
            #maxLines: maxLines,
            #textWidthBasis: textWidthBasis,
            #textHeightBehavior: textHeightBehavior,
            #curve: curve,
            #duration: duration,
            #onEnd: onEnd,
          }),
          builder: (args) => _i1.AnimatedDefaultTextStyle(
            key: args(#key),
            child: args(#child),
            style: args(#style),
            textAlign: args(#textAlign),
            softWrap: args(#softWrap),
            overflow: args(#overflow),
            maxLines: args(#maxLines),
            textWidthBasis: args(#textWidthBasis),
            textHeightBehavior: args(#textHeightBehavior),
            curve: args(#curve),
            duration: args(#duration),
            onEnd: args(#onEnd),
          ),
        );
}

final class AnimatedPadding extends Wrapper {
  @Goto(_i1.AnimatedPadding.new)
  AnimatedPadding(
    $ $config, {
    _i2.Key? key,
    required _i3.EdgeInsetsGeometry padding,
    _i1.Widget? child,
    _i4.Curve curve = _i4.Curves.linear,
    required Duration duration,
    ui.VoidCallback? onEnd,
  }) : super(
          Argument({
            #key: key,
            #padding: padding,
            #child: child,
            #curve: curve,
            #duration: duration,
            #onEnd: onEnd,
          }),
          builder: (args) => _i1.AnimatedPadding(
            key: args(#key),
            padding: args(#padding),
            child: args(#child),
            curve: args(#curve),
            duration: args(#duration),
            onEnd: args(#onEnd),
          ),
        );
}

final class AnimatedAlign extends Wrapper {
  @Goto(_i1.AnimatedAlign.new)
  AnimatedAlign(
    $ $config, {
    _i2.Key? key,
    required _i3.AlignmentGeometry alignment,
    _i1.Widget? child,
    double? heightFactor,
    double? widthFactor,
    _i4.Curve curve = _i4.Curves.linear,
    required Duration duration,
    ui.VoidCallback? onEnd,
  }) : super(
          Argument({
            #key: key,
            #alignment: alignment,
            #child: child,
            #heightFactor: heightFactor,
            #widthFactor: widthFactor,
            #curve: curve,
            #duration: duration,
            #onEnd: onEnd,
          }),
          builder: (args) => _i1.AnimatedAlign(
            key: args(#key),
            alignment: args(#alignment),
            child: args(#child),
            heightFactor: args(#heightFactor),
            widthFactor: args(#widthFactor),
            curve: args(#curve),
            duration: args(#duration),
            onEnd: args(#onEnd),
          ),
        );
}

final class AnimatedSlide extends Wrapper {
  @Goto(_i1.AnimatedSlide.new)
  AnimatedSlide(
    $ $config, {
    _i2.Key? key,
    _i1.Widget? child,
    required ui.Offset offset,
    _i4.Curve curve = _i4.Curves.linear,
    required Duration duration,
    ui.VoidCallback? onEnd,
  }) : super(
          Argument({
            #key: key,
            #child: child,
            #offset: offset,
            #curve: curve,
            #duration: duration,
            #onEnd: onEnd,
          }),
          builder: (args) => _i1.AnimatedSlide(
            key: args(#key),
            child: args(#child),
            offset: args(#offset),
            curve: args(#curve),
            duration: args(#duration),
            onEnd: args(#onEnd),
          ),
        );
}
