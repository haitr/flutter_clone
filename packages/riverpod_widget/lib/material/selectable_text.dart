library rxflutterify; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:ui' as ui;

import 'package:flutter/foundation.dart' as _i2;
import 'package:flutter/gestures.dart' as _i5;
import 'package:flutter/material.dart' as _i1;
import 'package:flutter/painting.dart' as _i4;
import 'package:flutter/widgets.dart' as _i3;

import '../wrapper.dart';

final class SelectableText extends Wrapper {
  @Goto(_i1.SelectableText.new)
  SelectableText(
    $ $config,
    String data, {
    _i2.Key? key,
    _i3.FocusNode? focusNode,
    _i4.TextStyle? style,
    _i4.StrutStyle? strutStyle,
    ui.TextAlign? textAlign,
    ui.TextDirection? textDirection,
    double? textScaleFactor,
    _i4.TextScaler? textScaler,
    bool showCursor = false,
    bool autofocus = false,
    _i3.ToolbarOptions? toolbarOptions,
    int? minLines,
    int? maxLines,
    double cursorWidth = 2.0,
    double? cursorHeight,
    ui.Radius? cursorRadius,
    ui.Color? cursorColor,
    ui.BoxHeightStyle selectionHeightStyle = ui.BoxHeightStyle.tight,
    ui.BoxWidthStyle selectionWidthStyle = ui.BoxWidthStyle.tight,
    _i5.DragStartBehavior dragStartBehavior = _i5.DragStartBehavior.start,
    bool enableInteractiveSelection = true,
    _i3.TextSelectionControls? selectionControls,
    _i5.GestureTapCallback? onTap,
    _i3.ScrollPhysics? scrollPhysics,
    String? semanticsLabel,
    ui.TextHeightBehavior? textHeightBehavior,
    _i4.TextWidthBasis? textWidthBasis,
    _i3.SelectionChangedCallback? onSelectionChanged,
    _i3.EditableTextContextMenuBuilder? contextMenuBuilder = _defaultContextMenuBuilder,
    _i3.TextMagnifierConfiguration? magnifierConfiguration,
  }) : super(
          Argument({
            #data: data,
            #key: key,
            #focusNode: focusNode,
            #style: style,
            #strutStyle: strutStyle,
            #textAlign: textAlign,
            #textDirection: textDirection,
            #textScaleFactor: textScaleFactor,
            #textScaler: textScaler,
            #showCursor: showCursor,
            #autofocus: autofocus,
            #toolbarOptions: toolbarOptions,
            #minLines: minLines,
            #maxLines: maxLines,
            #cursorWidth: cursorWidth,
            #cursorHeight: cursorHeight,
            #cursorRadius: cursorRadius,
            #cursorColor: cursorColor,
            #selectionHeightStyle: selectionHeightStyle,
            #selectionWidthStyle: selectionWidthStyle,
            #dragStartBehavior: dragStartBehavior,
            #enableInteractiveSelection: enableInteractiveSelection,
            #selectionControls: selectionControls,
            #onTap: onTap,
            #scrollPhysics: scrollPhysics,
            #semanticsLabel: semanticsLabel,
            #textHeightBehavior: textHeightBehavior,
            #textWidthBasis: textWidthBasis,
            #onSelectionChanged: onSelectionChanged,
            #contextMenuBuilder: contextMenuBuilder,
            #magnifierConfiguration: magnifierConfiguration,
          }),
          builder: (args) => _i1.SelectableText(
            args(#data),
            key: args(#key),
            focusNode: args(#focusNode),
            style: args(#style),
            strutStyle: args(#strutStyle),
            textAlign: args(#textAlign),
            textDirection: args(#textDirection),
            textScaleFactor: args(#textScaleFactor),
            textScaler: args(#textScaler),
            showCursor: args(#showCursor),
            autofocus: args(#autofocus),
            toolbarOptions: args(#toolbarOptions),
            minLines: args(#minLines),
            maxLines: args(#maxLines),
            cursorWidth: args(#cursorWidth),
            cursorHeight: args(#cursorHeight),
            cursorRadius: args(#cursorRadius),
            cursorColor: args(#cursorColor),
            selectionHeightStyle: args(#selectionHeightStyle),
            selectionWidthStyle: args(#selectionWidthStyle),
            dragStartBehavior: args(#dragStartBehavior),
            enableInteractiveSelection: args(#enableInteractiveSelection),
            selectionControls: args(#selectionControls),
            onTap: args(#onTap),
            scrollPhysics: args(#scrollPhysics),
            semanticsLabel: args(#semanticsLabel),
            textHeightBehavior: args(#textHeightBehavior),
            textWidthBasis: args(#textWidthBasis),
            onSelectionChanged: args(#onSelectionChanged),
            contextMenuBuilder: args(#contextMenuBuilder),
            magnifierConfiguration: args(#magnifierConfiguration),
          ),
        );

  @Goto(_i1.SelectableText.rich)
  SelectableText.rich(
    $ $config,
    _i4.TextSpan textSpan, {
    _i2.Key? key,
    _i3.FocusNode? focusNode,
    _i4.TextStyle? style,
    _i4.StrutStyle? strutStyle,
    ui.TextAlign? textAlign,
    ui.TextDirection? textDirection,
    double? textScaleFactor,
    _i4.TextScaler? textScaler,
    bool showCursor = false,
    bool autofocus = false,
    _i3.ToolbarOptions? toolbarOptions,
    int? minLines,
    int? maxLines,
    double cursorWidth = 2.0,
    double? cursorHeight,
    ui.Radius? cursorRadius,
    ui.Color? cursorColor,
    ui.BoxHeightStyle selectionHeightStyle = ui.BoxHeightStyle.tight,
    ui.BoxWidthStyle selectionWidthStyle = ui.BoxWidthStyle.tight,
    _i5.DragStartBehavior dragStartBehavior = _i5.DragStartBehavior.start,
    bool enableInteractiveSelection = true,
    _i3.TextSelectionControls? selectionControls,
    _i5.GestureTapCallback? onTap,
    _i3.ScrollPhysics? scrollPhysics,
    String? semanticsLabel,
    ui.TextHeightBehavior? textHeightBehavior,
    _i4.TextWidthBasis? textWidthBasis,
    _i3.SelectionChangedCallback? onSelectionChanged,
    _i3.EditableTextContextMenuBuilder? contextMenuBuilder = _defaultContextMenuBuilder,
    _i3.TextMagnifierConfiguration? magnifierConfiguration,
  }) : super(
          Argument({
            #textSpan: textSpan,
            #key: key,
            #focusNode: focusNode,
            #style: style,
            #strutStyle: strutStyle,
            #textAlign: textAlign,
            #textDirection: textDirection,
            #textScaleFactor: textScaleFactor,
            #textScaler: textScaler,
            #showCursor: showCursor,
            #autofocus: autofocus,
            #toolbarOptions: toolbarOptions,
            #minLines: minLines,
            #maxLines: maxLines,
            #cursorWidth: cursorWidth,
            #cursorHeight: cursorHeight,
            #cursorRadius: cursorRadius,
            #cursorColor: cursorColor,
            #selectionHeightStyle: selectionHeightStyle,
            #selectionWidthStyle: selectionWidthStyle,
            #dragStartBehavior: dragStartBehavior,
            #enableInteractiveSelection: enableInteractiveSelection,
            #selectionControls: selectionControls,
            #onTap: onTap,
            #scrollPhysics: scrollPhysics,
            #semanticsLabel: semanticsLabel,
            #textHeightBehavior: textHeightBehavior,
            #textWidthBasis: textWidthBasis,
            #onSelectionChanged: onSelectionChanged,
            #contextMenuBuilder: contextMenuBuilder,
            #magnifierConfiguration: magnifierConfiguration,
          }),
          builder: (args) => _i1.SelectableText.rich(
            args(#textSpan),
            key: args(#key),
            focusNode: args(#focusNode),
            style: args(#style),
            strutStyle: args(#strutStyle),
            textAlign: args(#textAlign),
            textDirection: args(#textDirection),
            textScaleFactor: args(#textScaleFactor),
            textScaler: args(#textScaler),
            showCursor: args(#showCursor),
            autofocus: args(#autofocus),
            toolbarOptions: args(#toolbarOptions),
            minLines: args(#minLines),
            maxLines: args(#maxLines),
            cursorWidth: args(#cursorWidth),
            cursorHeight: args(#cursorHeight),
            cursorRadius: args(#cursorRadius),
            cursorColor: args(#cursorColor),
            selectionHeightStyle: args(#selectionHeightStyle),
            selectionWidthStyle: args(#selectionWidthStyle),
            dragStartBehavior: args(#dragStartBehavior),
            enableInteractiveSelection: args(#enableInteractiveSelection),
            selectionControls: args(#selectionControls),
            onTap: args(#onTap),
            scrollPhysics: args(#scrollPhysics),
            semanticsLabel: args(#semanticsLabel),
            textHeightBehavior: args(#textHeightBehavior),
            textWidthBasis: args(#textWidthBasis),
            onSelectionChanged: args(#onSelectionChanged),
            contextMenuBuilder: args(#contextMenuBuilder),
            magnifierConfiguration: args(#magnifierConfiguration),
          ),
        );

  static _i3.Widget _defaultContextMenuBuilder(
    _i3.BuildContext context,
    _i3.EditableTextState editableTextState,
  ) {
    return _i1.AdaptiveTextSelectionToolbar.editableText(editableTextState: editableTextState);
  }
}
