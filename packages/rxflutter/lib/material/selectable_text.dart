library rxflutter; // ignore_for_file: no_leading_underscores_for_library_prefixes

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
    // Associate with data
    Stream<String>? $data,
    // Associate with key
    Stream<_i2.Key?>? $key,
    // Associate with focusNode
    Stream<_i3.FocusNode?>? $focusNode,
    // Associate with style
    Stream<_i4.TextStyle?>? $style,
    // Associate with strutStyle
    Stream<_i4.StrutStyle?>? $strutStyle,
    // Associate with textAlign
    Stream<ui.TextAlign?>? $textAlign,
    // Associate with textDirection
    Stream<ui.TextDirection?>? $textDirection,
    // Associate with textScaleFactor
    Stream<double?>? $textScaleFactor,
    // Associate with textScaler
    Stream<_i4.TextScaler?>? $textScaler,
    // Associate with showCursor
    Stream<bool>? $showCursor,
    // Associate with autofocus
    Stream<bool>? $autofocus,
    // Associate with toolbarOptions
    Stream<_i3.ToolbarOptions?>? $toolbarOptions,
    // Associate with minLines
    Stream<int?>? $minLines,
    // Associate with maxLines
    Stream<int?>? $maxLines,
    // Associate with cursorWidth
    Stream<double>? $cursorWidth,
    // Associate with cursorHeight
    Stream<double?>? $cursorHeight,
    // Associate with cursorRadius
    Stream<ui.Radius?>? $cursorRadius,
    // Associate with cursorColor
    Stream<ui.Color?>? $cursorColor,
    // Associate with selectionHeightStyle
    Stream<ui.BoxHeightStyle>? $selectionHeightStyle,
    // Associate with selectionWidthStyle
    Stream<ui.BoxWidthStyle>? $selectionWidthStyle,
    // Associate with dragStartBehavior
    Stream<_i5.DragStartBehavior>? $dragStartBehavior,
    // Associate with enableInteractiveSelection
    Stream<bool>? $enableInteractiveSelection,
    // Associate with selectionControls
    Stream<_i3.TextSelectionControls?>? $selectionControls,
    // Associate with onTap
    Stream<_i5.GestureTapCallback?>? $onTap,
    // Associate with scrollPhysics
    Stream<_i3.ScrollPhysics?>? $scrollPhysics,
    // Associate with semanticsLabel
    Stream<String?>? $semanticsLabel,
    // Associate with textHeightBehavior
    Stream<ui.TextHeightBehavior?>? $textHeightBehavior,
    // Associate with textWidthBasis
    Stream<_i4.TextWidthBasis?>? $textWidthBasis,
    // Associate with onSelectionChanged
    Stream<_i3.SelectionChangedCallback?>? $onSelectionChanged,
    // Associate with contextMenuBuilder
    Stream<_i3.EditableTextContextMenuBuilder?>? $contextMenuBuilder,
    // Associate with magnifierConfiguration
    Stream<_i3.TextMagnifierConfiguration?>? $magnifierConfiguration,
  }) : super(
          Argument(
            {
              'data': data,
              'key': key,
              'focusNode': focusNode,
              'style': style,
              'strutStyle': strutStyle,
              'textAlign': textAlign,
              'textDirection': textDirection,
              'textScaleFactor': textScaleFactor,
              'textScaler': textScaler,
              'showCursor': showCursor,
              'autofocus': autofocus,
              'toolbarOptions': toolbarOptions,
              'minLines': minLines,
              'maxLines': maxLines,
              'cursorWidth': cursorWidth,
              'cursorHeight': cursorHeight,
              'cursorRadius': cursorRadius,
              'cursorColor': cursorColor,
              'selectionHeightStyle': selectionHeightStyle,
              'selectionWidthStyle': selectionWidthStyle,
              'dragStartBehavior': dragStartBehavior,
              'enableInteractiveSelection': enableInteractiveSelection,
              'selectionControls': selectionControls,
              'onTap': onTap,
              'scrollPhysics': scrollPhysics,
              'semanticsLabel': semanticsLabel,
              'textHeightBehavior': textHeightBehavior,
              'textWidthBasis': textWidthBasis,
              'onSelectionChanged': onSelectionChanged,
              'contextMenuBuilder': contextMenuBuilder,
              'magnifierConfiguration': magnifierConfiguration,
            },
            stream: {
              'data': $data,
              'key': $key,
              'focusNode': $focusNode,
              'style': $style,
              'strutStyle': $strutStyle,
              'textAlign': $textAlign,
              'textDirection': $textDirection,
              'textScaleFactor': $textScaleFactor,
              'textScaler': $textScaler,
              'showCursor': $showCursor,
              'autofocus': $autofocus,
              'toolbarOptions': $toolbarOptions,
              'minLines': $minLines,
              'maxLines': $maxLines,
              'cursorWidth': $cursorWidth,
              'cursorHeight': $cursorHeight,
              'cursorRadius': $cursorRadius,
              'cursorColor': $cursorColor,
              'selectionHeightStyle': $selectionHeightStyle,
              'selectionWidthStyle': $selectionWidthStyle,
              'dragStartBehavior': $dragStartBehavior,
              'enableInteractiveSelection': $enableInteractiveSelection,
              'selectionControls': $selectionControls,
              'onTap': $onTap,
              'scrollPhysics': $scrollPhysics,
              'semanticsLabel': $semanticsLabel,
              'textHeightBehavior': $textHeightBehavior,
              'textWidthBasis': $textWidthBasis,
              'onSelectionChanged': $onSelectionChanged,
              'contextMenuBuilder': $contextMenuBuilder,
              'magnifierConfiguration': $magnifierConfiguration,
            },
          ),
          builder: (args) => _i1.SelectableText(
            args('data'),
            key: args('key'),
            focusNode: args('focusNode'),
            style: args('style'),
            strutStyle: args('strutStyle'),
            textAlign: args('textAlign'),
            textDirection: args('textDirection'),
            textScaleFactor: args('textScaleFactor'),
            textScaler: args('textScaler'),
            showCursor: args('showCursor'),
            autofocus: args('autofocus'),
            toolbarOptions: args('toolbarOptions'),
            minLines: args('minLines'),
            maxLines: args('maxLines'),
            cursorWidth: args('cursorWidth'),
            cursorHeight: args('cursorHeight'),
            cursorRadius: args('cursorRadius'),
            cursorColor: args('cursorColor'),
            selectionHeightStyle: args('selectionHeightStyle'),
            selectionWidthStyle: args('selectionWidthStyle'),
            dragStartBehavior: args('dragStartBehavior'),
            enableInteractiveSelection: args('enableInteractiveSelection'),
            selectionControls: args('selectionControls'),
            onTap: args('onTap'),
            scrollPhysics: args('scrollPhysics'),
            semanticsLabel: args('semanticsLabel'),
            textHeightBehavior: args('textHeightBehavior'),
            textWidthBasis: args('textWidthBasis'),
            onSelectionChanged: args('onSelectionChanged'),
            contextMenuBuilder: args('contextMenuBuilder'),
            magnifierConfiguration: args('magnifierConfiguration'),
          ),
        );

  @Goto(_i1.SelectableText.rich)
  SelectableText.rich(
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
    // Associate with textSpan
    Stream<_i4.TextSpan>? $textSpan,
    // Associate with key
    Stream<_i2.Key?>? $key,
    // Associate with focusNode
    Stream<_i3.FocusNode?>? $focusNode,
    // Associate with style
    Stream<_i4.TextStyle?>? $style,
    // Associate with strutStyle
    Stream<_i4.StrutStyle?>? $strutStyle,
    // Associate with textAlign
    Stream<ui.TextAlign?>? $textAlign,
    // Associate with textDirection
    Stream<ui.TextDirection?>? $textDirection,
    // Associate with textScaleFactor
    Stream<double?>? $textScaleFactor,
    // Associate with textScaler
    Stream<_i4.TextScaler?>? $textScaler,
    // Associate with showCursor
    Stream<bool>? $showCursor,
    // Associate with autofocus
    Stream<bool>? $autofocus,
    // Associate with toolbarOptions
    Stream<_i3.ToolbarOptions?>? $toolbarOptions,
    // Associate with minLines
    Stream<int?>? $minLines,
    // Associate with maxLines
    Stream<int?>? $maxLines,
    // Associate with cursorWidth
    Stream<double>? $cursorWidth,
    // Associate with cursorHeight
    Stream<double?>? $cursorHeight,
    // Associate with cursorRadius
    Stream<ui.Radius?>? $cursorRadius,
    // Associate with cursorColor
    Stream<ui.Color?>? $cursorColor,
    // Associate with selectionHeightStyle
    Stream<ui.BoxHeightStyle>? $selectionHeightStyle,
    // Associate with selectionWidthStyle
    Stream<ui.BoxWidthStyle>? $selectionWidthStyle,
    // Associate with dragStartBehavior
    Stream<_i5.DragStartBehavior>? $dragStartBehavior,
    // Associate with enableInteractiveSelection
    Stream<bool>? $enableInteractiveSelection,
    // Associate with selectionControls
    Stream<_i3.TextSelectionControls?>? $selectionControls,
    // Associate with onTap
    Stream<_i5.GestureTapCallback?>? $onTap,
    // Associate with scrollPhysics
    Stream<_i3.ScrollPhysics?>? $scrollPhysics,
    // Associate with semanticsLabel
    Stream<String?>? $semanticsLabel,
    // Associate with textHeightBehavior
    Stream<ui.TextHeightBehavior?>? $textHeightBehavior,
    // Associate with textWidthBasis
    Stream<_i4.TextWidthBasis?>? $textWidthBasis,
    // Associate with onSelectionChanged
    Stream<_i3.SelectionChangedCallback?>? $onSelectionChanged,
    // Associate with contextMenuBuilder
    Stream<_i3.EditableTextContextMenuBuilder?>? $contextMenuBuilder,
    // Associate with magnifierConfiguration
    Stream<_i3.TextMagnifierConfiguration?>? $magnifierConfiguration,
  }) : super(
          Argument(
            {
              'textSpan': textSpan,
              'key': key,
              'focusNode': focusNode,
              'style': style,
              'strutStyle': strutStyle,
              'textAlign': textAlign,
              'textDirection': textDirection,
              'textScaleFactor': textScaleFactor,
              'textScaler': textScaler,
              'showCursor': showCursor,
              'autofocus': autofocus,
              'toolbarOptions': toolbarOptions,
              'minLines': minLines,
              'maxLines': maxLines,
              'cursorWidth': cursorWidth,
              'cursorHeight': cursorHeight,
              'cursorRadius': cursorRadius,
              'cursorColor': cursorColor,
              'selectionHeightStyle': selectionHeightStyle,
              'selectionWidthStyle': selectionWidthStyle,
              'dragStartBehavior': dragStartBehavior,
              'enableInteractiveSelection': enableInteractiveSelection,
              'selectionControls': selectionControls,
              'onTap': onTap,
              'scrollPhysics': scrollPhysics,
              'semanticsLabel': semanticsLabel,
              'textHeightBehavior': textHeightBehavior,
              'textWidthBasis': textWidthBasis,
              'onSelectionChanged': onSelectionChanged,
              'contextMenuBuilder': contextMenuBuilder,
              'magnifierConfiguration': magnifierConfiguration,
            },
            stream: {
              'textSpan': $textSpan,
              'key': $key,
              'focusNode': $focusNode,
              'style': $style,
              'strutStyle': $strutStyle,
              'textAlign': $textAlign,
              'textDirection': $textDirection,
              'textScaleFactor': $textScaleFactor,
              'textScaler': $textScaler,
              'showCursor': $showCursor,
              'autofocus': $autofocus,
              'toolbarOptions': $toolbarOptions,
              'minLines': $minLines,
              'maxLines': $maxLines,
              'cursorWidth': $cursorWidth,
              'cursorHeight': $cursorHeight,
              'cursorRadius': $cursorRadius,
              'cursorColor': $cursorColor,
              'selectionHeightStyle': $selectionHeightStyle,
              'selectionWidthStyle': $selectionWidthStyle,
              'dragStartBehavior': $dragStartBehavior,
              'enableInteractiveSelection': $enableInteractiveSelection,
              'selectionControls': $selectionControls,
              'onTap': $onTap,
              'scrollPhysics': $scrollPhysics,
              'semanticsLabel': $semanticsLabel,
              'textHeightBehavior': $textHeightBehavior,
              'textWidthBasis': $textWidthBasis,
              'onSelectionChanged': $onSelectionChanged,
              'contextMenuBuilder': $contextMenuBuilder,
              'magnifierConfiguration': $magnifierConfiguration,
            },
          ),
          builder: (args) => _i1.SelectableText.rich(
            args('textSpan'),
            key: args('key'),
            focusNode: args('focusNode'),
            style: args('style'),
            strutStyle: args('strutStyle'),
            textAlign: args('textAlign'),
            textDirection: args('textDirection'),
            textScaleFactor: args('textScaleFactor'),
            textScaler: args('textScaler'),
            showCursor: args('showCursor'),
            autofocus: args('autofocus'),
            toolbarOptions: args('toolbarOptions'),
            minLines: args('minLines'),
            maxLines: args('maxLines'),
            cursorWidth: args('cursorWidth'),
            cursorHeight: args('cursorHeight'),
            cursorRadius: args('cursorRadius'),
            cursorColor: args('cursorColor'),
            selectionHeightStyle: args('selectionHeightStyle'),
            selectionWidthStyle: args('selectionWidthStyle'),
            dragStartBehavior: args('dragStartBehavior'),
            enableInteractiveSelection: args('enableInteractiveSelection'),
            selectionControls: args('selectionControls'),
            onTap: args('onTap'),
            scrollPhysics: args('scrollPhysics'),
            semanticsLabel: args('semanticsLabel'),
            textHeightBehavior: args('textHeightBehavior'),
            textWidthBasis: args('textWidthBasis'),
            onSelectionChanged: args('onSelectionChanged'),
            contextMenuBuilder: args('contextMenuBuilder'),
            magnifierConfiguration: args('magnifierConfiguration'),
          ),
        );

  static _i3.Widget _defaultContextMenuBuilder(
    _i3.BuildContext context,
    _i3.EditableTextState editableTextState,
  ) {
    return _i1.AdaptiveTextSelectionToolbar.editableText(editableTextState: editableTextState);
  }
}
