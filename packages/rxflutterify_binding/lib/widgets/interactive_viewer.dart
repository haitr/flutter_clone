library rxflutterify_binding; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:ui' as ui;

import 'package:flutter/foundation.dart' as _i2;
import 'package:flutter/gestures.dart' as _i4;
import 'package:flutter/painting.dart' as _i3;
import 'package:flutter/widgets.dart' as _i1;

import '../wrapper.dart';

final class InteractiveViewer extends Wrapper {
  @Goto(_i1.InteractiveViewer.new)
  InteractiveViewer(
    $ $config, {
    _i2.Key? key,
    ui.Clip clipBehavior = ui.Clip.hardEdge,
    _i1.PanAxis panAxis = _i1.PanAxis.free,
    _i3.EdgeInsets boundaryMargin = _i3.EdgeInsets.zero,
    bool constrained = true,
    double maxScale = 2.5,
    double minScale = 0.8,
    double interactionEndFrictionCoefficient = _kDrag,
    _i4.GestureScaleEndCallback? onInteractionEnd,
    _i4.GestureScaleStartCallback? onInteractionStart,
    _i4.GestureScaleUpdateCallback? onInteractionUpdate,
    bool panEnabled = true,
    bool scaleEnabled = true,
    double scaleFactor = _i4.kDefaultMouseScrollToScaleFactor,
    _i1.TransformationController? transformationController,
    _i3.Alignment? alignment,
    bool trackpadScrollCausesScale = false,
    required _i1.Widget child,
  }) : super(
          Argument({
            #key: key,
            #clipBehavior: clipBehavior,
            #panAxis: panAxis,
            #boundaryMargin: boundaryMargin,
            #constrained: constrained,
            #maxScale: maxScale,
            #minScale: minScale,
            #interactionEndFrictionCoefficient: interactionEndFrictionCoefficient,
            #onInteractionEnd: onInteractionEnd,
            #onInteractionStart: onInteractionStart,
            #onInteractionUpdate: onInteractionUpdate,
            #panEnabled: panEnabled,
            #scaleEnabled: scaleEnabled,
            #scaleFactor: scaleFactor,
            #transformationController: transformationController,
            #alignment: alignment,
            #trackpadScrollCausesScale: trackpadScrollCausesScale,
            #child: child,
          }),
          builder: (args) => _i1.InteractiveViewer(
            key: args(#key),
            clipBehavior: args(#clipBehavior),
            panAxis: args(#panAxis),
            boundaryMargin: args(#boundaryMargin),
            constrained: args(#constrained),
            maxScale: args(#maxScale),
            minScale: args(#minScale),
            interactionEndFrictionCoefficient: args(#interactionEndFrictionCoefficient),
            onInteractionEnd: args(#onInteractionEnd),
            onInteractionStart: args(#onInteractionStart),
            onInteractionUpdate: args(#onInteractionUpdate),
            panEnabled: args(#panEnabled),
            scaleEnabled: args(#scaleEnabled),
            scaleFactor: args(#scaleFactor),
            transformationController: args(#transformationController),
            alignment: args(#alignment),
            trackpadScrollCausesScale: args(#trackpadScrollCausesScale),
            child: args(#child),
          ),
        );

  @Goto(_i1.InteractiveViewer.builder)
  InteractiveViewer.builder(
    $ $config, {
    _i2.Key? key,
    ui.Clip clipBehavior = ui.Clip.hardEdge,
    _i1.PanAxis panAxis = _i1.PanAxis.free,
    _i3.EdgeInsets boundaryMargin = _i3.EdgeInsets.zero,
    double maxScale = 2.5,
    double minScale = 0.8,
    double interactionEndFrictionCoefficient = _kDrag,
    _i4.GestureScaleEndCallback? onInteractionEnd,
    _i4.GestureScaleStartCallback? onInteractionStart,
    _i4.GestureScaleUpdateCallback? onInteractionUpdate,
    bool panEnabled = true,
    bool scaleEnabled = true,
    double scaleFactor = 200.0,
    _i1.TransformationController? transformationController,
    _i3.Alignment? alignment,
    bool trackpadScrollCausesScale = false,
    required _i1.InteractiveViewerWidgetBuilder builder,
  }) : super(
          Argument({
            #key: key,
            #clipBehavior: clipBehavior,
            #panAxis: panAxis,
            #boundaryMargin: boundaryMargin,
            #maxScale: maxScale,
            #minScale: minScale,
            #interactionEndFrictionCoefficient: interactionEndFrictionCoefficient,
            #onInteractionEnd: onInteractionEnd,
            #onInteractionStart: onInteractionStart,
            #onInteractionUpdate: onInteractionUpdate,
            #panEnabled: panEnabled,
            #scaleEnabled: scaleEnabled,
            #scaleFactor: scaleFactor,
            #transformationController: transformationController,
            #alignment: alignment,
            #trackpadScrollCausesScale: trackpadScrollCausesScale,
            #builder: builder,
          }),
          builder: (args) => _i1.InteractiveViewer.builder(
            key: args(#key),
            clipBehavior: args(#clipBehavior),
            panAxis: args(#panAxis),
            boundaryMargin: args(#boundaryMargin),
            maxScale: args(#maxScale),
            minScale: args(#minScale),
            interactionEndFrictionCoefficient: args(#interactionEndFrictionCoefficient),
            onInteractionEnd: args(#onInteractionEnd),
            onInteractionStart: args(#onInteractionStart),
            onInteractionUpdate: args(#onInteractionUpdate),
            panEnabled: args(#panEnabled),
            scaleEnabled: args(#scaleEnabled),
            scaleFactor: args(#scaleFactor),
            transformationController: args(#transformationController),
            alignment: args(#alignment),
            trackpadScrollCausesScale: args(#trackpadScrollCausesScale),
            builder: args(#builder),
          ),
        );

  static const double _kDrag = 0.0000135;
}
