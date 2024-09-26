library rxflutterify; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:ui' as ui;

import 'package:flutter/foundation.dart' as _i2;
import 'package:flutter/gestures.dart' as _i4;
import 'package:flutter/rendering.dart' as _i3;
import 'package:flutter/widgets.dart' as _i1;

import '../wrapper.dart';

final class RawGestureDetector extends Wrapper {
  @Goto(_i1.RawGestureDetector.new)
  RawGestureDetector({
    _i2.Key? key,
    _i1.Widget? child,
    Map<Type, _i1.GestureRecognizerFactory> gestures = const {},
    _i3.HitTestBehavior? behavior,
    bool excludeFromSemantics = false,
    _i1.SemanticsGestureDelegate? semantics,
    // Associate with key
    Stream<_i2.Key?>? $key,
    // Associate with child
    Stream<_i1.Widget?>? $child,
    // Associate with gestures
    Stream<Map<Type, _i1.GestureRecognizerFactory>>? $gestures,
    // Associate with behavior
    Stream<_i3.HitTestBehavior?>? $behavior,
    // Associate with excludeFromSemantics
    Stream<bool>? $excludeFromSemantics,
    // Associate with semantics
    Stream<_i1.SemanticsGestureDelegate?>? $semantics,
  }) : super(
          Argument(
            {
              'key': key,
              'child': child,
              'gestures': gestures,
              'behavior': behavior,
              'excludeFromSemantics': excludeFromSemantics,
              'semantics': semantics,
            },
            stream: {
              'key': $key,
              'child': $child,
              'gestures': $gestures,
              'behavior': $behavior,
              'excludeFromSemantics': $excludeFromSemantics,
              'semantics': $semantics,
            },
          ),
          builder: (args) => _i1.RawGestureDetector(
            key: args('key'),
            child: args('child'),
            gestures: args('gestures'),
            behavior: args('behavior'),
            excludeFromSemantics: args('excludeFromSemantics'),
            semantics: args('semantics'),
          ),
        );
}

final class GestureDetector extends Wrapper {
  @Goto(_i1.GestureDetector.new)
  GestureDetector({
    _i2.Key? key,
    _i1.Widget? child,
    _i4.GestureTapDownCallback? onTapDown,
    _i4.GestureTapUpCallback? onTapUp,
    _i4.GestureTapCallback? onTap,
    _i4.GestureTapCancelCallback? onTapCancel,
    _i4.GestureTapCallback? onSecondaryTap,
    _i4.GestureTapDownCallback? onSecondaryTapDown,
    _i4.GestureTapUpCallback? onSecondaryTapUp,
    _i4.GestureTapCancelCallback? onSecondaryTapCancel,
    _i4.GestureTapDownCallback? onTertiaryTapDown,
    _i4.GestureTapUpCallback? onTertiaryTapUp,
    _i4.GestureTapCancelCallback? onTertiaryTapCancel,
    _i4.GestureTapDownCallback? onDoubleTapDown,
    _i4.GestureTapCallback? onDoubleTap,
    _i4.GestureTapCancelCallback? onDoubleTapCancel,
    _i4.GestureLongPressDownCallback? onLongPressDown,
    _i4.GestureLongPressCancelCallback? onLongPressCancel,
    _i4.GestureLongPressCallback? onLongPress,
    _i4.GestureLongPressStartCallback? onLongPressStart,
    _i4.GestureLongPressMoveUpdateCallback? onLongPressMoveUpdate,
    _i4.GestureLongPressUpCallback? onLongPressUp,
    _i4.GestureLongPressEndCallback? onLongPressEnd,
    _i4.GestureLongPressDownCallback? onSecondaryLongPressDown,
    _i4.GestureLongPressCancelCallback? onSecondaryLongPressCancel,
    _i4.GestureLongPressCallback? onSecondaryLongPress,
    _i4.GestureLongPressStartCallback? onSecondaryLongPressStart,
    _i4.GestureLongPressMoveUpdateCallback? onSecondaryLongPressMoveUpdate,
    _i4.GestureLongPressUpCallback? onSecondaryLongPressUp,
    _i4.GestureLongPressEndCallback? onSecondaryLongPressEnd,
    _i4.GestureLongPressDownCallback? onTertiaryLongPressDown,
    _i4.GestureLongPressCancelCallback? onTertiaryLongPressCancel,
    _i4.GestureLongPressCallback? onTertiaryLongPress,
    _i4.GestureLongPressStartCallback? onTertiaryLongPressStart,
    _i4.GestureLongPressMoveUpdateCallback? onTertiaryLongPressMoveUpdate,
    _i4.GestureLongPressUpCallback? onTertiaryLongPressUp,
    _i4.GestureLongPressEndCallback? onTertiaryLongPressEnd,
    _i4.GestureDragDownCallback? onVerticalDragDown,
    _i4.GestureDragStartCallback? onVerticalDragStart,
    _i4.GestureDragUpdateCallback? onVerticalDragUpdate,
    _i4.GestureDragEndCallback? onVerticalDragEnd,
    _i4.GestureDragCancelCallback? onVerticalDragCancel,
    _i4.GestureDragDownCallback? onHorizontalDragDown,
    _i4.GestureDragStartCallback? onHorizontalDragStart,
    _i4.GestureDragUpdateCallback? onHorizontalDragUpdate,
    _i4.GestureDragEndCallback? onHorizontalDragEnd,
    _i4.GestureDragCancelCallback? onHorizontalDragCancel,
    _i4.GestureForcePressStartCallback? onForcePressStart,
    _i4.GestureForcePressPeakCallback? onForcePressPeak,
    _i4.GestureForcePressUpdateCallback? onForcePressUpdate,
    _i4.GestureForcePressEndCallback? onForcePressEnd,
    _i4.GestureDragDownCallback? onPanDown,
    _i4.GestureDragStartCallback? onPanStart,
    _i4.GestureDragUpdateCallback? onPanUpdate,
    _i4.GestureDragEndCallback? onPanEnd,
    _i4.GestureDragCancelCallback? onPanCancel,
    _i4.GestureScaleStartCallback? onScaleStart,
    _i4.GestureScaleUpdateCallback? onScaleUpdate,
    _i4.GestureScaleEndCallback? onScaleEnd,
    _i3.HitTestBehavior? behavior,
    bool excludeFromSemantics = false,
    _i4.DragStartBehavior dragStartBehavior = _i4.DragStartBehavior.start,
    bool trackpadScrollCausesScale = false,
    ui.Offset trackpadScrollToScaleFactor = _i4.kDefaultTrackpadScrollToScaleFactor,
    Set<ui.PointerDeviceKind>? supportedDevices,
    // Associate with key
    Stream<_i2.Key?>? $key,
    // Associate with child
    Stream<_i1.Widget?>? $child,
    // Associate with onTapDown
    Stream<_i4.GestureTapDownCallback?>? $onTapDown,
    // Associate with onTapUp
    Stream<_i4.GestureTapUpCallback?>? $onTapUp,
    // Associate with onTap
    Stream<_i4.GestureTapCallback?>? $onTap,
    // Associate with onTapCancel
    Stream<_i4.GestureTapCancelCallback?>? $onTapCancel,
    // Associate with onSecondaryTap
    Stream<_i4.GestureTapCallback?>? $onSecondaryTap,
    // Associate with onSecondaryTapDown
    Stream<_i4.GestureTapDownCallback?>? $onSecondaryTapDown,
    // Associate with onSecondaryTapUp
    Stream<_i4.GestureTapUpCallback?>? $onSecondaryTapUp,
    // Associate with onSecondaryTapCancel
    Stream<_i4.GestureTapCancelCallback?>? $onSecondaryTapCancel,
    // Associate with onTertiaryTapDown
    Stream<_i4.GestureTapDownCallback?>? $onTertiaryTapDown,
    // Associate with onTertiaryTapUp
    Stream<_i4.GestureTapUpCallback?>? $onTertiaryTapUp,
    // Associate with onTertiaryTapCancel
    Stream<_i4.GestureTapCancelCallback?>? $onTertiaryTapCancel,
    // Associate with onDoubleTapDown
    Stream<_i4.GestureTapDownCallback?>? $onDoubleTapDown,
    // Associate with onDoubleTap
    Stream<_i4.GestureTapCallback?>? $onDoubleTap,
    // Associate with onDoubleTapCancel
    Stream<_i4.GestureTapCancelCallback?>? $onDoubleTapCancel,
    // Associate with onLongPressDown
    Stream<_i4.GestureLongPressDownCallback?>? $onLongPressDown,
    // Associate with onLongPressCancel
    Stream<_i4.GestureLongPressCancelCallback?>? $onLongPressCancel,
    // Associate with onLongPress
    Stream<_i4.GestureLongPressCallback?>? $onLongPress,
    // Associate with onLongPressStart
    Stream<_i4.GestureLongPressStartCallback?>? $onLongPressStart,
    // Associate with onLongPressMoveUpdate
    Stream<_i4.GestureLongPressMoveUpdateCallback?>? $onLongPressMoveUpdate,
    // Associate with onLongPressUp
    Stream<_i4.GestureLongPressUpCallback?>? $onLongPressUp,
    // Associate with onLongPressEnd
    Stream<_i4.GestureLongPressEndCallback?>? $onLongPressEnd,
    // Associate with onSecondaryLongPressDown
    Stream<_i4.GestureLongPressDownCallback?>? $onSecondaryLongPressDown,
    // Associate with onSecondaryLongPressCancel
    Stream<_i4.GestureLongPressCancelCallback?>? $onSecondaryLongPressCancel,
    // Associate with onSecondaryLongPress
    Stream<_i4.GestureLongPressCallback?>? $onSecondaryLongPress,
    // Associate with onSecondaryLongPressStart
    Stream<_i4.GestureLongPressStartCallback?>? $onSecondaryLongPressStart,
    // Associate with onSecondaryLongPressMoveUpdate
    Stream<_i4.GestureLongPressMoveUpdateCallback?>? $onSecondaryLongPressMoveUpdate,
    // Associate with onSecondaryLongPressUp
    Stream<_i4.GestureLongPressUpCallback?>? $onSecondaryLongPressUp,
    // Associate with onSecondaryLongPressEnd
    Stream<_i4.GestureLongPressEndCallback?>? $onSecondaryLongPressEnd,
    // Associate with onTertiaryLongPressDown
    Stream<_i4.GestureLongPressDownCallback?>? $onTertiaryLongPressDown,
    // Associate with onTertiaryLongPressCancel
    Stream<_i4.GestureLongPressCancelCallback?>? $onTertiaryLongPressCancel,
    // Associate with onTertiaryLongPress
    Stream<_i4.GestureLongPressCallback?>? $onTertiaryLongPress,
    // Associate with onTertiaryLongPressStart
    Stream<_i4.GestureLongPressStartCallback?>? $onTertiaryLongPressStart,
    // Associate with onTertiaryLongPressMoveUpdate
    Stream<_i4.GestureLongPressMoveUpdateCallback?>? $onTertiaryLongPressMoveUpdate,
    // Associate with onTertiaryLongPressUp
    Stream<_i4.GestureLongPressUpCallback?>? $onTertiaryLongPressUp,
    // Associate with onTertiaryLongPressEnd
    Stream<_i4.GestureLongPressEndCallback?>? $onTertiaryLongPressEnd,
    // Associate with onVerticalDragDown
    Stream<_i4.GestureDragDownCallback?>? $onVerticalDragDown,
    // Associate with onVerticalDragStart
    Stream<_i4.GestureDragStartCallback?>? $onVerticalDragStart,
    // Associate with onVerticalDragUpdate
    Stream<_i4.GestureDragUpdateCallback?>? $onVerticalDragUpdate,
    // Associate with onVerticalDragEnd
    Stream<_i4.GestureDragEndCallback?>? $onVerticalDragEnd,
    // Associate with onVerticalDragCancel
    Stream<_i4.GestureDragCancelCallback?>? $onVerticalDragCancel,
    // Associate with onHorizontalDragDown
    Stream<_i4.GestureDragDownCallback?>? $onHorizontalDragDown,
    // Associate with onHorizontalDragStart
    Stream<_i4.GestureDragStartCallback?>? $onHorizontalDragStart,
    // Associate with onHorizontalDragUpdate
    Stream<_i4.GestureDragUpdateCallback?>? $onHorizontalDragUpdate,
    // Associate with onHorizontalDragEnd
    Stream<_i4.GestureDragEndCallback?>? $onHorizontalDragEnd,
    // Associate with onHorizontalDragCancel
    Stream<_i4.GestureDragCancelCallback?>? $onHorizontalDragCancel,
    // Associate with onForcePressStart
    Stream<_i4.GestureForcePressStartCallback?>? $onForcePressStart,
    // Associate with onForcePressPeak
    Stream<_i4.GestureForcePressPeakCallback?>? $onForcePressPeak,
    // Associate with onForcePressUpdate
    Stream<_i4.GestureForcePressUpdateCallback?>? $onForcePressUpdate,
    // Associate with onForcePressEnd
    Stream<_i4.GestureForcePressEndCallback?>? $onForcePressEnd,
    // Associate with onPanDown
    Stream<_i4.GestureDragDownCallback?>? $onPanDown,
    // Associate with onPanStart
    Stream<_i4.GestureDragStartCallback?>? $onPanStart,
    // Associate with onPanUpdate
    Stream<_i4.GestureDragUpdateCallback?>? $onPanUpdate,
    // Associate with onPanEnd
    Stream<_i4.GestureDragEndCallback?>? $onPanEnd,
    // Associate with onPanCancel
    Stream<_i4.GestureDragCancelCallback?>? $onPanCancel,
    // Associate with onScaleStart
    Stream<_i4.GestureScaleStartCallback?>? $onScaleStart,
    // Associate with onScaleUpdate
    Stream<_i4.GestureScaleUpdateCallback?>? $onScaleUpdate,
    // Associate with onScaleEnd
    Stream<_i4.GestureScaleEndCallback?>? $onScaleEnd,
    // Associate with behavior
    Stream<_i3.HitTestBehavior?>? $behavior,
    // Associate with excludeFromSemantics
    Stream<bool>? $excludeFromSemantics,
    // Associate with dragStartBehavior
    Stream<_i4.DragStartBehavior>? $dragStartBehavior,
    // Associate with trackpadScrollCausesScale
    Stream<bool>? $trackpadScrollCausesScale,
    // Associate with trackpadScrollToScaleFactor
    Stream<ui.Offset>? $trackpadScrollToScaleFactor,
    // Associate with supportedDevices
    Stream<Set<ui.PointerDeviceKind>?>? $supportedDevices,
  }) : super(
          Argument(
            {
              'key': key,
              'child': child,
              'onTapDown': onTapDown,
              'onTapUp': onTapUp,
              'onTap': onTap,
              'onTapCancel': onTapCancel,
              'onSecondaryTap': onSecondaryTap,
              'onSecondaryTapDown': onSecondaryTapDown,
              'onSecondaryTapUp': onSecondaryTapUp,
              'onSecondaryTapCancel': onSecondaryTapCancel,
              'onTertiaryTapDown': onTertiaryTapDown,
              'onTertiaryTapUp': onTertiaryTapUp,
              'onTertiaryTapCancel': onTertiaryTapCancel,
              'onDoubleTapDown': onDoubleTapDown,
              'onDoubleTap': onDoubleTap,
              'onDoubleTapCancel': onDoubleTapCancel,
              'onLongPressDown': onLongPressDown,
              'onLongPressCancel': onLongPressCancel,
              'onLongPress': onLongPress,
              'onLongPressStart': onLongPressStart,
              'onLongPressMoveUpdate': onLongPressMoveUpdate,
              'onLongPressUp': onLongPressUp,
              'onLongPressEnd': onLongPressEnd,
              'onSecondaryLongPressDown': onSecondaryLongPressDown,
              'onSecondaryLongPressCancel': onSecondaryLongPressCancel,
              'onSecondaryLongPress': onSecondaryLongPress,
              'onSecondaryLongPressStart': onSecondaryLongPressStart,
              'onSecondaryLongPressMoveUpdate': onSecondaryLongPressMoveUpdate,
              'onSecondaryLongPressUp': onSecondaryLongPressUp,
              'onSecondaryLongPressEnd': onSecondaryLongPressEnd,
              'onTertiaryLongPressDown': onTertiaryLongPressDown,
              'onTertiaryLongPressCancel': onTertiaryLongPressCancel,
              'onTertiaryLongPress': onTertiaryLongPress,
              'onTertiaryLongPressStart': onTertiaryLongPressStart,
              'onTertiaryLongPressMoveUpdate': onTertiaryLongPressMoveUpdate,
              'onTertiaryLongPressUp': onTertiaryLongPressUp,
              'onTertiaryLongPressEnd': onTertiaryLongPressEnd,
              'onVerticalDragDown': onVerticalDragDown,
              'onVerticalDragStart': onVerticalDragStart,
              'onVerticalDragUpdate': onVerticalDragUpdate,
              'onVerticalDragEnd': onVerticalDragEnd,
              'onVerticalDragCancel': onVerticalDragCancel,
              'onHorizontalDragDown': onHorizontalDragDown,
              'onHorizontalDragStart': onHorizontalDragStart,
              'onHorizontalDragUpdate': onHorizontalDragUpdate,
              'onHorizontalDragEnd': onHorizontalDragEnd,
              'onHorizontalDragCancel': onHorizontalDragCancel,
              'onForcePressStart': onForcePressStart,
              'onForcePressPeak': onForcePressPeak,
              'onForcePressUpdate': onForcePressUpdate,
              'onForcePressEnd': onForcePressEnd,
              'onPanDown': onPanDown,
              'onPanStart': onPanStart,
              'onPanUpdate': onPanUpdate,
              'onPanEnd': onPanEnd,
              'onPanCancel': onPanCancel,
              'onScaleStart': onScaleStart,
              'onScaleUpdate': onScaleUpdate,
              'onScaleEnd': onScaleEnd,
              'behavior': behavior,
              'excludeFromSemantics': excludeFromSemantics,
              'dragStartBehavior': dragStartBehavior,
              'trackpadScrollCausesScale': trackpadScrollCausesScale,
              'trackpadScrollToScaleFactor': trackpadScrollToScaleFactor,
              'supportedDevices': supportedDevices,
            },
            stream: {
              'key': $key,
              'child': $child,
              'onTapDown': $onTapDown,
              'onTapUp': $onTapUp,
              'onTap': $onTap,
              'onTapCancel': $onTapCancel,
              'onSecondaryTap': $onSecondaryTap,
              'onSecondaryTapDown': $onSecondaryTapDown,
              'onSecondaryTapUp': $onSecondaryTapUp,
              'onSecondaryTapCancel': $onSecondaryTapCancel,
              'onTertiaryTapDown': $onTertiaryTapDown,
              'onTertiaryTapUp': $onTertiaryTapUp,
              'onTertiaryTapCancel': $onTertiaryTapCancel,
              'onDoubleTapDown': $onDoubleTapDown,
              'onDoubleTap': $onDoubleTap,
              'onDoubleTapCancel': $onDoubleTapCancel,
              'onLongPressDown': $onLongPressDown,
              'onLongPressCancel': $onLongPressCancel,
              'onLongPress': $onLongPress,
              'onLongPressStart': $onLongPressStart,
              'onLongPressMoveUpdate': $onLongPressMoveUpdate,
              'onLongPressUp': $onLongPressUp,
              'onLongPressEnd': $onLongPressEnd,
              'onSecondaryLongPressDown': $onSecondaryLongPressDown,
              'onSecondaryLongPressCancel': $onSecondaryLongPressCancel,
              'onSecondaryLongPress': $onSecondaryLongPress,
              'onSecondaryLongPressStart': $onSecondaryLongPressStart,
              'onSecondaryLongPressMoveUpdate': $onSecondaryLongPressMoveUpdate,
              'onSecondaryLongPressUp': $onSecondaryLongPressUp,
              'onSecondaryLongPressEnd': $onSecondaryLongPressEnd,
              'onTertiaryLongPressDown': $onTertiaryLongPressDown,
              'onTertiaryLongPressCancel': $onTertiaryLongPressCancel,
              'onTertiaryLongPress': $onTertiaryLongPress,
              'onTertiaryLongPressStart': $onTertiaryLongPressStart,
              'onTertiaryLongPressMoveUpdate': $onTertiaryLongPressMoveUpdate,
              'onTertiaryLongPressUp': $onTertiaryLongPressUp,
              'onTertiaryLongPressEnd': $onTertiaryLongPressEnd,
              'onVerticalDragDown': $onVerticalDragDown,
              'onVerticalDragStart': $onVerticalDragStart,
              'onVerticalDragUpdate': $onVerticalDragUpdate,
              'onVerticalDragEnd': $onVerticalDragEnd,
              'onVerticalDragCancel': $onVerticalDragCancel,
              'onHorizontalDragDown': $onHorizontalDragDown,
              'onHorizontalDragStart': $onHorizontalDragStart,
              'onHorizontalDragUpdate': $onHorizontalDragUpdate,
              'onHorizontalDragEnd': $onHorizontalDragEnd,
              'onHorizontalDragCancel': $onHorizontalDragCancel,
              'onForcePressStart': $onForcePressStart,
              'onForcePressPeak': $onForcePressPeak,
              'onForcePressUpdate': $onForcePressUpdate,
              'onForcePressEnd': $onForcePressEnd,
              'onPanDown': $onPanDown,
              'onPanStart': $onPanStart,
              'onPanUpdate': $onPanUpdate,
              'onPanEnd': $onPanEnd,
              'onPanCancel': $onPanCancel,
              'onScaleStart': $onScaleStart,
              'onScaleUpdate': $onScaleUpdate,
              'onScaleEnd': $onScaleEnd,
              'behavior': $behavior,
              'excludeFromSemantics': $excludeFromSemantics,
              'dragStartBehavior': $dragStartBehavior,
              'trackpadScrollCausesScale': $trackpadScrollCausesScale,
              'trackpadScrollToScaleFactor': $trackpadScrollToScaleFactor,
              'supportedDevices': $supportedDevices,
            },
          ),
          builder: (args) => _i1.GestureDetector(
            key: args('key'),
            child: args('child'),
            onTapDown: args('onTapDown'),
            onTapUp: args('onTapUp'),
            onTap: args('onTap'),
            onTapCancel: args('onTapCancel'),
            onSecondaryTap: args('onSecondaryTap'),
            onSecondaryTapDown: args('onSecondaryTapDown'),
            onSecondaryTapUp: args('onSecondaryTapUp'),
            onSecondaryTapCancel: args('onSecondaryTapCancel'),
            onTertiaryTapDown: args('onTertiaryTapDown'),
            onTertiaryTapUp: args('onTertiaryTapUp'),
            onTertiaryTapCancel: args('onTertiaryTapCancel'),
            onDoubleTapDown: args('onDoubleTapDown'),
            onDoubleTap: args('onDoubleTap'),
            onDoubleTapCancel: args('onDoubleTapCancel'),
            onLongPressDown: args('onLongPressDown'),
            onLongPressCancel: args('onLongPressCancel'),
            onLongPress: args('onLongPress'),
            onLongPressStart: args('onLongPressStart'),
            onLongPressMoveUpdate: args('onLongPressMoveUpdate'),
            onLongPressUp: args('onLongPressUp'),
            onLongPressEnd: args('onLongPressEnd'),
            onSecondaryLongPressDown: args('onSecondaryLongPressDown'),
            onSecondaryLongPressCancel: args('onSecondaryLongPressCancel'),
            onSecondaryLongPress: args('onSecondaryLongPress'),
            onSecondaryLongPressStart: args('onSecondaryLongPressStart'),
            onSecondaryLongPressMoveUpdate: args('onSecondaryLongPressMoveUpdate'),
            onSecondaryLongPressUp: args('onSecondaryLongPressUp'),
            onSecondaryLongPressEnd: args('onSecondaryLongPressEnd'),
            onTertiaryLongPressDown: args('onTertiaryLongPressDown'),
            onTertiaryLongPressCancel: args('onTertiaryLongPressCancel'),
            onTertiaryLongPress: args('onTertiaryLongPress'),
            onTertiaryLongPressStart: args('onTertiaryLongPressStart'),
            onTertiaryLongPressMoveUpdate: args('onTertiaryLongPressMoveUpdate'),
            onTertiaryLongPressUp: args('onTertiaryLongPressUp'),
            onTertiaryLongPressEnd: args('onTertiaryLongPressEnd'),
            onVerticalDragDown: args('onVerticalDragDown'),
            onVerticalDragStart: args('onVerticalDragStart'),
            onVerticalDragUpdate: args('onVerticalDragUpdate'),
            onVerticalDragEnd: args('onVerticalDragEnd'),
            onVerticalDragCancel: args('onVerticalDragCancel'),
            onHorizontalDragDown: args('onHorizontalDragDown'),
            onHorizontalDragStart: args('onHorizontalDragStart'),
            onHorizontalDragUpdate: args('onHorizontalDragUpdate'),
            onHorizontalDragEnd: args('onHorizontalDragEnd'),
            onHorizontalDragCancel: args('onHorizontalDragCancel'),
            onForcePressStart: args('onForcePressStart'),
            onForcePressPeak: args('onForcePressPeak'),
            onForcePressUpdate: args('onForcePressUpdate'),
            onForcePressEnd: args('onForcePressEnd'),
            onPanDown: args('onPanDown'),
            onPanStart: args('onPanStart'),
            onPanUpdate: args('onPanUpdate'),
            onPanEnd: args('onPanEnd'),
            onPanCancel: args('onPanCancel'),
            onScaleStart: args('onScaleStart'),
            onScaleUpdate: args('onScaleUpdate'),
            onScaleEnd: args('onScaleEnd'),
            behavior: args('behavior'),
            excludeFromSemantics: args('excludeFromSemantics'),
            dragStartBehavior: args('dragStartBehavior'),
            trackpadScrollCausesScale: args('trackpadScrollCausesScale'),
            trackpadScrollToScaleFactor: args('trackpadScrollToScaleFactor'),
            supportedDevices: args('supportedDevices'),
          ),
        );
}
