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
  RotatedBox({
    _i2.Key? key,
    required int quarterTurns,
    _i1.Widget? child,
    // Associate with key
    Stream<_i2.Key?>? $key,
    // Associate with quarterTurns
    Stream<int>? $quarterTurns,
    // Associate with child
    Stream<_i1.Widget?>? $child,
  }) : super(
          Argument(
            {
              'key': key,
              'quarterTurns': quarterTurns,
              'child': child,
            },
            stream: {
              'key': $key,
              'quarterTurns': $quarterTurns,
              'child': $child,
            },
          ),
          builder: (args) => _i1.RotatedBox(
            key: args('key'),
            quarterTurns: args('quarterTurns'),
            child: args('child'),
          ),
        );
}

final class MouseRegion extends Wrapper {
  @Goto(_i1.MouseRegion.new)
  MouseRegion({
    _i2.Key? key,
    _i3.PointerEnterEventListener? onEnter,
    _i3.PointerExitEventListener? onExit,
    _i3.PointerHoverEventListener? onHover,
    _i3.MouseCursor cursor = _i3.MouseCursor.defer,
    bool opaque = true,
    _i4.HitTestBehavior? hitTestBehavior,
    _i1.Widget? child,
    // Associate with key
    Stream<_i2.Key?>? $key,
    // Associate with onEnter
    Stream<_i3.PointerEnterEventListener?>? $onEnter,
    // Associate with onExit
    Stream<_i3.PointerExitEventListener?>? $onExit,
    // Associate with onHover
    Stream<_i3.PointerHoverEventListener?>? $onHover,
    // Associate with cursor
    Stream<_i3.MouseCursor>? $cursor,
    // Associate with opaque
    Stream<bool>? $opaque,
    // Associate with hitTestBehavior
    Stream<_i4.HitTestBehavior?>? $hitTestBehavior,
    // Associate with child
    Stream<_i1.Widget?>? $child,
  }) : super(
          Argument(
            {
              'key': key,
              'onEnter': onEnter,
              'onExit': onExit,
              'onHover': onHover,
              'cursor': cursor,
              'opaque': opaque,
              'hitTestBehavior': hitTestBehavior,
              'child': child,
            },
            stream: {
              'key': $key,
              'onEnter': $onEnter,
              'onExit': $onExit,
              'onHover': $onHover,
              'cursor': $cursor,
              'opaque': $opaque,
              'hitTestBehavior': $hitTestBehavior,
              'child': $child,
            },
          ),
          builder: (args) => _i1.MouseRegion(
            key: args('key'),
            onEnter: args('onEnter'),
            onExit: args('onExit'),
            onHover: args('onHover'),
            cursor: args('cursor'),
            opaque: args('opaque'),
            hitTestBehavior: args('hitTestBehavior'),
            child: args('child'),
          ),
        );
}

final class ClipPath extends Wrapper {
  @Goto(_i1.ClipPath.new)
  ClipPath({
    _i2.Key? key,
    _i4.CustomClipper<ui.Path>? clipper,
    ui.Clip clipBehavior = ui.Clip.antiAlias,
    _i1.Widget? child,
    // Associate with key
    Stream<_i2.Key?>? $key,
    // Associate with clipper
    Stream<_i4.CustomClipper<ui.Path>?>? $clipper,
    // Associate with clipBehavior
    Stream<ui.Clip>? $clipBehavior,
    // Associate with child
    Stream<_i1.Widget?>? $child,
  }) : super(
          Argument(
            {
              'key': key,
              'clipper': clipper,
              'clipBehavior': clipBehavior,
              'child': child,
            },
            stream: {
              'key': $key,
              'clipper': $clipper,
              'clipBehavior': $clipBehavior,
              'child': $child,
            },
          ),
          builder: (args) => _i1.ClipPath(
            key: args('key'),
            clipper: args('clipper'),
            clipBehavior: args('clipBehavior'),
            child: args('child'),
          ),
        );
}

final class ConstraintsTransformBox extends Wrapper {
  @Goto(_i1.ConstraintsTransformBox.new)
  ConstraintsTransformBox({
    _i2.Key? key,
    _i1.Widget? child,
    ui.TextDirection? textDirection,
    _i5.AlignmentGeometry alignment = _i5.Alignment.center,
    required _i4.BoxConstraintsTransform constraintsTransform,
    ui.Clip clipBehavior = ui.Clip.none,
    String debugTransformType = '',
    // Associate with key
    Stream<_i2.Key?>? $key,
    // Associate with child
    Stream<_i1.Widget?>? $child,
    // Associate with textDirection
    Stream<ui.TextDirection?>? $textDirection,
    // Associate with alignment
    Stream<_i5.AlignmentGeometry>? $alignment,
    // Associate with constraintsTransform
    Stream<_i4.BoxConstraintsTransform>? $constraintsTransform,
    // Associate with clipBehavior
    Stream<ui.Clip>? $clipBehavior,
    // Associate with debugTransformType
    Stream<String>? $debugTransformType,
  }) : super(
          Argument(
            {
              'key': key,
              'child': child,
              'textDirection': textDirection,
              'alignment': alignment,
              'constraintsTransform': constraintsTransform,
              'clipBehavior': clipBehavior,
              'debugTransformType': debugTransformType,
            },
            stream: {
              'key': $key,
              'child': $child,
              'textDirection': $textDirection,
              'alignment': $alignment,
              'constraintsTransform': $constraintsTransform,
              'clipBehavior': $clipBehavior,
              'debugTransformType': $debugTransformType,
            },
          ),
          builder: (args) => _i1.ConstraintsTransformBox(
            key: args('key'),
            child: args('child'),
            textDirection: args('textDirection'),
            alignment: args('alignment'),
            constraintsTransform: args('constraintsTransform'),
            clipBehavior: args('clipBehavior'),
            debugTransformType: args('debugTransformType'),
          ),
        );
}

final class UnconstrainedBox extends Wrapper {
  @Goto(_i1.UnconstrainedBox.new)
  UnconstrainedBox({
    _i2.Key? key,
    _i1.Widget? child,
    ui.TextDirection? textDirection,
    _i5.AlignmentGeometry alignment = _i5.Alignment.center,
    _i5.Axis? constrainedAxis,
    ui.Clip clipBehavior = ui.Clip.none,
    // Associate with key
    Stream<_i2.Key?>? $key,
    // Associate with child
    Stream<_i1.Widget?>? $child,
    // Associate with textDirection
    Stream<ui.TextDirection?>? $textDirection,
    // Associate with alignment
    Stream<_i5.AlignmentGeometry>? $alignment,
    // Associate with constrainedAxis
    Stream<_i5.Axis?>? $constrainedAxis,
    // Associate with clipBehavior
    Stream<ui.Clip>? $clipBehavior,
  }) : super(
          Argument(
            {
              'key': key,
              'child': child,
              'textDirection': textDirection,
              'alignment': alignment,
              'constrainedAxis': constrainedAxis,
              'clipBehavior': clipBehavior,
            },
            stream: {
              'key': $key,
              'child': $child,
              'textDirection': $textDirection,
              'alignment': $alignment,
              'constrainedAxis': $constrainedAxis,
              'clipBehavior': $clipBehavior,
            },
          ),
          builder: (args) => _i1.UnconstrainedBox(
            key: args('key'),
            child: args('child'),
            textDirection: args('textDirection'),
            alignment: args('alignment'),
            constrainedAxis: args('constrainedAxis'),
            clipBehavior: args('clipBehavior'),
          ),
        );
}

final class BlockSemantics extends Wrapper {
  @Goto(_i1.BlockSemantics.new)
  BlockSemantics({
    _i2.Key? key,
    bool blocking = true,
    _i1.Widget? child,
    // Associate with key
    Stream<_i2.Key?>? $key,
    // Associate with blocking
    Stream<bool>? $blocking,
    // Associate with child
    Stream<_i1.Widget?>? $child,
  }) : super(
          Argument(
            {
              'key': key,
              'blocking': blocking,
              'child': child,
            },
            stream: {
              'key': $key,
              'blocking': $blocking,
              'child': $child,
            },
          ),
          builder: (args) => _i1.BlockSemantics(
            key: args('key'),
            blocking: args('blocking'),
            child: args('child'),
          ),
        );
}

final class ColoredBox extends Wrapper {
  @Goto(_i1.ColoredBox.new)
  ColoredBox({
    required ui.Color color,
    _i1.Widget? child,
    _i2.Key? key,
    // Associate with color
    Stream<ui.Color>? $color,
    // Associate with child
    Stream<_i1.Widget?>? $child,
    // Associate with key
    Stream<_i2.Key?>? $key,
  }) : super(
          Argument(
            {
              'color': color,
              'child': child,
              'key': key,
            },
            stream: {
              'color': $color,
              'child': $child,
              'key': $key,
            },
          ),
          builder: (args) => _i1.ColoredBox(
            color: args('color'),
            child: args('child'),
            key: args('key'),
          ),
        );
}

final class FractionalTranslation extends Wrapper {
  @Goto(_i1.FractionalTranslation.new)
  FractionalTranslation({
    _i2.Key? key,
    required ui.Offset translation,
    bool transformHitTests = true,
    _i1.Widget? child,
    // Associate with key
    Stream<_i2.Key?>? $key,
    // Associate with translation
    Stream<ui.Offset>? $translation,
    // Associate with transformHitTests
    Stream<bool>? $transformHitTests,
    // Associate with child
    Stream<_i1.Widget?>? $child,
  }) : super(
          Argument(
            {
              'key': key,
              'translation': translation,
              'transformHitTests': transformHitTests,
              'child': child,
            },
            stream: {
              'key': $key,
              'translation': $translation,
              'transformHitTests': $transformHitTests,
              'child': $child,
            },
          ),
          builder: (args) => _i1.FractionalTranslation(
            key: args('key'),
            translation: args('translation'),
            transformHitTests: args('transformHitTests'),
            child: args('child'),
          ),
        );
}

final class SizedOverflowBox extends Wrapper {
  @Goto(_i1.SizedOverflowBox.new)
  SizedOverflowBox({
    _i2.Key? key,
    required ui.Size size,
    _i5.AlignmentGeometry alignment = _i5.Alignment.center,
    _i1.Widget? child,
    // Associate with key
    Stream<_i2.Key?>? $key,
    // Associate with size
    Stream<ui.Size>? $size,
    // Associate with alignment
    Stream<_i5.AlignmentGeometry>? $alignment,
    // Associate with child
    Stream<_i1.Widget?>? $child,
  }) : super(
          Argument(
            {
              'key': key,
              'size': size,
              'alignment': alignment,
              'child': child,
            },
            stream: {
              'key': $key,
              'size': $size,
              'alignment': $alignment,
              'child': $child,
            },
          ),
          builder: (args) => _i1.SizedOverflowBox(
            key: args('key'),
            size: args('size'),
            alignment: args('alignment'),
            child: args('child'),
          ),
        );
}

final class SizedBox extends Wrapper {
  @Goto(_i1.SizedBox.new)
  SizedBox({
    _i2.Key? key,
    double? width,
    double? height,
    _i1.Widget? child,
    // Associate with key
    Stream<_i2.Key?>? $key,
    // Associate with width
    Stream<double?>? $width,
    // Associate with height
    Stream<double?>? $height,
    // Associate with child
    Stream<_i1.Widget?>? $child,
  }) : super(
          Argument(
            {
              'key': key,
              'width': width,
              'height': height,
              'child': child,
            },
            stream: {
              'key': $key,
              'width': $width,
              'height': $height,
              'child': $child,
            },
          ),
          builder: (args) => _i1.SizedBox(
            key: args('key'),
            width: args('width'),
            height: args('height'),
            child: args('child'),
          ),
        );

  @Goto(_i1.SizedBox.expand)
  SizedBox.expand({
    _i2.Key? key,
    _i1.Widget? child,
    // Associate with key
    Stream<_i2.Key?>? $key,
    // Associate with child
    Stream<_i1.Widget?>? $child,
  }) : super(
          Argument(
            {
              'key': key,
              'child': child,
            },
            stream: {
              'key': $key,
              'child': $child,
            },
          ),
          builder: (args) => _i1.SizedBox.expand(
            key: args('key'),
            child: args('child'),
          ),
        );

  @Goto(_i1.SizedBox.shrink)
  SizedBox.shrink({
    _i2.Key? key,
    _i1.Widget? child,
    // Associate with key
    Stream<_i2.Key?>? $key,
    // Associate with child
    Stream<_i1.Widget?>? $child,
  }) : super(
          Argument(
            {
              'key': key,
              'child': child,
            },
            stream: {
              'key': $key,
              'child': $child,
            },
          ),
          builder: (args) => _i1.SizedBox.shrink(
            key: args('key'),
            child: args('child'),
          ),
        );

  @Goto(_i1.SizedBox.fromSize)
  SizedBox.fromSize({
    _i2.Key? key,
    _i1.Widget? child,
    ui.Size? size,
    // Associate with key
    Stream<_i2.Key?>? $key,
    // Associate with child
    Stream<_i1.Widget?>? $child,
    // Associate with size
    Stream<ui.Size?>? $size,
  }) : super(
          Argument(
            {
              'key': key,
              'child': child,
              'size': size,
            },
            stream: {
              'key': $key,
              'child': $child,
              'size': $size,
            },
          ),
          builder: (args) => _i1.SizedBox.fromSize(
            key: args('key'),
            child: args('child'),
            size: args('size'),
          ),
        );

  @Goto(_i1.SizedBox.square)
  SizedBox.square({
    _i2.Key? key,
    _i1.Widget? child,
    double? dimension,
    // Associate with key
    Stream<_i2.Key?>? $key,
    // Associate with child
    Stream<_i1.Widget?>? $child,
    // Associate with dimension
    Stream<double?>? $dimension,
  }) : super(
          Argument(
            {
              'key': key,
              'child': child,
              'dimension': dimension,
            },
            stream: {
              'key': $key,
              'child': $child,
              'dimension': $dimension,
            },
          ),
          builder: (args) => _i1.SizedBox.square(
            key: args('key'),
            child: args('child'),
            dimension: args('dimension'),
          ),
        );
}

final class WidgetToRenderBoxAdapter extends Wrapper {
  @Goto(_i1.WidgetToRenderBoxAdapter.new)
  WidgetToRenderBoxAdapter({
    required _i4.RenderBox renderBox,
    ui.VoidCallback? onBuild,
    ui.VoidCallback? onUnmount,
    // Associate with renderBox
    Stream<_i4.RenderBox>? $renderBox,
    // Associate with onBuild
    Stream<ui.VoidCallback?>? $onBuild,
    // Associate with onUnmount
    Stream<ui.VoidCallback?>? $onUnmount,
  }) : super(
          Argument(
            {
              'renderBox': renderBox,
              'onBuild': onBuild,
              'onUnmount': onUnmount,
            },
            stream: {
              'renderBox': $renderBox,
              'onBuild': $onBuild,
              'onUnmount': $onUnmount,
            },
          ),
          builder: (args) => _i1.WidgetToRenderBoxAdapter(
            renderBox: args('renderBox'),
            onBuild: args('onBuild'),
            onUnmount: args('onUnmount'),
          ),
        );
}

final class Align extends Wrapper {
  @Goto(_i1.Align.new)
  Align({
    _i2.Key? key,
    _i5.AlignmentGeometry alignment = _i5.Alignment.center,
    double? widthFactor,
    double? heightFactor,
    _i1.Widget? child,
    // Associate with key
    Stream<_i2.Key?>? $key,
    // Associate with alignment
    Stream<_i5.AlignmentGeometry>? $alignment,
    // Associate with widthFactor
    Stream<double?>? $widthFactor,
    // Associate with heightFactor
    Stream<double?>? $heightFactor,
    // Associate with child
    Stream<_i1.Widget?>? $child,
  }) : super(
          Argument(
            {
              'key': key,
              'alignment': alignment,
              'widthFactor': widthFactor,
              'heightFactor': heightFactor,
              'child': child,
            },
            stream: {
              'key': $key,
              'alignment': $alignment,
              'widthFactor': $widthFactor,
              'heightFactor': $heightFactor,
              'child': $child,
            },
          ),
          builder: (args) => _i1.Align(
            key: args('key'),
            alignment: args('alignment'),
            widthFactor: args('widthFactor'),
            heightFactor: args('heightFactor'),
            child: args('child'),
          ),
        );
}

final class AbsorbPointer extends Wrapper {
  @Goto(_i1.AbsorbPointer.new)
  AbsorbPointer({
    _i2.Key? key,
    bool absorbing = true,
    bool? ignoringSemantics,
    _i1.Widget? child,
    // Associate with key
    Stream<_i2.Key?>? $key,
    // Associate with absorbing
    Stream<bool>? $absorbing,
    // Associate with ignoringSemantics
    Stream<bool?>? $ignoringSemantics,
    // Associate with child
    Stream<_i1.Widget?>? $child,
  }) : super(
          Argument(
            {
              'key': key,
              'absorbing': absorbing,
              'ignoringSemantics': ignoringSemantics,
              'child': child,
            },
            stream: {
              'key': $key,
              'absorbing': $absorbing,
              'ignoringSemantics': $ignoringSemantics,
              'child': $child,
            },
          ),
          builder: (args) => _i1.AbsorbPointer(
            key: args('key'),
            absorbing: args('absorbing'),
            ignoringSemantics: args('ignoringSemantics'),
            child: args('child'),
          ),
        );
}

final class ClipRRect extends Wrapper {
  @Goto(_i1.ClipRRect.new)
  ClipRRect({
    _i2.Key? key,
    _i5.BorderRadiusGeometry borderRadius = _i5.BorderRadius.zero,
    _i4.CustomClipper<ui.RRect>? clipper,
    ui.Clip clipBehavior = ui.Clip.antiAlias,
    _i1.Widget? child,
    // Associate with key
    Stream<_i2.Key?>? $key,
    // Associate with borderRadius
    Stream<_i5.BorderRadiusGeometry>? $borderRadius,
    // Associate with clipper
    Stream<_i4.CustomClipper<ui.RRect>?>? $clipper,
    // Associate with clipBehavior
    Stream<ui.Clip>? $clipBehavior,
    // Associate with child
    Stream<_i1.Widget?>? $child,
  }) : super(
          Argument(
            {
              'key': key,
              'borderRadius': borderRadius,
              'clipper': clipper,
              'clipBehavior': clipBehavior,
              'child': child,
            },
            stream: {
              'key': $key,
              'borderRadius': $borderRadius,
              'clipper': $clipper,
              'clipBehavior': $clipBehavior,
              'child': $child,
            },
          ),
          builder: (args) => _i1.ClipRRect(
            key: args('key'),
            borderRadius: args('borderRadius'),
            clipper: args('clipper'),
            clipBehavior: args('clipBehavior'),
            child: args('child'),
          ),
        );
}

final class AspectRatio extends Wrapper {
  @Goto(_i1.AspectRatio.new)
  AspectRatio({
    _i2.Key? key,
    required double aspectRatio,
    _i1.Widget? child,
    // Associate with key
    Stream<_i2.Key?>? $key,
    // Associate with aspectRatio
    Stream<double>? $aspectRatio,
    // Associate with child
    Stream<_i1.Widget?>? $child,
  }) : super(
          Argument(
            {
              'key': key,
              'aspectRatio': aspectRatio,
              'child': child,
            },
            stream: {
              'key': $key,
              'aspectRatio': $aspectRatio,
              'child': $child,
            },
          ),
          builder: (args) => _i1.AspectRatio(
            key: args('key'),
            aspectRatio: args('aspectRatio'),
            child: args('child'),
          ),
        );
}

final class IndexedStack extends Wrapper {
  @Goto(_i1.IndexedStack.new)
  IndexedStack({
    _i2.Key? key,
    _i5.AlignmentGeometry alignment = _i5.AlignmentDirectional.topStart,
    ui.TextDirection? textDirection,
    ui.Clip clipBehavior = ui.Clip.hardEdge,
    _i4.StackFit sizing = _i4.StackFit.loose,
    int? index = 0,
    List<_i1.Widget> children = const [],
    // Associate with key
    Stream<_i2.Key?>? $key,
    // Associate with alignment
    Stream<_i5.AlignmentGeometry>? $alignment,
    // Associate with textDirection
    Stream<ui.TextDirection?>? $textDirection,
    // Associate with clipBehavior
    Stream<ui.Clip>? $clipBehavior,
    // Associate with sizing
    Stream<_i4.StackFit>? $sizing,
    // Associate with index
    Stream<int?>? $index,
    // Associate with children
    Stream<List<_i1.Widget>>? $children,
  }) : super(
          Argument(
            {
              'key': key,
              'alignment': alignment,
              'textDirection': textDirection,
              'clipBehavior': clipBehavior,
              'sizing': sizing,
              'index': index,
              'children': children,
            },
            stream: {
              'key': $key,
              'alignment': $alignment,
              'textDirection': $textDirection,
              'clipBehavior': $clipBehavior,
              'sizing': $sizing,
              'index': $index,
              'children': $children,
            },
          ),
          builder: (args) => _i1.IndexedStack(
            key: args('key'),
            alignment: args('alignment'),
            textDirection: args('textDirection'),
            clipBehavior: args('clipBehavior'),
            sizing: args('sizing'),
            index: args('index'),
            children: args('children'),
          ),
        );
}

final class Column extends Wrapper {
  @Goto(_i1.Column.new)
  Column({
    _i2.Key? key,
    _i4.MainAxisAlignment mainAxisAlignment = _i4.MainAxisAlignment.start,
    _i4.MainAxisSize mainAxisSize = _i4.MainAxisSize.max,
    _i4.CrossAxisAlignment crossAxisAlignment = _i4.CrossAxisAlignment.center,
    ui.TextDirection? textDirection,
    _i5.VerticalDirection verticalDirection = _i5.VerticalDirection.down,
    ui.TextBaseline? textBaseline,
    List<_i1.Widget> children = const [],
    // Associate with key
    Stream<_i2.Key?>? $key,
    // Associate with mainAxisAlignment
    Stream<_i4.MainAxisAlignment>? $mainAxisAlignment,
    // Associate with mainAxisSize
    Stream<_i4.MainAxisSize>? $mainAxisSize,
    // Associate with crossAxisAlignment
    Stream<_i4.CrossAxisAlignment>? $crossAxisAlignment,
    // Associate with textDirection
    Stream<ui.TextDirection?>? $textDirection,
    // Associate with verticalDirection
    Stream<_i5.VerticalDirection>? $verticalDirection,
    // Associate with textBaseline
    Stream<ui.TextBaseline?>? $textBaseline,
    // Associate with children
    Stream<List<_i1.Widget>>? $children,
  }) : super(
          Argument(
            {
              'key': key,
              'mainAxisAlignment': mainAxisAlignment,
              'mainAxisSize': mainAxisSize,
              'crossAxisAlignment': crossAxisAlignment,
              'textDirection': textDirection,
              'verticalDirection': verticalDirection,
              'textBaseline': textBaseline,
              'children': children,
            },
            stream: {
              'key': $key,
              'mainAxisAlignment': $mainAxisAlignment,
              'mainAxisSize': $mainAxisSize,
              'crossAxisAlignment': $crossAxisAlignment,
              'textDirection': $textDirection,
              'verticalDirection': $verticalDirection,
              'textBaseline': $textBaseline,
              'children': $children,
            },
          ),
          builder: (args) => _i1.Column(
            key: args('key'),
            mainAxisAlignment: args('mainAxisAlignment'),
            mainAxisSize: args('mainAxisSize'),
            crossAxisAlignment: args('crossAxisAlignment'),
            textDirection: args('textDirection'),
            verticalDirection: args('verticalDirection'),
            textBaseline: args('textBaseline'),
            children: args('children'),
          ),
        );
}

final class BackdropFilter extends Wrapper {
  @Goto(_i1.BackdropFilter.new)
  BackdropFilter({
    _i2.Key? key,
    required ui.ImageFilter filter,
    _i1.Widget? child,
    ui.BlendMode blendMode = ui.BlendMode.srcOver,
    // Associate with key
    Stream<_i2.Key?>? $key,
    // Associate with filter
    Stream<ui.ImageFilter>? $filter,
    // Associate with child
    Stream<_i1.Widget?>? $child,
    // Associate with blendMode
    Stream<ui.BlendMode>? $blendMode,
  }) : super(
          Argument(
            {
              'key': key,
              'filter': filter,
              'child': child,
              'blendMode': blendMode,
            },
            stream: {
              'key': $key,
              'filter': $filter,
              'child': $child,
              'blendMode': $blendMode,
            },
          ),
          builder: (args) => _i1.BackdropFilter(
            key: args('key'),
            filter: args('filter'),
            child: args('child'),
            blendMode: args('blendMode'),
          ),
        );
}

final class Transform extends Wrapper {
  @Goto(_i1.Transform.new)
  Transform({
    _i2.Key? key,
    required _i4.Matrix4 transform,
    ui.Offset? origin,
    _i5.AlignmentGeometry? alignment,
    bool transformHitTests = true,
    ui.FilterQuality? filterQuality,
    _i1.Widget? child,
    // Associate with key
    Stream<_i2.Key?>? $key,
    // Associate with transform
    Stream<_i4.Matrix4>? $transform,
    // Associate with origin
    Stream<ui.Offset?>? $origin,
    // Associate with alignment
    Stream<_i5.AlignmentGeometry?>? $alignment,
    // Associate with transformHitTests
    Stream<bool>? $transformHitTests,
    // Associate with filterQuality
    Stream<ui.FilterQuality?>? $filterQuality,
    // Associate with child
    Stream<_i1.Widget?>? $child,
  }) : super(
          Argument(
            {
              'key': key,
              'transform': transform,
              'origin': origin,
              'alignment': alignment,
              'transformHitTests': transformHitTests,
              'filterQuality': filterQuality,
              'child': child,
            },
            stream: {
              'key': $key,
              'transform': $transform,
              'origin': $origin,
              'alignment': $alignment,
              'transformHitTests': $transformHitTests,
              'filterQuality': $filterQuality,
              'child': $child,
            },
          ),
          builder: (args) => _i1.Transform(
            key: args('key'),
            transform: args('transform'),
            origin: args('origin'),
            alignment: args('alignment'),
            transformHitTests: args('transformHitTests'),
            filterQuality: args('filterQuality'),
            child: args('child'),
          ),
        );

  @Goto(_i1.Transform.rotate)
  Transform.rotate({
    _i2.Key? key,
    required double angle,
    ui.Offset? origin,
    _i5.AlignmentGeometry? alignment = _i5.Alignment.center,
    bool transformHitTests = true,
    ui.FilterQuality? filterQuality,
    _i1.Widget? child,
    // Associate with key
    Stream<_i2.Key?>? $key,
    // Associate with angle
    Stream<double>? $angle,
    // Associate with origin
    Stream<ui.Offset?>? $origin,
    // Associate with alignment
    Stream<_i5.AlignmentGeometry?>? $alignment,
    // Associate with transformHitTests
    Stream<bool>? $transformHitTests,
    // Associate with filterQuality
    Stream<ui.FilterQuality?>? $filterQuality,
    // Associate with child
    Stream<_i1.Widget?>? $child,
  }) : super(
          Argument(
            {
              'key': key,
              'angle': angle,
              'origin': origin,
              'alignment': alignment,
              'transformHitTests': transformHitTests,
              'filterQuality': filterQuality,
              'child': child,
            },
            stream: {
              'key': $key,
              'angle': $angle,
              'origin': $origin,
              'alignment': $alignment,
              'transformHitTests': $transformHitTests,
              'filterQuality': $filterQuality,
              'child': $child,
            },
          ),
          builder: (args) => _i1.Transform.rotate(
            key: args('key'),
            angle: args('angle'),
            origin: args('origin'),
            alignment: args('alignment'),
            transformHitTests: args('transformHitTests'),
            filterQuality: args('filterQuality'),
            child: args('child'),
          ),
        );

  @Goto(_i1.Transform.translate)
  Transform.translate({
    _i2.Key? key,
    required ui.Offset offset,
    bool transformHitTests = true,
    ui.FilterQuality? filterQuality,
    _i1.Widget? child,
    // Associate with key
    Stream<_i2.Key?>? $key,
    // Associate with offset
    Stream<ui.Offset>? $offset,
    // Associate with transformHitTests
    Stream<bool>? $transformHitTests,
    // Associate with filterQuality
    Stream<ui.FilterQuality?>? $filterQuality,
    // Associate with child
    Stream<_i1.Widget?>? $child,
  }) : super(
          Argument(
            {
              'key': key,
              'offset': offset,
              'transformHitTests': transformHitTests,
              'filterQuality': filterQuality,
              'child': child,
            },
            stream: {
              'key': $key,
              'offset': $offset,
              'transformHitTests': $transformHitTests,
              'filterQuality': $filterQuality,
              'child': $child,
            },
          ),
          builder: (args) => _i1.Transform.translate(
            key: args('key'),
            offset: args('offset'),
            transformHitTests: args('transformHitTests'),
            filterQuality: args('filterQuality'),
            child: args('child'),
          ),
        );

  @Goto(_i1.Transform.scale)
  Transform.scale({
    _i2.Key? key,
    double? scale,
    double? scaleX,
    double? scaleY,
    ui.Offset? origin,
    _i5.AlignmentGeometry? alignment = _i5.Alignment.center,
    bool transformHitTests = true,
    ui.FilterQuality? filterQuality,
    _i1.Widget? child,
    // Associate with key
    Stream<_i2.Key?>? $key,
    // Associate with scale
    Stream<double?>? $scale,
    // Associate with scaleX
    Stream<double?>? $scaleX,
    // Associate with scaleY
    Stream<double?>? $scaleY,
    // Associate with origin
    Stream<ui.Offset?>? $origin,
    // Associate with alignment
    Stream<_i5.AlignmentGeometry?>? $alignment,
    // Associate with transformHitTests
    Stream<bool>? $transformHitTests,
    // Associate with filterQuality
    Stream<ui.FilterQuality?>? $filterQuality,
    // Associate with child
    Stream<_i1.Widget?>? $child,
  }) : super(
          Argument(
            {
              'key': key,
              'scale': scale,
              'scaleX': scaleX,
              'scaleY': scaleY,
              'origin': origin,
              'alignment': alignment,
              'transformHitTests': transformHitTests,
              'filterQuality': filterQuality,
              'child': child,
            },
            stream: {
              'key': $key,
              'scale': $scale,
              'scaleX': $scaleX,
              'scaleY': $scaleY,
              'origin': $origin,
              'alignment': $alignment,
              'transformHitTests': $transformHitTests,
              'filterQuality': $filterQuality,
              'child': $child,
            },
          ),
          builder: (args) => _i1.Transform.scale(
            key: args('key'),
            scale: args('scale'),
            scaleX: args('scaleX'),
            scaleY: args('scaleY'),
            origin: args('origin'),
            alignment: args('alignment'),
            transformHitTests: args('transformHitTests'),
            filterQuality: args('filterQuality'),
            child: args('child'),
          ),
        );

  @Goto(_i1.Transform.flip)
  Transform.flip({
    _i2.Key? key,
    bool flipX = false,
    bool flipY = false,
    ui.Offset? origin,
    bool transformHitTests = true,
    ui.FilterQuality? filterQuality,
    _i1.Widget? child,
    // Associate with key
    Stream<_i2.Key?>? $key,
    // Associate with flipX
    Stream<bool>? $flipX,
    // Associate with flipY
    Stream<bool>? $flipY,
    // Associate with origin
    Stream<ui.Offset?>? $origin,
    // Associate with transformHitTests
    Stream<bool>? $transformHitTests,
    // Associate with filterQuality
    Stream<ui.FilterQuality?>? $filterQuality,
    // Associate with child
    Stream<_i1.Widget?>? $child,
  }) : super(
          Argument(
            {
              'key': key,
              'flipX': flipX,
              'flipY': flipY,
              'origin': origin,
              'transformHitTests': transformHitTests,
              'filterQuality': filterQuality,
              'child': child,
            },
            stream: {
              'key': $key,
              'flipX': $flipX,
              'flipY': $flipY,
              'origin': $origin,
              'transformHitTests': $transformHitTests,
              'filterQuality': $filterQuality,
              'child': $child,
            },
          ),
          builder: (args) => _i1.Transform.flip(
            key: args('key'),
            flipX: args('flipX'),
            flipY: args('flipY'),
            origin: args('origin'),
            transformHitTests: args('transformHitTests'),
            filterQuality: args('filterQuality'),
            child: args('child'),
          ),
        );
}

final class FittedBox extends Wrapper {
  @Goto(_i1.FittedBox.new)
  FittedBox({
    _i2.Key? key,
    _i5.BoxFit fit = _i5.BoxFit.contain,
    _i5.AlignmentGeometry alignment = _i5.Alignment.center,
    ui.Clip clipBehavior = ui.Clip.none,
    _i1.Widget? child,
    // Associate with key
    Stream<_i2.Key?>? $key,
    // Associate with fit
    Stream<_i5.BoxFit>? $fit,
    // Associate with alignment
    Stream<_i5.AlignmentGeometry>? $alignment,
    // Associate with clipBehavior
    Stream<ui.Clip>? $clipBehavior,
    // Associate with child
    Stream<_i1.Widget?>? $child,
  }) : super(
          Argument(
            {
              'key': key,
              'fit': fit,
              'alignment': alignment,
              'clipBehavior': clipBehavior,
              'child': child,
            },
            stream: {
              'key': $key,
              'fit': $fit,
              'alignment': $alignment,
              'clipBehavior': $clipBehavior,
              'child': $child,
            },
          ),
          builder: (args) => _i1.FittedBox(
            key: args('key'),
            fit: args('fit'),
            alignment: args('alignment'),
            clipBehavior: args('clipBehavior'),
            child: args('child'),
          ),
        );
}

final class IgnoreBaseline extends Wrapper {
  @Goto(_i1.IgnoreBaseline.new)
  IgnoreBaseline({
    _i2.Key? key,
    _i1.Widget? child,
    // Associate with key
    Stream<_i2.Key?>? $key,
    // Associate with child
    Stream<_i1.Widget?>? $child,
  }) : super(
          Argument(
            {
              'key': key,
              'child': child,
            },
            stream: {
              'key': $key,
              'child': $child,
            },
          ),
          builder: (args) => _i1.IgnoreBaseline(
            key: args('key'),
            child: args('child'),
          ),
        );
}

final class CompositedTransformFollower extends Wrapper {
  @Goto(_i1.CompositedTransformFollower.new)
  CompositedTransformFollower({
    _i2.Key? key,
    required _i4.LayerLink link,
    bool showWhenUnlinked = true,
    ui.Offset offset = ui.Offset.zero,
    _i5.Alignment targetAnchor = _i5.Alignment.topLeft,
    _i5.Alignment followerAnchor = _i5.Alignment.topLeft,
    _i1.Widget? child,
    // Associate with key
    Stream<_i2.Key?>? $key,
    // Associate with link
    Stream<_i4.LayerLink>? $link,
    // Associate with showWhenUnlinked
    Stream<bool>? $showWhenUnlinked,
    // Associate with offset
    Stream<ui.Offset>? $offset,
    // Associate with targetAnchor
    Stream<_i5.Alignment>? $targetAnchor,
    // Associate with followerAnchor
    Stream<_i5.Alignment>? $followerAnchor,
    // Associate with child
    Stream<_i1.Widget?>? $child,
  }) : super(
          Argument(
            {
              'key': key,
              'link': link,
              'showWhenUnlinked': showWhenUnlinked,
              'offset': offset,
              'targetAnchor': targetAnchor,
              'followerAnchor': followerAnchor,
              'child': child,
            },
            stream: {
              'key': $key,
              'link': $link,
              'showWhenUnlinked': $showWhenUnlinked,
              'offset': $offset,
              'targetAnchor': $targetAnchor,
              'followerAnchor': $followerAnchor,
              'child': $child,
            },
          ),
          builder: (args) => _i1.CompositedTransformFollower(
            key: args('key'),
            link: args('link'),
            showWhenUnlinked: args('showWhenUnlinked'),
            offset: args('offset'),
            targetAnchor: args('targetAnchor'),
            followerAnchor: args('followerAnchor'),
            child: args('child'),
          ),
        );
}

final class ClipOval extends Wrapper {
  @Goto(_i1.ClipOval.new)
  ClipOval({
    _i2.Key? key,
    _i4.CustomClipper<ui.Rect>? clipper,
    ui.Clip clipBehavior = ui.Clip.antiAlias,
    _i1.Widget? child,
    // Associate with key
    Stream<_i2.Key?>? $key,
    // Associate with clipper
    Stream<_i4.CustomClipper<ui.Rect>?>? $clipper,
    // Associate with clipBehavior
    Stream<ui.Clip>? $clipBehavior,
    // Associate with child
    Stream<_i1.Widget?>? $child,
  }) : super(
          Argument(
            {
              'key': key,
              'clipper': clipper,
              'clipBehavior': clipBehavior,
              'child': child,
            },
            stream: {
              'key': $key,
              'clipper': $clipper,
              'clipBehavior': $clipBehavior,
              'child': $child,
            },
          ),
          builder: (args) => _i1.ClipOval(
            key: args('key'),
            clipper: args('clipper'),
            clipBehavior: args('clipBehavior'),
            child: args('child'),
          ),
        );
}

final class RichText extends Wrapper {
  @Goto(_i1.RichText.new)
  RichText({
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
    // Associate with key
    Stream<_i2.Key?>? $key,
    // Associate with text
    Stream<_i5.InlineSpan>? $text,
    // Associate with textAlign
    Stream<ui.TextAlign>? $textAlign,
    // Associate with textDirection
    Stream<ui.TextDirection?>? $textDirection,
    // Associate with softWrap
    Stream<bool>? $softWrap,
    // Associate with overflow
    Stream<_i5.TextOverflow>? $overflow,
    // Associate with textScaleFactor
    Stream<double>? $textScaleFactor,
    // Associate with textScaler
    Stream<_i5.TextScaler>? $textScaler,
    // Associate with maxLines
    Stream<int?>? $maxLines,
    // Associate with locale
    Stream<ui.Locale?>? $locale,
    // Associate with strutStyle
    Stream<_i5.StrutStyle?>? $strutStyle,
    // Associate with textWidthBasis
    Stream<_i5.TextWidthBasis>? $textWidthBasis,
    // Associate with textHeightBehavior
    Stream<ui.TextHeightBehavior?>? $textHeightBehavior,
    // Associate with selectionRegistrar
    Stream<_i4.SelectionRegistrar?>? $selectionRegistrar,
    // Associate with selectionColor
    Stream<ui.Color?>? $selectionColor,
  }) : super(
          Argument(
            {
              'key': key,
              'text': text,
              'textAlign': textAlign,
              'textDirection': textDirection,
              'softWrap': softWrap,
              'overflow': overflow,
              'textScaleFactor': textScaleFactor,
              'textScaler': textScaler,
              'maxLines': maxLines,
              'locale': locale,
              'strutStyle': strutStyle,
              'textWidthBasis': textWidthBasis,
              'textHeightBehavior': textHeightBehavior,
              'selectionRegistrar': selectionRegistrar,
              'selectionColor': selectionColor,
            },
            stream: {
              'key': $key,
              'text': $text,
              'textAlign': $textAlign,
              'textDirection': $textDirection,
              'softWrap': $softWrap,
              'overflow': $overflow,
              'textScaleFactor': $textScaleFactor,
              'textScaler': $textScaler,
              'maxLines': $maxLines,
              'locale': $locale,
              'strutStyle': $strutStyle,
              'textWidthBasis': $textWidthBasis,
              'textHeightBehavior': $textHeightBehavior,
              'selectionRegistrar': $selectionRegistrar,
              'selectionColor': $selectionColor,
            },
          ),
          builder: (args) => _i1.RichText(
            key: args('key'),
            text: args('text'),
            textAlign: args('textAlign'),
            textDirection: args('textDirection'),
            softWrap: args('softWrap'),
            overflow: args('overflow'),
            textScaleFactor: args('textScaleFactor'),
            textScaler: args('textScaler'),
            maxLines: args('maxLines'),
            locale: args('locale'),
            strutStyle: args('strutStyle'),
            textWidthBasis: args('textWidthBasis'),
            textHeightBehavior: args('textHeightBehavior'),
            selectionRegistrar: args('selectionRegistrar'),
            selectionColor: args('selectionColor'),
          ),
        );
}

final class IgnorePointer extends Wrapper {
  @Goto(_i1.IgnorePointer.new)
  IgnorePointer({
    _i2.Key? key,
    bool ignoring = true,
    bool? ignoringSemantics,
    _i1.Widget? child,
    // Associate with key
    Stream<_i2.Key?>? $key,
    // Associate with ignoring
    Stream<bool>? $ignoring,
    // Associate with ignoringSemantics
    Stream<bool?>? $ignoringSemantics,
    // Associate with child
    Stream<_i1.Widget?>? $child,
  }) : super(
          Argument(
            {
              'key': key,
              'ignoring': ignoring,
              'ignoringSemantics': ignoringSemantics,
              'child': child,
            },
            stream: {
              'key': $key,
              'ignoring': $ignoring,
              'ignoringSemantics': $ignoringSemantics,
              'child': $child,
            },
          ),
          builder: (args) => _i1.IgnorePointer(
            key: args('key'),
            ignoring: args('ignoring'),
            ignoringSemantics: args('ignoringSemantics'),
            child: args('child'),
          ),
        );
}

final class ShaderMask extends Wrapper {
  @Goto(_i1.ShaderMask.new)
  ShaderMask({
    _i2.Key? key,
    required _i4.ShaderCallback shaderCallback,
    ui.BlendMode blendMode = ui.BlendMode.modulate,
    _i1.Widget? child,
    // Associate with key
    Stream<_i2.Key?>? $key,
    // Associate with shaderCallback
    Stream<_i4.ShaderCallback>? $shaderCallback,
    // Associate with blendMode
    Stream<ui.BlendMode>? $blendMode,
    // Associate with child
    Stream<_i1.Widget?>? $child,
  }) : super(
          Argument(
            {
              'key': key,
              'shaderCallback': shaderCallback,
              'blendMode': blendMode,
              'child': child,
            },
            stream: {
              'key': $key,
              'shaderCallback': $shaderCallback,
              'blendMode': $blendMode,
              'child': $child,
            },
          ),
          builder: (args) => _i1.ShaderMask(
            key: args('key'),
            shaderCallback: args('shaderCallback'),
            blendMode: args('blendMode'),
            child: args('child'),
          ),
        );
}

final class SliverPadding extends Wrapper {
  @Goto(_i1.SliverPadding.new)
  SliverPadding({
    _i2.Key? key,
    required _i5.EdgeInsetsGeometry padding,
    _i1.Widget? sliver,
    // Associate with key
    Stream<_i2.Key?>? $key,
    // Associate with padding
    Stream<_i5.EdgeInsetsGeometry>? $padding,
    // Associate with sliver
    Stream<_i1.Widget?>? $sliver,
  }) : super(
          Argument(
            {
              'key': key,
              'padding': padding,
              'sliver': sliver,
            },
            stream: {
              'key': $key,
              'padding': $padding,
              'sliver': $sliver,
            },
          ),
          builder: (args) => _i1.SliverPadding(
            key: args('key'),
            padding: args('padding'),
            sliver: args('sliver'),
          ),
        );
}

final class CompositedTransformTarget extends Wrapper {
  @Goto(_i1.CompositedTransformTarget.new)
  CompositedTransformTarget({
    _i2.Key? key,
    required _i4.LayerLink link,
    _i1.Widget? child,
    // Associate with key
    Stream<_i2.Key?>? $key,
    // Associate with link
    Stream<_i4.LayerLink>? $link,
    // Associate with child
    Stream<_i1.Widget?>? $child,
  }) : super(
          Argument(
            {
              'key': key,
              'link': link,
              'child': child,
            },
            stream: {
              'key': $key,
              'link': $link,
              'child': $child,
            },
          ),
          builder: (args) => _i1.CompositedTransformTarget(
            key: args('key'),
            link: args('link'),
            child: args('child'),
          ),
        );
}

final class PositionedDirectional extends Wrapper {
  @Goto(_i1.PositionedDirectional.new)
  PositionedDirectional({
    _i2.Key? key,
    double? start,
    double? top,
    double? end,
    double? bottom,
    double? width,
    double? height,
    required _i1.Widget child,
    // Associate with key
    Stream<_i2.Key?>? $key,
    // Associate with start
    Stream<double?>? $start,
    // Associate with top
    Stream<double?>? $top,
    // Associate with end
    Stream<double?>? $end,
    // Associate with bottom
    Stream<double?>? $bottom,
    // Associate with width
    Stream<double?>? $width,
    // Associate with height
    Stream<double?>? $height,
    // Associate with child
    Stream<_i1.Widget>? $child,
  }) : super(
          Argument(
            {
              'key': key,
              'start': start,
              'top': top,
              'end': end,
              'bottom': bottom,
              'width': width,
              'height': height,
              'child': child,
            },
            stream: {
              'key': $key,
              'start': $start,
              'top': $top,
              'end': $end,
              'bottom': $bottom,
              'width': $width,
              'height': $height,
              'child': $child,
            },
          ),
          builder: (args) => _i1.PositionedDirectional(
            key: args('key'),
            start: args('start'),
            top: args('top'),
            end: args('end'),
            bottom: args('bottom'),
            width: args('width'),
            height: args('height'),
            child: args('child'),
          ),
        );
}

final class MetaData extends Wrapper {
  @Goto(_i1.MetaData.new)
  MetaData({
    _i2.Key? key,
    dynamic metaData,
    _i4.HitTestBehavior behavior = _i4.HitTestBehavior.deferToChild,
    _i1.Widget? child,
    // Associate with key
    Stream<_i2.Key?>? $key,
    // Associate with metaData
    Stream<dynamic>? $metaData,
    // Associate with behavior
    Stream<_i4.HitTestBehavior>? $behavior,
    // Associate with child
    Stream<_i1.Widget?>? $child,
  }) : super(
          Argument(
            {
              'key': key,
              'metaData': metaData,
              'behavior': behavior,
              'child': child,
            },
            stream: {
              'key': $key,
              'metaData': $metaData,
              'behavior': $behavior,
              'child': $child,
            },
          ),
          builder: (args) => _i1.MetaData(
            key: args('key'),
            metaData: args('metaData'),
            behavior: args('behavior'),
            child: args('child'),
          ),
        );
}

final class Semantics extends Wrapper {
  @Goto(_i1.Semantics.new)
  Semantics({
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
    // Associate with key
    Stream<_i2.Key?>? $key,
    // Associate with child
    Stream<_i1.Widget?>? $child,
    // Associate with container
    Stream<bool>? $container,
    // Associate with explicitChildNodes
    Stream<bool>? $explicitChildNodes,
    // Associate with excludeSemantics
    Stream<bool>? $excludeSemantics,
    // Associate with blockUserActions
    Stream<bool>? $blockUserActions,
    // Associate with enabled
    Stream<bool?>? $enabled,
    // Associate with checked
    Stream<bool?>? $checked,
    // Associate with mixed
    Stream<bool?>? $mixed,
    // Associate with selected
    Stream<bool?>? $selected,
    // Associate with toggled
    Stream<bool?>? $toggled,
    // Associate with button
    Stream<bool?>? $button,
    // Associate with slider
    Stream<bool?>? $slider,
    // Associate with keyboardKey
    Stream<bool?>? $keyboardKey,
    // Associate with link
    Stream<bool?>? $link,
    // Associate with header
    Stream<bool?>? $header,
    // Associate with headingLevel
    Stream<int?>? $headingLevel,
    // Associate with textField
    Stream<bool?>? $textField,
    // Associate with readOnly
    Stream<bool?>? $readOnly,
    // Associate with focusable
    Stream<bool?>? $focusable,
    // Associate with focused
    Stream<bool?>? $focused,
    // Associate with inMutuallyExclusiveGroup
    Stream<bool?>? $inMutuallyExclusiveGroup,
    // Associate with obscured
    Stream<bool?>? $obscured,
    // Associate with multiline
    Stream<bool?>? $multiline,
    // Associate with scopesRoute
    Stream<bool?>? $scopesRoute,
    // Associate with namesRoute
    Stream<bool?>? $namesRoute,
    // Associate with hidden
    Stream<bool?>? $hidden,
    // Associate with image
    Stream<bool?>? $image,
    // Associate with liveRegion
    Stream<bool?>? $liveRegion,
    // Associate with expanded
    Stream<bool?>? $expanded,
    // Associate with maxValueLength
    Stream<int?>? $maxValueLength,
    // Associate with currentValueLength
    Stream<int?>? $currentValueLength,
    // Associate with identifier
    Stream<String?>? $identifier,
    // Associate with label
    Stream<String?>? $label,
    // Associate with attributedLabel
    Stream<_i6.AttributedString?>? $attributedLabel,
    // Associate with value
    Stream<String?>? $value,
    // Associate with attributedValue
    Stream<_i6.AttributedString?>? $attributedValue,
    // Associate with increasedValue
    Stream<String?>? $increasedValue,
    // Associate with attributedIncreasedValue
    Stream<_i6.AttributedString?>? $attributedIncreasedValue,
    // Associate with decreasedValue
    Stream<String?>? $decreasedValue,
    // Associate with attributedDecreasedValue
    Stream<_i6.AttributedString?>? $attributedDecreasedValue,
    // Associate with hint
    Stream<String?>? $hint,
    // Associate with attributedHint
    Stream<_i6.AttributedString?>? $attributedHint,
    // Associate with tooltip
    Stream<String?>? $tooltip,
    // Associate with onTapHint
    Stream<String?>? $onTapHint,
    // Associate with onLongPressHint
    Stream<String?>? $onLongPressHint,
    // Associate with textDirection
    Stream<ui.TextDirection?>? $textDirection,
    // Associate with sortKey
    Stream<_i6.SemanticsSortKey?>? $sortKey,
    // Associate with tagForChildren
    Stream<_i6.SemanticsTag?>? $tagForChildren,
    // Associate with onTap
    Stream<ui.VoidCallback?>? $onTap,
    // Associate with onLongPress
    Stream<ui.VoidCallback?>? $onLongPress,
    // Associate with onScrollLeft
    Stream<ui.VoidCallback?>? $onScrollLeft,
    // Associate with onScrollRight
    Stream<ui.VoidCallback?>? $onScrollRight,
    // Associate with onScrollUp
    Stream<ui.VoidCallback?>? $onScrollUp,
    // Associate with onScrollDown
    Stream<ui.VoidCallback?>? $onScrollDown,
    // Associate with onIncrease
    Stream<ui.VoidCallback?>? $onIncrease,
    // Associate with onDecrease
    Stream<ui.VoidCallback?>? $onDecrease,
    // Associate with onCopy
    Stream<ui.VoidCallback?>? $onCopy,
    // Associate with onCut
    Stream<ui.VoidCallback?>? $onCut,
    // Associate with onPaste
    Stream<ui.VoidCallback?>? $onPaste,
    // Associate with onDismiss
    Stream<ui.VoidCallback?>? $onDismiss,
    // Associate with onMoveCursorForwardByCharacter
    Stream<_i6.MoveCursorHandler?>? $onMoveCursorForwardByCharacter,
    // Associate with onMoveCursorBackwardByCharacter
    Stream<_i6.MoveCursorHandler?>? $onMoveCursorBackwardByCharacter,
    // Associate with onSetSelection
    Stream<_i6.SetSelectionHandler?>? $onSetSelection,
    // Associate with onSetText
    Stream<_i6.SetTextHandler?>? $onSetText,
    // Associate with onDidGainAccessibilityFocus
    Stream<ui.VoidCallback?>? $onDidGainAccessibilityFocus,
    // Associate with onDidLoseAccessibilityFocus
    Stream<ui.VoidCallback?>? $onDidLoseAccessibilityFocus,
    // Associate with onFocus
    Stream<ui.VoidCallback?>? $onFocus,
    // Associate with customSemanticsActions
    Stream<Map<_i6.CustomSemanticsAction, ui.VoidCallback>?>? $customSemanticsActions,
  }) : super(
          Argument(
            {
              'key': key,
              'child': child,
              'container': container,
              'explicitChildNodes': explicitChildNodes,
              'excludeSemantics': excludeSemantics,
              'blockUserActions': blockUserActions,
              'enabled': enabled,
              'checked': checked,
              'mixed': mixed,
              'selected': selected,
              'toggled': toggled,
              'button': button,
              'slider': slider,
              'keyboardKey': keyboardKey,
              'link': link,
              'header': header,
              'headingLevel': headingLevel,
              'textField': textField,
              'readOnly': readOnly,
              'focusable': focusable,
              'focused': focused,
              'inMutuallyExclusiveGroup': inMutuallyExclusiveGroup,
              'obscured': obscured,
              'multiline': multiline,
              'scopesRoute': scopesRoute,
              'namesRoute': namesRoute,
              'hidden': hidden,
              'image': image,
              'liveRegion': liveRegion,
              'expanded': expanded,
              'maxValueLength': maxValueLength,
              'currentValueLength': currentValueLength,
              'identifier': identifier,
              'label': label,
              'attributedLabel': attributedLabel,
              'value': value,
              'attributedValue': attributedValue,
              'increasedValue': increasedValue,
              'attributedIncreasedValue': attributedIncreasedValue,
              'decreasedValue': decreasedValue,
              'attributedDecreasedValue': attributedDecreasedValue,
              'hint': hint,
              'attributedHint': attributedHint,
              'tooltip': tooltip,
              'onTapHint': onTapHint,
              'onLongPressHint': onLongPressHint,
              'textDirection': textDirection,
              'sortKey': sortKey,
              'tagForChildren': tagForChildren,
              'onTap': onTap,
              'onLongPress': onLongPress,
              'onScrollLeft': onScrollLeft,
              'onScrollRight': onScrollRight,
              'onScrollUp': onScrollUp,
              'onScrollDown': onScrollDown,
              'onIncrease': onIncrease,
              'onDecrease': onDecrease,
              'onCopy': onCopy,
              'onCut': onCut,
              'onPaste': onPaste,
              'onDismiss': onDismiss,
              'onMoveCursorForwardByCharacter': onMoveCursorForwardByCharacter,
              'onMoveCursorBackwardByCharacter': onMoveCursorBackwardByCharacter,
              'onSetSelection': onSetSelection,
              'onSetText': onSetText,
              'onDidGainAccessibilityFocus': onDidGainAccessibilityFocus,
              'onDidLoseAccessibilityFocus': onDidLoseAccessibilityFocus,
              'onFocus': onFocus,
              'customSemanticsActions': customSemanticsActions,
            },
            stream: {
              'key': $key,
              'child': $child,
              'container': $container,
              'explicitChildNodes': $explicitChildNodes,
              'excludeSemantics': $excludeSemantics,
              'blockUserActions': $blockUserActions,
              'enabled': $enabled,
              'checked': $checked,
              'mixed': $mixed,
              'selected': $selected,
              'toggled': $toggled,
              'button': $button,
              'slider': $slider,
              'keyboardKey': $keyboardKey,
              'link': $link,
              'header': $header,
              'headingLevel': $headingLevel,
              'textField': $textField,
              'readOnly': $readOnly,
              'focusable': $focusable,
              'focused': $focused,
              'inMutuallyExclusiveGroup': $inMutuallyExclusiveGroup,
              'obscured': $obscured,
              'multiline': $multiline,
              'scopesRoute': $scopesRoute,
              'namesRoute': $namesRoute,
              'hidden': $hidden,
              'image': $image,
              'liveRegion': $liveRegion,
              'expanded': $expanded,
              'maxValueLength': $maxValueLength,
              'currentValueLength': $currentValueLength,
              'identifier': $identifier,
              'label': $label,
              'attributedLabel': $attributedLabel,
              'value': $value,
              'attributedValue': $attributedValue,
              'increasedValue': $increasedValue,
              'attributedIncreasedValue': $attributedIncreasedValue,
              'decreasedValue': $decreasedValue,
              'attributedDecreasedValue': $attributedDecreasedValue,
              'hint': $hint,
              'attributedHint': $attributedHint,
              'tooltip': $tooltip,
              'onTapHint': $onTapHint,
              'onLongPressHint': $onLongPressHint,
              'textDirection': $textDirection,
              'sortKey': $sortKey,
              'tagForChildren': $tagForChildren,
              'onTap': $onTap,
              'onLongPress': $onLongPress,
              'onScrollLeft': $onScrollLeft,
              'onScrollRight': $onScrollRight,
              'onScrollUp': $onScrollUp,
              'onScrollDown': $onScrollDown,
              'onIncrease': $onIncrease,
              'onDecrease': $onDecrease,
              'onCopy': $onCopy,
              'onCut': $onCut,
              'onPaste': $onPaste,
              'onDismiss': $onDismiss,
              'onMoveCursorForwardByCharacter': $onMoveCursorForwardByCharacter,
              'onMoveCursorBackwardByCharacter': $onMoveCursorBackwardByCharacter,
              'onSetSelection': $onSetSelection,
              'onSetText': $onSetText,
              'onDidGainAccessibilityFocus': $onDidGainAccessibilityFocus,
              'onDidLoseAccessibilityFocus': $onDidLoseAccessibilityFocus,
              'onFocus': $onFocus,
              'customSemanticsActions': $customSemanticsActions,
            },
          ),
          builder: (args) => _i1.Semantics(
            key: args('key'),
            child: args('child'),
            container: args('container'),
            explicitChildNodes: args('explicitChildNodes'),
            excludeSemantics: args('excludeSemantics'),
            blockUserActions: args('blockUserActions'),
            enabled: args('enabled'),
            checked: args('checked'),
            mixed: args('mixed'),
            selected: args('selected'),
            toggled: args('toggled'),
            button: args('button'),
            slider: args('slider'),
            keyboardKey: args('keyboardKey'),
            link: args('link'),
            header: args('header'),
            headingLevel: args('headingLevel'),
            textField: args('textField'),
            readOnly: args('readOnly'),
            focusable: args('focusable'),
            focused: args('focused'),
            inMutuallyExclusiveGroup: args('inMutuallyExclusiveGroup'),
            obscured: args('obscured'),
            multiline: args('multiline'),
            scopesRoute: args('scopesRoute'),
            namesRoute: args('namesRoute'),
            hidden: args('hidden'),
            image: args('image'),
            liveRegion: args('liveRegion'),
            expanded: args('expanded'),
            maxValueLength: args('maxValueLength'),
            currentValueLength: args('currentValueLength'),
            identifier: args('identifier'),
            label: args('label'),
            attributedLabel: args('attributedLabel'),
            value: args('value'),
            attributedValue: args('attributedValue'),
            increasedValue: args('increasedValue'),
            attributedIncreasedValue: args('attributedIncreasedValue'),
            decreasedValue: args('decreasedValue'),
            attributedDecreasedValue: args('attributedDecreasedValue'),
            hint: args('hint'),
            attributedHint: args('attributedHint'),
            tooltip: args('tooltip'),
            onTapHint: args('onTapHint'),
            onLongPressHint: args('onLongPressHint'),
            textDirection: args('textDirection'),
            sortKey: args('sortKey'),
            tagForChildren: args('tagForChildren'),
            onTap: args('onTap'),
            onLongPress: args('onLongPress'),
            onScrollLeft: args('onScrollLeft'),
            onScrollRight: args('onScrollRight'),
            onScrollUp: args('onScrollUp'),
            onScrollDown: args('onScrollDown'),
            onIncrease: args('onIncrease'),
            onDecrease: args('onDecrease'),
            onCopy: args('onCopy'),
            onCut: args('onCut'),
            onPaste: args('onPaste'),
            onDismiss: args('onDismiss'),
            onMoveCursorForwardByCharacter: args('onMoveCursorForwardByCharacter'),
            onMoveCursorBackwardByCharacter: args('onMoveCursorBackwardByCharacter'),
            onSetSelection: args('onSetSelection'),
            onSetText: args('onSetText'),
            onDidGainAccessibilityFocus: args('onDidGainAccessibilityFocus'),
            onDidLoseAccessibilityFocus: args('onDidLoseAccessibilityFocus'),
            onFocus: args('onFocus'),
            customSemanticsActions: args('customSemanticsActions'),
          ),
        );

  @Goto(_i1.Semantics.fromProperties)
  Semantics.fromProperties({
    _i2.Key? key,
    _i1.Widget? child,
    bool container = false,
    bool explicitChildNodes = false,
    bool excludeSemantics = false,
    bool blockUserActions = false,
    required _i6.SemanticsProperties properties,
    // Associate with key
    Stream<_i2.Key?>? $key,
    // Associate with child
    Stream<_i1.Widget?>? $child,
    // Associate with container
    Stream<bool>? $container,
    // Associate with explicitChildNodes
    Stream<bool>? $explicitChildNodes,
    // Associate with excludeSemantics
    Stream<bool>? $excludeSemantics,
    // Associate with blockUserActions
    Stream<bool>? $blockUserActions,
    // Associate with properties
    Stream<_i6.SemanticsProperties>? $properties,
  }) : super(
          Argument(
            {
              'key': key,
              'child': child,
              'container': container,
              'explicitChildNodes': explicitChildNodes,
              'excludeSemantics': excludeSemantics,
              'blockUserActions': blockUserActions,
              'properties': properties,
            },
            stream: {
              'key': $key,
              'child': $child,
              'container': $container,
              'explicitChildNodes': $explicitChildNodes,
              'excludeSemantics': $excludeSemantics,
              'blockUserActions': $blockUserActions,
              'properties': $properties,
            },
          ),
          builder: (args) => _i1.Semantics.fromProperties(
            key: args('key'),
            child: args('child'),
            container: args('container'),
            explicitChildNodes: args('explicitChildNodes'),
            excludeSemantics: args('excludeSemantics'),
            blockUserActions: args('blockUserActions'),
            properties: args('properties'),
          ),
        );
}

final class PhysicalModel extends Wrapper {
  @Goto(_i1.PhysicalModel.new)
  PhysicalModel({
    _i2.Key? key,
    _i5.BoxShape shape = _i5.BoxShape.rectangle,
    ui.Clip clipBehavior = ui.Clip.none,
    _i5.BorderRadius? borderRadius,
    double elevation = 0.0,
    required ui.Color color,
    ui.Color shadowColor = const ui.Color(0xFF000000),
    _i1.Widget? child,
    // Associate with key
    Stream<_i2.Key?>? $key,
    // Associate with shape
    Stream<_i5.BoxShape>? $shape,
    // Associate with clipBehavior
    Stream<ui.Clip>? $clipBehavior,
    // Associate with borderRadius
    Stream<_i5.BorderRadius?>? $borderRadius,
    // Associate with elevation
    Stream<double>? $elevation,
    // Associate with color
    Stream<ui.Color>? $color,
    // Associate with shadowColor
    Stream<ui.Color>? $shadowColor,
    // Associate with child
    Stream<_i1.Widget?>? $child,
  }) : super(
          Argument(
            {
              'key': key,
              'shape': shape,
              'clipBehavior': clipBehavior,
              'borderRadius': borderRadius,
              'elevation': elevation,
              'color': color,
              'shadowColor': shadowColor,
              'child': child,
            },
            stream: {
              'key': $key,
              'shape': $shape,
              'clipBehavior': $clipBehavior,
              'borderRadius': $borderRadius,
              'elevation': $elevation,
              'color': $color,
              'shadowColor': $shadowColor,
              'child': $child,
            },
          ),
          builder: (args) => _i1.PhysicalModel(
            key: args('key'),
            shape: args('shape'),
            clipBehavior: args('clipBehavior'),
            borderRadius: args('borderRadius'),
            elevation: args('elevation'),
            color: args('color'),
            shadowColor: args('shadowColor'),
            child: args('child'),
          ),
        );
}

final class ConstrainedBox extends Wrapper {
  @Goto(_i1.ConstrainedBox.new)
  ConstrainedBox({
    _i2.Key? key,
    required _i4.BoxConstraints constraints,
    _i1.Widget? child,
    // Associate with key
    Stream<_i2.Key?>? $key,
    // Associate with constraints
    Stream<_i4.BoxConstraints>? $constraints,
    // Associate with child
    Stream<_i1.Widget?>? $child,
  }) : super(
          Argument(
            {
              'key': key,
              'constraints': constraints,
              'child': child,
            },
            stream: {
              'key': $key,
              'constraints': $constraints,
              'child': $child,
            },
          ),
          builder: (args) => _i1.ConstrainedBox(
            key: args('key'),
            constraints: args('constraints'),
            child: args('child'),
          ),
        );
}

final class Builder extends Wrapper {
  @Goto(_i1.Builder.new)
  Builder({
    _i2.Key? key,
    required _i1.WidgetBuilder builder,
    // Associate with key
    Stream<_i2.Key?>? $key,
    // Associate with builder
    Stream<_i1.WidgetBuilder>? $builder,
  }) : super(
          Argument(
            {
              'key': key,
              'builder': builder,
            },
            stream: {
              'key': $key,
              'builder': $builder,
            },
          ),
          builder: (args) => _i1.Builder(
            key: args('key'),
            builder: args('builder'),
          ),
        );
}

final class Center extends Wrapper {
  @Goto(_i1.Center.new)
  Center({
    _i2.Key? key,
    double? widthFactor,
    double? heightFactor,
    _i1.Widget? child,
    // Associate with key
    Stream<_i2.Key?>? $key,
    // Associate with widthFactor
    Stream<double?>? $widthFactor,
    // Associate with heightFactor
    Stream<double?>? $heightFactor,
    // Associate with child
    Stream<_i1.Widget?>? $child,
  }) : super(
          Argument(
            {
              'key': key,
              'widthFactor': widthFactor,
              'heightFactor': heightFactor,
              'child': child,
            },
            stream: {
              'key': $key,
              'widthFactor': $widthFactor,
              'heightFactor': $heightFactor,
              'child': $child,
            },
          ),
          builder: (args) => _i1.Center(
            key: args('key'),
            widthFactor: args('widthFactor'),
            heightFactor: args('heightFactor'),
            child: args('child'),
          ),
        );
}

final class Positioned extends Wrapper {
  @Goto(_i1.Positioned.new)
  Positioned({
    _i2.Key? key,
    double? left,
    double? top,
    double? right,
    double? bottom,
    double? width,
    double? height,
    required _i1.Widget child,
    // Associate with key
    Stream<_i2.Key?>? $key,
    // Associate with left
    Stream<double?>? $left,
    // Associate with top
    Stream<double?>? $top,
    // Associate with right
    Stream<double?>? $right,
    // Associate with bottom
    Stream<double?>? $bottom,
    // Associate with width
    Stream<double?>? $width,
    // Associate with height
    Stream<double?>? $height,
    // Associate with child
    Stream<_i1.Widget>? $child,
  }) : super(
          Argument(
            {
              'key': key,
              'left': left,
              'top': top,
              'right': right,
              'bottom': bottom,
              'width': width,
              'height': height,
              'child': child,
            },
            stream: {
              'key': $key,
              'left': $left,
              'top': $top,
              'right': $right,
              'bottom': $bottom,
              'width': $width,
              'height': $height,
              'child': $child,
            },
          ),
          builder: (args) => _i1.Positioned(
            key: args('key'),
            left: args('left'),
            top: args('top'),
            right: args('right'),
            bottom: args('bottom'),
            width: args('width'),
            height: args('height'),
            child: args('child'),
          ),
        );

  @Goto(_i1.Positioned.fromRect)
  Positioned.fromRect({
    _i2.Key? key,
    required ui.Rect rect,
    required _i1.Widget child,
    // Associate with key
    Stream<_i2.Key?>? $key,
    // Associate with rect
    Stream<ui.Rect>? $rect,
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
          builder: (args) => _i1.Positioned.fromRect(
            key: args('key'),
            rect: args('rect'),
            child: args('child'),
          ),
        );

  @Goto(_i1.Positioned.fromRelativeRect)
  Positioned.fromRelativeRect({
    _i2.Key? key,
    required _i4.RelativeRect rect,
    required _i1.Widget child,
    // Associate with key
    Stream<_i2.Key?>? $key,
    // Associate with rect
    Stream<_i4.RelativeRect>? $rect,
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
          builder: (args) => _i1.Positioned.fromRelativeRect(
            key: args('key'),
            rect: args('rect'),
            child: args('child'),
          ),
        );

  @Goto(_i1.Positioned.fill)
  Positioned.fill({
    _i2.Key? key,
    double? left = 0.0,
    double? top = 0.0,
    double? right = 0.0,
    double? bottom = 0.0,
    required _i1.Widget child,
    // Associate with key
    Stream<_i2.Key?>? $key,
    // Associate with left
    Stream<double?>? $left,
    // Associate with top
    Stream<double?>? $top,
    // Associate with right
    Stream<double?>? $right,
    // Associate with bottom
    Stream<double?>? $bottom,
    // Associate with child
    Stream<_i1.Widget>? $child,
  }) : super(
          Argument(
            {
              'key': key,
              'left': left,
              'top': top,
              'right': right,
              'bottom': bottom,
              'child': child,
            },
            stream: {
              'key': $key,
              'left': $left,
              'top': $top,
              'right': $right,
              'bottom': $bottom,
              'child': $child,
            },
          ),
          builder: (args) => _i1.Positioned.fill(
            key: args('key'),
            left: args('left'),
            top: args('top'),
            right: args('right'),
            bottom: args('bottom'),
            child: args('child'),
          ),
        );

  @Goto(_i1.Positioned.directional)
  Positioned.directional({
    _i2.Key? key,
    required ui.TextDirection textDirection,
    double? start,
    double? top,
    double? end,
    double? bottom,
    double? width,
    double? height,
    required _i1.Widget child,
    // Associate with key
    Stream<_i2.Key?>? $key,
    // Associate with textDirection
    Stream<ui.TextDirection>? $textDirection,
    // Associate with start
    Stream<double?>? $start,
    // Associate with top
    Stream<double?>? $top,
    // Associate with end
    Stream<double?>? $end,
    // Associate with bottom
    Stream<double?>? $bottom,
    // Associate with width
    Stream<double?>? $width,
    // Associate with height
    Stream<double?>? $height,
    // Associate with child
    Stream<_i1.Widget>? $child,
  }) : super(
          Argument(
            {
              'key': key,
              'textDirection': textDirection,
              'start': start,
              'top': top,
              'end': end,
              'bottom': bottom,
              'width': width,
              'height': height,
              'child': child,
            },
            stream: {
              'key': $key,
              'textDirection': $textDirection,
              'start': $start,
              'top': $top,
              'end': $end,
              'bottom': $bottom,
              'width': $width,
              'height': $height,
              'child': $child,
            },
          ),
          builder: (args) => _i1.Positioned.directional(
            key: args('key'),
            textDirection: args('textDirection'),
            start: args('start'),
            top: args('top'),
            end: args('end'),
            bottom: args('bottom'),
            width: args('width'),
            height: args('height'),
            child: args('child'),
          ),
        );
}

final class Flow extends Wrapper {
  @Goto(_i1.Flow.new)
  Flow({
    _i2.Key? key,
    required _i4.FlowDelegate delegate,
    List<_i1.Widget> children = const [],
    ui.Clip clipBehavior = ui.Clip.hardEdge,
    // Associate with key
    Stream<_i2.Key?>? $key,
    // Associate with delegate
    Stream<_i4.FlowDelegate>? $delegate,
    // Associate with children
    Stream<List<_i1.Widget>>? $children,
    // Associate with clipBehavior
    Stream<ui.Clip>? $clipBehavior,
  }) : super(
          Argument(
            {
              'key': key,
              'delegate': delegate,
              'children': children,
              'clipBehavior': clipBehavior,
            },
            stream: {
              'key': $key,
              'delegate': $delegate,
              'children': $children,
              'clipBehavior': $clipBehavior,
            },
          ),
          builder: (args) => _i1.Flow(
            key: args('key'),
            delegate: args('delegate'),
            children: args('children'),
            clipBehavior: args('clipBehavior'),
          ),
        );

  @Goto(_i1.Flow.unwrapped)
  Flow.unwrapped({
    _i2.Key? key,
    required _i4.FlowDelegate delegate,
    List<_i1.Widget> children = const [],
    ui.Clip clipBehavior = ui.Clip.hardEdge,
    // Associate with key
    Stream<_i2.Key?>? $key,
    // Associate with delegate
    Stream<_i4.FlowDelegate>? $delegate,
    // Associate with children
    Stream<List<_i1.Widget>>? $children,
    // Associate with clipBehavior
    Stream<ui.Clip>? $clipBehavior,
  }) : super(
          Argument(
            {
              'key': key,
              'delegate': delegate,
              'children': children,
              'clipBehavior': clipBehavior,
            },
            stream: {
              'key': $key,
              'delegate': $delegate,
              'children': $children,
              'clipBehavior': $clipBehavior,
            },
          ),
          builder: (args) => _i1.Flow.unwrapped(
            key: args('key'),
            delegate: args('delegate'),
            children: args('children'),
            clipBehavior: args('clipBehavior'),
          ),
        );
}

final class FractionallySizedBox extends Wrapper {
  @Goto(_i1.FractionallySizedBox.new)
  FractionallySizedBox({
    _i2.Key? key,
    _i5.AlignmentGeometry alignment = _i5.Alignment.center,
    double? widthFactor,
    double? heightFactor,
    _i1.Widget? child,
    // Associate with key
    Stream<_i2.Key?>? $key,
    // Associate with alignment
    Stream<_i5.AlignmentGeometry>? $alignment,
    // Associate with widthFactor
    Stream<double?>? $widthFactor,
    // Associate with heightFactor
    Stream<double?>? $heightFactor,
    // Associate with child
    Stream<_i1.Widget?>? $child,
  }) : super(
          Argument(
            {
              'key': key,
              'alignment': alignment,
              'widthFactor': widthFactor,
              'heightFactor': heightFactor,
              'child': child,
            },
            stream: {
              'key': $key,
              'alignment': $alignment,
              'widthFactor': $widthFactor,
              'heightFactor': $heightFactor,
              'child': $child,
            },
          ),
          builder: (args) => _i1.FractionallySizedBox(
            key: args('key'),
            alignment: args('alignment'),
            widthFactor: args('widthFactor'),
            heightFactor: args('heightFactor'),
            child: args('child'),
          ),
        );
}

final class Stack extends Wrapper {
  @Goto(_i1.Stack.new)
  Stack({
    _i2.Key? key,
    _i5.AlignmentGeometry alignment = _i5.AlignmentDirectional.topStart,
    ui.TextDirection? textDirection,
    _i4.StackFit fit = _i4.StackFit.loose,
    ui.Clip clipBehavior = ui.Clip.hardEdge,
    List<_i1.Widget> children = const [],
    // Associate with key
    Stream<_i2.Key?>? $key,
    // Associate with alignment
    Stream<_i5.AlignmentGeometry>? $alignment,
    // Associate with textDirection
    Stream<ui.TextDirection?>? $textDirection,
    // Associate with fit
    Stream<_i4.StackFit>? $fit,
    // Associate with clipBehavior
    Stream<ui.Clip>? $clipBehavior,
    // Associate with children
    Stream<List<_i1.Widget>>? $children,
  }) : super(
          Argument(
            {
              'key': key,
              'alignment': alignment,
              'textDirection': textDirection,
              'fit': fit,
              'clipBehavior': clipBehavior,
              'children': children,
            },
            stream: {
              'key': $key,
              'alignment': $alignment,
              'textDirection': $textDirection,
              'fit': $fit,
              'clipBehavior': $clipBehavior,
              'children': $children,
            },
          ),
          builder: (args) => _i1.Stack(
            key: args('key'),
            alignment: args('alignment'),
            textDirection: args('textDirection'),
            fit: args('fit'),
            clipBehavior: args('clipBehavior'),
            children: args('children'),
          ),
        );
}

final class StatefulBuilder extends Wrapper {
  @Goto(_i1.StatefulBuilder.new)
  StatefulBuilder({
    _i2.Key? key,
    required _i1.StatefulWidgetBuilder builder,
    // Associate with key
    Stream<_i2.Key?>? $key,
    // Associate with builder
    Stream<_i1.StatefulWidgetBuilder>? $builder,
  }) : super(
          Argument(
            {
              'key': key,
              'builder': builder,
            },
            stream: {
              'key': $key,
              'builder': $builder,
            },
          ),
          builder: (args) => _i1.StatefulBuilder(
            key: args('key'),
            builder: args('builder'),
          ),
        );
}

final class KeyedSubtree extends Wrapper {
  @Goto(_i1.KeyedSubtree.new)
  KeyedSubtree({
    _i2.Key? key,
    required _i1.Widget child,
    // Associate with key
    Stream<_i2.Key?>? $key,
    // Associate with child
    Stream<_i1.Widget>? $child,
  }) : super(
          Argument(
            {
              'key': key,
              'child': child,
            },
            stream: {
              'key': $key,
              'child': $child,
            },
          ),
          builder: (args) => _i1.KeyedSubtree(
            key: args('key'),
            child: args('child'),
          ),
        );

  @Goto(_i1.KeyedSubtree.wrap)
  KeyedSubtree.wrap(
    _i1.Widget child,
    int childIndex, {
    // Associate with child
    Stream<_i1.Widget>? $child,
    // Associate with childIndex
    Stream<int>? $childIndex,
  }) : super(
          Argument(
            {
              'child': child,
              'childIndex': childIndex,
            },
            stream: {
              'child': $child,
              'childIndex': $childIndex,
            },
          ),
          builder: (args) => _i1.KeyedSubtree.wrap(
            args('child'),
            args('childIndex'),
          ),
        );
}

final class Listener extends Wrapper {
  @Goto(_i1.Listener.new)
  Listener({
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
    // Associate with key
    Stream<_i2.Key?>? $key,
    // Associate with onPointerDown
    Stream<_i4.PointerDownEventListener?>? $onPointerDown,
    // Associate with onPointerMove
    Stream<_i4.PointerMoveEventListener?>? $onPointerMove,
    // Associate with onPointerUp
    Stream<_i4.PointerUpEventListener?>? $onPointerUp,
    // Associate with onPointerHover
    Stream<_i3.PointerHoverEventListener?>? $onPointerHover,
    // Associate with onPointerCancel
    Stream<_i4.PointerCancelEventListener?>? $onPointerCancel,
    // Associate with onPointerPanZoomStart
    Stream<_i4.PointerPanZoomStartEventListener?>? $onPointerPanZoomStart,
    // Associate with onPointerPanZoomUpdate
    Stream<_i4.PointerPanZoomUpdateEventListener?>? $onPointerPanZoomUpdate,
    // Associate with onPointerPanZoomEnd
    Stream<_i4.PointerPanZoomEndEventListener?>? $onPointerPanZoomEnd,
    // Associate with onPointerSignal
    Stream<_i4.PointerSignalEventListener?>? $onPointerSignal,
    // Associate with behavior
    Stream<_i4.HitTestBehavior>? $behavior,
    // Associate with child
    Stream<_i1.Widget?>? $child,
  }) : super(
          Argument(
            {
              'key': key,
              'onPointerDown': onPointerDown,
              'onPointerMove': onPointerMove,
              'onPointerUp': onPointerUp,
              'onPointerHover': onPointerHover,
              'onPointerCancel': onPointerCancel,
              'onPointerPanZoomStart': onPointerPanZoomStart,
              'onPointerPanZoomUpdate': onPointerPanZoomUpdate,
              'onPointerPanZoomEnd': onPointerPanZoomEnd,
              'onPointerSignal': onPointerSignal,
              'behavior': behavior,
              'child': child,
            },
            stream: {
              'key': $key,
              'onPointerDown': $onPointerDown,
              'onPointerMove': $onPointerMove,
              'onPointerUp': $onPointerUp,
              'onPointerHover': $onPointerHover,
              'onPointerCancel': $onPointerCancel,
              'onPointerPanZoomStart': $onPointerPanZoomStart,
              'onPointerPanZoomUpdate': $onPointerPanZoomUpdate,
              'onPointerPanZoomEnd': $onPointerPanZoomEnd,
              'onPointerSignal': $onPointerSignal,
              'behavior': $behavior,
              'child': $child,
            },
          ),
          builder: (args) => _i1.Listener(
            key: args('key'),
            onPointerDown: args('onPointerDown'),
            onPointerMove: args('onPointerMove'),
            onPointerUp: args('onPointerUp'),
            onPointerHover: args('onPointerHover'),
            onPointerCancel: args('onPointerCancel'),
            onPointerPanZoomStart: args('onPointerPanZoomStart'),
            onPointerPanZoomUpdate: args('onPointerPanZoomUpdate'),
            onPointerPanZoomEnd: args('onPointerPanZoomEnd'),
            onPointerSignal: args('onPointerSignal'),
            behavior: args('behavior'),
            child: args('child'),
          ),
        );
}

final class ClipRect extends Wrapper {
  @Goto(_i1.ClipRect.new)
  ClipRect({
    _i2.Key? key,
    _i4.CustomClipper<ui.Rect>? clipper,
    ui.Clip clipBehavior = ui.Clip.hardEdge,
    _i1.Widget? child,
    // Associate with key
    Stream<_i2.Key?>? $key,
    // Associate with clipper
    Stream<_i4.CustomClipper<ui.Rect>?>? $clipper,
    // Associate with clipBehavior
    Stream<ui.Clip>? $clipBehavior,
    // Associate with child
    Stream<_i1.Widget?>? $child,
  }) : super(
          Argument(
            {
              'key': key,
              'clipper': clipper,
              'clipBehavior': clipBehavior,
              'child': child,
            },
            stream: {
              'key': $key,
              'clipper': $clipper,
              'clipBehavior': $clipBehavior,
              'child': $child,
            },
          ),
          builder: (args) => _i1.ClipRect(
            key: args('key'),
            clipper: args('clipper'),
            clipBehavior: args('clipBehavior'),
            child: args('child'),
          ),
        );
}

final class Baseline extends Wrapper {
  @Goto(_i1.Baseline.new)
  Baseline({
    _i2.Key? key,
    required double baseline,
    required ui.TextBaseline baselineType,
    _i1.Widget? child,
    // Associate with key
    Stream<_i2.Key?>? $key,
    // Associate with baseline
    Stream<double>? $baseline,
    // Associate with baselineType
    Stream<ui.TextBaseline>? $baselineType,
    // Associate with child
    Stream<_i1.Widget?>? $child,
  }) : super(
          Argument(
            {
              'key': key,
              'baseline': baseline,
              'baselineType': baselineType,
              'child': child,
            },
            stream: {
              'key': $key,
              'baseline': $baseline,
              'baselineType': $baselineType,
              'child': $child,
            },
          ),
          builder: (args) => _i1.Baseline(
            key: args('key'),
            baseline: args('baseline'),
            baselineType: args('baselineType'),
            child: args('child'),
          ),
        );
}

final class ListBody extends Wrapper {
  @Goto(_i1.ListBody.new)
  ListBody({
    _i2.Key? key,
    _i5.Axis mainAxis = _i5.Axis.vertical,
    bool reverse = false,
    List<_i1.Widget> children = const [],
    // Associate with key
    Stream<_i2.Key?>? $key,
    // Associate with mainAxis
    Stream<_i5.Axis>? $mainAxis,
    // Associate with reverse
    Stream<bool>? $reverse,
    // Associate with children
    Stream<List<_i1.Widget>>? $children,
  }) : super(
          Argument(
            {
              'key': key,
              'mainAxis': mainAxis,
              'reverse': reverse,
              'children': children,
            },
            stream: {
              'key': $key,
              'mainAxis': $mainAxis,
              'reverse': $reverse,
              'children': $children,
            },
          ),
          builder: (args) => _i1.ListBody(
            key: args('key'),
            mainAxis: args('mainAxis'),
            reverse: args('reverse'),
            children: args('children'),
          ),
        );
}

final class LayoutId extends Wrapper {
  @Goto(_i1.LayoutId.new)
  LayoutId({
    _i2.Key? key,
    required Object id,
    required _i1.Widget child,
    // Associate with key
    Stream<_i2.Key?>? $key,
    // Associate with id
    Stream<Object>? $id,
    // Associate with child
    Stream<_i1.Widget>? $child,
  }) : super(
          Argument(
            {
              'key': key,
              'id': id,
              'child': child,
            },
            stream: {
              'key': $key,
              'id': $id,
              'child': $child,
            },
          ),
          builder: (args) => _i1.LayoutId(
            key: args('key'),
            id: args('id'),
            child: args('child'),
          ),
        );
}

final class CustomMultiChildLayout extends Wrapper {
  @Goto(_i1.CustomMultiChildLayout.new)
  CustomMultiChildLayout({
    _i2.Key? key,
    required _i4.MultiChildLayoutDelegate delegate,
    List<_i1.Widget> children = const [],
    // Associate with key
    Stream<_i2.Key?>? $key,
    // Associate with delegate
    Stream<_i4.MultiChildLayoutDelegate>? $delegate,
    // Associate with children
    Stream<List<_i1.Widget>>? $children,
  }) : super(
          Argument(
            {
              'key': key,
              'delegate': delegate,
              'children': children,
            },
            stream: {
              'key': $key,
              'delegate': $delegate,
              'children': $children,
            },
          ),
          builder: (args) => _i1.CustomMultiChildLayout(
            key: args('key'),
            delegate: args('delegate'),
            children: args('children'),
          ),
        );
}

final class SliverToBoxAdapter extends Wrapper {
  @Goto(_i1.SliverToBoxAdapter.new)
  SliverToBoxAdapter({
    _i2.Key? key,
    _i1.Widget? child,
    // Associate with key
    Stream<_i2.Key?>? $key,
    // Associate with child
    Stream<_i1.Widget?>? $child,
  }) : super(
          Argument(
            {
              'key': key,
              'child': child,
            },
            stream: {
              'key': $key,
              'child': $child,
            },
          ),
          builder: (args) => _i1.SliverToBoxAdapter(
            key: args('key'),
            child: args('child'),
          ),
        );
}

final class IndexedSemantics extends Wrapper {
  @Goto(_i1.IndexedSemantics.new)
  IndexedSemantics({
    _i2.Key? key,
    required int index,
    _i1.Widget? child,
    // Associate with key
    Stream<_i2.Key?>? $key,
    // Associate with index
    Stream<int>? $index,
    // Associate with child
    Stream<_i1.Widget?>? $child,
  }) : super(
          Argument(
            {
              'key': key,
              'index': index,
              'child': child,
            },
            stream: {
              'key': $key,
              'index': $index,
              'child': $child,
            },
          ),
          builder: (args) => _i1.IndexedSemantics(
            key: args('key'),
            index: args('index'),
            child: args('child'),
          ),
        );
}

final class LimitedBox extends Wrapper {
  @Goto(_i1.LimitedBox.new)
  LimitedBox({
    _i2.Key? key,
    double maxWidth = double.infinity,
    double maxHeight = double.infinity,
    _i1.Widget? child,
    // Associate with key
    Stream<_i2.Key?>? $key,
    // Associate with maxWidth
    Stream<double>? $maxWidth,
    // Associate with maxHeight
    Stream<double>? $maxHeight,
    // Associate with child
    Stream<_i1.Widget?>? $child,
  }) : super(
          Argument(
            {
              'key': key,
              'maxWidth': maxWidth,
              'maxHeight': maxHeight,
              'child': child,
            },
            stream: {
              'key': $key,
              'maxWidth': $maxWidth,
              'maxHeight': $maxHeight,
              'child': $child,
            },
          ),
          builder: (args) => _i1.LimitedBox(
            key: args('key'),
            maxWidth: args('maxWidth'),
            maxHeight: args('maxHeight'),
            child: args('child'),
          ),
        );
}

final class OverflowBox extends Wrapper {
  @Goto(_i1.OverflowBox.new)
  OverflowBox({
    _i2.Key? key,
    _i5.AlignmentGeometry alignment = _i5.Alignment.center,
    double? minWidth,
    double? maxWidth,
    double? minHeight,
    double? maxHeight,
    _i4.OverflowBoxFit fit = _i4.OverflowBoxFit.max,
    _i1.Widget? child,
    // Associate with key
    Stream<_i2.Key?>? $key,
    // Associate with alignment
    Stream<_i5.AlignmentGeometry>? $alignment,
    // Associate with minWidth
    Stream<double?>? $minWidth,
    // Associate with maxWidth
    Stream<double?>? $maxWidth,
    // Associate with minHeight
    Stream<double?>? $minHeight,
    // Associate with maxHeight
    Stream<double?>? $maxHeight,
    // Associate with fit
    Stream<_i4.OverflowBoxFit>? $fit,
    // Associate with child
    Stream<_i1.Widget?>? $child,
  }) : super(
          Argument(
            {
              'key': key,
              'alignment': alignment,
              'minWidth': minWidth,
              'maxWidth': maxWidth,
              'minHeight': minHeight,
              'maxHeight': maxHeight,
              'fit': fit,
              'child': child,
            },
            stream: {
              'key': $key,
              'alignment': $alignment,
              'minWidth': $minWidth,
              'maxWidth': $maxWidth,
              'minHeight': $minHeight,
              'maxHeight': $maxHeight,
              'fit': $fit,
              'child': $child,
            },
          ),
          builder: (args) => _i1.OverflowBox(
            key: args('key'),
            alignment: args('alignment'),
            minWidth: args('minWidth'),
            maxWidth: args('maxWidth'),
            minHeight: args('minHeight'),
            maxHeight: args('maxHeight'),
            fit: args('fit'),
            child: args('child'),
          ),
        );
}

final class Directionality extends Wrapper {
  @Goto(_i1.Directionality.new)
  Directionality({
    _i2.Key? key,
    required ui.TextDirection textDirection,
    required _i1.Widget child,
    // Associate with key
    Stream<_i2.Key?>? $key,
    // Associate with textDirection
    Stream<ui.TextDirection>? $textDirection,
    // Associate with child
    Stream<_i1.Widget>? $child,
  }) : super(
          Argument(
            {
              'key': key,
              'textDirection': textDirection,
              'child': child,
            },
            stream: {
              'key': $key,
              'textDirection': $textDirection,
              'child': $child,
            },
          ),
          builder: (args) => _i1.Directionality(
            key: args('key'),
            textDirection: args('textDirection'),
            child: args('child'),
          ),
        );
}

final class DefaultAssetBundle extends Wrapper {
  @Goto(_i1.DefaultAssetBundle.new)
  DefaultAssetBundle({
    _i2.Key? key,
    required _i3.AssetBundle bundle,
    required _i1.Widget child,
    // Associate with key
    Stream<_i2.Key?>? $key,
    // Associate with bundle
    Stream<_i3.AssetBundle>? $bundle,
    // Associate with child
    Stream<_i1.Widget>? $child,
  }) : super(
          Argument(
            {
              'key': key,
              'bundle': bundle,
              'child': child,
            },
            stream: {
              'key': $key,
              'bundle': $bundle,
              'child': $child,
            },
          ),
          builder: (args) => _i1.DefaultAssetBundle(
            key: args('key'),
            bundle: args('bundle'),
            child: args('child'),
          ),
        );
}

final class Flexible extends Wrapper {
  @Goto(_i1.Flexible.new)
  Flexible({
    _i2.Key? key,
    int flex = 1,
    _i4.FlexFit fit = _i4.FlexFit.loose,
    required _i1.Widget child,
    // Associate with key
    Stream<_i2.Key?>? $key,
    // Associate with flex
    Stream<int>? $flex,
    // Associate with fit
    Stream<_i4.FlexFit>? $fit,
    // Associate with child
    Stream<_i1.Widget>? $child,
  }) : super(
          Argument(
            {
              'key': key,
              'flex': flex,
              'fit': fit,
              'child': child,
            },
            stream: {
              'key': $key,
              'flex': $flex,
              'fit': $fit,
              'child': $child,
            },
          ),
          builder: (args) => _i1.Flexible(
            key: args('key'),
            flex: args('flex'),
            fit: args('fit'),
            child: args('child'),
          ),
        );
}

final class Flex extends Wrapper {
  @Goto(_i1.Flex.new)
  Flex({
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
    // Associate with key
    Stream<_i2.Key?>? $key,
    // Associate with direction
    Stream<_i5.Axis>? $direction,
    // Associate with mainAxisAlignment
    Stream<_i4.MainAxisAlignment>? $mainAxisAlignment,
    // Associate with mainAxisSize
    Stream<_i4.MainAxisSize>? $mainAxisSize,
    // Associate with crossAxisAlignment
    Stream<_i4.CrossAxisAlignment>? $crossAxisAlignment,
    // Associate with textDirection
    Stream<ui.TextDirection?>? $textDirection,
    // Associate with verticalDirection
    Stream<_i5.VerticalDirection>? $verticalDirection,
    // Associate with textBaseline
    Stream<ui.TextBaseline?>? $textBaseline,
    // Associate with clipBehavior
    Stream<ui.Clip>? $clipBehavior,
    // Associate with children
    Stream<List<_i1.Widget>>? $children,
  }) : super(
          Argument(
            {
              'key': key,
              'direction': direction,
              'mainAxisAlignment': mainAxisAlignment,
              'mainAxisSize': mainAxisSize,
              'crossAxisAlignment': crossAxisAlignment,
              'textDirection': textDirection,
              'verticalDirection': verticalDirection,
              'textBaseline': textBaseline,
              'clipBehavior': clipBehavior,
              'children': children,
            },
            stream: {
              'key': $key,
              'direction': $direction,
              'mainAxisAlignment': $mainAxisAlignment,
              'mainAxisSize': $mainAxisSize,
              'crossAxisAlignment': $crossAxisAlignment,
              'textDirection': $textDirection,
              'verticalDirection': $verticalDirection,
              'textBaseline': $textBaseline,
              'clipBehavior': $clipBehavior,
              'children': $children,
            },
          ),
          builder: (args) => _i1.Flex(
            key: args('key'),
            direction: args('direction'),
            mainAxisAlignment: args('mainAxisAlignment'),
            mainAxisSize: args('mainAxisSize'),
            crossAxisAlignment: args('crossAxisAlignment'),
            textDirection: args('textDirection'),
            verticalDirection: args('verticalDirection'),
            textBaseline: args('textBaseline'),
            clipBehavior: args('clipBehavior'),
            children: args('children'),
          ),
        );
}

final class IntrinsicWidth extends Wrapper {
  @Goto(_i1.IntrinsicWidth.new)
  IntrinsicWidth({
    _i2.Key? key,
    double? stepWidth,
    double? stepHeight,
    _i1.Widget? child,
    // Associate with key
    Stream<_i2.Key?>? $key,
    // Associate with stepWidth
    Stream<double?>? $stepWidth,
    // Associate with stepHeight
    Stream<double?>? $stepHeight,
    // Associate with child
    Stream<_i1.Widget?>? $child,
  }) : super(
          Argument(
            {
              'key': key,
              'stepWidth': stepWidth,
              'stepHeight': stepHeight,
              'child': child,
            },
            stream: {
              'key': $key,
              'stepWidth': $stepWidth,
              'stepHeight': $stepHeight,
              'child': $child,
            },
          ),
          builder: (args) => _i1.IntrinsicWidth(
            key: args('key'),
            stepWidth: args('stepWidth'),
            stepHeight: args('stepHeight'),
            child: args('child'),
          ),
        );
}

final class ExcludeSemantics extends Wrapper {
  @Goto(_i1.ExcludeSemantics.new)
  ExcludeSemantics({
    _i2.Key? key,
    bool excluding = true,
    _i1.Widget? child,
    // Associate with key
    Stream<_i2.Key?>? $key,
    // Associate with excluding
    Stream<bool>? $excluding,
    // Associate with child
    Stream<_i1.Widget?>? $child,
  }) : super(
          Argument(
            {
              'key': key,
              'excluding': excluding,
              'child': child,
            },
            stream: {
              'key': $key,
              'excluding': $excluding,
              'child': $child,
            },
          ),
          builder: (args) => _i1.ExcludeSemantics(
            key: args('key'),
            excluding: args('excluding'),
            child: args('child'),
          ),
        );
}

final class Wrap extends Wrapper {
  @Goto(_i1.Wrap.new)
  Wrap({
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
    // Associate with key
    Stream<_i2.Key?>? $key,
    // Associate with direction
    Stream<_i5.Axis>? $direction,
    // Associate with alignment
    Stream<_i4.WrapAlignment>? $alignment,
    // Associate with spacing
    Stream<double>? $spacing,
    // Associate with runAlignment
    Stream<_i4.WrapAlignment>? $runAlignment,
    // Associate with runSpacing
    Stream<double>? $runSpacing,
    // Associate with crossAxisAlignment
    Stream<_i4.WrapCrossAlignment>? $crossAxisAlignment,
    // Associate with textDirection
    Stream<ui.TextDirection?>? $textDirection,
    // Associate with verticalDirection
    Stream<_i5.VerticalDirection>? $verticalDirection,
    // Associate with clipBehavior
    Stream<ui.Clip>? $clipBehavior,
    // Associate with children
    Stream<List<_i1.Widget>>? $children,
  }) : super(
          Argument(
            {
              'key': key,
              'direction': direction,
              'alignment': alignment,
              'spacing': spacing,
              'runAlignment': runAlignment,
              'runSpacing': runSpacing,
              'crossAxisAlignment': crossAxisAlignment,
              'textDirection': textDirection,
              'verticalDirection': verticalDirection,
              'clipBehavior': clipBehavior,
              'children': children,
            },
            stream: {
              'key': $key,
              'direction': $direction,
              'alignment': $alignment,
              'spacing': $spacing,
              'runAlignment': $runAlignment,
              'runSpacing': $runSpacing,
              'crossAxisAlignment': $crossAxisAlignment,
              'textDirection': $textDirection,
              'verticalDirection': $verticalDirection,
              'clipBehavior': $clipBehavior,
              'children': $children,
            },
          ),
          builder: (args) => _i1.Wrap(
            key: args('key'),
            direction: args('direction'),
            alignment: args('alignment'),
            spacing: args('spacing'),
            runAlignment: args('runAlignment'),
            runSpacing: args('runSpacing'),
            crossAxisAlignment: args('crossAxisAlignment'),
            textDirection: args('textDirection'),
            verticalDirection: args('verticalDirection'),
            clipBehavior: args('clipBehavior'),
            children: args('children'),
          ),
        );
}

final class Opacity extends Wrapper {
  @Goto(_i1.Opacity.new)
  Opacity({
    _i2.Key? key,
    required double opacity,
    bool alwaysIncludeSemantics = false,
    _i1.Widget? child,
    // Associate with key
    Stream<_i2.Key?>? $key,
    // Associate with opacity
    Stream<double>? $opacity,
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
          builder: (args) => _i1.Opacity(
            key: args('key'),
            opacity: args('opacity'),
            alwaysIncludeSemantics: args('alwaysIncludeSemantics'),
            child: args('child'),
          ),
        );
}

final class CustomPaint extends Wrapper {
  @Goto(_i1.CustomPaint.new)
  CustomPaint({
    _i2.Key? key,
    _i4.CustomPainter? painter,
    _i4.CustomPainter? foregroundPainter,
    ui.Size size = ui.Size.zero,
    bool isComplex = false,
    bool willChange = false,
    _i1.Widget? child,
    // Associate with key
    Stream<_i2.Key?>? $key,
    // Associate with painter
    Stream<_i4.CustomPainter?>? $painter,
    // Associate with foregroundPainter
    Stream<_i4.CustomPainter?>? $foregroundPainter,
    // Associate with size
    Stream<ui.Size>? $size,
    // Associate with isComplex
    Stream<bool>? $isComplex,
    // Associate with willChange
    Stream<bool>? $willChange,
    // Associate with child
    Stream<_i1.Widget?>? $child,
  }) : super(
          Argument(
            {
              'key': key,
              'painter': painter,
              'foregroundPainter': foregroundPainter,
              'size': size,
              'isComplex': isComplex,
              'willChange': willChange,
              'child': child,
            },
            stream: {
              'key': $key,
              'painter': $painter,
              'foregroundPainter': $foregroundPainter,
              'size': $size,
              'isComplex': $isComplex,
              'willChange': $willChange,
              'child': $child,
            },
          ),
          builder: (args) => _i1.CustomPaint(
            key: args('key'),
            painter: args('painter'),
            foregroundPainter: args('foregroundPainter'),
            size: args('size'),
            isComplex: args('isComplex'),
            willChange: args('willChange'),
            child: args('child'),
          ),
        );
}

final class PhysicalShape extends Wrapper {
  @Goto(_i1.PhysicalShape.new)
  PhysicalShape({
    _i2.Key? key,
    required _i4.CustomClipper<ui.Path> clipper,
    ui.Clip clipBehavior = ui.Clip.none,
    double elevation = 0.0,
    required ui.Color color,
    ui.Color shadowColor = const ui.Color(0xFF000000),
    _i1.Widget? child,
    // Associate with key
    Stream<_i2.Key?>? $key,
    // Associate with clipper
    Stream<_i4.CustomClipper<ui.Path>>? $clipper,
    // Associate with clipBehavior
    Stream<ui.Clip>? $clipBehavior,
    // Associate with elevation
    Stream<double>? $elevation,
    // Associate with color
    Stream<ui.Color>? $color,
    // Associate with shadowColor
    Stream<ui.Color>? $shadowColor,
    // Associate with child
    Stream<_i1.Widget?>? $child,
  }) : super(
          Argument(
            {
              'key': key,
              'clipper': clipper,
              'clipBehavior': clipBehavior,
              'elevation': elevation,
              'color': color,
              'shadowColor': shadowColor,
              'child': child,
            },
            stream: {
              'key': $key,
              'clipper': $clipper,
              'clipBehavior': $clipBehavior,
              'elevation': $elevation,
              'color': $color,
              'shadowColor': $shadowColor,
              'child': $child,
            },
          ),
          builder: (args) => _i1.PhysicalShape(
            key: args('key'),
            clipper: args('clipper'),
            clipBehavior: args('clipBehavior'),
            elevation: args('elevation'),
            color: args('color'),
            shadowColor: args('shadowColor'),
            child: args('child'),
          ),
        );
}

final class Row extends Wrapper {
  @Goto(_i1.Row.new)
  Row({
    _i2.Key? key,
    _i4.MainAxisAlignment mainAxisAlignment = _i4.MainAxisAlignment.start,
    _i4.MainAxisSize mainAxisSize = _i4.MainAxisSize.max,
    _i4.CrossAxisAlignment crossAxisAlignment = _i4.CrossAxisAlignment.center,
    ui.TextDirection? textDirection,
    _i5.VerticalDirection verticalDirection = _i5.VerticalDirection.down,
    ui.TextBaseline? textBaseline,
    List<_i1.Widget> children = const [],
    // Associate with key
    Stream<_i2.Key?>? $key,
    // Associate with mainAxisAlignment
    Stream<_i4.MainAxisAlignment>? $mainAxisAlignment,
    // Associate with mainAxisSize
    Stream<_i4.MainAxisSize>? $mainAxisSize,
    // Associate with crossAxisAlignment
    Stream<_i4.CrossAxisAlignment>? $crossAxisAlignment,
    // Associate with textDirection
    Stream<ui.TextDirection?>? $textDirection,
    // Associate with verticalDirection
    Stream<_i5.VerticalDirection>? $verticalDirection,
    // Associate with textBaseline
    Stream<ui.TextBaseline?>? $textBaseline,
    // Associate with children
    Stream<List<_i1.Widget>>? $children,
  }) : super(
          Argument(
            {
              'key': key,
              'mainAxisAlignment': mainAxisAlignment,
              'mainAxisSize': mainAxisSize,
              'crossAxisAlignment': crossAxisAlignment,
              'textDirection': textDirection,
              'verticalDirection': verticalDirection,
              'textBaseline': textBaseline,
              'children': children,
            },
            stream: {
              'key': $key,
              'mainAxisAlignment': $mainAxisAlignment,
              'mainAxisSize': $mainAxisSize,
              'crossAxisAlignment': $crossAxisAlignment,
              'textDirection': $textDirection,
              'verticalDirection': $verticalDirection,
              'textBaseline': $textBaseline,
              'children': $children,
            },
          ),
          builder: (args) => _i1.Row(
            key: args('key'),
            mainAxisAlignment: args('mainAxisAlignment'),
            mainAxisSize: args('mainAxisSize'),
            crossAxisAlignment: args('crossAxisAlignment'),
            textDirection: args('textDirection'),
            verticalDirection: args('verticalDirection'),
            textBaseline: args('textBaseline'),
            children: args('children'),
          ),
        );
}

final class Expanded extends Wrapper {
  @Goto(_i1.Expanded.new)
  Expanded({
    _i2.Key? key,
    int flex = 1,
    required _i1.Widget child,
    // Associate with key
    Stream<_i2.Key?>? $key,
    // Associate with flex
    Stream<int>? $flex,
    // Associate with child
    Stream<_i1.Widget>? $child,
  }) : super(
          Argument(
            {
              'key': key,
              'flex': flex,
              'child': child,
            },
            stream: {
              'key': $key,
              'flex': $flex,
              'child': $child,
            },
          ),
          builder: (args) => _i1.Expanded(
            key: args('key'),
            flex: args('flex'),
            child: args('child'),
          ),
        );
}

final class MergeSemantics extends Wrapper {
  @Goto(_i1.MergeSemantics.new)
  MergeSemantics({
    _i2.Key? key,
    _i1.Widget? child,
    // Associate with key
    Stream<_i2.Key?>? $key,
    // Associate with child
    Stream<_i1.Widget?>? $child,
  }) : super(
          Argument(
            {
              'key': key,
              'child': child,
            },
            stream: {
              'key': $key,
              'child': $child,
            },
          ),
          builder: (args) => _i1.MergeSemantics(
            key: args('key'),
            child: args('child'),
          ),
        );
}

final class RepaintBoundary extends Wrapper {
  @Goto(_i1.RepaintBoundary.new)
  RepaintBoundary({
    _i2.Key? key,
    _i1.Widget? child,
    // Associate with key
    Stream<_i2.Key?>? $key,
    // Associate with child
    Stream<_i1.Widget?>? $child,
  }) : super(
          Argument(
            {
              'key': key,
              'child': child,
            },
            stream: {
              'key': $key,
              'child': $child,
            },
          ),
          builder: (args) => _i1.RepaintBoundary(
            key: args('key'),
            child: args('child'),
          ),
        );

  @Goto(_i1.RepaintBoundary.wrap)
  RepaintBoundary.wrap(
    _i1.Widget child,
    int childIndex, {
    // Associate with child
    Stream<_i1.Widget>? $child,
    // Associate with childIndex
    Stream<int>? $childIndex,
  }) : super(
          Argument(
            {
              'child': child,
              'childIndex': childIndex,
            },
            stream: {
              'child': $child,
              'childIndex': $childIndex,
            },
          ),
          builder: (args) => _i1.RepaintBoundary.wrap(
            args('child'),
            args('childIndex'),
          ),
        );
}

final class RawImage extends Wrapper {
  @Goto(_i1.RawImage.new)
  RawImage({
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
    // Associate with key
    Stream<_i2.Key?>? $key,
    // Associate with image
    Stream<ui.Image?>? $image,
    // Associate with debugImageLabel
    Stream<String?>? $debugImageLabel,
    // Associate with width
    Stream<double?>? $width,
    // Associate with height
    Stream<double?>? $height,
    // Associate with scale
    Stream<double>? $scale,
    // Associate with color
    Stream<ui.Color?>? $color,
    // Associate with opacity
    Stream<_i7.Animation<double>?>? $opacity,
    // Associate with colorBlendMode
    Stream<ui.BlendMode?>? $colorBlendMode,
    // Associate with fit
    Stream<_i5.BoxFit?>? $fit,
    // Associate with alignment
    Stream<_i5.AlignmentGeometry>? $alignment,
    // Associate with repeat
    Stream<_i5.ImageRepeat>? $repeat,
    // Associate with centerSlice
    Stream<ui.Rect?>? $centerSlice,
    // Associate with matchTextDirection
    Stream<bool>? $matchTextDirection,
    // Associate with invertColors
    Stream<bool>? $invertColors,
    // Associate with filterQuality
    Stream<ui.FilterQuality>? $filterQuality,
    // Associate with isAntiAlias
    Stream<bool>? $isAntiAlias,
  }) : super(
          Argument(
            {
              'key': key,
              'image': image,
              'debugImageLabel': debugImageLabel,
              'width': width,
              'height': height,
              'scale': scale,
              'color': color,
              'opacity': opacity,
              'colorBlendMode': colorBlendMode,
              'fit': fit,
              'alignment': alignment,
              'repeat': repeat,
              'centerSlice': centerSlice,
              'matchTextDirection': matchTextDirection,
              'invertColors': invertColors,
              'filterQuality': filterQuality,
              'isAntiAlias': isAntiAlias,
            },
            stream: {
              'key': $key,
              'image': $image,
              'debugImageLabel': $debugImageLabel,
              'width': $width,
              'height': $height,
              'scale': $scale,
              'color': $color,
              'opacity': $opacity,
              'colorBlendMode': $colorBlendMode,
              'fit': $fit,
              'alignment': $alignment,
              'repeat': $repeat,
              'centerSlice': $centerSlice,
              'matchTextDirection': $matchTextDirection,
              'invertColors': $invertColors,
              'filterQuality': $filterQuality,
              'isAntiAlias': $isAntiAlias,
            },
          ),
          builder: (args) => _i1.RawImage(
            key: args('key'),
            image: args('image'),
            debugImageLabel: args('debugImageLabel'),
            width: args('width'),
            height: args('height'),
            scale: args('scale'),
            color: args('color'),
            opacity: args('opacity'),
            colorBlendMode: args('colorBlendMode'),
            fit: args('fit'),
            alignment: args('alignment'),
            repeat: args('repeat'),
            centerSlice: args('centerSlice'),
            matchTextDirection: args('matchTextDirection'),
            invertColors: args('invertColors'),
            filterQuality: args('filterQuality'),
            isAntiAlias: args('isAntiAlias'),
          ),
        );
}

final class Padding extends Wrapper {
  @Goto(_i1.Padding.new)
  Padding({
    _i2.Key? key,
    required _i5.EdgeInsetsGeometry padding,
    _i1.Widget? child,
    // Associate with key
    Stream<_i2.Key?>? $key,
    // Associate with padding
    Stream<_i5.EdgeInsetsGeometry>? $padding,
    // Associate with child
    Stream<_i1.Widget?>? $child,
  }) : super(
          Argument(
            {
              'key': key,
              'padding': padding,
              'child': child,
            },
            stream: {
              'key': $key,
              'padding': $padding,
              'child': $child,
            },
          ),
          builder: (args) => _i1.Padding(
            key: args('key'),
            padding: args('padding'),
            child: args('child'),
          ),
        );
}

final class IntrinsicHeight extends Wrapper {
  @Goto(_i1.IntrinsicHeight.new)
  IntrinsicHeight({
    _i2.Key? key,
    _i1.Widget? child,
    // Associate with key
    Stream<_i2.Key?>? $key,
    // Associate with child
    Stream<_i1.Widget?>? $child,
  }) : super(
          Argument(
            {
              'key': key,
              'child': child,
            },
            stream: {
              'key': $key,
              'child': $child,
            },
          ),
          builder: (args) => _i1.IntrinsicHeight(
            key: args('key'),
            child: args('child'),
          ),
        );
}

final class Offstage extends Wrapper {
  @Goto(_i1.Offstage.new)
  Offstage({
    _i2.Key? key,
    bool offstage = true,
    _i1.Widget? child,
    // Associate with key
    Stream<_i2.Key?>? $key,
    // Associate with offstage
    Stream<bool>? $offstage,
    // Associate with child
    Stream<_i1.Widget?>? $child,
  }) : super(
          Argument(
            {
              'key': key,
              'offstage': offstage,
              'child': child,
            },
            stream: {
              'key': $key,
              'offstage': $offstage,
              'child': $child,
            },
          ),
          builder: (args) => _i1.Offstage(
            key: args('key'),
            offstage: args('offstage'),
            child: args('child'),
          ),
        );
}

final class CustomSingleChildLayout extends Wrapper {
  @Goto(_i1.CustomSingleChildLayout.new)
  CustomSingleChildLayout({
    _i2.Key? key,
    required _i4.SingleChildLayoutDelegate delegate,
    _i1.Widget? child,
    // Associate with key
    Stream<_i2.Key?>? $key,
    // Associate with delegate
    Stream<_i4.SingleChildLayoutDelegate>? $delegate,
    // Associate with child
    Stream<_i1.Widget?>? $child,
  }) : super(
          Argument(
            {
              'key': key,
              'delegate': delegate,
              'child': child,
            },
            stream: {
              'key': $key,
              'delegate': $delegate,
              'child': $child,
            },
          ),
          builder: (args) => _i1.CustomSingleChildLayout(
            key: args('key'),
            delegate: args('delegate'),
            child: args('child'),
          ),
        );
}
