library rxflutterify; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:ui' as ui;

import 'package:flutter/animation.dart' as _i5;
import 'package:flutter/cupertino.dart' as _i7;
import 'package:flutter/foundation.dart' as _i2;
import 'package:flutter/material.dart' as _i1;
import 'package:flutter/painting.dart' as _i3;
import 'package:flutter/rendering.dart' as _i6;
import 'package:flutter/widgets.dart' as _i4;

import '../wrapper.dart';

final class SimpleDialogOption extends Wrapper {
  @Goto(_i1.SimpleDialogOption.new)
  SimpleDialogOption({
    _i2.Key? key,
    ui.VoidCallback? onPressed,
    _i3.EdgeInsets? padding,
    _i4.Widget? child,
    // Associate with key
    Stream<_i2.Key?>? $key,
    // Associate with onPressed
    Stream<ui.VoidCallback?>? $onPressed,
    // Associate with padding
    Stream<_i3.EdgeInsets?>? $padding,
    // Associate with child
    Stream<_i4.Widget?>? $child,
  }) : super(
          Argument(
            {
              'key': key,
              'onPressed': onPressed,
              'padding': padding,
              'child': child,
            },
            stream: {
              'key': $key,
              'onPressed': $onPressed,
              'padding': $padding,
              'child': $child,
            },
          ),
          builder: (args) => _i1.SimpleDialogOption(
            key: args('key'),
            onPressed: args('onPressed'),
            padding: args('padding'),
            child: args('child'),
          ),
        );
}

final class Dialog extends Wrapper {
  @Goto(_i1.Dialog.new)
  Dialog({
    _i2.Key? key,
    ui.Color? backgroundColor,
    double? elevation,
    ui.Color? shadowColor,
    ui.Color? surfaceTintColor,
    Duration insetAnimationDuration = const Duration(milliseconds: 100),
    _i5.Curve insetAnimationCurve = _i5.Curves.decelerate,
    _i3.EdgeInsets? insetPadding,
    ui.Clip? clipBehavior,
    _i3.ShapeBorder? shape,
    _i3.AlignmentGeometry? alignment,
    _i4.Widget? child,
    // Associate with key
    Stream<_i2.Key?>? $key,
    // Associate with backgroundColor
    Stream<ui.Color?>? $backgroundColor,
    // Associate with elevation
    Stream<double?>? $elevation,
    // Associate with shadowColor
    Stream<ui.Color?>? $shadowColor,
    // Associate with surfaceTintColor
    Stream<ui.Color?>? $surfaceTintColor,
    // Associate with insetAnimationDuration
    Stream<Duration>? $insetAnimationDuration,
    // Associate with insetAnimationCurve
    Stream<_i5.Curve>? $insetAnimationCurve,
    // Associate with insetPadding
    Stream<_i3.EdgeInsets?>? $insetPadding,
    // Associate with clipBehavior
    Stream<ui.Clip?>? $clipBehavior,
    // Associate with shape
    Stream<_i3.ShapeBorder?>? $shape,
    // Associate with alignment
    Stream<_i3.AlignmentGeometry?>? $alignment,
    // Associate with child
    Stream<_i4.Widget?>? $child,
  }) : super(
          Argument(
            {
              'key': key,
              'backgroundColor': backgroundColor,
              'elevation': elevation,
              'shadowColor': shadowColor,
              'surfaceTintColor': surfaceTintColor,
              'insetAnimationDuration': insetAnimationDuration,
              'insetAnimationCurve': insetAnimationCurve,
              'insetPadding': insetPadding,
              'clipBehavior': clipBehavior,
              'shape': shape,
              'alignment': alignment,
              'child': child,
            },
            stream: {
              'key': $key,
              'backgroundColor': $backgroundColor,
              'elevation': $elevation,
              'shadowColor': $shadowColor,
              'surfaceTintColor': $surfaceTintColor,
              'insetAnimationDuration': $insetAnimationDuration,
              'insetAnimationCurve': $insetAnimationCurve,
              'insetPadding': $insetPadding,
              'clipBehavior': $clipBehavior,
              'shape': $shape,
              'alignment': $alignment,
              'child': $child,
            },
          ),
          builder: (args) => _i1.Dialog(
            key: args('key'),
            backgroundColor: args('backgroundColor'),
            elevation: args('elevation'),
            shadowColor: args('shadowColor'),
            surfaceTintColor: args('surfaceTintColor'),
            insetAnimationDuration: args('insetAnimationDuration'),
            insetAnimationCurve: args('insetAnimationCurve'),
            insetPadding: args('insetPadding'),
            clipBehavior: args('clipBehavior'),
            shape: args('shape'),
            alignment: args('alignment'),
            child: args('child'),
          ),
        );

  @Goto(_i1.Dialog.fullscreen)
  Dialog.fullscreen({
    _i2.Key? key,
    ui.Color? backgroundColor,
    Duration insetAnimationDuration = Duration.zero,
    _i5.Curve insetAnimationCurve = _i5.Curves.decelerate,
    _i4.Widget? child,
    // Associate with key
    Stream<_i2.Key?>? $key,
    // Associate with backgroundColor
    Stream<ui.Color?>? $backgroundColor,
    // Associate with insetAnimationDuration
    Stream<Duration>? $insetAnimationDuration,
    // Associate with insetAnimationCurve
    Stream<_i5.Curve>? $insetAnimationCurve,
    // Associate with child
    Stream<_i4.Widget?>? $child,
  }) : super(
          Argument(
            {
              'key': key,
              'backgroundColor': backgroundColor,
              'insetAnimationDuration': insetAnimationDuration,
              'insetAnimationCurve': insetAnimationCurve,
              'child': child,
            },
            stream: {
              'key': $key,
              'backgroundColor': $backgroundColor,
              'insetAnimationDuration': $insetAnimationDuration,
              'insetAnimationCurve': $insetAnimationCurve,
              'child': $child,
            },
          ),
          builder: (args) => _i1.Dialog.fullscreen(
            key: args('key'),
            backgroundColor: args('backgroundColor'),
            insetAnimationDuration: args('insetAnimationDuration'),
            insetAnimationCurve: args('insetAnimationCurve'),
            child: args('child'),
          ),
        );
}

final class SimpleDialog extends Wrapper {
  @Goto(_i1.SimpleDialog.new)
  SimpleDialog({
    _i2.Key? key,
    _i4.Widget? title,
    _i3.EdgeInsetsGeometry titlePadding = const _i3.EdgeInsets.fromLTRB(
      24.0,
      24.0,
      24.0,
      0.0,
    ),
    _i3.TextStyle? titleTextStyle,
    List<_i4.Widget>? children,
    _i3.EdgeInsetsGeometry contentPadding = const _i3.EdgeInsets.fromLTRB(
      0.0,
      12.0,
      0.0,
      16.0,
    ),
    ui.Color? backgroundColor,
    double? elevation,
    ui.Color? shadowColor,
    ui.Color? surfaceTintColor,
    String? semanticLabel,
    _i3.EdgeInsets? insetPadding,
    ui.Clip? clipBehavior,
    _i3.ShapeBorder? shape,
    _i3.AlignmentGeometry? alignment,
    // Associate with key
    Stream<_i2.Key?>? $key,
    // Associate with title
    Stream<_i4.Widget?>? $title,
    // Associate with titlePadding
    Stream<_i3.EdgeInsetsGeometry>? $titlePadding,
    // Associate with titleTextStyle
    Stream<_i3.TextStyle?>? $titleTextStyle,
    // Associate with children
    Stream<List<_i4.Widget>?>? $children,
    // Associate with contentPadding
    Stream<_i3.EdgeInsetsGeometry>? $contentPadding,
    // Associate with backgroundColor
    Stream<ui.Color?>? $backgroundColor,
    // Associate with elevation
    Stream<double?>? $elevation,
    // Associate with shadowColor
    Stream<ui.Color?>? $shadowColor,
    // Associate with surfaceTintColor
    Stream<ui.Color?>? $surfaceTintColor,
    // Associate with semanticLabel
    Stream<String?>? $semanticLabel,
    // Associate with insetPadding
    Stream<_i3.EdgeInsets?>? $insetPadding,
    // Associate with clipBehavior
    Stream<ui.Clip?>? $clipBehavior,
    // Associate with shape
    Stream<_i3.ShapeBorder?>? $shape,
    // Associate with alignment
    Stream<_i3.AlignmentGeometry?>? $alignment,
  }) : super(
          Argument(
            {
              'key': key,
              'title': title,
              'titlePadding': titlePadding,
              'titleTextStyle': titleTextStyle,
              'children': children,
              'contentPadding': contentPadding,
              'backgroundColor': backgroundColor,
              'elevation': elevation,
              'shadowColor': shadowColor,
              'surfaceTintColor': surfaceTintColor,
              'semanticLabel': semanticLabel,
              'insetPadding': insetPadding,
              'clipBehavior': clipBehavior,
              'shape': shape,
              'alignment': alignment,
            },
            stream: {
              'key': $key,
              'title': $title,
              'titlePadding': $titlePadding,
              'titleTextStyle': $titleTextStyle,
              'children': $children,
              'contentPadding': $contentPadding,
              'backgroundColor': $backgroundColor,
              'elevation': $elevation,
              'shadowColor': $shadowColor,
              'surfaceTintColor': $surfaceTintColor,
              'semanticLabel': $semanticLabel,
              'insetPadding': $insetPadding,
              'clipBehavior': $clipBehavior,
              'shape': $shape,
              'alignment': $alignment,
            },
          ),
          builder: (args) => _i1.SimpleDialog(
            key: args('key'),
            title: args('title'),
            titlePadding: args('titlePadding'),
            titleTextStyle: args('titleTextStyle'),
            children: args('children'),
            contentPadding: args('contentPadding'),
            backgroundColor: args('backgroundColor'),
            elevation: args('elevation'),
            shadowColor: args('shadowColor'),
            surfaceTintColor: args('surfaceTintColor'),
            semanticLabel: args('semanticLabel'),
            insetPadding: args('insetPadding'),
            clipBehavior: args('clipBehavior'),
            shape: args('shape'),
            alignment: args('alignment'),
          ),
        );
}

final class AlertDialog extends Wrapper {
  @Goto(_i1.AlertDialog.new)
  AlertDialog({
    _i2.Key? key,
    _i4.Widget? icon,
    _i3.EdgeInsetsGeometry? iconPadding,
    ui.Color? iconColor,
    _i4.Widget? title,
    _i3.EdgeInsetsGeometry? titlePadding,
    _i3.TextStyle? titleTextStyle,
    _i4.Widget? content,
    _i3.EdgeInsetsGeometry? contentPadding,
    _i3.TextStyle? contentTextStyle,
    List<_i4.Widget>? actions,
    _i3.EdgeInsetsGeometry? actionsPadding,
    _i6.MainAxisAlignment? actionsAlignment,
    _i4.OverflowBarAlignment? actionsOverflowAlignment,
    _i3.VerticalDirection? actionsOverflowDirection,
    double? actionsOverflowButtonSpacing,
    _i3.EdgeInsetsGeometry? buttonPadding,
    ui.Color? backgroundColor,
    double? elevation,
    ui.Color? shadowColor,
    ui.Color? surfaceTintColor,
    String? semanticLabel,
    _i3.EdgeInsets? insetPadding,
    ui.Clip? clipBehavior,
    _i3.ShapeBorder? shape,
    _i3.AlignmentGeometry? alignment,
    bool scrollable = false,
    // Associate with key
    Stream<_i2.Key?>? $key,
    // Associate with icon
    Stream<_i4.Widget?>? $icon,
    // Associate with iconPadding
    Stream<_i3.EdgeInsetsGeometry?>? $iconPadding,
    // Associate with iconColor
    Stream<ui.Color?>? $iconColor,
    // Associate with title
    Stream<_i4.Widget?>? $title,
    // Associate with titlePadding
    Stream<_i3.EdgeInsetsGeometry?>? $titlePadding,
    // Associate with titleTextStyle
    Stream<_i3.TextStyle?>? $titleTextStyle,
    // Associate with content
    Stream<_i4.Widget?>? $content,
    // Associate with contentPadding
    Stream<_i3.EdgeInsetsGeometry?>? $contentPadding,
    // Associate with contentTextStyle
    Stream<_i3.TextStyle?>? $contentTextStyle,
    // Associate with actions
    Stream<List<_i4.Widget>?>? $actions,
    // Associate with actionsPadding
    Stream<_i3.EdgeInsetsGeometry?>? $actionsPadding,
    // Associate with actionsAlignment
    Stream<_i6.MainAxisAlignment?>? $actionsAlignment,
    // Associate with actionsOverflowAlignment
    Stream<_i4.OverflowBarAlignment?>? $actionsOverflowAlignment,
    // Associate with actionsOverflowDirection
    Stream<_i3.VerticalDirection?>? $actionsOverflowDirection,
    // Associate with actionsOverflowButtonSpacing
    Stream<double?>? $actionsOverflowButtonSpacing,
    // Associate with buttonPadding
    Stream<_i3.EdgeInsetsGeometry?>? $buttonPadding,
    // Associate with backgroundColor
    Stream<ui.Color?>? $backgroundColor,
    // Associate with elevation
    Stream<double?>? $elevation,
    // Associate with shadowColor
    Stream<ui.Color?>? $shadowColor,
    // Associate with surfaceTintColor
    Stream<ui.Color?>? $surfaceTintColor,
    // Associate with semanticLabel
    Stream<String?>? $semanticLabel,
    // Associate with insetPadding
    Stream<_i3.EdgeInsets?>? $insetPadding,
    // Associate with clipBehavior
    Stream<ui.Clip?>? $clipBehavior,
    // Associate with shape
    Stream<_i3.ShapeBorder?>? $shape,
    // Associate with alignment
    Stream<_i3.AlignmentGeometry?>? $alignment,
    // Associate with scrollable
    Stream<bool>? $scrollable,
  }) : super(
          Argument(
            {
              'key': key,
              'icon': icon,
              'iconPadding': iconPadding,
              'iconColor': iconColor,
              'title': title,
              'titlePadding': titlePadding,
              'titleTextStyle': titleTextStyle,
              'content': content,
              'contentPadding': contentPadding,
              'contentTextStyle': contentTextStyle,
              'actions': actions,
              'actionsPadding': actionsPadding,
              'actionsAlignment': actionsAlignment,
              'actionsOverflowAlignment': actionsOverflowAlignment,
              'actionsOverflowDirection': actionsOverflowDirection,
              'actionsOverflowButtonSpacing': actionsOverflowButtonSpacing,
              'buttonPadding': buttonPadding,
              'backgroundColor': backgroundColor,
              'elevation': elevation,
              'shadowColor': shadowColor,
              'surfaceTintColor': surfaceTintColor,
              'semanticLabel': semanticLabel,
              'insetPadding': insetPadding,
              'clipBehavior': clipBehavior,
              'shape': shape,
              'alignment': alignment,
              'scrollable': scrollable,
            },
            stream: {
              'key': $key,
              'icon': $icon,
              'iconPadding': $iconPadding,
              'iconColor': $iconColor,
              'title': $title,
              'titlePadding': $titlePadding,
              'titleTextStyle': $titleTextStyle,
              'content': $content,
              'contentPadding': $contentPadding,
              'contentTextStyle': $contentTextStyle,
              'actions': $actions,
              'actionsPadding': $actionsPadding,
              'actionsAlignment': $actionsAlignment,
              'actionsOverflowAlignment': $actionsOverflowAlignment,
              'actionsOverflowDirection': $actionsOverflowDirection,
              'actionsOverflowButtonSpacing': $actionsOverflowButtonSpacing,
              'buttonPadding': $buttonPadding,
              'backgroundColor': $backgroundColor,
              'elevation': $elevation,
              'shadowColor': $shadowColor,
              'surfaceTintColor': $surfaceTintColor,
              'semanticLabel': $semanticLabel,
              'insetPadding': $insetPadding,
              'clipBehavior': $clipBehavior,
              'shape': $shape,
              'alignment': $alignment,
              'scrollable': $scrollable,
            },
          ),
          builder: (args) => _i1.AlertDialog(
            key: args('key'),
            icon: args('icon'),
            iconPadding: args('iconPadding'),
            iconColor: args('iconColor'),
            title: args('title'),
            titlePadding: args('titlePadding'),
            titleTextStyle: args('titleTextStyle'),
            content: args('content'),
            contentPadding: args('contentPadding'),
            contentTextStyle: args('contentTextStyle'),
            actions: args('actions'),
            actionsPadding: args('actionsPadding'),
            actionsAlignment: args('actionsAlignment'),
            actionsOverflowAlignment: args('actionsOverflowAlignment'),
            actionsOverflowDirection: args('actionsOverflowDirection'),
            actionsOverflowButtonSpacing: args('actionsOverflowButtonSpacing'),
            buttonPadding: args('buttonPadding'),
            backgroundColor: args('backgroundColor'),
            elevation: args('elevation'),
            shadowColor: args('shadowColor'),
            surfaceTintColor: args('surfaceTintColor'),
            semanticLabel: args('semanticLabel'),
            insetPadding: args('insetPadding'),
            clipBehavior: args('clipBehavior'),
            shape: args('shape'),
            alignment: args('alignment'),
            scrollable: args('scrollable'),
          ),
        );

  @Goto(_i1.AlertDialog.adaptive)
  AlertDialog.adaptive({
    _i2.Key? key,
    _i4.Widget? icon,
    _i3.EdgeInsetsGeometry? iconPadding,
    ui.Color? iconColor,
    _i4.Widget? title,
    _i3.EdgeInsetsGeometry? titlePadding,
    _i3.TextStyle? titleTextStyle,
    _i4.Widget? content,
    _i3.EdgeInsetsGeometry? contentPadding,
    _i3.TextStyle? contentTextStyle,
    List<_i4.Widget>? actions,
    _i3.EdgeInsetsGeometry? actionsPadding,
    _i6.MainAxisAlignment? actionsAlignment,
    _i4.OverflowBarAlignment? actionsOverflowAlignment,
    _i3.VerticalDirection? actionsOverflowDirection,
    double? actionsOverflowButtonSpacing,
    _i3.EdgeInsetsGeometry? buttonPadding,
    ui.Color? backgroundColor,
    double? elevation,
    ui.Color? shadowColor,
    ui.Color? surfaceTintColor,
    String? semanticLabel,
    _i3.EdgeInsets? insetPadding,
    ui.Clip? clipBehavior,
    _i3.ShapeBorder? shape,
    _i3.AlignmentGeometry? alignment,
    bool scrollable = false,
    _i4.ScrollController? scrollController,
    _i4.ScrollController? actionScrollController,
    Duration insetAnimationDuration = const Duration(milliseconds: 100),
    _i5.Curve insetAnimationCurve = _i5.Curves.decelerate,
    // Associate with key
    Stream<_i2.Key?>? $key,
    // Associate with icon
    Stream<_i4.Widget?>? $icon,
    // Associate with iconPadding
    Stream<_i3.EdgeInsetsGeometry?>? $iconPadding,
    // Associate with iconColor
    Stream<ui.Color?>? $iconColor,
    // Associate with title
    Stream<_i4.Widget?>? $title,
    // Associate with titlePadding
    Stream<_i3.EdgeInsetsGeometry?>? $titlePadding,
    // Associate with titleTextStyle
    Stream<_i3.TextStyle?>? $titleTextStyle,
    // Associate with content
    Stream<_i4.Widget?>? $content,
    // Associate with contentPadding
    Stream<_i3.EdgeInsetsGeometry?>? $contentPadding,
    // Associate with contentTextStyle
    Stream<_i3.TextStyle?>? $contentTextStyle,
    // Associate with actions
    Stream<List<_i4.Widget>?>? $actions,
    // Associate with actionsPadding
    Stream<_i3.EdgeInsetsGeometry?>? $actionsPadding,
    // Associate with actionsAlignment
    Stream<_i6.MainAxisAlignment?>? $actionsAlignment,
    // Associate with actionsOverflowAlignment
    Stream<_i4.OverflowBarAlignment?>? $actionsOverflowAlignment,
    // Associate with actionsOverflowDirection
    Stream<_i3.VerticalDirection?>? $actionsOverflowDirection,
    // Associate with actionsOverflowButtonSpacing
    Stream<double?>? $actionsOverflowButtonSpacing,
    // Associate with buttonPadding
    Stream<_i3.EdgeInsetsGeometry?>? $buttonPadding,
    // Associate with backgroundColor
    Stream<ui.Color?>? $backgroundColor,
    // Associate with elevation
    Stream<double?>? $elevation,
    // Associate with shadowColor
    Stream<ui.Color?>? $shadowColor,
    // Associate with surfaceTintColor
    Stream<ui.Color?>? $surfaceTintColor,
    // Associate with semanticLabel
    Stream<String?>? $semanticLabel,
    // Associate with insetPadding
    Stream<_i3.EdgeInsets?>? $insetPadding,
    // Associate with clipBehavior
    Stream<ui.Clip?>? $clipBehavior,
    // Associate with shape
    Stream<_i3.ShapeBorder?>? $shape,
    // Associate with alignment
    Stream<_i3.AlignmentGeometry?>? $alignment,
    // Associate with scrollable
    Stream<bool>? $scrollable,
    // Associate with scrollController
    Stream<_i4.ScrollController?>? $scrollController,
    // Associate with actionScrollController
    Stream<_i4.ScrollController?>? $actionScrollController,
    // Associate with insetAnimationDuration
    Stream<Duration>? $insetAnimationDuration,
    // Associate with insetAnimationCurve
    Stream<_i5.Curve>? $insetAnimationCurve,
  }) : super(
          Argument(
            {
              'key': key,
              'icon': icon,
              'iconPadding': iconPadding,
              'iconColor': iconColor,
              'title': title,
              'titlePadding': titlePadding,
              'titleTextStyle': titleTextStyle,
              'content': content,
              'contentPadding': contentPadding,
              'contentTextStyle': contentTextStyle,
              'actions': actions,
              'actionsPadding': actionsPadding,
              'actionsAlignment': actionsAlignment,
              'actionsOverflowAlignment': actionsOverflowAlignment,
              'actionsOverflowDirection': actionsOverflowDirection,
              'actionsOverflowButtonSpacing': actionsOverflowButtonSpacing,
              'buttonPadding': buttonPadding,
              'backgroundColor': backgroundColor,
              'elevation': elevation,
              'shadowColor': shadowColor,
              'surfaceTintColor': surfaceTintColor,
              'semanticLabel': semanticLabel,
              'insetPadding': insetPadding,
              'clipBehavior': clipBehavior,
              'shape': shape,
              'alignment': alignment,
              'scrollable': scrollable,
              'scrollController': scrollController,
              'actionScrollController': actionScrollController,
              'insetAnimationDuration': insetAnimationDuration,
              'insetAnimationCurve': insetAnimationCurve,
            },
            stream: {
              'key': $key,
              'icon': $icon,
              'iconPadding': $iconPadding,
              'iconColor': $iconColor,
              'title': $title,
              'titlePadding': $titlePadding,
              'titleTextStyle': $titleTextStyle,
              'content': $content,
              'contentPadding': $contentPadding,
              'contentTextStyle': $contentTextStyle,
              'actions': $actions,
              'actionsPadding': $actionsPadding,
              'actionsAlignment': $actionsAlignment,
              'actionsOverflowAlignment': $actionsOverflowAlignment,
              'actionsOverflowDirection': $actionsOverflowDirection,
              'actionsOverflowButtonSpacing': $actionsOverflowButtonSpacing,
              'buttonPadding': $buttonPadding,
              'backgroundColor': $backgroundColor,
              'elevation': $elevation,
              'shadowColor': $shadowColor,
              'surfaceTintColor': $surfaceTintColor,
              'semanticLabel': $semanticLabel,
              'insetPadding': $insetPadding,
              'clipBehavior': $clipBehavior,
              'shape': $shape,
              'alignment': $alignment,
              'scrollable': $scrollable,
              'scrollController': $scrollController,
              'actionScrollController': $actionScrollController,
              'insetAnimationDuration': $insetAnimationDuration,
              'insetAnimationCurve': $insetAnimationCurve,
            },
          ),
          builder: (args) => _AdaptiveAlertDialog(
            key: args('key'),
            icon: args('icon'),
            iconPadding: args('iconPadding'),
            iconColor: args('iconColor'),
            title: args('title'),
            titlePadding: args('titlePadding'),
            titleTextStyle: args('titleTextStyle'),
            content: args('content'),
            contentPadding: args('contentPadding'),
            contentTextStyle: args('contentTextStyle'),
            actions: args('actions'),
            actionsPadding: args('actionsPadding'),
            actionsAlignment: args('actionsAlignment'),
            actionsOverflowAlignment: args('actionsOverflowAlignment'),
            actionsOverflowDirection: args('actionsOverflowDirection'),
            actionsOverflowButtonSpacing: args('actionsOverflowButtonSpacing'),
            buttonPadding: args('buttonPadding'),
            backgroundColor: args('backgroundColor'),
            elevation: args('elevation'),
            shadowColor: args('shadowColor'),
            surfaceTintColor: args('surfaceTintColor'),
            semanticLabel: args('semanticLabel'),
            insetPadding: args('insetPadding'),
            clipBehavior: args('clipBehavior'),
            shape: args('shape'),
            alignment: args('alignment'),
            scrollable: args('scrollable'),
            scrollController: args('scrollController'),
            actionScrollController: args('actionScrollController'),
            insetAnimationDuration: args('insetAnimationDuration'),
            insetAnimationCurve: args('insetAnimationCurve'),
          ),
        );
}

class _AdaptiveAlertDialog extends _i1.AlertDialog {
  const _AdaptiveAlertDialog(
      {super.key,
      super.icon,
      super.iconPadding,
      super.iconColor,
      super.title,
      super.titlePadding,
      super.titleTextStyle,
      super.content,
      super.contentPadding,
      super.contentTextStyle,
      super.actions,
      super.actionsPadding,
      super.actionsAlignment,
      super.actionsOverflowAlignment,
      super.actionsOverflowDirection,
      super.actionsOverflowButtonSpacing,
      super.buttonPadding,
      super.backgroundColor,
      super.elevation,
      super.shadowColor,
      super.surfaceTintColor,
      super.semanticLabel,
      super.insetPadding,
      super.clipBehavior,
      super.shape,
      super.alignment,
      super.scrollable = false,
      this.scrollController,
      this.actionScrollController,
      this.insetAnimationDuration = const Duration(milliseconds: 100),
      this.insetAnimationCurve = _i5.Curves.decelerate});
  final _i4.ScrollController? scrollController;
  final _i4.ScrollController? actionScrollController;
  final Duration insetAnimationDuration;
  final _i5.Curve insetAnimationCurve;
  @override
  _i4.Widget build(_i4.BuildContext context) {
    final _i1.ThemeData theme = _i1.Theme.of(context);
    switch (theme.platform) {
      case _i2.TargetPlatform.android:
      case _i2.TargetPlatform.fuchsia:
      case _i2.TargetPlatform.linux:
      case _i2.TargetPlatform.windows:
        break;
      case _i2.TargetPlatform.iOS:
      case _i2.TargetPlatform.macOS:
        return _i7.CupertinoAlertDialog(
            title: title,
            content: content,
            actions: actions ?? <_i4.Widget>[],
            scrollController: scrollController,
            actionScrollController: actionScrollController,
            insetAnimationDuration: insetAnimationDuration,
            insetAnimationCurve: insetAnimationCurve);
    }
    return super.build(context);
  }
}
