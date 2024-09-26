library rxflutterify; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:ui' as ui;

import 'package:flutter/foundation.dart' as _i2;
import 'package:flutter/gestures.dart' as _i3;
import 'package:flutter/rendering.dart' as _i4;
import 'package:flutter/widgets.dart' as _i1;

import '../wrapper.dart';

final class TextSelectionGestureDetector extends Wrapper {
  @Goto(_i1.TextSelectionGestureDetector.new)
  TextSelectionGestureDetector({
    _i2.Key? key,
    ui.VoidCallback? onTapTrackStart,
    ui.VoidCallback? onTapTrackReset,
    _i3.GestureTapDragDownCallback? onTapDown,
    _i3.GestureForcePressStartCallback? onForcePressStart,
    _i3.GestureForcePressEndCallback? onForcePressEnd,
    _i3.GestureTapCallback? onSecondaryTap,
    _i3.GestureTapDownCallback? onSecondaryTapDown,
    _i3.GestureTapDragUpCallback? onSingleTapUp,
    _i3.GestureCancelCallback? onSingleTapCancel,
    _i3.GestureTapCallback? onUserTap,
    _i3.GestureLongPressStartCallback? onSingleLongTapStart,
    _i3.GestureLongPressMoveUpdateCallback? onSingleLongTapMoveUpdate,
    _i3.GestureLongPressEndCallback? onSingleLongTapEnd,
    _i3.GestureTapDragDownCallback? onDoubleTapDown,
    _i3.GestureTapDragDownCallback? onTripleTapDown,
    _i3.GestureTapDragStartCallback? onDragSelectionStart,
    _i3.GestureTapDragUpdateCallback? onDragSelectionUpdate,
    _i3.GestureTapDragEndCallback? onDragSelectionEnd,
    bool onUserTapAlwaysCalled = false,
    _i4.HitTestBehavior? behavior,
    required _i1.Widget child,
    // Associate with key
    Stream<_i2.Key?>? $key,
    // Associate with onTapTrackStart
    Stream<ui.VoidCallback?>? $onTapTrackStart,
    // Associate with onTapTrackReset
    Stream<ui.VoidCallback?>? $onTapTrackReset,
    // Associate with onTapDown
    Stream<_i3.GestureTapDragDownCallback?>? $onTapDown,
    // Associate with onForcePressStart
    Stream<_i3.GestureForcePressStartCallback?>? $onForcePressStart,
    // Associate with onForcePressEnd
    Stream<_i3.GestureForcePressEndCallback?>? $onForcePressEnd,
    // Associate with onSecondaryTap
    Stream<_i3.GestureTapCallback?>? $onSecondaryTap,
    // Associate with onSecondaryTapDown
    Stream<_i3.GestureTapDownCallback?>? $onSecondaryTapDown,
    // Associate with onSingleTapUp
    Stream<_i3.GestureTapDragUpCallback?>? $onSingleTapUp,
    // Associate with onSingleTapCancel
    Stream<_i3.GestureCancelCallback?>? $onSingleTapCancel,
    // Associate with onUserTap
    Stream<_i3.GestureTapCallback?>? $onUserTap,
    // Associate with onSingleLongTapStart
    Stream<_i3.GestureLongPressStartCallback?>? $onSingleLongTapStart,
    // Associate with onSingleLongTapMoveUpdate
    Stream<_i3.GestureLongPressMoveUpdateCallback?>? $onSingleLongTapMoveUpdate,
    // Associate with onSingleLongTapEnd
    Stream<_i3.GestureLongPressEndCallback?>? $onSingleLongTapEnd,
    // Associate with onDoubleTapDown
    Stream<_i3.GestureTapDragDownCallback?>? $onDoubleTapDown,
    // Associate with onTripleTapDown
    Stream<_i3.GestureTapDragDownCallback?>? $onTripleTapDown,
    // Associate with onDragSelectionStart
    Stream<_i3.GestureTapDragStartCallback?>? $onDragSelectionStart,
    // Associate with onDragSelectionUpdate
    Stream<_i3.GestureTapDragUpdateCallback?>? $onDragSelectionUpdate,
    // Associate with onDragSelectionEnd
    Stream<_i3.GestureTapDragEndCallback?>? $onDragSelectionEnd,
    // Associate with onUserTapAlwaysCalled
    Stream<bool>? $onUserTapAlwaysCalled,
    // Associate with behavior
    Stream<_i4.HitTestBehavior?>? $behavior,
    // Associate with child
    Stream<_i1.Widget>? $child,
  }) : super(
          Argument(
            {
              'key': key,
              'onTapTrackStart': onTapTrackStart,
              'onTapTrackReset': onTapTrackReset,
              'onTapDown': onTapDown,
              'onForcePressStart': onForcePressStart,
              'onForcePressEnd': onForcePressEnd,
              'onSecondaryTap': onSecondaryTap,
              'onSecondaryTapDown': onSecondaryTapDown,
              'onSingleTapUp': onSingleTapUp,
              'onSingleTapCancel': onSingleTapCancel,
              'onUserTap': onUserTap,
              'onSingleLongTapStart': onSingleLongTapStart,
              'onSingleLongTapMoveUpdate': onSingleLongTapMoveUpdate,
              'onSingleLongTapEnd': onSingleLongTapEnd,
              'onDoubleTapDown': onDoubleTapDown,
              'onTripleTapDown': onTripleTapDown,
              'onDragSelectionStart': onDragSelectionStart,
              'onDragSelectionUpdate': onDragSelectionUpdate,
              'onDragSelectionEnd': onDragSelectionEnd,
              'onUserTapAlwaysCalled': onUserTapAlwaysCalled,
              'behavior': behavior,
              'child': child,
            },
            stream: {
              'key': $key,
              'onTapTrackStart': $onTapTrackStart,
              'onTapTrackReset': $onTapTrackReset,
              'onTapDown': $onTapDown,
              'onForcePressStart': $onForcePressStart,
              'onForcePressEnd': $onForcePressEnd,
              'onSecondaryTap': $onSecondaryTap,
              'onSecondaryTapDown': $onSecondaryTapDown,
              'onSingleTapUp': $onSingleTapUp,
              'onSingleTapCancel': $onSingleTapCancel,
              'onUserTap': $onUserTap,
              'onSingleLongTapStart': $onSingleLongTapStart,
              'onSingleLongTapMoveUpdate': $onSingleLongTapMoveUpdate,
              'onSingleLongTapEnd': $onSingleLongTapEnd,
              'onDoubleTapDown': $onDoubleTapDown,
              'onTripleTapDown': $onTripleTapDown,
              'onDragSelectionStart': $onDragSelectionStart,
              'onDragSelectionUpdate': $onDragSelectionUpdate,
              'onDragSelectionEnd': $onDragSelectionEnd,
              'onUserTapAlwaysCalled': $onUserTapAlwaysCalled,
              'behavior': $behavior,
              'child': $child,
            },
          ),
          builder: (args) => _i1.TextSelectionGestureDetector(
            key: args('key'),
            onTapTrackStart: args('onTapTrackStart'),
            onTapTrackReset: args('onTapTrackReset'),
            onTapDown: args('onTapDown'),
            onForcePressStart: args('onForcePressStart'),
            onForcePressEnd: args('onForcePressEnd'),
            onSecondaryTap: args('onSecondaryTap'),
            onSecondaryTapDown: args('onSecondaryTapDown'),
            onSingleTapUp: args('onSingleTapUp'),
            onSingleTapCancel: args('onSingleTapCancel'),
            onUserTap: args('onUserTap'),
            onSingleLongTapStart: args('onSingleLongTapStart'),
            onSingleLongTapMoveUpdate: args('onSingleLongTapMoveUpdate'),
            onSingleLongTapEnd: args('onSingleLongTapEnd'),
            onDoubleTapDown: args('onDoubleTapDown'),
            onTripleTapDown: args('onTripleTapDown'),
            onDragSelectionStart: args('onDragSelectionStart'),
            onDragSelectionUpdate: args('onDragSelectionUpdate'),
            onDragSelectionEnd: args('onDragSelectionEnd'),
            onUserTapAlwaysCalled: args('onUserTapAlwaysCalled'),
            behavior: args('behavior'),
            child: args('child'),
          ),
        );
}
