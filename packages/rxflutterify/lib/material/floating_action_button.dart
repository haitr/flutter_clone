library rxflutterify; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:ui' as ui;

import 'package:flutter/foundation.dart' as _i2;
import 'package:flutter/material.dart' as _i1;
import 'package:flutter/painting.dart' as _i5;
import 'package:flutter/services.dart' as _i4;
import 'package:flutter/widgets.dart' as _i3;

import '../wrapper.dart';

final class FloatingActionButton extends Wrapper {
  @Goto(_i1.FloatingActionButton.new)
  FloatingActionButton({
    _i2.Key? key,
    _i3.Widget? child,
    String? tooltip,
    ui.Color? foregroundColor,
    ui.Color? backgroundColor,
    ui.Color? focusColor,
    ui.Color? hoverColor,
    ui.Color? splashColor,
    Object? heroTag = const _DefaultHeroTag(),
    double? elevation,
    double? focusElevation,
    double? hoverElevation,
    double? highlightElevation,
    double? disabledElevation,
    required ui.VoidCallback? onPressed,
    _i4.MouseCursor? mouseCursor,
    bool mini = false,
    _i5.ShapeBorder? shape,
    ui.Clip clipBehavior = ui.Clip.none,
    _i3.FocusNode? focusNode,
    bool autofocus = false,
    _i1.MaterialTapTargetSize? materialTapTargetSize,
    bool isExtended = false,
    bool? enableFeedback,
    // Associate with key
    Stream<_i2.Key?>? $key,
    // Associate with child
    Stream<_i3.Widget?>? $child,
    // Associate with tooltip
    Stream<String?>? $tooltip,
    // Associate with foregroundColor
    Stream<ui.Color?>? $foregroundColor,
    // Associate with backgroundColor
    Stream<ui.Color?>? $backgroundColor,
    // Associate with focusColor
    Stream<ui.Color?>? $focusColor,
    // Associate with hoverColor
    Stream<ui.Color?>? $hoverColor,
    // Associate with splashColor
    Stream<ui.Color?>? $splashColor,
    // Associate with heroTag
    Stream<Object?>? $heroTag,
    // Associate with elevation
    Stream<double?>? $elevation,
    // Associate with focusElevation
    Stream<double?>? $focusElevation,
    // Associate with hoverElevation
    Stream<double?>? $hoverElevation,
    // Associate with highlightElevation
    Stream<double?>? $highlightElevation,
    // Associate with disabledElevation
    Stream<double?>? $disabledElevation,
    // Associate with onPressed
    Stream<ui.VoidCallback?>? $onPressed,
    // Associate with mouseCursor
    Stream<_i4.MouseCursor?>? $mouseCursor,
    // Associate with mini
    Stream<bool>? $mini,
    // Associate with shape
    Stream<_i5.ShapeBorder?>? $shape,
    // Associate with clipBehavior
    Stream<ui.Clip>? $clipBehavior,
    // Associate with focusNode
    Stream<_i3.FocusNode?>? $focusNode,
    // Associate with autofocus
    Stream<bool>? $autofocus,
    // Associate with materialTapTargetSize
    Stream<_i1.MaterialTapTargetSize?>? $materialTapTargetSize,
    // Associate with isExtended
    Stream<bool>? $isExtended,
    // Associate with enableFeedback
    Stream<bool?>? $enableFeedback,
  }) : super(
          Argument(
            {
              'key': key,
              'child': child,
              'tooltip': tooltip,
              'foregroundColor': foregroundColor,
              'backgroundColor': backgroundColor,
              'focusColor': focusColor,
              'hoverColor': hoverColor,
              'splashColor': splashColor,
              'heroTag': heroTag,
              'elevation': elevation,
              'focusElevation': focusElevation,
              'hoverElevation': hoverElevation,
              'highlightElevation': highlightElevation,
              'disabledElevation': disabledElevation,
              'onPressed': onPressed,
              'mouseCursor': mouseCursor,
              'mini': mini,
              'shape': shape,
              'clipBehavior': clipBehavior,
              'focusNode': focusNode,
              'autofocus': autofocus,
              'materialTapTargetSize': materialTapTargetSize,
              'isExtended': isExtended,
              'enableFeedback': enableFeedback,
            },
            stream: {
              'key': $key,
              'child': $child,
              'tooltip': $tooltip,
              'foregroundColor': $foregroundColor,
              'backgroundColor': $backgroundColor,
              'focusColor': $focusColor,
              'hoverColor': $hoverColor,
              'splashColor': $splashColor,
              'heroTag': $heroTag,
              'elevation': $elevation,
              'focusElevation': $focusElevation,
              'hoverElevation': $hoverElevation,
              'highlightElevation': $highlightElevation,
              'disabledElevation': $disabledElevation,
              'onPressed': $onPressed,
              'mouseCursor': $mouseCursor,
              'mini': $mini,
              'shape': $shape,
              'clipBehavior': $clipBehavior,
              'focusNode': $focusNode,
              'autofocus': $autofocus,
              'materialTapTargetSize': $materialTapTargetSize,
              'isExtended': $isExtended,
              'enableFeedback': $enableFeedback,
            },
          ),
          builder: (args) => _i1.FloatingActionButton(
            key: args('key'),
            child: args('child'),
            tooltip: args('tooltip'),
            foregroundColor: args('foregroundColor'),
            backgroundColor: args('backgroundColor'),
            focusColor: args('focusColor'),
            hoverColor: args('hoverColor'),
            splashColor: args('splashColor'),
            heroTag: args('heroTag'),
            elevation: args('elevation'),
            focusElevation: args('focusElevation'),
            hoverElevation: args('hoverElevation'),
            highlightElevation: args('highlightElevation'),
            disabledElevation: args('disabledElevation'),
            onPressed: args('onPressed'),
            mouseCursor: args('mouseCursor'),
            mini: args('mini'),
            shape: args('shape'),
            clipBehavior: args('clipBehavior'),
            focusNode: args('focusNode'),
            autofocus: args('autofocus'),
            materialTapTargetSize: args('materialTapTargetSize'),
            isExtended: args('isExtended'),
            enableFeedback: args('enableFeedback'),
          ),
        );

  @Goto(_i1.FloatingActionButton.small)
  FloatingActionButton.small({
    _i2.Key? key,
    _i3.Widget? child,
    String? tooltip,
    ui.Color? foregroundColor,
    ui.Color? backgroundColor,
    ui.Color? focusColor,
    ui.Color? hoverColor,
    ui.Color? splashColor,
    Object? heroTag = const _DefaultHeroTag(),
    double? elevation,
    double? focusElevation,
    double? hoverElevation,
    double? highlightElevation,
    double? disabledElevation,
    required ui.VoidCallback? onPressed,
    _i4.MouseCursor? mouseCursor,
    _i5.ShapeBorder? shape,
    ui.Clip clipBehavior = ui.Clip.none,
    _i3.FocusNode? focusNode,
    bool autofocus = false,
    _i1.MaterialTapTargetSize? materialTapTargetSize,
    bool? enableFeedback,
    // Associate with key
    Stream<_i2.Key?>? $key,
    // Associate with child
    Stream<_i3.Widget?>? $child,
    // Associate with tooltip
    Stream<String?>? $tooltip,
    // Associate with foregroundColor
    Stream<ui.Color?>? $foregroundColor,
    // Associate with backgroundColor
    Stream<ui.Color?>? $backgroundColor,
    // Associate with focusColor
    Stream<ui.Color?>? $focusColor,
    // Associate with hoverColor
    Stream<ui.Color?>? $hoverColor,
    // Associate with splashColor
    Stream<ui.Color?>? $splashColor,
    // Associate with heroTag
    Stream<Object?>? $heroTag,
    // Associate with elevation
    Stream<double?>? $elevation,
    // Associate with focusElevation
    Stream<double?>? $focusElevation,
    // Associate with hoverElevation
    Stream<double?>? $hoverElevation,
    // Associate with highlightElevation
    Stream<double?>? $highlightElevation,
    // Associate with disabledElevation
    Stream<double?>? $disabledElevation,
    // Associate with onPressed
    Stream<ui.VoidCallback?>? $onPressed,
    // Associate with mouseCursor
    Stream<_i4.MouseCursor?>? $mouseCursor,
    // Associate with shape
    Stream<_i5.ShapeBorder?>? $shape,
    // Associate with clipBehavior
    Stream<ui.Clip>? $clipBehavior,
    // Associate with focusNode
    Stream<_i3.FocusNode?>? $focusNode,
    // Associate with autofocus
    Stream<bool>? $autofocus,
    // Associate with materialTapTargetSize
    Stream<_i1.MaterialTapTargetSize?>? $materialTapTargetSize,
    // Associate with enableFeedback
    Stream<bool?>? $enableFeedback,
  }) : super(
          Argument(
            {
              'key': key,
              'child': child,
              'tooltip': tooltip,
              'foregroundColor': foregroundColor,
              'backgroundColor': backgroundColor,
              'focusColor': focusColor,
              'hoverColor': hoverColor,
              'splashColor': splashColor,
              'heroTag': heroTag,
              'elevation': elevation,
              'focusElevation': focusElevation,
              'hoverElevation': hoverElevation,
              'highlightElevation': highlightElevation,
              'disabledElevation': disabledElevation,
              'onPressed': onPressed,
              'mouseCursor': mouseCursor,
              'shape': shape,
              'clipBehavior': clipBehavior,
              'focusNode': focusNode,
              'autofocus': autofocus,
              'materialTapTargetSize': materialTapTargetSize,
              'enableFeedback': enableFeedback,
            },
            stream: {
              'key': $key,
              'child': $child,
              'tooltip': $tooltip,
              'foregroundColor': $foregroundColor,
              'backgroundColor': $backgroundColor,
              'focusColor': $focusColor,
              'hoverColor': $hoverColor,
              'splashColor': $splashColor,
              'heroTag': $heroTag,
              'elevation': $elevation,
              'focusElevation': $focusElevation,
              'hoverElevation': $hoverElevation,
              'highlightElevation': $highlightElevation,
              'disabledElevation': $disabledElevation,
              'onPressed': $onPressed,
              'mouseCursor': $mouseCursor,
              'shape': $shape,
              'clipBehavior': $clipBehavior,
              'focusNode': $focusNode,
              'autofocus': $autofocus,
              'materialTapTargetSize': $materialTapTargetSize,
              'enableFeedback': $enableFeedback,
            },
          ),
          builder: (args) => _i1.FloatingActionButton.small(
            key: args('key'),
            child: args('child'),
            tooltip: args('tooltip'),
            foregroundColor: args('foregroundColor'),
            backgroundColor: args('backgroundColor'),
            focusColor: args('focusColor'),
            hoverColor: args('hoverColor'),
            splashColor: args('splashColor'),
            heroTag: args('heroTag'),
            elevation: args('elevation'),
            focusElevation: args('focusElevation'),
            hoverElevation: args('hoverElevation'),
            highlightElevation: args('highlightElevation'),
            disabledElevation: args('disabledElevation'),
            onPressed: args('onPressed'),
            mouseCursor: args('mouseCursor'),
            shape: args('shape'),
            clipBehavior: args('clipBehavior'),
            focusNode: args('focusNode'),
            autofocus: args('autofocus'),
            materialTapTargetSize: args('materialTapTargetSize'),
            enableFeedback: args('enableFeedback'),
          ),
        );

  @Goto(_i1.FloatingActionButton.large)
  FloatingActionButton.large({
    _i2.Key? key,
    _i3.Widget? child,
    String? tooltip,
    ui.Color? foregroundColor,
    ui.Color? backgroundColor,
    ui.Color? focusColor,
    ui.Color? hoverColor,
    ui.Color? splashColor,
    Object? heroTag = const _DefaultHeroTag(),
    double? elevation,
    double? focusElevation,
    double? hoverElevation,
    double? highlightElevation,
    double? disabledElevation,
    required ui.VoidCallback? onPressed,
    _i4.MouseCursor? mouseCursor,
    _i5.ShapeBorder? shape,
    ui.Clip clipBehavior = ui.Clip.none,
    _i3.FocusNode? focusNode,
    bool autofocus = false,
    _i1.MaterialTapTargetSize? materialTapTargetSize,
    bool? enableFeedback,
    // Associate with key
    Stream<_i2.Key?>? $key,
    // Associate with child
    Stream<_i3.Widget?>? $child,
    // Associate with tooltip
    Stream<String?>? $tooltip,
    // Associate with foregroundColor
    Stream<ui.Color?>? $foregroundColor,
    // Associate with backgroundColor
    Stream<ui.Color?>? $backgroundColor,
    // Associate with focusColor
    Stream<ui.Color?>? $focusColor,
    // Associate with hoverColor
    Stream<ui.Color?>? $hoverColor,
    // Associate with splashColor
    Stream<ui.Color?>? $splashColor,
    // Associate with heroTag
    Stream<Object?>? $heroTag,
    // Associate with elevation
    Stream<double?>? $elevation,
    // Associate with focusElevation
    Stream<double?>? $focusElevation,
    // Associate with hoverElevation
    Stream<double?>? $hoverElevation,
    // Associate with highlightElevation
    Stream<double?>? $highlightElevation,
    // Associate with disabledElevation
    Stream<double?>? $disabledElevation,
    // Associate with onPressed
    Stream<ui.VoidCallback?>? $onPressed,
    // Associate with mouseCursor
    Stream<_i4.MouseCursor?>? $mouseCursor,
    // Associate with shape
    Stream<_i5.ShapeBorder?>? $shape,
    // Associate with clipBehavior
    Stream<ui.Clip>? $clipBehavior,
    // Associate with focusNode
    Stream<_i3.FocusNode?>? $focusNode,
    // Associate with autofocus
    Stream<bool>? $autofocus,
    // Associate with materialTapTargetSize
    Stream<_i1.MaterialTapTargetSize?>? $materialTapTargetSize,
    // Associate with enableFeedback
    Stream<bool?>? $enableFeedback,
  }) : super(
          Argument(
            {
              'key': key,
              'child': child,
              'tooltip': tooltip,
              'foregroundColor': foregroundColor,
              'backgroundColor': backgroundColor,
              'focusColor': focusColor,
              'hoverColor': hoverColor,
              'splashColor': splashColor,
              'heroTag': heroTag,
              'elevation': elevation,
              'focusElevation': focusElevation,
              'hoverElevation': hoverElevation,
              'highlightElevation': highlightElevation,
              'disabledElevation': disabledElevation,
              'onPressed': onPressed,
              'mouseCursor': mouseCursor,
              'shape': shape,
              'clipBehavior': clipBehavior,
              'focusNode': focusNode,
              'autofocus': autofocus,
              'materialTapTargetSize': materialTapTargetSize,
              'enableFeedback': enableFeedback,
            },
            stream: {
              'key': $key,
              'child': $child,
              'tooltip': $tooltip,
              'foregroundColor': $foregroundColor,
              'backgroundColor': $backgroundColor,
              'focusColor': $focusColor,
              'hoverColor': $hoverColor,
              'splashColor': $splashColor,
              'heroTag': $heroTag,
              'elevation': $elevation,
              'focusElevation': $focusElevation,
              'hoverElevation': $hoverElevation,
              'highlightElevation': $highlightElevation,
              'disabledElevation': $disabledElevation,
              'onPressed': $onPressed,
              'mouseCursor': $mouseCursor,
              'shape': $shape,
              'clipBehavior': $clipBehavior,
              'focusNode': $focusNode,
              'autofocus': $autofocus,
              'materialTapTargetSize': $materialTapTargetSize,
              'enableFeedback': $enableFeedback,
            },
          ),
          builder: (args) => _i1.FloatingActionButton.large(
            key: args('key'),
            child: args('child'),
            tooltip: args('tooltip'),
            foregroundColor: args('foregroundColor'),
            backgroundColor: args('backgroundColor'),
            focusColor: args('focusColor'),
            hoverColor: args('hoverColor'),
            splashColor: args('splashColor'),
            heroTag: args('heroTag'),
            elevation: args('elevation'),
            focusElevation: args('focusElevation'),
            hoverElevation: args('hoverElevation'),
            highlightElevation: args('highlightElevation'),
            disabledElevation: args('disabledElevation'),
            onPressed: args('onPressed'),
            mouseCursor: args('mouseCursor'),
            shape: args('shape'),
            clipBehavior: args('clipBehavior'),
            focusNode: args('focusNode'),
            autofocus: args('autofocus'),
            materialTapTargetSize: args('materialTapTargetSize'),
            enableFeedback: args('enableFeedback'),
          ),
        );

  @Goto(_i1.FloatingActionButton.extended)
  FloatingActionButton.extended({
    _i2.Key? key,
    String? tooltip,
    ui.Color? foregroundColor,
    ui.Color? backgroundColor,
    ui.Color? focusColor,
    ui.Color? hoverColor,
    Object? heroTag = const _DefaultHeroTag(),
    double? elevation,
    double? focusElevation,
    double? hoverElevation,
    ui.Color? splashColor,
    double? highlightElevation,
    double? disabledElevation,
    required ui.VoidCallback? onPressed,
    _i4.MouseCursor? mouseCursor = _i4.SystemMouseCursors.click,
    _i5.ShapeBorder? shape,
    bool isExtended = true,
    _i1.MaterialTapTargetSize? materialTapTargetSize,
    ui.Clip clipBehavior = ui.Clip.none,
    _i3.FocusNode? focusNode,
    bool autofocus = false,
    double? extendedIconLabelSpacing,
    _i5.EdgeInsetsGeometry? extendedPadding,
    _i5.TextStyle? extendedTextStyle,
    _i3.Widget? icon,
    required _i3.Widget label,
    bool? enableFeedback,
    // Associate with key
    Stream<_i2.Key?>? $key,
    // Associate with tooltip
    Stream<String?>? $tooltip,
    // Associate with foregroundColor
    Stream<ui.Color?>? $foregroundColor,
    // Associate with backgroundColor
    Stream<ui.Color?>? $backgroundColor,
    // Associate with focusColor
    Stream<ui.Color?>? $focusColor,
    // Associate with hoverColor
    Stream<ui.Color?>? $hoverColor,
    // Associate with heroTag
    Stream<Object?>? $heroTag,
    // Associate with elevation
    Stream<double?>? $elevation,
    // Associate with focusElevation
    Stream<double?>? $focusElevation,
    // Associate with hoverElevation
    Stream<double?>? $hoverElevation,
    // Associate with splashColor
    Stream<ui.Color?>? $splashColor,
    // Associate with highlightElevation
    Stream<double?>? $highlightElevation,
    // Associate with disabledElevation
    Stream<double?>? $disabledElevation,
    // Associate with onPressed
    Stream<ui.VoidCallback?>? $onPressed,
    // Associate with mouseCursor
    Stream<_i4.MouseCursor?>? $mouseCursor,
    // Associate with shape
    Stream<_i5.ShapeBorder?>? $shape,
    // Associate with isExtended
    Stream<bool>? $isExtended,
    // Associate with materialTapTargetSize
    Stream<_i1.MaterialTapTargetSize?>? $materialTapTargetSize,
    // Associate with clipBehavior
    Stream<ui.Clip>? $clipBehavior,
    // Associate with focusNode
    Stream<_i3.FocusNode?>? $focusNode,
    // Associate with autofocus
    Stream<bool>? $autofocus,
    // Associate with extendedIconLabelSpacing
    Stream<double?>? $extendedIconLabelSpacing,
    // Associate with extendedPadding
    Stream<_i5.EdgeInsetsGeometry?>? $extendedPadding,
    // Associate with extendedTextStyle
    Stream<_i5.TextStyle?>? $extendedTextStyle,
    // Associate with icon
    Stream<_i3.Widget?>? $icon,
    // Associate with label
    Stream<_i3.Widget>? $label,
    // Associate with enableFeedback
    Stream<bool?>? $enableFeedback,
  }) : super(
          Argument(
            {
              'key': key,
              'tooltip': tooltip,
              'foregroundColor': foregroundColor,
              'backgroundColor': backgroundColor,
              'focusColor': focusColor,
              'hoverColor': hoverColor,
              'heroTag': heroTag,
              'elevation': elevation,
              'focusElevation': focusElevation,
              'hoverElevation': hoverElevation,
              'splashColor': splashColor,
              'highlightElevation': highlightElevation,
              'disabledElevation': disabledElevation,
              'onPressed': onPressed,
              'mouseCursor': mouseCursor,
              'shape': shape,
              'isExtended': isExtended,
              'materialTapTargetSize': materialTapTargetSize,
              'clipBehavior': clipBehavior,
              'focusNode': focusNode,
              'autofocus': autofocus,
              'extendedIconLabelSpacing': extendedIconLabelSpacing,
              'extendedPadding': extendedPadding,
              'extendedTextStyle': extendedTextStyle,
              'icon': icon,
              'label': label,
              'enableFeedback': enableFeedback,
            },
            stream: {
              'key': $key,
              'tooltip': $tooltip,
              'foregroundColor': $foregroundColor,
              'backgroundColor': $backgroundColor,
              'focusColor': $focusColor,
              'hoverColor': $hoverColor,
              'heroTag': $heroTag,
              'elevation': $elevation,
              'focusElevation': $focusElevation,
              'hoverElevation': $hoverElevation,
              'splashColor': $splashColor,
              'highlightElevation': $highlightElevation,
              'disabledElevation': $disabledElevation,
              'onPressed': $onPressed,
              'mouseCursor': $mouseCursor,
              'shape': $shape,
              'isExtended': $isExtended,
              'materialTapTargetSize': $materialTapTargetSize,
              'clipBehavior': $clipBehavior,
              'focusNode': $focusNode,
              'autofocus': $autofocus,
              'extendedIconLabelSpacing': $extendedIconLabelSpacing,
              'extendedPadding': $extendedPadding,
              'extendedTextStyle': $extendedTextStyle,
              'icon': $icon,
              'label': $label,
              'enableFeedback': $enableFeedback,
            },
          ),
          builder: (args) => _i1.FloatingActionButton.extended(
            key: args('key'),
            tooltip: args('tooltip'),
            foregroundColor: args('foregroundColor'),
            backgroundColor: args('backgroundColor'),
            focusColor: args('focusColor'),
            hoverColor: args('hoverColor'),
            heroTag: args('heroTag'),
            elevation: args('elevation'),
            focusElevation: args('focusElevation'),
            hoverElevation: args('hoverElevation'),
            splashColor: args('splashColor'),
            highlightElevation: args('highlightElevation'),
            disabledElevation: args('disabledElevation'),
            onPressed: args('onPressed'),
            mouseCursor: args('mouseCursor'),
            shape: args('shape'),
            isExtended: args('isExtended'),
            materialTapTargetSize: args('materialTapTargetSize'),
            clipBehavior: args('clipBehavior'),
            focusNode: args('focusNode'),
            autofocus: args('autofocus'),
            extendedIconLabelSpacing: args('extendedIconLabelSpacing'),
            extendedPadding: args('extendedPadding'),
            extendedTextStyle: args('extendedTextStyle'),
            icon: args('icon'),
            label: args('label'),
            enableFeedback: args('enableFeedback'),
          ),
        );
}

class _DefaultHeroTag {
  const _DefaultHeroTag();
  @override
  String toString() => '<default FloatingActionButton tag>';
}
