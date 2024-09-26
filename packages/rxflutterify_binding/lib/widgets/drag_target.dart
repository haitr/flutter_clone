library rxflutterify_binding; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:ui' as ui;

import 'package:flutter/foundation.dart' as _i2;
import 'package:flutter/gestures.dart' as _i4;
import 'package:flutter/painting.dart' as _i3;
import 'package:flutter/rendering.dart' as _i5;
import 'package:flutter/widgets.dart' as _i1;

import '../wrapper.dart';

final class LongPressDraggable<T extends Object> extends Wrapper {
  @Goto(_i1.LongPressDraggable.new)
  LongPressDraggable(
    $ $config, {
    _i2.Key? key,
    required _i1.Widget child,
    required _i1.Widget feedback,
    T? data,
    _i3.Axis? axis,
    _i1.Widget? childWhenDragging,
    ui.Offset feedbackOffset = ui.Offset.zero,
    _i1.DragAnchorStrategy dragAnchorStrategy = _i1.childDragAnchorStrategy,
    int? maxSimultaneousDrags,
    ui.VoidCallback? onDragStarted,
    _i1.DragUpdateCallback? onDragUpdate,
    _i1.DraggableCanceledCallback? onDraggableCanceled,
    _i1.DragEndCallback? onDragEnd,
    ui.VoidCallback? onDragCompleted,
    bool hapticFeedbackOnStart = true,
    bool ignoringFeedbackSemantics = true,
    bool ignoringFeedbackPointer = true,
    Duration delay = _i4.kLongPressTimeout,
    _i4.AllowedButtonsFilter? allowedButtonsFilter,
  }) : super(
          Argument({
            #key: key,
            #child: child,
            #feedback: feedback,
            #data: data,
            #axis: axis,
            #childWhenDragging: childWhenDragging,
            #feedbackOffset: feedbackOffset,
            #dragAnchorStrategy: dragAnchorStrategy,
            #maxSimultaneousDrags: maxSimultaneousDrags,
            #onDragStarted: onDragStarted,
            #onDragUpdate: onDragUpdate,
            #onDraggableCanceled: onDraggableCanceled,
            #onDragEnd: onDragEnd,
            #onDragCompleted: onDragCompleted,
            #hapticFeedbackOnStart: hapticFeedbackOnStart,
            #ignoringFeedbackSemantics: ignoringFeedbackSemantics,
            #ignoringFeedbackPointer: ignoringFeedbackPointer,
            #delay: delay,
            #allowedButtonsFilter: allowedButtonsFilter,
          }),
          builder: (args) => _i1.LongPressDraggable<T>(
            key: args(#key),
            child: args(#child),
            feedback: args(#feedback),
            data: args(#data),
            axis: args(#axis),
            childWhenDragging: args(#childWhenDragging),
            feedbackOffset: args(#feedbackOffset),
            dragAnchorStrategy: args(#dragAnchorStrategy),
            maxSimultaneousDrags: args(#maxSimultaneousDrags),
            onDragStarted: args(#onDragStarted),
            onDragUpdate: args(#onDragUpdate),
            onDraggableCanceled: args(#onDraggableCanceled),
            onDragEnd: args(#onDragEnd),
            onDragCompleted: args(#onDragCompleted),
            hapticFeedbackOnStart: args(#hapticFeedbackOnStart),
            ignoringFeedbackSemantics: args(#ignoringFeedbackSemantics),
            ignoringFeedbackPointer: args(#ignoringFeedbackPointer),
            delay: args(#delay),
            allowedButtonsFilter: args(#allowedButtonsFilter),
          ),
        );
}

final class DragTarget<T extends Object> extends Wrapper {
  @Goto(_i1.DragTarget.new)
  DragTarget(
    $ $config, {
    _i2.Key? key,
    required _i1.DragTargetBuilder<T> builder,
    _i1.DragTargetWillAccept<T>? onWillAccept,
    _i1.DragTargetWillAcceptWithDetails<T>? onWillAcceptWithDetails,
    _i1.DragTargetAccept<T>? onAccept,
    _i1.DragTargetAcceptWithDetails<T>? onAcceptWithDetails,
    _i1.DragTargetLeave<T>? onLeave,
    _i1.DragTargetMove<T>? onMove,
    _i5.HitTestBehavior hitTestBehavior = _i5.HitTestBehavior.translucent,
  }) : super(
          Argument({
            #key: key,
            #builder: builder,
            #onWillAccept: onWillAccept,
            #onWillAcceptWithDetails: onWillAcceptWithDetails,
            #onAccept: onAccept,
            #onAcceptWithDetails: onAcceptWithDetails,
            #onLeave: onLeave,
            #onMove: onMove,
            #hitTestBehavior: hitTestBehavior,
          }),
          builder: (args) => _i1.DragTarget<T>(
            key: args(#key),
            builder: args(#builder),
            onWillAccept: args(#onWillAccept),
            onWillAcceptWithDetails: args(#onWillAcceptWithDetails),
            onAccept: args(#onAccept),
            onAcceptWithDetails: args(#onAcceptWithDetails),
            onLeave: args(#onLeave),
            onMove: args(#onMove),
            hitTestBehavior: args(#hitTestBehavior),
          ),
        );
}

final class Draggable<T extends Object> extends Wrapper {
  @Goto(_i1.Draggable.new)
  Draggable(
    $ $config, {
    _i2.Key? key,
    required _i1.Widget child,
    required _i1.Widget feedback,
    T? data,
    _i3.Axis? axis,
    _i1.Widget? childWhenDragging,
    ui.Offset feedbackOffset = ui.Offset.zero,
    _i1.DragAnchorStrategy dragAnchorStrategy = _i1.childDragAnchorStrategy,
    _i3.Axis? affinity,
    int? maxSimultaneousDrags,
    ui.VoidCallback? onDragStarted,
    _i1.DragUpdateCallback? onDragUpdate,
    _i1.DraggableCanceledCallback? onDraggableCanceled,
    _i1.DragEndCallback? onDragEnd,
    ui.VoidCallback? onDragCompleted,
    bool ignoringFeedbackSemantics = true,
    bool ignoringFeedbackPointer = true,
    bool rootOverlay = false,
    _i5.HitTestBehavior hitTestBehavior = _i5.HitTestBehavior.deferToChild,
    _i4.AllowedButtonsFilter? allowedButtonsFilter,
  }) : super(
          Argument({
            #key: key,
            #child: child,
            #feedback: feedback,
            #data: data,
            #axis: axis,
            #childWhenDragging: childWhenDragging,
            #feedbackOffset: feedbackOffset,
            #dragAnchorStrategy: dragAnchorStrategy,
            #affinity: affinity,
            #maxSimultaneousDrags: maxSimultaneousDrags,
            #onDragStarted: onDragStarted,
            #onDragUpdate: onDragUpdate,
            #onDraggableCanceled: onDraggableCanceled,
            #onDragEnd: onDragEnd,
            #onDragCompleted: onDragCompleted,
            #ignoringFeedbackSemantics: ignoringFeedbackSemantics,
            #ignoringFeedbackPointer: ignoringFeedbackPointer,
            #rootOverlay: rootOverlay,
            #hitTestBehavior: hitTestBehavior,
            #allowedButtonsFilter: allowedButtonsFilter,
          }),
          builder: (args) => _i1.Draggable<T>(
            key: args(#key),
            child: args(#child),
            feedback: args(#feedback),
            data: args(#data),
            axis: args(#axis),
            childWhenDragging: args(#childWhenDragging),
            feedbackOffset: args(#feedbackOffset),
            dragAnchorStrategy: args(#dragAnchorStrategy),
            affinity: args(#affinity),
            maxSimultaneousDrags: args(#maxSimultaneousDrags),
            onDragStarted: args(#onDragStarted),
            onDragUpdate: args(#onDragUpdate),
            onDraggableCanceled: args(#onDraggableCanceled),
            onDragEnd: args(#onDragEnd),
            onDragCompleted: args(#onDragCompleted),
            ignoringFeedbackSemantics: args(#ignoringFeedbackSemantics),
            ignoringFeedbackPointer: args(#ignoringFeedbackPointer),
            rootOverlay: args(#rootOverlay),
            hitTestBehavior: args(#hitTestBehavior),
            allowedButtonsFilter: args(#allowedButtonsFilter),
          ),
        );
}
