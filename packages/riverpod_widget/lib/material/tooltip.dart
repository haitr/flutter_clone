library rxflutterify; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:ui' as ui;

import 'package:flutter/foundation.dart' as _i2;
import 'package:flutter/material.dart' as _i1;
import 'package:flutter/painting.dart' as _i3;
import 'package:flutter/widgets.dart' as _i4;

import '../wrapper.dart';

final class Tooltip extends Wrapper {
  @Goto(_i1.Tooltip.new)
  Tooltip(
    $ $config, {
    _i2.Key? key,
    String? message,
    _i3.InlineSpan? richMessage,
    double? height,
    _i3.EdgeInsetsGeometry? padding,
    _i3.EdgeInsetsGeometry? margin,
    double? verticalOffset,
    bool? preferBelow,
    bool? excludeFromSemantics,
    _i3.Decoration? decoration,
    _i3.TextStyle? textStyle,
    ui.TextAlign? textAlign,
    Duration? waitDuration,
    Duration? showDuration,
    Duration? exitDuration,
    bool enableTapToDismiss = true,
    _i1.TooltipTriggerMode? triggerMode,
    bool? enableFeedback,
    _i1.TooltipTriggeredCallback? onTriggered,
    _i4.Widget? child,
  }) : super(
          Argument({
            #key: key,
            #message: message,
            #richMessage: richMessage,
            #height: height,
            #padding: padding,
            #margin: margin,
            #verticalOffset: verticalOffset,
            #preferBelow: preferBelow,
            #excludeFromSemantics: excludeFromSemantics,
            #decoration: decoration,
            #textStyle: textStyle,
            #textAlign: textAlign,
            #waitDuration: waitDuration,
            #showDuration: showDuration,
            #exitDuration: exitDuration,
            #enableTapToDismiss: enableTapToDismiss,
            #triggerMode: triggerMode,
            #enableFeedback: enableFeedback,
            #onTriggered: onTriggered,
            #child: child,
          }),
          builder: (args) => _i1.Tooltip(
            key: args(#key),
            message: args(#message),
            richMessage: args(#richMessage),
            height: args(#height),
            padding: args(#padding),
            margin: args(#margin),
            verticalOffset: args(#verticalOffset),
            preferBelow: args(#preferBelow),
            excludeFromSemantics: args(#excludeFromSemantics),
            decoration: args(#decoration),
            textStyle: args(#textStyle),
            textAlign: args(#textAlign),
            waitDuration: args(#waitDuration),
            showDuration: args(#showDuration),
            exitDuration: args(#exitDuration),
            enableTapToDismiss: args(#enableTapToDismiss),
            triggerMode: args(#triggerMode),
            enableFeedback: args(#enableFeedback),
            onTriggered: args(#onTriggered),
            child: args(#child),
          ),
        );
}
