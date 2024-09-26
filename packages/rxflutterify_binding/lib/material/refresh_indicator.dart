library rxflutterify_binding; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:ui' as ui;

import 'package:flutter/cupertino.dart' as _i4;
import 'package:flutter/foundation.dart' as _i2;
import 'package:flutter/material.dart' as _i1;
import 'package:flutter/widgets.dart' as _i3;

import '../wrapper.dart';

final class RefreshIndicator extends Wrapper {
  @Goto(_i1.RefreshIndicator.new)
  RefreshIndicator(
    $ $config, {
    _i2.Key? key,
    required _i3.Widget child,
    double displacement = 40.0,
    double edgeOffset = 0.0,
    required _i4.RefreshCallback onRefresh,
    ui.Color? color,
    ui.Color? backgroundColor,
    _i3.ScrollNotificationPredicate notificationPredicate = _i3.defaultScrollNotificationPredicate,
    String? semanticsLabel,
    String? semanticsValue,
    double strokeWidth = _i1.RefreshProgressIndicator.defaultStrokeWidth,
    _i1.RefreshIndicatorTriggerMode triggerMode = _i1.RefreshIndicatorTriggerMode.onEdge,
  }) : super(
          Argument({
            #key: key,
            #child: child,
            #displacement: displacement,
            #edgeOffset: edgeOffset,
            #onRefresh: onRefresh,
            #color: color,
            #backgroundColor: backgroundColor,
            #notificationPredicate: notificationPredicate,
            #semanticsLabel: semanticsLabel,
            #semanticsValue: semanticsValue,
            #strokeWidth: strokeWidth,
            #triggerMode: triggerMode,
          }),
          builder: (args) => _i1.RefreshIndicator(
            key: args(#key),
            child: args(#child),
            displacement: args(#displacement),
            edgeOffset: args(#edgeOffset),
            onRefresh: args(#onRefresh),
            color: args(#color),
            backgroundColor: args(#backgroundColor),
            notificationPredicate: args(#notificationPredicate),
            semanticsLabel: args(#semanticsLabel),
            semanticsValue: args(#semanticsValue),
            strokeWidth: args(#strokeWidth),
            triggerMode: args(#triggerMode),
          ),
        );

  @Goto(_i1.RefreshIndicator.adaptive)
  RefreshIndicator.adaptive(
    $ $config, {
    _i2.Key? key,
    required _i3.Widget child,
    double displacement = 40.0,
    double edgeOffset = 0.0,
    required _i4.RefreshCallback onRefresh,
    ui.Color? color,
    ui.Color? backgroundColor,
    _i3.ScrollNotificationPredicate notificationPredicate = _i3.defaultScrollNotificationPredicate,
    String? semanticsLabel,
    String? semanticsValue,
    double strokeWidth = _i1.RefreshProgressIndicator.defaultStrokeWidth,
    _i1.RefreshIndicatorTriggerMode triggerMode = _i1.RefreshIndicatorTriggerMode.onEdge,
  }) : super(
          Argument({
            #key: key,
            #child: child,
            #displacement: displacement,
            #edgeOffset: edgeOffset,
            #onRefresh: onRefresh,
            #color: color,
            #backgroundColor: backgroundColor,
            #notificationPredicate: notificationPredicate,
            #semanticsLabel: semanticsLabel,
            #semanticsValue: semanticsValue,
            #strokeWidth: strokeWidth,
            #triggerMode: triggerMode,
          }),
          builder: (args) => _i1.RefreshIndicator.adaptive(
            key: args(#key),
            child: args(#child),
            displacement: args(#displacement),
            edgeOffset: args(#edgeOffset),
            onRefresh: args(#onRefresh),
            color: args(#color),
            backgroundColor: args(#backgroundColor),
            notificationPredicate: args(#notificationPredicate),
            semanticsLabel: args(#semanticsLabel),
            semanticsValue: args(#semanticsValue),
            strokeWidth: args(#strokeWidth),
            triggerMode: args(#triggerMode),
          ),
        );
}
