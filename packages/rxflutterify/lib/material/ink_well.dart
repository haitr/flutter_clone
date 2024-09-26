library rxflutterify; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:ui' as ui;

import 'package:flutter/foundation.dart' as _i2;
import 'package:flutter/gestures.dart' as _i4;
import 'package:flutter/material.dart' as _i1;
import 'package:flutter/painting.dart' as _i6;
import 'package:flutter/services.dart' as _i5;
import 'package:flutter/widgets.dart' as _i3;

import '../wrapper.dart';

final class InkResponse extends Wrapper {
  @Goto(_i1.InkResponse.new)
  InkResponse({
    _i2.Key? key,
    _i3.Widget? child,
    _i4.GestureTapCallback? onTap,
    _i4.GestureTapDownCallback? onTapDown,
    _i4.GestureTapUpCallback? onTapUp,
    _i4.GestureTapCallback? onTapCancel,
    _i4.GestureTapCallback? onDoubleTap,
    _i4.GestureLongPressCallback? onLongPress,
    _i4.GestureTapCallback? onSecondaryTap,
    _i4.GestureTapUpCallback? onSecondaryTapUp,
    _i4.GestureTapDownCallback? onSecondaryTapDown,
    _i4.GestureTapCallback? onSecondaryTapCancel,
    _i2.ValueChanged<bool>? onHighlightChanged,
    _i2.ValueChanged<bool>? onHover,
    _i5.MouseCursor? mouseCursor,
    bool containedInkWell = false,
    _i6.BoxShape highlightShape = _i6.BoxShape.circle,
    double? radius,
    _i6.BorderRadius? borderRadius,
    _i6.ShapeBorder? customBorder,
    ui.Color? focusColor,
    ui.Color? hoverColor,
    ui.Color? highlightColor,
    _i3.WidgetStateProperty<ui.Color?>? overlayColor,
    ui.Color? splashColor,
    _i1.InteractiveInkFeatureFactory? splashFactory,
    bool enableFeedback = true,
    bool excludeFromSemantics = false,
    _i3.FocusNode? focusNode,
    bool canRequestFocus = true,
    _i2.ValueChanged<bool>? onFocusChange,
    bool autofocus = false,
    _i3.WidgetStatesController? statesController,
    Duration? hoverDuration,
    // Associate with key
    Stream<_i2.Key?>? $key,
    // Associate with child
    Stream<_i3.Widget?>? $child,
    // Associate with onTap
    Stream<_i4.GestureTapCallback?>? $onTap,
    // Associate with onTapDown
    Stream<_i4.GestureTapDownCallback?>? $onTapDown,
    // Associate with onTapUp
    Stream<_i4.GestureTapUpCallback?>? $onTapUp,
    // Associate with onTapCancel
    Stream<_i4.GestureTapCallback?>? $onTapCancel,
    // Associate with onDoubleTap
    Stream<_i4.GestureTapCallback?>? $onDoubleTap,
    // Associate with onLongPress
    Stream<_i4.GestureLongPressCallback?>? $onLongPress,
    // Associate with onSecondaryTap
    Stream<_i4.GestureTapCallback?>? $onSecondaryTap,
    // Associate with onSecondaryTapUp
    Stream<_i4.GestureTapUpCallback?>? $onSecondaryTapUp,
    // Associate with onSecondaryTapDown
    Stream<_i4.GestureTapDownCallback?>? $onSecondaryTapDown,
    // Associate with onSecondaryTapCancel
    Stream<_i4.GestureTapCallback?>? $onSecondaryTapCancel,
    // Associate with onHighlightChanged
    Stream<_i2.ValueChanged<bool>?>? $onHighlightChanged,
    // Associate with onHover
    Stream<_i2.ValueChanged<bool>?>? $onHover,
    // Associate with mouseCursor
    Stream<_i5.MouseCursor?>? $mouseCursor,
    // Associate with containedInkWell
    Stream<bool>? $containedInkWell,
    // Associate with highlightShape
    Stream<_i6.BoxShape>? $highlightShape,
    // Associate with radius
    Stream<double?>? $radius,
    // Associate with borderRadius
    Stream<_i6.BorderRadius?>? $borderRadius,
    // Associate with customBorder
    Stream<_i6.ShapeBorder?>? $customBorder,
    // Associate with focusColor
    Stream<ui.Color?>? $focusColor,
    // Associate with hoverColor
    Stream<ui.Color?>? $hoverColor,
    // Associate with highlightColor
    Stream<ui.Color?>? $highlightColor,
    // Associate with overlayColor
    Stream<_i3.WidgetStateProperty<ui.Color?>?>? $overlayColor,
    // Associate with splashColor
    Stream<ui.Color?>? $splashColor,
    // Associate with splashFactory
    Stream<_i1.InteractiveInkFeatureFactory?>? $splashFactory,
    // Associate with enableFeedback
    Stream<bool>? $enableFeedback,
    // Associate with excludeFromSemantics
    Stream<bool>? $excludeFromSemantics,
    // Associate with focusNode
    Stream<_i3.FocusNode?>? $focusNode,
    // Associate with canRequestFocus
    Stream<bool>? $canRequestFocus,
    // Associate with onFocusChange
    Stream<_i2.ValueChanged<bool>?>? $onFocusChange,
    // Associate with autofocus
    Stream<bool>? $autofocus,
    // Associate with statesController
    Stream<_i3.WidgetStatesController?>? $statesController,
    // Associate with hoverDuration
    Stream<Duration?>? $hoverDuration,
  }) : super(
          Argument(
            {
              'key': key,
              'child': child,
              'onTap': onTap,
              'onTapDown': onTapDown,
              'onTapUp': onTapUp,
              'onTapCancel': onTapCancel,
              'onDoubleTap': onDoubleTap,
              'onLongPress': onLongPress,
              'onSecondaryTap': onSecondaryTap,
              'onSecondaryTapUp': onSecondaryTapUp,
              'onSecondaryTapDown': onSecondaryTapDown,
              'onSecondaryTapCancel': onSecondaryTapCancel,
              'onHighlightChanged': onHighlightChanged,
              'onHover': onHover,
              'mouseCursor': mouseCursor,
              'containedInkWell': containedInkWell,
              'highlightShape': highlightShape,
              'radius': radius,
              'borderRadius': borderRadius,
              'customBorder': customBorder,
              'focusColor': focusColor,
              'hoverColor': hoverColor,
              'highlightColor': highlightColor,
              'overlayColor': overlayColor,
              'splashColor': splashColor,
              'splashFactory': splashFactory,
              'enableFeedback': enableFeedback,
              'excludeFromSemantics': excludeFromSemantics,
              'focusNode': focusNode,
              'canRequestFocus': canRequestFocus,
              'onFocusChange': onFocusChange,
              'autofocus': autofocus,
              'statesController': statesController,
              'hoverDuration': hoverDuration,
            },
            stream: {
              'key': $key,
              'child': $child,
              'onTap': $onTap,
              'onTapDown': $onTapDown,
              'onTapUp': $onTapUp,
              'onTapCancel': $onTapCancel,
              'onDoubleTap': $onDoubleTap,
              'onLongPress': $onLongPress,
              'onSecondaryTap': $onSecondaryTap,
              'onSecondaryTapUp': $onSecondaryTapUp,
              'onSecondaryTapDown': $onSecondaryTapDown,
              'onSecondaryTapCancel': $onSecondaryTapCancel,
              'onHighlightChanged': $onHighlightChanged,
              'onHover': $onHover,
              'mouseCursor': $mouseCursor,
              'containedInkWell': $containedInkWell,
              'highlightShape': $highlightShape,
              'radius': $radius,
              'borderRadius': $borderRadius,
              'customBorder': $customBorder,
              'focusColor': $focusColor,
              'hoverColor': $hoverColor,
              'highlightColor': $highlightColor,
              'overlayColor': $overlayColor,
              'splashColor': $splashColor,
              'splashFactory': $splashFactory,
              'enableFeedback': $enableFeedback,
              'excludeFromSemantics': $excludeFromSemantics,
              'focusNode': $focusNode,
              'canRequestFocus': $canRequestFocus,
              'onFocusChange': $onFocusChange,
              'autofocus': $autofocus,
              'statesController': $statesController,
              'hoverDuration': $hoverDuration,
            },
          ),
          builder: (args) => _i1.InkResponse(
            key: args('key'),
            child: args('child'),
            onTap: args('onTap'),
            onTapDown: args('onTapDown'),
            onTapUp: args('onTapUp'),
            onTapCancel: args('onTapCancel'),
            onDoubleTap: args('onDoubleTap'),
            onLongPress: args('onLongPress'),
            onSecondaryTap: args('onSecondaryTap'),
            onSecondaryTapUp: args('onSecondaryTapUp'),
            onSecondaryTapDown: args('onSecondaryTapDown'),
            onSecondaryTapCancel: args('onSecondaryTapCancel'),
            onHighlightChanged: args('onHighlightChanged'),
            onHover: args('onHover'),
            mouseCursor: args('mouseCursor'),
            containedInkWell: args('containedInkWell'),
            highlightShape: args('highlightShape'),
            radius: args('radius'),
            borderRadius: args('borderRadius'),
            customBorder: args('customBorder'),
            focusColor: args('focusColor'),
            hoverColor: args('hoverColor'),
            highlightColor: args('highlightColor'),
            overlayColor: args('overlayColor'),
            splashColor: args('splashColor'),
            splashFactory: args('splashFactory'),
            enableFeedback: args('enableFeedback'),
            excludeFromSemantics: args('excludeFromSemantics'),
            focusNode: args('focusNode'),
            canRequestFocus: args('canRequestFocus'),
            onFocusChange: args('onFocusChange'),
            autofocus: args('autofocus'),
            statesController: args('statesController'),
            hoverDuration: args('hoverDuration'),
          ),
        );
}

final class InkWell extends Wrapper {
  @Goto(_i1.InkWell.new)
  InkWell({
    _i2.Key? key,
    _i3.Widget? child,
    _i4.GestureTapCallback? onTap,
    _i4.GestureTapCallback? onDoubleTap,
    _i4.GestureLongPressCallback? onLongPress,
    _i4.GestureTapDownCallback? onTapDown,
    _i4.GestureTapUpCallback? onTapUp,
    _i4.GestureTapCallback? onTapCancel,
    _i4.GestureTapCallback? onSecondaryTap,
    _i4.GestureTapUpCallback? onSecondaryTapUp,
    _i4.GestureTapDownCallback? onSecondaryTapDown,
    _i4.GestureTapCallback? onSecondaryTapCancel,
    _i2.ValueChanged<bool>? onHighlightChanged,
    _i2.ValueChanged<bool>? onHover,
    _i5.MouseCursor? mouseCursor,
    ui.Color? focusColor,
    ui.Color? hoverColor,
    ui.Color? highlightColor,
    _i3.WidgetStateProperty<ui.Color?>? overlayColor,
    ui.Color? splashColor,
    _i1.InteractiveInkFeatureFactory? splashFactory,
    double? radius,
    _i6.BorderRadius? borderRadius,
    _i6.ShapeBorder? customBorder,
    bool? enableFeedback = true,
    bool excludeFromSemantics = false,
    _i3.FocusNode? focusNode,
    bool canRequestFocus = true,
    _i2.ValueChanged<bool>? onFocusChange,
    bool autofocus = false,
    _i3.WidgetStatesController? statesController,
    Duration? hoverDuration,
    // Associate with key
    Stream<_i2.Key?>? $key,
    // Associate with child
    Stream<_i3.Widget?>? $child,
    // Associate with onTap
    Stream<_i4.GestureTapCallback?>? $onTap,
    // Associate with onDoubleTap
    Stream<_i4.GestureTapCallback?>? $onDoubleTap,
    // Associate with onLongPress
    Stream<_i4.GestureLongPressCallback?>? $onLongPress,
    // Associate with onTapDown
    Stream<_i4.GestureTapDownCallback?>? $onTapDown,
    // Associate with onTapUp
    Stream<_i4.GestureTapUpCallback?>? $onTapUp,
    // Associate with onTapCancel
    Stream<_i4.GestureTapCallback?>? $onTapCancel,
    // Associate with onSecondaryTap
    Stream<_i4.GestureTapCallback?>? $onSecondaryTap,
    // Associate with onSecondaryTapUp
    Stream<_i4.GestureTapUpCallback?>? $onSecondaryTapUp,
    // Associate with onSecondaryTapDown
    Stream<_i4.GestureTapDownCallback?>? $onSecondaryTapDown,
    // Associate with onSecondaryTapCancel
    Stream<_i4.GestureTapCallback?>? $onSecondaryTapCancel,
    // Associate with onHighlightChanged
    Stream<_i2.ValueChanged<bool>?>? $onHighlightChanged,
    // Associate with onHover
    Stream<_i2.ValueChanged<bool>?>? $onHover,
    // Associate with mouseCursor
    Stream<_i5.MouseCursor?>? $mouseCursor,
    // Associate with focusColor
    Stream<ui.Color?>? $focusColor,
    // Associate with hoverColor
    Stream<ui.Color?>? $hoverColor,
    // Associate with highlightColor
    Stream<ui.Color?>? $highlightColor,
    // Associate with overlayColor
    Stream<_i3.WidgetStateProperty<ui.Color?>?>? $overlayColor,
    // Associate with splashColor
    Stream<ui.Color?>? $splashColor,
    // Associate with splashFactory
    Stream<_i1.InteractiveInkFeatureFactory?>? $splashFactory,
    // Associate with radius
    Stream<double?>? $radius,
    // Associate with borderRadius
    Stream<_i6.BorderRadius?>? $borderRadius,
    // Associate with customBorder
    Stream<_i6.ShapeBorder?>? $customBorder,
    // Associate with enableFeedback
    Stream<bool?>? $enableFeedback,
    // Associate with excludeFromSemantics
    Stream<bool>? $excludeFromSemantics,
    // Associate with focusNode
    Stream<_i3.FocusNode?>? $focusNode,
    // Associate with canRequestFocus
    Stream<bool>? $canRequestFocus,
    // Associate with onFocusChange
    Stream<_i2.ValueChanged<bool>?>? $onFocusChange,
    // Associate with autofocus
    Stream<bool>? $autofocus,
    // Associate with statesController
    Stream<_i3.WidgetStatesController?>? $statesController,
    // Associate with hoverDuration
    Stream<Duration?>? $hoverDuration,
  }) : super(
          Argument(
            {
              'key': key,
              'child': child,
              'onTap': onTap,
              'onDoubleTap': onDoubleTap,
              'onLongPress': onLongPress,
              'onTapDown': onTapDown,
              'onTapUp': onTapUp,
              'onTapCancel': onTapCancel,
              'onSecondaryTap': onSecondaryTap,
              'onSecondaryTapUp': onSecondaryTapUp,
              'onSecondaryTapDown': onSecondaryTapDown,
              'onSecondaryTapCancel': onSecondaryTapCancel,
              'onHighlightChanged': onHighlightChanged,
              'onHover': onHover,
              'mouseCursor': mouseCursor,
              'focusColor': focusColor,
              'hoverColor': hoverColor,
              'highlightColor': highlightColor,
              'overlayColor': overlayColor,
              'splashColor': splashColor,
              'splashFactory': splashFactory,
              'radius': radius,
              'borderRadius': borderRadius,
              'customBorder': customBorder,
              'enableFeedback': enableFeedback,
              'excludeFromSemantics': excludeFromSemantics,
              'focusNode': focusNode,
              'canRequestFocus': canRequestFocus,
              'onFocusChange': onFocusChange,
              'autofocus': autofocus,
              'statesController': statesController,
              'hoverDuration': hoverDuration,
            },
            stream: {
              'key': $key,
              'child': $child,
              'onTap': $onTap,
              'onDoubleTap': $onDoubleTap,
              'onLongPress': $onLongPress,
              'onTapDown': $onTapDown,
              'onTapUp': $onTapUp,
              'onTapCancel': $onTapCancel,
              'onSecondaryTap': $onSecondaryTap,
              'onSecondaryTapUp': $onSecondaryTapUp,
              'onSecondaryTapDown': $onSecondaryTapDown,
              'onSecondaryTapCancel': $onSecondaryTapCancel,
              'onHighlightChanged': $onHighlightChanged,
              'onHover': $onHover,
              'mouseCursor': $mouseCursor,
              'focusColor': $focusColor,
              'hoverColor': $hoverColor,
              'highlightColor': $highlightColor,
              'overlayColor': $overlayColor,
              'splashColor': $splashColor,
              'splashFactory': $splashFactory,
              'radius': $radius,
              'borderRadius': $borderRadius,
              'customBorder': $customBorder,
              'enableFeedback': $enableFeedback,
              'excludeFromSemantics': $excludeFromSemantics,
              'focusNode': $focusNode,
              'canRequestFocus': $canRequestFocus,
              'onFocusChange': $onFocusChange,
              'autofocus': $autofocus,
              'statesController': $statesController,
              'hoverDuration': $hoverDuration,
            },
          ),
          builder: (args) => _i1.InkWell(
            key: args('key'),
            child: args('child'),
            onTap: args('onTap'),
            onDoubleTap: args('onDoubleTap'),
            onLongPress: args('onLongPress'),
            onTapDown: args('onTapDown'),
            onTapUp: args('onTapUp'),
            onTapCancel: args('onTapCancel'),
            onSecondaryTap: args('onSecondaryTap'),
            onSecondaryTapUp: args('onSecondaryTapUp'),
            onSecondaryTapDown: args('onSecondaryTapDown'),
            onSecondaryTapCancel: args('onSecondaryTapCancel'),
            onHighlightChanged: args('onHighlightChanged'),
            onHover: args('onHover'),
            mouseCursor: args('mouseCursor'),
            focusColor: args('focusColor'),
            hoverColor: args('hoverColor'),
            highlightColor: args('highlightColor'),
            overlayColor: args('overlayColor'),
            splashColor: args('splashColor'),
            splashFactory: args('splashFactory'),
            radius: args('radius'),
            borderRadius: args('borderRadius'),
            customBorder: args('customBorder'),
            enableFeedback: args('enableFeedback'),
            excludeFromSemantics: args('excludeFromSemantics'),
            focusNode: args('focusNode'),
            canRequestFocus: args('canRequestFocus'),
            onFocusChange: args('onFocusChange'),
            autofocus: args('autofocus'),
            statesController: args('statesController'),
            hoverDuration: args('hoverDuration'),
          ),
        );
}
