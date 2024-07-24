library rxflutter; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:ui' as ui;

import 'package:flutter/foundation.dart' as _i2;
import 'package:flutter/painting.dart' as _i3;
import 'package:flutter/widgets.dart' as _i1;

import '../wrapper.dart';

final class StretchingOverscrollIndicator extends Wrapper {
  @Goto(_i1.StretchingOverscrollIndicator.new)
  StretchingOverscrollIndicator({
    _i2.Key? key,
    required _i3.AxisDirection axisDirection,
    _i1.ScrollNotificationPredicate notificationPredicate = _i1.defaultScrollNotificationPredicate,
    ui.Clip clipBehavior = ui.Clip.hardEdge,
    _i1.Widget? child,
    // Associate with key
    Stream<_i2.Key?>? $key,
    // Associate with axisDirection
    Stream<_i3.AxisDirection>? $axisDirection,
    // Associate with notificationPredicate
    Stream<_i1.ScrollNotificationPredicate>? $notificationPredicate,
    // Associate with clipBehavior
    Stream<ui.Clip>? $clipBehavior,
    // Associate with child
    Stream<_i1.Widget?>? $child,
  }) : super(
          Argument(
            {
              'key': key,
              'axisDirection': axisDirection,
              'notificationPredicate': notificationPredicate,
              'clipBehavior': clipBehavior,
              'child': child,
            },
            stream: {
              'key': $key,
              'axisDirection': $axisDirection,
              'notificationPredicate': $notificationPredicate,
              'clipBehavior': $clipBehavior,
              'child': $child,
            },
          ),
          builder: (args) => _i1.StretchingOverscrollIndicator(
            key: args('key'),
            axisDirection: args('axisDirection'),
            notificationPredicate: args('notificationPredicate'),
            clipBehavior: args('clipBehavior'),
            child: args('child'),
          ),
        );
}

final class GlowingOverscrollIndicator extends Wrapper {
  @Goto(_i1.GlowingOverscrollIndicator.new)
  GlowingOverscrollIndicator({
    _i2.Key? key,
    bool showLeading = true,
    bool showTrailing = true,
    required _i3.AxisDirection axisDirection,
    required ui.Color color,
    _i1.ScrollNotificationPredicate notificationPredicate = _i1.defaultScrollNotificationPredicate,
    _i1.Widget? child,
    // Associate with key
    Stream<_i2.Key?>? $key,
    // Associate with showLeading
    Stream<bool>? $showLeading,
    // Associate with showTrailing
    Stream<bool>? $showTrailing,
    // Associate with axisDirection
    Stream<_i3.AxisDirection>? $axisDirection,
    // Associate with color
    Stream<ui.Color>? $color,
    // Associate with notificationPredicate
    Stream<_i1.ScrollNotificationPredicate>? $notificationPredicate,
    // Associate with child
    Stream<_i1.Widget?>? $child,
  }) : super(
          Argument(
            {
              'key': key,
              'showLeading': showLeading,
              'showTrailing': showTrailing,
              'axisDirection': axisDirection,
              'color': color,
              'notificationPredicate': notificationPredicate,
              'child': child,
            },
            stream: {
              'key': $key,
              'showLeading': $showLeading,
              'showTrailing': $showTrailing,
              'axisDirection': $axisDirection,
              'color': $color,
              'notificationPredicate': $notificationPredicate,
              'child': $child,
            },
          ),
          builder: (args) => _i1.GlowingOverscrollIndicator(
            key: args('key'),
            showLeading: args('showLeading'),
            showTrailing: args('showTrailing'),
            axisDirection: args('axisDirection'),
            color: args('color'),
            notificationPredicate: args('notificationPredicate'),
            child: args('child'),
          ),
        );
}
