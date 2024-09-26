library rxflutterify; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:ui' as ui;

import 'package:flutter/animation.dart' as _i7;
import 'package:flutter/foundation.dart' as _i2;
import 'package:flutter/painting.dart' as _i5;
import 'package:flutter/rendering.dart' as _i4;
import 'package:flutter/semantics.dart' as _i6;
import 'package:flutter/services.dart' as _i3;
import 'package:flutter/widgets.dart' as _i1;

import '../wrapper.dart';

final class RotatedBox extends Wrapper {
  @Goto(_i1.RotatedBox.new)
  RotatedBox(
    $ $config, {
    _i2.Key? key,
    required int quarterTurns,
    _i1.Widget? child,
  }) : super(
          Argument({
            #key: key,
            #quarterTurns: quarterTurns,
            #child: child,
          }),
          builder: (args) => _i1.RotatedBox(
            key: args(#key),
            quarterTurns: args(#quarterTurns),
            child: args(#child),
          ),
        );
}

final class MouseRegion extends Wrapper {
  @Goto(_i1.MouseRegion.new)
  MouseRegion(
    $ $config, {
    _i2.Key? key,
    _i3.PointerEnterEventListener? onEnter,
    _i3.PointerExitEventListener? onExit,
    _i3.PointerHoverEventListener? onHover,
    _i3.MouseCursor cursor = _i3.MouseCursor.defer,
    bool opaque = true,
    _i4.HitTestBehavior? hitTestBehavior,
    _i1.Widget? child,
  }) : super(
          Argument({
            #key: key,
            #onEnter: onEnter,
            #onExit: onExit,
            #onHover: onHover,
            #cursor: cursor,
            #opaque: opaque,
            #hitTestBehavior: hitTestBehavior,
            #child: child,
          }),
          builder: (args) => _i1.MouseRegion(
            key: args(#key),
            onEnter: args(#onEnter),
            onExit: args(#onExit),
            onHover: args(#onHover),
            cursor: args(#cursor),
            opaque: args(#opaque),
            hitTestBehavior: args(#hitTestBehavior),
            child: args(#child),
          ),
        );
}

final class ClipPath extends Wrapper {
  @Goto(_i1.ClipPath.new)
  ClipPath(
    $ $config, {
    _i2.Key? key,
    _i4.CustomClipper<ui.Path>? clipper,
    ui.Clip clipBehavior = ui.Clip.antiAlias,
    _i1.Widget? child,
  }) : super(
          Argument({
            #key: key,
            #clipper: clipper,
            #clipBehavior: clipBehavior,
            #child: child,
          }),
          builder: (args) => _i1.ClipPath(
            key: args(#key),
            clipper: args(#clipper),
            clipBehavior: args(#clipBehavior),
            child: args(#child),
          ),
        );
}

final class ConstraintsTransformBox extends Wrapper {
  @Goto(_i1.ConstraintsTransformBox.new)
  ConstraintsTransformBox(
    $ $config, {
    _i2.Key? key,
    _i1.Widget? child,
    ui.TextDirection? textDirection,
    _i5.AlignmentGeometry alignment = _i5.Alignment.center,
    required _i4.BoxConstraintsTransform constraintsTransform,
    ui.Clip clipBehavior = ui.Clip.none,
    String debugTransformType = '',
  }) : super(
          Argument({
            #key: key,
            #child: child,
            #textDirection: textDirection,
            #alignment: alignment,
            #constraintsTransform: constraintsTransform,
            #clipBehavior: clipBehavior,
            #debugTransformType: debugTransformType,
          }),
          builder: (args) => _i1.ConstraintsTransformBox(
            key: args(#key),
            child: args(#child),
            textDirection: args(#textDirection),
            alignment: args(#alignment),
            constraintsTransform: args(#constraintsTransform),
            clipBehavior: args(#clipBehavior),
            debugTransformType: args(#debugTransformType),
          ),
        );
}

final class UnconstrainedBox extends Wrapper {
  @Goto(_i1.UnconstrainedBox.new)
  UnconstrainedBox(
    $ $config, {
    _i2.Key? key,
    _i1.Widget? child,
    ui.TextDirection? textDirection,
    _i5.AlignmentGeometry alignment = _i5.Alignment.center,
    _i5.Axis? constrainedAxis,
    ui.Clip clipBehavior = ui.Clip.none,
  }) : super(
          Argument({
            #key: key,
            #child: child,
            #textDirection: textDirection,
            #alignment: alignment,
            #constrainedAxis: constrainedAxis,
            #clipBehavior: clipBehavior,
          }),
          builder: (args) => _i1.UnconstrainedBox(
            key: args(#key),
            child: args(#child),
            textDirection: args(#textDirection),
            alignment: args(#alignment),
            constrainedAxis: args(#constrainedAxis),
            clipBehavior: args(#clipBehavior),
          ),
        );
}

final class BlockSemantics extends Wrapper {
  @Goto(_i1.BlockSemantics.new)
  BlockSemantics(
    $ $config, {
    _i2.Key? key,
    bool blocking = true,
    _i1.Widget? child,
  }) : super(
          Argument({
            #key: key,
            #blocking: blocking,
            #child: child,
          }),
          builder: (args) => _i1.BlockSemantics(
            key: args(#key),
            blocking: args(#blocking),
            child: args(#child),
          ),
        );
}

final class ColoredBox extends Wrapper {
  @Goto(_i1.ColoredBox.new)
  ColoredBox(
    $ $config, {
    required ui.Color color,
    _i1.Widget? child,
    _i2.Key? key,
  }) : super(
          Argument({
            #color: color,
            #child: child,
            #key: key,
          }),
          builder: (args) => _i1.ColoredBox(
            color: args(#color),
            child: args(#child),
            key: args(#key),
          ),
        );
}

final class FractionalTranslation extends Wrapper {
  @Goto(_i1.FractionalTranslation.new)
  FractionalTranslation(
    $ $config, {
    _i2.Key? key,
    required ui.Offset translation,
    bool transformHitTests = true,
    _i1.Widget? child,
  }) : super(
          Argument({
            #key: key,
            #translation: translation,
            #transformHitTests: transformHitTests,
            #child: child,
          }),
          builder: (args) => _i1.FractionalTranslation(
            key: args(#key),
            translation: args(#translation),
            transformHitTests: args(#transformHitTests),
            child: args(#child),
          ),
        );
}

final class SizedOverflowBox extends Wrapper {
  @Goto(_i1.SizedOverflowBox.new)
  SizedOverflowBox(
    $ $config, {
    _i2.Key? key,
    required ui.Size size,
    _i5.AlignmentGeometry alignment = _i5.Alignment.center,
    _i1.Widget? child,
  }) : super(
          Argument({
            #key: key,
            #size: size,
            #alignment: alignment,
            #child: child,
          }),
          builder: (args) => _i1.SizedOverflowBox(
            key: args(#key),
            size: args(#size),
            alignment: args(#alignment),
            child: args(#child),
          ),
        );
}

final class SizedBox extends Wrapper {
  @Goto(_i1.SizedBox.new)
  SizedBox(
    $ $config, {
    _i2.Key? key,
    double? width,
    double? height,
    _i1.Widget? child,
  }) : super(
          Argument({
            #key: key,
            #width: width,
            #height: height,
            #child: child,
          }),
          builder: (args) => _i1.SizedBox(
            key: args(#key),
            width: args(#width),
            height: args(#height),
            child: args(#child),
          ),
        );

  @Goto(_i1.SizedBox.expand)
  SizedBox.expand(
    $ $config, {
    _i2.Key? key,
    _i1.Widget? child,
  }) : super(
          Argument({
            #key: key,
            #child: child,
          }),
          builder: (args) => _i1.SizedBox.expand(
            key: args(#key),
            child: args(#child),
          ),
        );

  @Goto(_i1.SizedBox.shrink)
  SizedBox.shrink(
    $ $config, {
    _i2.Key? key,
    _i1.Widget? child,
  }) : super(
          Argument({
            #key: key,
            #child: child,
          }),
          builder: (args) => _i1.SizedBox.shrink(
            key: args(#key),
            child: args(#child),
          ),
        );

  @Goto(_i1.SizedBox.fromSize)
  SizedBox.fromSize(
    $ $config, {
    _i2.Key? key,
    _i1.Widget? child,
    ui.Size? size,
  }) : super(
          Argument({
            #key: key,
            #child: child,
            #size: size,
          }),
          builder: (args) => _i1.SizedBox.fromSize(
            key: args(#key),
            child: args(#child),
            size: args(#size),
          ),
        );

  @Goto(_i1.SizedBox.square)
  SizedBox.square(
    $ $config, {
    _i2.Key? key,
    _i1.Widget? child,
    double? dimension,
  }) : super(
          Argument({
            #key: key,
            #child: child,
            #dimension: dimension,
          }),
          builder: (args) => _i1.SizedBox.square(
            key: args(#key),
            child: args(#child),
            dimension: args(#dimension),
          ),
        );
}

final class WidgetToRenderBoxAdapter extends Wrapper {
  @Goto(_i1.WidgetToRenderBoxAdapter.new)
  WidgetToRenderBoxAdapter(
    $ $config, {
    required _i4.RenderBox renderBox,
    ui.VoidCallback? onBuild,
    ui.VoidCallback? onUnmount,
  }) : super(
          Argument({
            #renderBox: renderBox,
            #onBuild: onBuild,
            #onUnmount: onUnmount,
          }),
          builder: (args) => _i1.WidgetToRenderBoxAdapter(
            renderBox: args(#renderBox),
            onBuild: args(#onBuild),
            onUnmount: args(#onUnmount),
          ),
        );
}

final class Align extends Wrapper {
  @Goto(_i1.Align.new)
  Align(
    $ $config, {
    _i2.Key? key,
    _i5.AlignmentGeometry alignment = _i5.Alignment.center,
    double? widthFactor,
    double? heightFactor,
    _i1.Widget? child,
  }) : super(
          Argument({
            #key: key,
            #alignment: alignment,
            #widthFactor: widthFactor,
            #heightFactor: heightFactor,
            #child: child,
          }),
          builder: (args) => _i1.Align(
            key: args(#key),
            alignment: args(#alignment),
            widthFactor: args(#widthFactor),
            heightFactor: args(#heightFactor),
            child: args(#child),
          ),
        );
}

final class AbsorbPointer extends Wrapper {
  @Goto(_i1.AbsorbPointer.new)
  AbsorbPointer(
    $ $config, {
    _i2.Key? key,
    bool absorbing = true,
    bool? ignoringSemantics,
    _i1.Widget? child,
  }) : super(
          Argument({
            #key: key,
            #absorbing: absorbing,
            #ignoringSemantics: ignoringSemantics,
            #child: child,
          }),
          builder: (args) => _i1.AbsorbPointer(
            key: args(#key),
            absorbing: args(#absorbing),
            ignoringSemantics: args(#ignoringSemantics),
            child: args(#child),
          ),
        );
}

final class ClipRRect extends Wrapper {
  @Goto(_i1.ClipRRect.new)
  ClipRRect(
    $ $config, {
    _i2.Key? key,
    _i5.BorderRadiusGeometry borderRadius = _i5.BorderRadius.zero,
    _i4.CustomClipper<ui.RRect>? clipper,
    ui.Clip clipBehavior = ui.Clip.antiAlias,
    _i1.Widget? child,
  }) : super(
          Argument({
            #key: key,
            #borderRadius: borderRadius,
            #clipper: clipper,
            #clipBehavior: clipBehavior,
            #child: child,
          }),
          builder: (args) => _i1.ClipRRect(
            key: args(#key),
            borderRadius: args(#borderRadius),
            clipper: args(#clipper),
            clipBehavior: args(#clipBehavior),
            child: args(#child),
          ),
        );
}

final class AspectRatio extends Wrapper {
  @Goto(_i1.AspectRatio.new)
  AspectRatio(
    $ $config, {
    _i2.Key? key,
    required double aspectRatio,
    _i1.Widget? child,
  }) : super(
          Argument({
            #key: key,
            #aspectRatio: aspectRatio,
            #child: child,
          }),
          builder: (args) => _i1.AspectRatio(
            key: args(#key),
            aspectRatio: args(#aspectRatio),
            child: args(#child),
          ),
        );
}

final class IndexedStack extends Wrapper {
  @Goto(_i1.IndexedStack.new)
  IndexedStack(
    $ $config, {
    _i2.Key? key,
    _i5.AlignmentGeometry alignment = _i5.AlignmentDirectional.topStart,
    ui.TextDirection? textDirection,
    ui.Clip clipBehavior = ui.Clip.hardEdge,
    _i4.StackFit sizing = _i4.StackFit.loose,
    int? index = 0,
    List<_i1.Widget> children = const [],
  }) : super(
          Argument({
            #key: key,
            #alignment: alignment,
            #textDirection: textDirection,
            #clipBehavior: clipBehavior,
            #sizing: sizing,
            #index: index,
            #children: children,
          }),
          builder: (args) => _i1.IndexedStack(
            key: args(#key),
            alignment: args(#alignment),
            textDirection: args(#textDirection),
            clipBehavior: args(#clipBehavior),
            sizing: args(#sizing),
            index: args(#index),
            children: args(#children),
          ),
        );
}

final class Column extends Wrapper {
  @Goto(_i1.Column.new)
  Column(
    $ $config, {
    _i2.Key? key,
    _i4.MainAxisAlignment mainAxisAlignment = _i4.MainAxisAlignment.start,
    _i4.MainAxisSize mainAxisSize = _i4.MainAxisSize.max,
    _i4.CrossAxisAlignment crossAxisAlignment = _i4.CrossAxisAlignment.center,
    ui.TextDirection? textDirection,
    _i5.VerticalDirection verticalDirection = _i5.VerticalDirection.down,
    ui.TextBaseline? textBaseline,
    List<_i1.Widget> children = const [],
  }) : super(
          Argument({
            #key: key,
            #mainAxisAlignment: mainAxisAlignment,
            #mainAxisSize: mainAxisSize,
            #crossAxisAlignment: crossAxisAlignment,
            #textDirection: textDirection,
            #verticalDirection: verticalDirection,
            #textBaseline: textBaseline,
            #children: children,
          }),
          builder: (args) => _i1.Column(
            key: args(#key),
            mainAxisAlignment: args(#mainAxisAlignment),
            mainAxisSize: args(#mainAxisSize),
            crossAxisAlignment: args(#crossAxisAlignment),
            textDirection: args(#textDirection),
            verticalDirection: args(#verticalDirection),
            textBaseline: args(#textBaseline),
            children: args(#children),
          ),
        );
}

final class BackdropFilter extends Wrapper {
  @Goto(_i1.BackdropFilter.new)
  BackdropFilter(
    $ $config, {
    _i2.Key? key,
    required ui.ImageFilter filter,
    _i1.Widget? child,
    ui.BlendMode blendMode = ui.BlendMode.srcOver,
  }) : super(
          Argument({
            #key: key,
            #filter: filter,
            #child: child,
            #blendMode: blendMode,
          }),
          builder: (args) => _i1.BackdropFilter(
            key: args(#key),
            filter: args(#filter),
            child: args(#child),
            blendMode: args(#blendMode),
          ),
        );
}

final class Transform extends Wrapper {
  @Goto(_i1.Transform.new)
  Transform(
    $ $config, {
    _i2.Key? key,
    required _i4.Matrix4 transform,
    ui.Offset? origin,
    _i5.AlignmentGeometry? alignment,
    bool transformHitTests = true,
    ui.FilterQuality? filterQuality,
    _i1.Widget? child,
  }) : super(
          Argument({
            #key: key,
            #transform: transform,
            #origin: origin,
            #alignment: alignment,
            #transformHitTests: transformHitTests,
            #filterQuality: filterQuality,
            #child: child,
          }),
          builder: (args) => _i1.Transform(
            key: args(#key),
            transform: args(#transform),
            origin: args(#origin),
            alignment: args(#alignment),
            transformHitTests: args(#transformHitTests),
            filterQuality: args(#filterQuality),
            child: args(#child),
          ),
        );

  @Goto(_i1.Transform.rotate)
  Transform.rotate(
    $ $config, {
    _i2.Key? key,
    required double angle,
    ui.Offset? origin,
    _i5.AlignmentGeometry? alignment = _i5.Alignment.center,
    bool transformHitTests = true,
    ui.FilterQuality? filterQuality,
    _i1.Widget? child,
  }) : super(
          Argument({
            #key: key,
            #angle: angle,
            #origin: origin,
            #alignment: alignment,
            #transformHitTests: transformHitTests,
            #filterQuality: filterQuality,
            #child: child,
          }),
          builder: (args) => _i1.Transform.rotate(
            key: args(#key),
            angle: args(#angle),
            origin: args(#origin),
            alignment: args(#alignment),
            transformHitTests: args(#transformHitTests),
            filterQuality: args(#filterQuality),
            child: args(#child),
          ),
        );

  @Goto(_i1.Transform.translate)
  Transform.translate(
    $ $config, {
    _i2.Key? key,
    required ui.Offset offset,
    bool transformHitTests = true,
    ui.FilterQuality? filterQuality,
    _i1.Widget? child,
  }) : super(
          Argument({
            #key: key,
            #offset: offset,
            #transformHitTests: transformHitTests,
            #filterQuality: filterQuality,
            #child: child,
          }),
          builder: (args) => _i1.Transform.translate(
            key: args(#key),
            offset: args(#offset),
            transformHitTests: args(#transformHitTests),
            filterQuality: args(#filterQuality),
            child: args(#child),
          ),
        );

  @Goto(_i1.Transform.scale)
  Transform.scale(
    $ $config, {
    _i2.Key? key,
    double? scale,
    double? scaleX,
    double? scaleY,
    ui.Offset? origin,
    _i5.AlignmentGeometry? alignment = _i5.Alignment.center,
    bool transformHitTests = true,
    ui.FilterQuality? filterQuality,
    _i1.Widget? child,
  }) : super(
          Argument({
            #key: key,
            #scale: scale,
            #scaleX: scaleX,
            #scaleY: scaleY,
            #origin: origin,
            #alignment: alignment,
            #transformHitTests: transformHitTests,
            #filterQuality: filterQuality,
            #child: child,
          }),
          builder: (args) => _i1.Transform.scale(
            key: args(#key),
            scale: args(#scale),
            scaleX: args(#scaleX),
            scaleY: args(#scaleY),
            origin: args(#origin),
            alignment: args(#alignment),
            transformHitTests: args(#transformHitTests),
            filterQuality: args(#filterQuality),
            child: args(#child),
          ),
        );

  @Goto(_i1.Transform.flip)
  Transform.flip(
    $ $config, {
    _i2.Key? key,
    bool flipX = false,
    bool flipY = false,
    ui.Offset? origin,
    bool transformHitTests = true,
    ui.FilterQuality? filterQuality,
    _i1.Widget? child,
  }) : super(
          Argument({
            #key: key,
            #flipX: flipX,
            #flipY: flipY,
            #origin: origin,
            #transformHitTests: transformHitTests,
            #filterQuality: filterQuality,
            #child: child,
          }),
          builder: (args) => _i1.Transform.flip(
            key: args(#key),
            flipX: args(#flipX),
            flipY: args(#flipY),
            origin: args(#origin),
            transformHitTests: args(#transformHitTests),
            filterQuality: args(#filterQuality),
            child: args(#child),
          ),
        );
}

final class FittedBox extends Wrapper {
  @Goto(_i1.FittedBox.new)
  FittedBox(
    $ $config, {
    _i2.Key? key,
    _i5.BoxFit fit = _i5.BoxFit.contain,
    _i5.AlignmentGeometry alignment = _i5.Alignment.center,
    ui.Clip clipBehavior = ui.Clip.none,
    _i1.Widget? child,
  }) : super(
          Argument({
            #key: key,
            #fit: fit,
            #alignment: alignment,
            #clipBehavior: clipBehavior,
            #child: child,
          }),
          builder: (args) => _i1.FittedBox(
            key: args(#key),
            fit: args(#fit),
            alignment: args(#alignment),
            clipBehavior: args(#clipBehavior),
            child: args(#child),
          ),
        );
}

final class IgnoreBaseline extends Wrapper {
  @Goto(_i1.IgnoreBaseline.new)
  IgnoreBaseline(
    $ $config, {
    _i2.Key? key,
    _i1.Widget? child,
  }) : super(
          Argument({
            #key: key,
            #child: child,
          }),
          builder: (args) => _i1.IgnoreBaseline(
            key: args(#key),
            child: args(#child),
          ),
        );
}

final class CompositedTransformFollower extends Wrapper {
  @Goto(_i1.CompositedTransformFollower.new)
  CompositedTransformFollower(
    $ $config, {
    _i2.Key? key,
    required _i4.LayerLink link,
    bool showWhenUnlinked = true,
    ui.Offset offset = ui.Offset.zero,
    _i5.Alignment targetAnchor = _i5.Alignment.topLeft,
    _i5.Alignment followerAnchor = _i5.Alignment.topLeft,
    _i1.Widget? child,
  }) : super(
          Argument({
            #key: key,
            #link: link,
            #showWhenUnlinked: showWhenUnlinked,
            #offset: offset,
            #targetAnchor: targetAnchor,
            #followerAnchor: followerAnchor,
            #child: child,
          }),
          builder: (args) => _i1.CompositedTransformFollower(
            key: args(#key),
            link: args(#link),
            showWhenUnlinked: args(#showWhenUnlinked),
            offset: args(#offset),
            targetAnchor: args(#targetAnchor),
            followerAnchor: args(#followerAnchor),
            child: args(#child),
          ),
        );
}

final class ClipOval extends Wrapper {
  @Goto(_i1.ClipOval.new)
  ClipOval(
    $ $config, {
    _i2.Key? key,
    _i4.CustomClipper<ui.Rect>? clipper,
    ui.Clip clipBehavior = ui.Clip.antiAlias,
    _i1.Widget? child,
  }) : super(
          Argument({
            #key: key,
            #clipper: clipper,
            #clipBehavior: clipBehavior,
            #child: child,
          }),
          builder: (args) => _i1.ClipOval(
            key: args(#key),
            clipper: args(#clipper),
            clipBehavior: args(#clipBehavior),
            child: args(#child),
          ),
        );
}

final class RichText extends Wrapper {
  @Goto(_i1.RichText.new)
  RichText(
    $ $config, {
    _i2.Key? key,
    required _i5.InlineSpan text,
    ui.TextAlign textAlign = ui.TextAlign.start,
    ui.TextDirection? textDirection,
    bool softWrap = true,
    _i5.TextOverflow overflow = _i5.TextOverflow.clip,
    double textScaleFactor = 1.0,
    _i5.TextScaler textScaler = _i5.TextScaler.noScaling,
    int? maxLines,
    ui.Locale? locale,
    _i5.StrutStyle? strutStyle,
    _i5.TextWidthBasis textWidthBasis = _i5.TextWidthBasis.parent,
    ui.TextHeightBehavior? textHeightBehavior,
    _i4.SelectionRegistrar? selectionRegistrar,
    ui.Color? selectionColor,
  }) : super(
          Argument({
            #key: key,
            #text: text,
            #textAlign: textAlign,
            #textDirection: textDirection,
            #softWrap: softWrap,
            #overflow: overflow,
            #textScaleFactor: textScaleFactor,
            #textScaler: textScaler,
            #maxLines: maxLines,
            #locale: locale,
            #strutStyle: strutStyle,
            #textWidthBasis: textWidthBasis,
            #textHeightBehavior: textHeightBehavior,
            #selectionRegistrar: selectionRegistrar,
            #selectionColor: selectionColor,
          }),
          builder: (args) => _i1.RichText(
            key: args(#key),
            text: args(#text),
            textAlign: args(#textAlign),
            textDirection: args(#textDirection),
            softWrap: args(#softWrap),
            overflow: args(#overflow),
            textScaleFactor: args(#textScaleFactor),
            textScaler: args(#textScaler),
            maxLines: args(#maxLines),
            locale: args(#locale),
            strutStyle: args(#strutStyle),
            textWidthBasis: args(#textWidthBasis),
            textHeightBehavior: args(#textHeightBehavior),
            selectionRegistrar: args(#selectionRegistrar),
            selectionColor: args(#selectionColor),
          ),
        );
}

final class IgnorePointer extends Wrapper {
  @Goto(_i1.IgnorePointer.new)
  IgnorePointer(
    $ $config, {
    _i2.Key? key,
    bool ignoring = true,
    bool? ignoringSemantics,
    _i1.Widget? child,
  }) : super(
          Argument({
            #key: key,
            #ignoring: ignoring,
            #ignoringSemantics: ignoringSemantics,
            #child: child,
          }),
          builder: (args) => _i1.IgnorePointer(
            key: args(#key),
            ignoring: args(#ignoring),
            ignoringSemantics: args(#ignoringSemantics),
            child: args(#child),
          ),
        );
}

final class ShaderMask extends Wrapper {
  @Goto(_i1.ShaderMask.new)
  ShaderMask(
    $ $config, {
    _i2.Key? key,
    required _i4.ShaderCallback shaderCallback,
    ui.BlendMode blendMode = ui.BlendMode.modulate,
    _i1.Widget? child,
  }) : super(
          Argument({
            #key: key,
            #shaderCallback: shaderCallback,
            #blendMode: blendMode,
            #child: child,
          }),
          builder: (args) => _i1.ShaderMask(
            key: args(#key),
            shaderCallback: args(#shaderCallback),
            blendMode: args(#blendMode),
            child: args(#child),
          ),
        );
}

final class SliverPadding extends Wrapper {
  @Goto(_i1.SliverPadding.new)
  SliverPadding(
    $ $config, {
    _i2.Key? key,
    required _i5.EdgeInsetsGeometry padding,
    _i1.Widget? sliver,
  }) : super(
          Argument({
            #key: key,
            #padding: padding,
            #sliver: sliver,
          }),
          builder: (args) => _i1.SliverPadding(
            key: args(#key),
            padding: args(#padding),
            sliver: args(#sliver),
          ),
        );
}

final class CompositedTransformTarget extends Wrapper {
  @Goto(_i1.CompositedTransformTarget.new)
  CompositedTransformTarget(
    $ $config, {
    _i2.Key? key,
    required _i4.LayerLink link,
    _i1.Widget? child,
  }) : super(
          Argument({
            #key: key,
            #link: link,
            #child: child,
          }),
          builder: (args) => _i1.CompositedTransformTarget(
            key: args(#key),
            link: args(#link),
            child: args(#child),
          ),
        );
}

final class PositionedDirectional extends Wrapper {
  @Goto(_i1.PositionedDirectional.new)
  PositionedDirectional(
    $ $config, {
    _i2.Key? key,
    double? start,
    double? top,
    double? end,
    double? bottom,
    double? width,
    double? height,
    required _i1.Widget child,
  }) : super(
          Argument({
            #key: key,
            #start: start,
            #top: top,
            #end: end,
            #bottom: bottom,
            #width: width,
            #height: height,
            #child: child,
          }),
          builder: (args) => _i1.PositionedDirectional(
            key: args(#key),
            start: args(#start),
            top: args(#top),
            end: args(#end),
            bottom: args(#bottom),
            width: args(#width),
            height: args(#height),
            child: args(#child),
          ),
        );
}

final class MetaData extends Wrapper {
  @Goto(_i1.MetaData.new)
  MetaData(
    $ $config, {
    _i2.Key? key,
    dynamic metaData,
    _i4.HitTestBehavior behavior = _i4.HitTestBehavior.deferToChild,
    _i1.Widget? child,
  }) : super(
          Argument({
            #key: key,
            #metaData: metaData,
            #behavior: behavior,
            #child: child,
          }),
          builder: (args) => _i1.MetaData(
            key: args(#key),
            metaData: args(#metaData),
            behavior: args(#behavior),
            child: args(#child),
          ),
        );
}

final class Semantics extends Wrapper {
  @Goto(_i1.Semantics.new)
  Semantics(
    $ $config, {
    _i2.Key? key,
    _i1.Widget? child,
    bool container = false,
    bool explicitChildNodes = false,
    bool excludeSemantics = false,
    bool blockUserActions = false,
    bool? enabled,
    bool? checked,
    bool? mixed,
    bool? selected,
    bool? toggled,
    bool? button,
    bool? slider,
    bool? keyboardKey,
    bool? link,
    bool? header,
    int? headingLevel,
    bool? textField,
    bool? readOnly,
    bool? focusable,
    bool? focused,
    bool? inMutuallyExclusiveGroup,
    bool? obscured,
    bool? multiline,
    bool? scopesRoute,
    bool? namesRoute,
    bool? hidden,
    bool? image,
    bool? liveRegion,
    bool? expanded,
    int? maxValueLength,
    int? currentValueLength,
    String? identifier,
    String? label,
    _i6.AttributedString? attributedLabel,
    String? value,
    _i6.AttributedString? attributedValue,
    String? increasedValue,
    _i6.AttributedString? attributedIncreasedValue,
    String? decreasedValue,
    _i6.AttributedString? attributedDecreasedValue,
    String? hint,
    _i6.AttributedString? attributedHint,
    String? tooltip,
    String? onTapHint,
    String? onLongPressHint,
    ui.TextDirection? textDirection,
    _i6.SemanticsSortKey? sortKey,
    _i6.SemanticsTag? tagForChildren,
    ui.VoidCallback? onTap,
    ui.VoidCallback? onLongPress,
    ui.VoidCallback? onScrollLeft,
    ui.VoidCallback? onScrollRight,
    ui.VoidCallback? onScrollUp,
    ui.VoidCallback? onScrollDown,
    ui.VoidCallback? onIncrease,
    ui.VoidCallback? onDecrease,
    ui.VoidCallback? onCopy,
    ui.VoidCallback? onCut,
    ui.VoidCallback? onPaste,
    ui.VoidCallback? onDismiss,
    _i6.MoveCursorHandler? onMoveCursorForwardByCharacter,
    _i6.MoveCursorHandler? onMoveCursorBackwardByCharacter,
    _i6.SetSelectionHandler? onSetSelection,
    _i6.SetTextHandler? onSetText,
    ui.VoidCallback? onDidGainAccessibilityFocus,
    ui.VoidCallback? onDidLoseAccessibilityFocus,
    ui.VoidCallback? onFocus,
    Map<_i6.CustomSemanticsAction, ui.VoidCallback>? customSemanticsActions,
  }) : super(
          Argument({
            #key: key,
            #child: child,
            #container: container,
            #explicitChildNodes: explicitChildNodes,
            #excludeSemantics: excludeSemantics,
            #blockUserActions: blockUserActions,
            #enabled: enabled,
            #checked: checked,
            #mixed: mixed,
            #selected: selected,
            #toggled: toggled,
            #button: button,
            #slider: slider,
            #keyboardKey: keyboardKey,
            #link: link,
            #header: header,
            #headingLevel: headingLevel,
            #textField: textField,
            #readOnly: readOnly,
            #focusable: focusable,
            #focused: focused,
            #inMutuallyExclusiveGroup: inMutuallyExclusiveGroup,
            #obscured: obscured,
            #multiline: multiline,
            #scopesRoute: scopesRoute,
            #namesRoute: namesRoute,
            #hidden: hidden,
            #image: image,
            #liveRegion: liveRegion,
            #expanded: expanded,
            #maxValueLength: maxValueLength,
            #currentValueLength: currentValueLength,
            #identifier: identifier,
            #label: label,
            #attributedLabel: attributedLabel,
            #value: value,
            #attributedValue: attributedValue,
            #increasedValue: increasedValue,
            #attributedIncreasedValue: attributedIncreasedValue,
            #decreasedValue: decreasedValue,
            #attributedDecreasedValue: attributedDecreasedValue,
            #hint: hint,
            #attributedHint: attributedHint,
            #tooltip: tooltip,
            #onTapHint: onTapHint,
            #onLongPressHint: onLongPressHint,
            #textDirection: textDirection,
            #sortKey: sortKey,
            #tagForChildren: tagForChildren,
            #onTap: onTap,
            #onLongPress: onLongPress,
            #onScrollLeft: onScrollLeft,
            #onScrollRight: onScrollRight,
            #onScrollUp: onScrollUp,
            #onScrollDown: onScrollDown,
            #onIncrease: onIncrease,
            #onDecrease: onDecrease,
            #onCopy: onCopy,
            #onCut: onCut,
            #onPaste: onPaste,
            #onDismiss: onDismiss,
            #onMoveCursorForwardByCharacter: onMoveCursorForwardByCharacter,
            #onMoveCursorBackwardByCharacter: onMoveCursorBackwardByCharacter,
            #onSetSelection: onSetSelection,
            #onSetText: onSetText,
            #onDidGainAccessibilityFocus: onDidGainAccessibilityFocus,
            #onDidLoseAccessibilityFocus: onDidLoseAccessibilityFocus,
            #onFocus: onFocus,
            #customSemanticsActions: customSemanticsActions,
          }),
          builder: (args) => _i1.Semantics(
            key: args(#key),
            child: args(#child),
            container: args(#container),
            explicitChildNodes: args(#explicitChildNodes),
            excludeSemantics: args(#excludeSemantics),
            blockUserActions: args(#blockUserActions),
            enabled: args(#enabled),
            checked: args(#checked),
            mixed: args(#mixed),
            selected: args(#selected),
            toggled: args(#toggled),
            button: args(#button),
            slider: args(#slider),
            keyboardKey: args(#keyboardKey),
            link: args(#link),
            header: args(#header),
            headingLevel: args(#headingLevel),
            textField: args(#textField),
            readOnly: args(#readOnly),
            focusable: args(#focusable),
            focused: args(#focused),
            inMutuallyExclusiveGroup: args(#inMutuallyExclusiveGroup),
            obscured: args(#obscured),
            multiline: args(#multiline),
            scopesRoute: args(#scopesRoute),
            namesRoute: args(#namesRoute),
            hidden: args(#hidden),
            image: args(#image),
            liveRegion: args(#liveRegion),
            expanded: args(#expanded),
            maxValueLength: args(#maxValueLength),
            currentValueLength: args(#currentValueLength),
            identifier: args(#identifier),
            label: args(#label),
            attributedLabel: args(#attributedLabel),
            value: args(#value),
            attributedValue: args(#attributedValue),
            increasedValue: args(#increasedValue),
            attributedIncreasedValue: args(#attributedIncreasedValue),
            decreasedValue: args(#decreasedValue),
            attributedDecreasedValue: args(#attributedDecreasedValue),
            hint: args(#hint),
            attributedHint: args(#attributedHint),
            tooltip: args(#tooltip),
            onTapHint: args(#onTapHint),
            onLongPressHint: args(#onLongPressHint),
            textDirection: args(#textDirection),
            sortKey: args(#sortKey),
            tagForChildren: args(#tagForChildren),
            onTap: args(#onTap),
            onLongPress: args(#onLongPress),
            onScrollLeft: args(#onScrollLeft),
            onScrollRight: args(#onScrollRight),
            onScrollUp: args(#onScrollUp),
            onScrollDown: args(#onScrollDown),
            onIncrease: args(#onIncrease),
            onDecrease: args(#onDecrease),
            onCopy: args(#onCopy),
            onCut: args(#onCut),
            onPaste: args(#onPaste),
            onDismiss: args(#onDismiss),
            onMoveCursorForwardByCharacter: args(#onMoveCursorForwardByCharacter),
            onMoveCursorBackwardByCharacter: args(#onMoveCursorBackwardByCharacter),
            onSetSelection: args(#onSetSelection),
            onSetText: args(#onSetText),
            onDidGainAccessibilityFocus: args(#onDidGainAccessibilityFocus),
            onDidLoseAccessibilityFocus: args(#onDidLoseAccessibilityFocus),
            onFocus: args(#onFocus),
            customSemanticsActions: args(#customSemanticsActions),
          ),
        );

  @Goto(_i1.Semantics.fromProperties)
  Semantics.fromProperties(
    $ $config, {
    _i2.Key? key,
    _i1.Widget? child,
    bool container = false,
    bool explicitChildNodes = false,
    bool excludeSemantics = false,
    bool blockUserActions = false,
    required _i6.SemanticsProperties properties,
  }) : super(
          Argument({
            #key: key,
            #child: child,
            #container: container,
            #explicitChildNodes: explicitChildNodes,
            #excludeSemantics: excludeSemantics,
            #blockUserActions: blockUserActions,
            #properties: properties,
          }),
          builder: (args) => _i1.Semantics.fromProperties(
            key: args(#key),
            child: args(#child),
            container: args(#container),
            explicitChildNodes: args(#explicitChildNodes),
            excludeSemantics: args(#excludeSemantics),
            blockUserActions: args(#blockUserActions),
            properties: args(#properties),
          ),
        );
}

final class PhysicalModel extends Wrapper {
  @Goto(_i1.PhysicalModel.new)
  PhysicalModel(
    $ $config, {
    _i2.Key? key,
    _i5.BoxShape shape = _i5.BoxShape.rectangle,
    ui.Clip clipBehavior = ui.Clip.none,
    _i5.BorderRadius? borderRadius,
    double elevation = 0.0,
    required ui.Color color,
    ui.Color shadowColor = const ui.Color(0xFF000000),
    _i1.Widget? child,
  }) : super(
          Argument({
            #key: key,
            #shape: shape,
            #clipBehavior: clipBehavior,
            #borderRadius: borderRadius,
            #elevation: elevation,
            #color: color,
            #shadowColor: shadowColor,
            #child: child,
          }),
          builder: (args) => _i1.PhysicalModel(
            key: args(#key),
            shape: args(#shape),
            clipBehavior: args(#clipBehavior),
            borderRadius: args(#borderRadius),
            elevation: args(#elevation),
            color: args(#color),
            shadowColor: args(#shadowColor),
            child: args(#child),
          ),
        );
}

final class ConstrainedBox extends Wrapper {
  @Goto(_i1.ConstrainedBox.new)
  ConstrainedBox(
    $ $config, {
    _i2.Key? key,
    required _i4.BoxConstraints constraints,
    _i1.Widget? child,
  }) : super(
          Argument({
            #key: key,
            #constraints: constraints,
            #child: child,
          }),
          builder: (args) => _i1.ConstrainedBox(
            key: args(#key),
            constraints: args(#constraints),
            child: args(#child),
          ),
        );
}

final class Builder extends Wrapper {
  @Goto(_i1.Builder.new)
  Builder(
    $ $config, {
    _i2.Key? key,
    required _i1.WidgetBuilder builder,
  }) : super(
          Argument({
            #key: key,
            #builder: builder,
          }),
          builder: (args) => _i1.Builder(
            key: args(#key),
            builder: args(#builder),
          ),
        );
}

final class Center extends Wrapper {
  @Goto(_i1.Center.new)
  Center(
    $ $config, {
    _i2.Key? key,
    double? widthFactor,
    double? heightFactor,
    _i1.Widget? child,
  }) : super(
          Argument({
            #key: key,
            #widthFactor: widthFactor,
            #heightFactor: heightFactor,
            #child: child,
          }),
          builder: (args) => _i1.Center(
            key: args(#key),
            widthFactor: args(#widthFactor),
            heightFactor: args(#heightFactor),
            child: args(#child),
          ),
        );
}

final class Positioned extends Wrapper {
  @Goto(_i1.Positioned.new)
  Positioned(
    $ $config, {
    _i2.Key? key,
    double? left,
    double? top,
    double? right,
    double? bottom,
    double? width,
    double? height,
    required _i1.Widget child,
  }) : super(
          Argument({
            #key: key,
            #left: left,
            #top: top,
            #right: right,
            #bottom: bottom,
            #width: width,
            #height: height,
            #child: child,
          }),
          builder: (args) => _i1.Positioned(
            key: args(#key),
            left: args(#left),
            top: args(#top),
            right: args(#right),
            bottom: args(#bottom),
            width: args(#width),
            height: args(#height),
            child: args(#child),
          ),
        );

  @Goto(_i1.Positioned.fromRect)
  Positioned.fromRect(
    $ $config, {
    _i2.Key? key,
    required ui.Rect rect,
    required _i1.Widget child,
  }) : super(
          Argument({
            #key: key,
            #rect: rect,
            #child: child,
          }),
          builder: (args) => _i1.Positioned.fromRect(
            key: args(#key),
            rect: args(#rect),
            child: args(#child),
          ),
        );

  @Goto(_i1.Positioned.fromRelativeRect)
  Positioned.fromRelativeRect(
    $ $config, {
    _i2.Key? key,
    required _i4.RelativeRect rect,
    required _i1.Widget child,
  }) : super(
          Argument({
            #key: key,
            #rect: rect,
            #child: child,
          }),
          builder: (args) => _i1.Positioned.fromRelativeRect(
            key: args(#key),
            rect: args(#rect),
            child: args(#child),
          ),
        );

  @Goto(_i1.Positioned.fill)
  Positioned.fill(
    $ $config, {
    _i2.Key? key,
    double? left = 0.0,
    double? top = 0.0,
    double? right = 0.0,
    double? bottom = 0.0,
    required _i1.Widget child,
  }) : super(
          Argument({
            #key: key,
            #left: left,
            #top: top,
            #right: right,
            #bottom: bottom,
            #child: child,
          }),
          builder: (args) => _i1.Positioned.fill(
            key: args(#key),
            left: args(#left),
            top: args(#top),
            right: args(#right),
            bottom: args(#bottom),
            child: args(#child),
          ),
        );

  @Goto(_i1.Positioned.directional)
  Positioned.directional(
    $ $config, {
    _i2.Key? key,
    required ui.TextDirection textDirection,
    double? start,
    double? top,
    double? end,
    double? bottom,
    double? width,
    double? height,
    required _i1.Widget child,
  }) : super(
          Argument({
            #key: key,
            #textDirection: textDirection,
            #start: start,
            #top: top,
            #end: end,
            #bottom: bottom,
            #width: width,
            #height: height,
            #child: child,
          }),
          builder: (args) => _i1.Positioned.directional(
            key: args(#key),
            textDirection: args(#textDirection),
            start: args(#start),
            top: args(#top),
            end: args(#end),
            bottom: args(#bottom),
            width: args(#width),
            height: args(#height),
            child: args(#child),
          ),
        );
}

final class Flow extends Wrapper {
  @Goto(_i1.Flow.new)
  Flow(
    $ $config, {
    _i2.Key? key,
    required _i4.FlowDelegate delegate,
    List<_i1.Widget> children = const [],
    ui.Clip clipBehavior = ui.Clip.hardEdge,
  }) : super(
          Argument({
            #key: key,
            #delegate: delegate,
            #children: children,
            #clipBehavior: clipBehavior,
          }),
          builder: (args) => _i1.Flow(
            key: args(#key),
            delegate: args(#delegate),
            children: args(#children),
            clipBehavior: args(#clipBehavior),
          ),
        );

  @Goto(_i1.Flow.unwrapped)
  Flow.unwrapped(
    $ $config, {
    _i2.Key? key,
    required _i4.FlowDelegate delegate,
    List<_i1.Widget> children = const [],
    ui.Clip clipBehavior = ui.Clip.hardEdge,
  }) : super(
          Argument({
            #key: key,
            #delegate: delegate,
            #children: children,
            #clipBehavior: clipBehavior,
          }),
          builder: (args) => _i1.Flow.unwrapped(
            key: args(#key),
            delegate: args(#delegate),
            children: args(#children),
            clipBehavior: args(#clipBehavior),
          ),
        );
}

final class FractionallySizedBox extends Wrapper {
  @Goto(_i1.FractionallySizedBox.new)
  FractionallySizedBox(
    $ $config, {
    _i2.Key? key,
    _i5.AlignmentGeometry alignment = _i5.Alignment.center,
    double? widthFactor,
    double? heightFactor,
    _i1.Widget? child,
  }) : super(
          Argument({
            #key: key,
            #alignment: alignment,
            #widthFactor: widthFactor,
            #heightFactor: heightFactor,
            #child: child,
          }),
          builder: (args) => _i1.FractionallySizedBox(
            key: args(#key),
            alignment: args(#alignment),
            widthFactor: args(#widthFactor),
            heightFactor: args(#heightFactor),
            child: args(#child),
          ),
        );
}

final class Stack extends Wrapper {
  @Goto(_i1.Stack.new)
  Stack(
    $ $config, {
    _i2.Key? key,
    _i5.AlignmentGeometry alignment = _i5.AlignmentDirectional.topStart,
    ui.TextDirection? textDirection,
    _i4.StackFit fit = _i4.StackFit.loose,
    ui.Clip clipBehavior = ui.Clip.hardEdge,
    List<_i1.Widget> children = const [],
  }) : super(
          Argument({
            #key: key,
            #alignment: alignment,
            #textDirection: textDirection,
            #fit: fit,
            #clipBehavior: clipBehavior,
            #children: children,
          }),
          builder: (args) => _i1.Stack(
            key: args(#key),
            alignment: args(#alignment),
            textDirection: args(#textDirection),
            fit: args(#fit),
            clipBehavior: args(#clipBehavior),
            children: args(#children),
          ),
        );
}

final class StatefulBuilder extends Wrapper {
  @Goto(_i1.StatefulBuilder.new)
  StatefulBuilder(
    $ $config, {
    _i2.Key? key,
    required _i1.StatefulWidgetBuilder builder,
  }) : super(
          Argument({
            #key: key,
            #builder: builder,
          }),
          builder: (args) => _i1.StatefulBuilder(
            key: args(#key),
            builder: args(#builder),
          ),
        );
}

final class KeyedSubtree extends Wrapper {
  @Goto(_i1.KeyedSubtree.new)
  KeyedSubtree(
    $ $config, {
    _i2.Key? key,
    required _i1.Widget child,
  }) : super(
          Argument({
            #key: key,
            #child: child,
          }),
          builder: (args) => _i1.KeyedSubtree(
            key: args(#key),
            child: args(#child),
          ),
        );

  @Goto(_i1.KeyedSubtree.wrap)
  KeyedSubtree.wrap(
    $ $config,
    _i1.Widget child,
    int childIndex,
  ) : super(
          Argument({
            #child: child,
            #childIndex: childIndex,
          }),
          builder: (args) => _i1.KeyedSubtree.wrap(
            args(#child),
            args(#childIndex),
          ),
        );
}

final class Listener extends Wrapper {
  @Goto(_i1.Listener.new)
  Listener(
    $ $config, {
    _i2.Key? key,
    _i4.PointerDownEventListener? onPointerDown,
    _i4.PointerMoveEventListener? onPointerMove,
    _i4.PointerUpEventListener? onPointerUp,
    _i3.PointerHoverEventListener? onPointerHover,
    _i4.PointerCancelEventListener? onPointerCancel,
    _i4.PointerPanZoomStartEventListener? onPointerPanZoomStart,
    _i4.PointerPanZoomUpdateEventListener? onPointerPanZoomUpdate,
    _i4.PointerPanZoomEndEventListener? onPointerPanZoomEnd,
    _i4.PointerSignalEventListener? onPointerSignal,
    _i4.HitTestBehavior behavior = _i4.HitTestBehavior.deferToChild,
    _i1.Widget? child,
  }) : super(
          Argument({
            #key: key,
            #onPointerDown: onPointerDown,
            #onPointerMove: onPointerMove,
            #onPointerUp: onPointerUp,
            #onPointerHover: onPointerHover,
            #onPointerCancel: onPointerCancel,
            #onPointerPanZoomStart: onPointerPanZoomStart,
            #onPointerPanZoomUpdate: onPointerPanZoomUpdate,
            #onPointerPanZoomEnd: onPointerPanZoomEnd,
            #onPointerSignal: onPointerSignal,
            #behavior: behavior,
            #child: child,
          }),
          builder: (args) => _i1.Listener(
            key: args(#key),
            onPointerDown: args(#onPointerDown),
            onPointerMove: args(#onPointerMove),
            onPointerUp: args(#onPointerUp),
            onPointerHover: args(#onPointerHover),
            onPointerCancel: args(#onPointerCancel),
            onPointerPanZoomStart: args(#onPointerPanZoomStart),
            onPointerPanZoomUpdate: args(#onPointerPanZoomUpdate),
            onPointerPanZoomEnd: args(#onPointerPanZoomEnd),
            onPointerSignal: args(#onPointerSignal),
            behavior: args(#behavior),
            child: args(#child),
          ),
        );
}

final class ClipRect extends Wrapper {
  @Goto(_i1.ClipRect.new)
  ClipRect(
    $ $config, {
    _i2.Key? key,
    _i4.CustomClipper<ui.Rect>? clipper,
    ui.Clip clipBehavior = ui.Clip.hardEdge,
    _i1.Widget? child,
  }) : super(
          Argument({
            #key: key,
            #clipper: clipper,
            #clipBehavior: clipBehavior,
            #child: child,
          }),
          builder: (args) => _i1.ClipRect(
            key: args(#key),
            clipper: args(#clipper),
            clipBehavior: args(#clipBehavior),
            child: args(#child),
          ),
        );
}

final class Baseline extends Wrapper {
  @Goto(_i1.Baseline.new)
  Baseline(
    $ $config, {
    _i2.Key? key,
    required double baseline,
    required ui.TextBaseline baselineType,
    _i1.Widget? child,
  }) : super(
          Argument({
            #key: key,
            #baseline: baseline,
            #baselineType: baselineType,
            #child: child,
          }),
          builder: (args) => _i1.Baseline(
            key: args(#key),
            baseline: args(#baseline),
            baselineType: args(#baselineType),
            child: args(#child),
          ),
        );
}

final class ListBody extends Wrapper {
  @Goto(_i1.ListBody.new)
  ListBody(
    $ $config, {
    _i2.Key? key,
    _i5.Axis mainAxis = _i5.Axis.vertical,
    bool reverse = false,
    List<_i1.Widget> children = const [],
  }) : super(
          Argument({
            #key: key,
            #mainAxis: mainAxis,
            #reverse: reverse,
            #children: children,
          }),
          builder: (args) => _i1.ListBody(
            key: args(#key),
            mainAxis: args(#mainAxis),
            reverse: args(#reverse),
            children: args(#children),
          ),
        );
}

final class LayoutId extends Wrapper {
  @Goto(_i1.LayoutId.new)
  LayoutId(
    $ $config, {
    _i2.Key? key,
    required Object id,
    required _i1.Widget child,
  }) : super(
          Argument({
            #key: key,
            #id: id,
            #child: child,
          }),
          builder: (args) => _i1.LayoutId(
            key: args(#key),
            id: args(#id),
            child: args(#child),
          ),
        );
}

final class CustomMultiChildLayout extends Wrapper {
  @Goto(_i1.CustomMultiChildLayout.new)
  CustomMultiChildLayout(
    $ $config, {
    _i2.Key? key,
    required _i4.MultiChildLayoutDelegate delegate,
    List<_i1.Widget> children = const [],
  }) : super(
          Argument({
            #key: key,
            #delegate: delegate,
            #children: children,
          }),
          builder: (args) => _i1.CustomMultiChildLayout(
            key: args(#key),
            delegate: args(#delegate),
            children: args(#children),
          ),
        );
}

final class SliverToBoxAdapter extends Wrapper {
  @Goto(_i1.SliverToBoxAdapter.new)
  SliverToBoxAdapter(
    $ $config, {
    _i2.Key? key,
    _i1.Widget? child,
  }) : super(
          Argument({
            #key: key,
            #child: child,
          }),
          builder: (args) => _i1.SliverToBoxAdapter(
            key: args(#key),
            child: args(#child),
          ),
        );
}

final class IndexedSemantics extends Wrapper {
  @Goto(_i1.IndexedSemantics.new)
  IndexedSemantics(
    $ $config, {
    _i2.Key? key,
    required int index,
    _i1.Widget? child,
  }) : super(
          Argument({
            #key: key,
            #index: index,
            #child: child,
          }),
          builder: (args) => _i1.IndexedSemantics(
            key: args(#key),
            index: args(#index),
            child: args(#child),
          ),
        );
}

final class LimitedBox extends Wrapper {
  @Goto(_i1.LimitedBox.new)
  LimitedBox(
    $ $config, {
    _i2.Key? key,
    double maxWidth = double.infinity,
    double maxHeight = double.infinity,
    _i1.Widget? child,
  }) : super(
          Argument({
            #key: key,
            #maxWidth: maxWidth,
            #maxHeight: maxHeight,
            #child: child,
          }),
          builder: (args) => _i1.LimitedBox(
            key: args(#key),
            maxWidth: args(#maxWidth),
            maxHeight: args(#maxHeight),
            child: args(#child),
          ),
        );
}

final class OverflowBox extends Wrapper {
  @Goto(_i1.OverflowBox.new)
  OverflowBox(
    $ $config, {
    _i2.Key? key,
    _i5.AlignmentGeometry alignment = _i5.Alignment.center,
    double? minWidth,
    double? maxWidth,
    double? minHeight,
    double? maxHeight,
    _i4.OverflowBoxFit fit = _i4.OverflowBoxFit.max,
    _i1.Widget? child,
  }) : super(
          Argument({
            #key: key,
            #alignment: alignment,
            #minWidth: minWidth,
            #maxWidth: maxWidth,
            #minHeight: minHeight,
            #maxHeight: maxHeight,
            #fit: fit,
            #child: child,
          }),
          builder: (args) => _i1.OverflowBox(
            key: args(#key),
            alignment: args(#alignment),
            minWidth: args(#minWidth),
            maxWidth: args(#maxWidth),
            minHeight: args(#minHeight),
            maxHeight: args(#maxHeight),
            fit: args(#fit),
            child: args(#child),
          ),
        );
}

final class Directionality extends Wrapper {
  @Goto(_i1.Directionality.new)
  Directionality(
    $ $config, {
    _i2.Key? key,
    required ui.TextDirection textDirection,
    required _i1.Widget child,
  }) : super(
          Argument({
            #key: key,
            #textDirection: textDirection,
            #child: child,
          }),
          builder: (args) => _i1.Directionality(
            key: args(#key),
            textDirection: args(#textDirection),
            child: args(#child),
          ),
        );
}

final class DefaultAssetBundle extends Wrapper {
  @Goto(_i1.DefaultAssetBundle.new)
  DefaultAssetBundle(
    $ $config, {
    _i2.Key? key,
    required _i3.AssetBundle bundle,
    required _i1.Widget child,
  }) : super(
          Argument({
            #key: key,
            #bundle: bundle,
            #child: child,
          }),
          builder: (args) => _i1.DefaultAssetBundle(
            key: args(#key),
            bundle: args(#bundle),
            child: args(#child),
          ),
        );
}

final class Flexible extends Wrapper {
  @Goto(_i1.Flexible.new)
  Flexible(
    $ $config, {
    _i2.Key? key,
    int flex = 1,
    _i4.FlexFit fit = _i4.FlexFit.loose,
    required _i1.Widget child,
  }) : super(
          Argument({
            #key: key,
            #flex: flex,
            #fit: fit,
            #child: child,
          }),
          builder: (args) => _i1.Flexible(
            key: args(#key),
            flex: args(#flex),
            fit: args(#fit),
            child: args(#child),
          ),
        );
}

final class Flex extends Wrapper {
  @Goto(_i1.Flex.new)
  Flex(
    $ $config, {
    _i2.Key? key,
    required _i5.Axis direction,
    _i4.MainAxisAlignment mainAxisAlignment = _i4.MainAxisAlignment.start,
    _i4.MainAxisSize mainAxisSize = _i4.MainAxisSize.max,
    _i4.CrossAxisAlignment crossAxisAlignment = _i4.CrossAxisAlignment.center,
    ui.TextDirection? textDirection,
    _i5.VerticalDirection verticalDirection = _i5.VerticalDirection.down,
    ui.TextBaseline? textBaseline,
    ui.Clip clipBehavior = ui.Clip.none,
    List<_i1.Widget> children = const [],
  }) : super(
          Argument({
            #key: key,
            #direction: direction,
            #mainAxisAlignment: mainAxisAlignment,
            #mainAxisSize: mainAxisSize,
            #crossAxisAlignment: crossAxisAlignment,
            #textDirection: textDirection,
            #verticalDirection: verticalDirection,
            #textBaseline: textBaseline,
            #clipBehavior: clipBehavior,
            #children: children,
          }),
          builder: (args) => _i1.Flex(
            key: args(#key),
            direction: args(#direction),
            mainAxisAlignment: args(#mainAxisAlignment),
            mainAxisSize: args(#mainAxisSize),
            crossAxisAlignment: args(#crossAxisAlignment),
            textDirection: args(#textDirection),
            verticalDirection: args(#verticalDirection),
            textBaseline: args(#textBaseline),
            clipBehavior: args(#clipBehavior),
            children: args(#children),
          ),
        );
}

final class IntrinsicWidth extends Wrapper {
  @Goto(_i1.IntrinsicWidth.new)
  IntrinsicWidth(
    $ $config, {
    _i2.Key? key,
    double? stepWidth,
    double? stepHeight,
    _i1.Widget? child,
  }) : super(
          Argument({
            #key: key,
            #stepWidth: stepWidth,
            #stepHeight: stepHeight,
            #child: child,
          }),
          builder: (args) => _i1.IntrinsicWidth(
            key: args(#key),
            stepWidth: args(#stepWidth),
            stepHeight: args(#stepHeight),
            child: args(#child),
          ),
        );
}

final class ExcludeSemantics extends Wrapper {
  @Goto(_i1.ExcludeSemantics.new)
  ExcludeSemantics(
    $ $config, {
    _i2.Key? key,
    bool excluding = true,
    _i1.Widget? child,
  }) : super(
          Argument({
            #key: key,
            #excluding: excluding,
            #child: child,
          }),
          builder: (args) => _i1.ExcludeSemantics(
            key: args(#key),
            excluding: args(#excluding),
            child: args(#child),
          ),
        );
}

final class Wrap extends Wrapper {
  @Goto(_i1.Wrap.new)
  Wrap(
    $ $config, {
    _i2.Key? key,
    _i5.Axis direction = _i5.Axis.horizontal,
    _i4.WrapAlignment alignment = _i4.WrapAlignment.start,
    double spacing = 0.0,
    _i4.WrapAlignment runAlignment = _i4.WrapAlignment.start,
    double runSpacing = 0.0,
    _i4.WrapCrossAlignment crossAxisAlignment = _i4.WrapCrossAlignment.start,
    ui.TextDirection? textDirection,
    _i5.VerticalDirection verticalDirection = _i5.VerticalDirection.down,
    ui.Clip clipBehavior = ui.Clip.none,
    List<_i1.Widget> children = const [],
  }) : super(
          Argument({
            #key: key,
            #direction: direction,
            #alignment: alignment,
            #spacing: spacing,
            #runAlignment: runAlignment,
            #runSpacing: runSpacing,
            #crossAxisAlignment: crossAxisAlignment,
            #textDirection: textDirection,
            #verticalDirection: verticalDirection,
            #clipBehavior: clipBehavior,
            #children: children,
          }),
          builder: (args) => _i1.Wrap(
            key: args(#key),
            direction: args(#direction),
            alignment: args(#alignment),
            spacing: args(#spacing),
            runAlignment: args(#runAlignment),
            runSpacing: args(#runSpacing),
            crossAxisAlignment: args(#crossAxisAlignment),
            textDirection: args(#textDirection),
            verticalDirection: args(#verticalDirection),
            clipBehavior: args(#clipBehavior),
            children: args(#children),
          ),
        );
}

final class Opacity extends Wrapper {
  @Goto(_i1.Opacity.new)
  Opacity(
    $ $config, {
    _i2.Key? key,
    required double opacity,
    bool alwaysIncludeSemantics = false,
    _i1.Widget? child,
  }) : super(
          Argument({
            #key: key,
            #opacity: opacity,
            #alwaysIncludeSemantics: alwaysIncludeSemantics,
            #child: child,
          }),
          builder: (args) => _i1.Opacity(
            key: args(#key),
            opacity: args(#opacity),
            alwaysIncludeSemantics: args(#alwaysIncludeSemantics),
            child: args(#child),
          ),
        );
}

final class CustomPaint extends Wrapper {
  @Goto(_i1.CustomPaint.new)
  CustomPaint(
    $ $config, {
    _i2.Key? key,
    _i4.CustomPainter? painter,
    _i4.CustomPainter? foregroundPainter,
    ui.Size size = ui.Size.zero,
    bool isComplex = false,
    bool willChange = false,
    _i1.Widget? child,
  }) : super(
          Argument({
            #key: key,
            #painter: painter,
            #foregroundPainter: foregroundPainter,
            #size: size,
            #isComplex: isComplex,
            #willChange: willChange,
            #child: child,
          }),
          builder: (args) => _i1.CustomPaint(
            key: args(#key),
            painter: args(#painter),
            foregroundPainter: args(#foregroundPainter),
            size: args(#size),
            isComplex: args(#isComplex),
            willChange: args(#willChange),
            child: args(#child),
          ),
        );
}

final class PhysicalShape extends Wrapper {
  @Goto(_i1.PhysicalShape.new)
  PhysicalShape(
    $ $config, {
    _i2.Key? key,
    required _i4.CustomClipper<ui.Path> clipper,
    ui.Clip clipBehavior = ui.Clip.none,
    double elevation = 0.0,
    required ui.Color color,
    ui.Color shadowColor = const ui.Color(0xFF000000),
    _i1.Widget? child,
  }) : super(
          Argument({
            #key: key,
            #clipper: clipper,
            #clipBehavior: clipBehavior,
            #elevation: elevation,
            #color: color,
            #shadowColor: shadowColor,
            #child: child,
          }),
          builder: (args) => _i1.PhysicalShape(
            key: args(#key),
            clipper: args(#clipper),
            clipBehavior: args(#clipBehavior),
            elevation: args(#elevation),
            color: args(#color),
            shadowColor: args(#shadowColor),
            child: args(#child),
          ),
        );
}

final class Row extends Wrapper {
  @Goto(_i1.Row.new)
  Row(
    $ $config, {
    _i2.Key? key,
    _i4.MainAxisAlignment mainAxisAlignment = _i4.MainAxisAlignment.start,
    _i4.MainAxisSize mainAxisSize = _i4.MainAxisSize.max,
    _i4.CrossAxisAlignment crossAxisAlignment = _i4.CrossAxisAlignment.center,
    ui.TextDirection? textDirection,
    _i5.VerticalDirection verticalDirection = _i5.VerticalDirection.down,
    ui.TextBaseline? textBaseline,
    List<_i1.Widget> children = const [],
  }) : super(
          Argument({
            #key: key,
            #mainAxisAlignment: mainAxisAlignment,
            #mainAxisSize: mainAxisSize,
            #crossAxisAlignment: crossAxisAlignment,
            #textDirection: textDirection,
            #verticalDirection: verticalDirection,
            #textBaseline: textBaseline,
            #children: children,
          }),
          builder: (args) => _i1.Row(
            key: args(#key),
            mainAxisAlignment: args(#mainAxisAlignment),
            mainAxisSize: args(#mainAxisSize),
            crossAxisAlignment: args(#crossAxisAlignment),
            textDirection: args(#textDirection),
            verticalDirection: args(#verticalDirection),
            textBaseline: args(#textBaseline),
            children: args(#children),
          ),
        );
}

final class Expanded extends Wrapper {
  @Goto(_i1.Expanded.new)
  Expanded(
    $ $config, {
    _i2.Key? key,
    int flex = 1,
    required _i1.Widget child,
  }) : super(
          Argument({
            #key: key,
            #flex: flex,
            #child: child,
          }),
          builder: (args) => _i1.Expanded(
            key: args(#key),
            flex: args(#flex),
            child: args(#child),
          ),
        );
}

final class MergeSemantics extends Wrapper {
  @Goto(_i1.MergeSemantics.new)
  MergeSemantics(
    $ $config, {
    _i2.Key? key,
    _i1.Widget? child,
  }) : super(
          Argument({
            #key: key,
            #child: child,
          }),
          builder: (args) => _i1.MergeSemantics(
            key: args(#key),
            child: args(#child),
          ),
        );
}

final class RepaintBoundary extends Wrapper {
  @Goto(_i1.RepaintBoundary.new)
  RepaintBoundary(
    $ $config, {
    _i2.Key? key,
    _i1.Widget? child,
  }) : super(
          Argument({
            #key: key,
            #child: child,
          }),
          builder: (args) => _i1.RepaintBoundary(
            key: args(#key),
            child: args(#child),
          ),
        );

  @Goto(_i1.RepaintBoundary.wrap)
  RepaintBoundary.wrap(
    $ $config,
    _i1.Widget child,
    int childIndex,
  ) : super(
          Argument({
            #child: child,
            #childIndex: childIndex,
          }),
          builder: (args) => _i1.RepaintBoundary.wrap(
            args(#child),
            args(#childIndex),
          ),
        );
}

final class RawImage extends Wrapper {
  @Goto(_i1.RawImage.new)
  RawImage(
    $ $config, {
    _i2.Key? key,
    ui.Image? image,
    String? debugImageLabel,
    double? width,
    double? height,
    double scale = 1.0,
    ui.Color? color,
    _i7.Animation<double>? opacity,
    ui.BlendMode? colorBlendMode,
    _i5.BoxFit? fit,
    _i5.AlignmentGeometry alignment = _i5.Alignment.center,
    _i5.ImageRepeat repeat = _i5.ImageRepeat.noRepeat,
    ui.Rect? centerSlice,
    bool matchTextDirection = false,
    bool invertColors = false,
    ui.FilterQuality filterQuality = ui.FilterQuality.medium,
    bool isAntiAlias = false,
  }) : super(
          Argument({
            #key: key,
            #image: image,
            #debugImageLabel: debugImageLabel,
            #width: width,
            #height: height,
            #scale: scale,
            #color: color,
            #opacity: opacity,
            #colorBlendMode: colorBlendMode,
            #fit: fit,
            #alignment: alignment,
            #repeat: repeat,
            #centerSlice: centerSlice,
            #matchTextDirection: matchTextDirection,
            #invertColors: invertColors,
            #filterQuality: filterQuality,
            #isAntiAlias: isAntiAlias,
          }),
          builder: (args) => _i1.RawImage(
            key: args(#key),
            image: args(#image),
            debugImageLabel: args(#debugImageLabel),
            width: args(#width),
            height: args(#height),
            scale: args(#scale),
            color: args(#color),
            opacity: args(#opacity),
            colorBlendMode: args(#colorBlendMode),
            fit: args(#fit),
            alignment: args(#alignment),
            repeat: args(#repeat),
            centerSlice: args(#centerSlice),
            matchTextDirection: args(#matchTextDirection),
            invertColors: args(#invertColors),
            filterQuality: args(#filterQuality),
            isAntiAlias: args(#isAntiAlias),
          ),
        );
}

final class Padding extends Wrapper {
  @Goto(_i1.Padding.new)
  Padding(
    $ $config, {
    _i2.Key? key,
    required _i5.EdgeInsetsGeometry padding,
    _i1.Widget? child,
  }) : super(
          Argument({
            #key: key,
            #padding: padding,
            #child: child,
          }),
          builder: (args) => _i1.Padding(
            key: args(#key),
            padding: args(#padding),
            child: args(#child),
          ),
        );
}

final class IntrinsicHeight extends Wrapper {
  @Goto(_i1.IntrinsicHeight.new)
  IntrinsicHeight(
    $ $config, {
    _i2.Key? key,
    _i1.Widget? child,
  }) : super(
          Argument({
            #key: key,
            #child: child,
          }),
          builder: (args) => _i1.IntrinsicHeight(
            key: args(#key),
            child: args(#child),
          ),
        );
}

final class Offstage extends Wrapper {
  @Goto(_i1.Offstage.new)
  Offstage(
    $ $config, {
    _i2.Key? key,
    bool offstage = true,
    _i1.Widget? child,
  }) : super(
          Argument({
            #key: key,
            #offstage: offstage,
            #child: child,
          }),
          builder: (args) => _i1.Offstage(
            key: args(#key),
            offstage: args(#offstage),
            child: args(#child),
          ),
        );
}

final class CustomSingleChildLayout extends Wrapper {
  @Goto(_i1.CustomSingleChildLayout.new)
  CustomSingleChildLayout(
    $ $config, {
    _i2.Key? key,
    required _i4.SingleChildLayoutDelegate delegate,
    _i1.Widget? child,
  }) : super(
          Argument({
            #key: key,
            #delegate: delegate,
            #child: child,
          }),
          builder: (args) => _i1.CustomSingleChildLayout(
            key: args(#key),
            delegate: args(#delegate),
            child: args(#child),
          ),
        );
}
