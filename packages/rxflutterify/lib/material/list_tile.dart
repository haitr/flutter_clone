library rxflutterify; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:ui' as ui;

import 'package:flutter/foundation.dart' as _i2;
import 'package:flutter/gestures.dart' as _i5;
import 'package:flutter/material.dart' as _i1;
import 'package:flutter/painting.dart' as _i4;
import 'package:flutter/services.dart' as _i6;
import 'package:flutter/widgets.dart' as _i3;

import '../wrapper.dart';

final class ListTile extends Wrapper {
  @Goto(_i1.ListTile.new)
  ListTile({
    _i2.Key? key,
    _i3.Widget? leading,
    _i3.Widget? title,
    _i3.Widget? subtitle,
    _i3.Widget? trailing,
    bool isThreeLine = false,
    bool? dense,
    _i1.VisualDensity? visualDensity,
    _i4.ShapeBorder? shape,
    _i1.ListTileStyle? style,
    ui.Color? selectedColor,
    ui.Color? iconColor,
    ui.Color? textColor,
    _i4.TextStyle? titleTextStyle,
    _i4.TextStyle? subtitleTextStyle,
    _i4.TextStyle? leadingAndTrailingTextStyle,
    _i4.EdgeInsetsGeometry? contentPadding,
    bool enabled = true,
    _i5.GestureTapCallback? onTap,
    _i5.GestureLongPressCallback? onLongPress,
    _i2.ValueChanged<bool>? onFocusChange,
    _i6.MouseCursor? mouseCursor,
    bool selected = false,
    ui.Color? focusColor,
    ui.Color? hoverColor,
    ui.Color? splashColor,
    _i3.FocusNode? focusNode,
    bool autofocus = false,
    ui.Color? tileColor,
    ui.Color? selectedTileColor,
    bool? enableFeedback,
    double? horizontalTitleGap,
    double? minVerticalPadding,
    double? minLeadingWidth,
    double? minTileHeight,
    _i1.ListTileTitleAlignment? titleAlignment,
    // Associate with key
    Stream<_i2.Key?>? $key,
    // Associate with leading
    Stream<_i3.Widget?>? $leading,
    // Associate with title
    Stream<_i3.Widget?>? $title,
    // Associate with subtitle
    Stream<_i3.Widget?>? $subtitle,
    // Associate with trailing
    Stream<_i3.Widget?>? $trailing,
    // Associate with isThreeLine
    Stream<bool>? $isThreeLine,
    // Associate with dense
    Stream<bool?>? $dense,
    // Associate with visualDensity
    Stream<_i1.VisualDensity?>? $visualDensity,
    // Associate with shape
    Stream<_i4.ShapeBorder?>? $shape,
    // Associate with style
    Stream<_i1.ListTileStyle?>? $style,
    // Associate with selectedColor
    Stream<ui.Color?>? $selectedColor,
    // Associate with iconColor
    Stream<ui.Color?>? $iconColor,
    // Associate with textColor
    Stream<ui.Color?>? $textColor,
    // Associate with titleTextStyle
    Stream<_i4.TextStyle?>? $titleTextStyle,
    // Associate with subtitleTextStyle
    Stream<_i4.TextStyle?>? $subtitleTextStyle,
    // Associate with leadingAndTrailingTextStyle
    Stream<_i4.TextStyle?>? $leadingAndTrailingTextStyle,
    // Associate with contentPadding
    Stream<_i4.EdgeInsetsGeometry?>? $contentPadding,
    // Associate with enabled
    Stream<bool>? $enabled,
    // Associate with onTap
    Stream<_i5.GestureTapCallback?>? $onTap,
    // Associate with onLongPress
    Stream<_i5.GestureLongPressCallback?>? $onLongPress,
    // Associate with onFocusChange
    Stream<_i2.ValueChanged<bool>?>? $onFocusChange,
    // Associate with mouseCursor
    Stream<_i6.MouseCursor?>? $mouseCursor,
    // Associate with selected
    Stream<bool>? $selected,
    // Associate with focusColor
    Stream<ui.Color?>? $focusColor,
    // Associate with hoverColor
    Stream<ui.Color?>? $hoverColor,
    // Associate with splashColor
    Stream<ui.Color?>? $splashColor,
    // Associate with focusNode
    Stream<_i3.FocusNode?>? $focusNode,
    // Associate with autofocus
    Stream<bool>? $autofocus,
    // Associate with tileColor
    Stream<ui.Color?>? $tileColor,
    // Associate with selectedTileColor
    Stream<ui.Color?>? $selectedTileColor,
    // Associate with enableFeedback
    Stream<bool?>? $enableFeedback,
    // Associate with horizontalTitleGap
    Stream<double?>? $horizontalTitleGap,
    // Associate with minVerticalPadding
    Stream<double?>? $minVerticalPadding,
    // Associate with minLeadingWidth
    Stream<double?>? $minLeadingWidth,
    // Associate with minTileHeight
    Stream<double?>? $minTileHeight,
    // Associate with titleAlignment
    Stream<_i1.ListTileTitleAlignment?>? $titleAlignment,
  }) : super(
          Argument(
            {
              'key': key,
              'leading': leading,
              'title': title,
              'subtitle': subtitle,
              'trailing': trailing,
              'isThreeLine': isThreeLine,
              'dense': dense,
              'visualDensity': visualDensity,
              'shape': shape,
              'style': style,
              'selectedColor': selectedColor,
              'iconColor': iconColor,
              'textColor': textColor,
              'titleTextStyle': titleTextStyle,
              'subtitleTextStyle': subtitleTextStyle,
              'leadingAndTrailingTextStyle': leadingAndTrailingTextStyle,
              'contentPadding': contentPadding,
              'enabled': enabled,
              'onTap': onTap,
              'onLongPress': onLongPress,
              'onFocusChange': onFocusChange,
              'mouseCursor': mouseCursor,
              'selected': selected,
              'focusColor': focusColor,
              'hoverColor': hoverColor,
              'splashColor': splashColor,
              'focusNode': focusNode,
              'autofocus': autofocus,
              'tileColor': tileColor,
              'selectedTileColor': selectedTileColor,
              'enableFeedback': enableFeedback,
              'horizontalTitleGap': horizontalTitleGap,
              'minVerticalPadding': minVerticalPadding,
              'minLeadingWidth': minLeadingWidth,
              'minTileHeight': minTileHeight,
              'titleAlignment': titleAlignment,
            },
            stream: {
              'key': $key,
              'leading': $leading,
              'title': $title,
              'subtitle': $subtitle,
              'trailing': $trailing,
              'isThreeLine': $isThreeLine,
              'dense': $dense,
              'visualDensity': $visualDensity,
              'shape': $shape,
              'style': $style,
              'selectedColor': $selectedColor,
              'iconColor': $iconColor,
              'textColor': $textColor,
              'titleTextStyle': $titleTextStyle,
              'subtitleTextStyle': $subtitleTextStyle,
              'leadingAndTrailingTextStyle': $leadingAndTrailingTextStyle,
              'contentPadding': $contentPadding,
              'enabled': $enabled,
              'onTap': $onTap,
              'onLongPress': $onLongPress,
              'onFocusChange': $onFocusChange,
              'mouseCursor': $mouseCursor,
              'selected': $selected,
              'focusColor': $focusColor,
              'hoverColor': $hoverColor,
              'splashColor': $splashColor,
              'focusNode': $focusNode,
              'autofocus': $autofocus,
              'tileColor': $tileColor,
              'selectedTileColor': $selectedTileColor,
              'enableFeedback': $enableFeedback,
              'horizontalTitleGap': $horizontalTitleGap,
              'minVerticalPadding': $minVerticalPadding,
              'minLeadingWidth': $minLeadingWidth,
              'minTileHeight': $minTileHeight,
              'titleAlignment': $titleAlignment,
            },
          ),
          builder: (args) => _i1.ListTile(
            key: args('key'),
            leading: args('leading'),
            title: args('title'),
            subtitle: args('subtitle'),
            trailing: args('trailing'),
            isThreeLine: args('isThreeLine'),
            dense: args('dense'),
            visualDensity: args('visualDensity'),
            shape: args('shape'),
            style: args('style'),
            selectedColor: args('selectedColor'),
            iconColor: args('iconColor'),
            textColor: args('textColor'),
            titleTextStyle: args('titleTextStyle'),
            subtitleTextStyle: args('subtitleTextStyle'),
            leadingAndTrailingTextStyle: args('leadingAndTrailingTextStyle'),
            contentPadding: args('contentPadding'),
            enabled: args('enabled'),
            onTap: args('onTap'),
            onLongPress: args('onLongPress'),
            onFocusChange: args('onFocusChange'),
            mouseCursor: args('mouseCursor'),
            selected: args('selected'),
            focusColor: args('focusColor'),
            hoverColor: args('hoverColor'),
            splashColor: args('splashColor'),
            focusNode: args('focusNode'),
            autofocus: args('autofocus'),
            tileColor: args('tileColor'),
            selectedTileColor: args('selectedTileColor'),
            enableFeedback: args('enableFeedback'),
            horizontalTitleGap: args('horizontalTitleGap'),
            minVerticalPadding: args('minVerticalPadding'),
            minLeadingWidth: args('minLeadingWidth'),
            minTileHeight: args('minTileHeight'),
            titleAlignment: args('titleAlignment'),
          ),
        );
}
