library rxflutterify; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:math' as math;
import 'dart:ui' as ui;

import 'package:flutter/cupertino.dart' as _i1;
import 'package:flutter/foundation.dart' as _i3;
import 'package:flutter/painting.dart' as _i5;
import 'package:flutter/rendering.dart' as _i4;
import 'package:flutter/widgets.dart' as _i2;

import '../wrapper.dart';

final class CupertinoTextSelectionToolbar extends Wrapper {
  @Goto(_i1.CupertinoTextSelectionToolbar.new)
  CupertinoTextSelectionToolbar(
    $ $config, {
    _i3.Key? key,
    required ui.Offset anchorAbove,
    required ui.Offset anchorBelow,
    required List<_i2.Widget> children,
    _i1.CupertinoToolbarBuilder toolbarBuilder = _defaultToolbarBuilder,
  }) : super(
          Argument({
            #key: key,
            #anchorAbove: anchorAbove,
            #anchorBelow: anchorBelow,
            #children: children,
            #toolbarBuilder: toolbarBuilder,
          }),
          builder: (args) => _i1.CupertinoTextSelectionToolbar(
            key: args(#key),
            anchorAbove: args(#anchorAbove),
            anchorBelow: args(#anchorBelow),
            children: args(#children),
            toolbarBuilder: args(#toolbarBuilder),
          ),
        );

  static _i2.Widget _defaultToolbarBuilder(
    _i2.BuildContext context,
    ui.Offset anchorAbove,
    ui.Offset anchorBelow,
    _i2.Widget child,
  ) {
    return _CupertinoTextSelectionToolbarShape(
        anchorAbove: anchorAbove,
        anchorBelow: anchorBelow,
        shadowColor: _i1.CupertinoTheme.brightnessOf(context) == ui.Brightness.light ? _i1.CupertinoColors.black.withOpacity(0.2) : null,
        child: _i2.ColoredBox(color: _kToolbarBackgroundColor.resolveFrom(context), child: child));
  }
}

class _CupertinoTextSelectionToolbarShape extends _i2.SingleChildRenderObjectWidget {
  const _CupertinoTextSelectionToolbarShape({required ui.Offset anchorAbove, required ui.Offset anchorBelow, ui.Color? shadowColor, super.child})
      : _anchorAbove = anchorAbove,
        _anchorBelow = anchorBelow,
        _shadowColor = shadowColor;
  final ui.Offset _anchorAbove;
  final ui.Offset _anchorBelow;
  final ui.Color? _shadowColor;
  @override
  _RenderCupertinoTextSelectionToolbarShape createRenderObject(_i2.BuildContext context) =>
      _RenderCupertinoTextSelectionToolbarShape(_anchorAbove, _anchorBelow, _shadowColor, null);
  @override
  void updateRenderObject(_i2.BuildContext context, _RenderCupertinoTextSelectionToolbarShape renderObject) {
    renderObject
      ..anchorAbove = _anchorAbove
      ..anchorBelow = _anchorBelow
      ..shadowColor = _shadowColor;
  }
}

const _i1.CupertinoDynamicColor _kToolbarBackgroundColor = _i1.CupertinoDynamicColor.withBrightness(
  color: ui.Color(0xB2FFFFFF),
  darkColor: ui.Color(0xB2303030),
);

class _RenderCupertinoTextSelectionToolbarShape extends _i4.RenderShiftedBox {
  _RenderCupertinoTextSelectionToolbarShape(this._anchorAbove, this._anchorBelow, this._shadowColor, super.child);
  @override
  bool get isRepaintBoundary => true;
  ui.Offset get anchorAbove => _anchorAbove;
  ui.Offset _anchorAbove;
  set anchorAbove(ui.Offset value) {
    if (value == _anchorAbove) {
      return;
    }
    _anchorAbove = value;
    markNeedsLayout();
  }

  ui.Offset get anchorBelow => _anchorBelow;
  ui.Offset _anchorBelow;
  set anchorBelow(ui.Offset value) {
    if (value == _anchorBelow) {
      return;
    }
    _anchorBelow = value;
    markNeedsLayout();
  }

  ui.Color? get shadowColor => _shadowColor;
  ui.Color? _shadowColor;
  set shadowColor(ui.Color? value) {
    if (value == _shadowColor) {
      return;
    }
    _shadowColor = value;
    markNeedsPaint();
  }

  bool get isAbove => anchorAbove.dy >= (child?.size.height ?? 0.0) - _kToolbarArrowSize.height * 2;
  @override
  void performLayout() {
    final _i4.RenderBox? child = this.child;
    if (child == null) {
      return;
    }
    final _i4.BoxConstraints enforcedConstraint =
        _i4.BoxConstraints(minWidth: _kToolbarArrowSize.width + _kToolbarBorderRadius.x * 2).enforce(constraints.loosen());
    child.layout(enforcedConstraint, parentUsesSize: true);
    final _i4.BoxParentData childParentData = child.parentData! as _i4.BoxParentData;
    childParentData.offset = ui.Offset(0.0, isAbove ? -_kToolbarArrowSize.height : 0.0);
    size = ui.Size(child.size.width, child.size.height - _kToolbarArrowSize.height);
  }

  ui.RRect _shapeRRect(_i4.RenderBox child) {
    final ui.Rect rect = ui.Offset(0.0, _kToolbarArrowSize.height) & ui.Size(child.size.width, child.size.height - _kToolbarArrowSize.height * 2);
    return ui.RRect.fromRectAndRadius(rect, _kToolbarBorderRadius).scaleRadii();
  }

  static ui.Path _addRRectToPath(ui.Path path, ui.RRect rrect, {required double startAngle}) {
    const double halfPI = math.pi / 2;
    assert(startAngle % halfPI == 0.0);
    final ui.Rect rect = rrect.outerRect;
    final List<(ui.Offset, ui.Radius)> rrectCorners = <(ui.Offset, ui.Radius)>[
      (rect.bottomRight, -rrect.brRadius),
      (rect.bottomLeft, ui.Radius.elliptical(rrect.blRadiusX, -rrect.blRadiusY)),
      (rect.topLeft, rrect.tlRadius),
      (rect.topRight, ui.Radius.elliptical(-rrect.trRadiusX, rrect.trRadiusY))
    ];
    final int startQuadrantIndex = startAngle ~/ halfPI;
    for (int i = startQuadrantIndex; i < rrectCorners.length + startQuadrantIndex; i += 1) {
      final (ui.Offset vertex, ui.Radius rectCenterOffset) = rrectCorners[i % rrectCorners.length];
      final ui.Offset otherVertex = ui.Offset(vertex.dx + 2 * rectCenterOffset.x, vertex.dy + 2 * rectCenterOffset.y);
      final ui.Rect rect = ui.Rect.fromPoints(vertex, otherVertex);
      path.arcTo(rect, halfPI * i, halfPI, false);
    }
    return path;
  }

  ui.Path _clipPath(_i4.RenderBox child, ui.RRect rrect) {
    final ui.Path path = ui.Path();
    if (_kToolbarBorderRadius.x * 2 + _kToolbarArrowSize.width > size.width) {
      return path..addRRect(rrect);
    }
    final ui.Offset localAnchor = globalToLocal(isAbove ? _anchorAbove : _anchorBelow);
    final double arrowTipX = ui.clampDouble(
        localAnchor.dx, _kToolbarBorderRadius.x + _kToolbarArrowSize.width / 2, size.width - _kToolbarArrowSize.width / 2 - _kToolbarBorderRadius.x);
    if (isAbove) {
      final double arrowBaseY = child.size.height - _kToolbarArrowSize.height;
      final double arrowTipY = child.size.height;
      path
        ..moveTo(arrowTipX + _kToolbarArrowSize.width / 2, arrowBaseY)
        ..lineTo(arrowTipX, arrowTipY)
        ..lineTo(arrowTipX - _kToolbarArrowSize.width / 2, arrowBaseY);
    } else {
      final double arrowBaseY = _kToolbarArrowSize.height;
      const double arrowTipY = 0.0;
      path
        ..moveTo(arrowTipX - _kToolbarArrowSize.width / 2, arrowBaseY)
        ..lineTo(arrowTipX, arrowTipY)
        ..lineTo(arrowTipX + _kToolbarArrowSize.width / 2, arrowBaseY);
    }
    final double startAngle = isAbove ? math.pi / 2 : -math.pi / 2;
    return _addRRectToPath(path, rrect, startAngle: startAngle)..close();
  }

  @override
  void paint(_i4.PaintingContext context, ui.Offset offset) {
    final _i4.RenderBox? child = this.child;
    if (child == null) {
      return;
    }
    final _i4.BoxParentData childParentData = child.parentData! as _i4.BoxParentData;
    final ui.RRect rrect = _shapeRRect(child);
    final ui.Path clipPath = _clipPath(child, rrect);
    if (_shadowColor != null) {
      final _i5.BoxShadow boxShadow = _i5.BoxShadow(color: _shadowColor!, blurRadius: 15.0);
      final ui.RRect shadowRRect = ui.RRect.fromLTRBR(rrect.left, rrect.top, rrect.right, rrect.bottom + _kToolbarArrowSize.height, _kToolbarBorderRadius)
          .shift(offset + childParentData.offset + boxShadow.offset);
      context.canvas.drawRRect(shadowRRect, boxShadow.toPaint());
    }
    _clipPathLayer.layer = context.pushClipPath(needsCompositing, offset + childParentData.offset, ui.Offset.zero & child.size, clipPath,
        (_i4.PaintingContext innerContext, ui.Offset innerOffset) => innerContext.paintChild(child, innerOffset),
        oldLayer: _clipPathLayer.layer);
  }

  final _i4.LayerHandle<_i4.ClipPathLayer> _clipPathLayer = _i4.LayerHandle<_i4.ClipPathLayer>();
  ui.Paint? _debugPaint;
  @override
  void dispose() {
    _clipPathLayer.layer = null;
    super.dispose();
  }

  @override
  void debugPaintSize(_i4.PaintingContext context, ui.Offset offset) {
    assert(() {
      final _i4.RenderBox? child = this.child;
      if (child == null) {
        return true;
      }
      final ui.Paint debugPaint = _debugPaint ??= ui.Paint()
        ..shader = ui.Gradient.linear(
            ui.Offset.zero,
            const ui.Offset(10.0, 10.0),
            const <ui.Color>[ui.Color(0x00000000), ui.Color(0xFFFF00FF), ui.Color(0xFFFF00FF), ui.Color(0x00000000)],
            const <double>[0.25, 0.25, 0.75, 0.75],
            ui.TileMode.repeated)
        ..strokeWidth = 2.0
        ..style = ui.PaintingStyle.stroke;
      final _i4.BoxParentData childParentData = child.parentData! as _i4.BoxParentData;
      final ui.Path clipPath = _clipPath(child, _shapeRRect(child));
      context.canvas.drawPath(clipPath.shift(offset + childParentData.offset), debugPaint);
      return true;
    }());
  }

  @override
  bool hitTestChildren(_i4.BoxHitTestResult result, {required ui.Offset position}) {
    final _i4.RenderBox? child = this.child;
    if (child == null) {
      return false;
    }
    final _i4.BoxParentData childParentData = child.parentData! as _i4.BoxParentData;
    final ui.Rect hitBox = ui.Rect.fromLTWH(
        childParentData.offset.dx, childParentData.offset.dy + _kToolbarArrowSize.height, child.size.width, child.size.height - _kToolbarArrowSize.height * 2);
    if (!hitBox.contains(position)) {
      return false;
    }
    return super.hitTestChildren(result, position: position);
  }
}

const ui.Size _kToolbarArrowSize = ui.Size(
  14.0,
  7.0,
);
const ui.Radius _kToolbarBorderRadius = ui.Radius.circular(8.0);
