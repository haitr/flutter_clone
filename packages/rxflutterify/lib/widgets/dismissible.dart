library rxflutterify; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:ui' as ui;

import 'package:flutter/foundation.dart' as _i2;
import 'package:flutter/gestures.dart' as _i3;
import 'package:flutter/rendering.dart' as _i4;
import 'package:flutter/widgets.dart' as _i1;

import '../wrapper.dart';

final class Dismissible extends Wrapper {
  @Goto(_i1.Dismissible.new)
  Dismissible({
    required _i2.Key key,
    required _i1.Widget child,
    _i1.Widget? background,
    _i1.Widget? secondaryBackground,
    _i1.ConfirmDismissCallback? confirmDismiss,
    ui.VoidCallback? onResize,
    _i1.DismissUpdateCallback? onUpdate,
    _i1.DismissDirectionCallback? onDismissed,
    _i1.DismissDirection direction = _i1.DismissDirection.horizontal,
    Duration? resizeDuration = const Duration(milliseconds: 300),
    Map<_i1.DismissDirection, double> dismissThresholds = const {},
    Duration movementDuration = const Duration(milliseconds: 200),
    double crossAxisEndOffset = 0.0,
    _i3.DragStartBehavior dragStartBehavior = _i3.DragStartBehavior.start,
    _i4.HitTestBehavior behavior = _i4.HitTestBehavior.opaque,
    // Associate with key
    Stream<_i2.Key>? $key,
    // Associate with child
    Stream<_i1.Widget>? $child,
    // Associate with background
    Stream<_i1.Widget?>? $background,
    // Associate with secondaryBackground
    Stream<_i1.Widget?>? $secondaryBackground,
    // Associate with confirmDismiss
    Stream<_i1.ConfirmDismissCallback?>? $confirmDismiss,
    // Associate with onResize
    Stream<ui.VoidCallback?>? $onResize,
    // Associate with onUpdate
    Stream<_i1.DismissUpdateCallback?>? $onUpdate,
    // Associate with onDismissed
    Stream<_i1.DismissDirectionCallback?>? $onDismissed,
    // Associate with direction
    Stream<_i1.DismissDirection>? $direction,
    // Associate with resizeDuration
    Stream<Duration?>? $resizeDuration,
    // Associate with dismissThresholds
    Stream<Map<_i1.DismissDirection, double>>? $dismissThresholds,
    // Associate with movementDuration
    Stream<Duration>? $movementDuration,
    // Associate with crossAxisEndOffset
    Stream<double>? $crossAxisEndOffset,
    // Associate with dragStartBehavior
    Stream<_i3.DragStartBehavior>? $dragStartBehavior,
    // Associate with behavior
    Stream<_i4.HitTestBehavior>? $behavior,
  }) : super(
          Argument(
            {
              'key': key,
              'child': child,
              'background': background,
              'secondaryBackground': secondaryBackground,
              'confirmDismiss': confirmDismiss,
              'onResize': onResize,
              'onUpdate': onUpdate,
              'onDismissed': onDismissed,
              'direction': direction,
              'resizeDuration': resizeDuration,
              'dismissThresholds': dismissThresholds,
              'movementDuration': movementDuration,
              'crossAxisEndOffset': crossAxisEndOffset,
              'dragStartBehavior': dragStartBehavior,
              'behavior': behavior,
            },
            stream: {
              'key': $key,
              'child': $child,
              'background': $background,
              'secondaryBackground': $secondaryBackground,
              'confirmDismiss': $confirmDismiss,
              'onResize': $onResize,
              'onUpdate': $onUpdate,
              'onDismissed': $onDismissed,
              'direction': $direction,
              'resizeDuration': $resizeDuration,
              'dismissThresholds': $dismissThresholds,
              'movementDuration': $movementDuration,
              'crossAxisEndOffset': $crossAxisEndOffset,
              'dragStartBehavior': $dragStartBehavior,
              'behavior': $behavior,
            },
          ),
          builder: (args) => _i1.Dismissible(
            key: args('key'),
            child: args('child'),
            background: args('background'),
            secondaryBackground: args('secondaryBackground'),
            confirmDismiss: args('confirmDismiss'),
            onResize: args('onResize'),
            onUpdate: args('onUpdate'),
            onDismissed: args('onDismissed'),
            direction: args('direction'),
            resizeDuration: args('resizeDuration'),
            dismissThresholds: args('dismissThresholds'),
            movementDuration: args('movementDuration'),
            crossAxisEndOffset: args('crossAxisEndOffset'),
            dragStartBehavior: args('dragStartBehavior'),
            behavior: args('behavior'),
          ),
        );
}
