library rxflutter; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:ui' as ui;

import 'package:flutter/foundation.dart' as _i2;
import 'package:flutter/gestures.dart' as _i5;
import 'package:flutter/painting.dart' as _i4;
import 'package:flutter/services.dart' as _i3;
import 'package:flutter/widgets.dart' as _i1;

import '../wrapper.dart';

final class EditableText extends Wrapper {
  @Goto(_i1.EditableText.new)
  EditableText({
    _i2.Key? key,
    required _i1.TextEditingController controller,
    required _i1.FocusNode focusNode,
    bool readOnly = false,
    String obscuringCharacter = '•',
    bool obscureText = false,
    bool autocorrect = true,
    _i3.SmartDashesType? smartDashesType,
    _i3.SmartQuotesType? smartQuotesType,
    bool enableSuggestions = true,
    required _i4.TextStyle style,
    _i4.StrutStyle? strutStyle,
    required ui.Color cursorColor,
    required ui.Color backgroundCursorColor,
    ui.TextAlign textAlign = ui.TextAlign.start,
    ui.TextDirection? textDirection,
    ui.Locale? locale,
    double? textScaleFactor,
    _i4.TextScaler? textScaler,
    int? maxLines = 1,
    int? minLines,
    bool expands = false,
    bool forceLine = true,
    ui.TextHeightBehavior? textHeightBehavior,
    _i4.TextWidthBasis textWidthBasis = _i4.TextWidthBasis.parent,
    bool autofocus = false,
    bool? showCursor,
    bool showSelectionHandles = false,
    ui.Color? selectionColor,
    _i1.TextSelectionControls? selectionControls,
    _i3.TextInputType? keyboardType,
    _i3.TextInputAction? textInputAction,
    _i3.TextCapitalization textCapitalization = _i3.TextCapitalization.none,
    _i2.ValueChanged<String>? onChanged,
    ui.VoidCallback? onEditingComplete,
    _i2.ValueChanged<String>? onSubmitted,
    _i1.AppPrivateCommandCallback? onAppPrivateCommand,
    _i1.SelectionChangedCallback? onSelectionChanged,
    ui.VoidCallback? onSelectionHandleTapped,
    _i1.TapRegionCallback? onTapOutside,
    List<_i3.TextInputFormatter>? inputFormatters,
    _i3.MouseCursor? mouseCursor,
    bool rendererIgnoresPointer = false,
    double cursorWidth = 2.0,
    double? cursorHeight,
    ui.Radius? cursorRadius,
    bool cursorOpacityAnimates = false,
    ui.Offset? cursorOffset,
    bool paintCursorAboveText = false,
    ui.BoxHeightStyle selectionHeightStyle = ui.BoxHeightStyle.tight,
    ui.BoxWidthStyle selectionWidthStyle = ui.BoxWidthStyle.tight,
    _i4.EdgeInsets scrollPadding = const _i4.EdgeInsets.all(20.0),
    ui.Brightness keyboardAppearance = ui.Brightness.light,
    _i5.DragStartBehavior dragStartBehavior = _i5.DragStartBehavior.start,
    bool? enableInteractiveSelection,
    _i1.ScrollController? scrollController,
    _i1.ScrollPhysics? scrollPhysics,
    ui.Color? autocorrectionTextRectColor,
    _i1.ToolbarOptions? toolbarOptions,
    Iterable<String>? autofillHints = const [],
    _i3.AutofillClient? autofillClient,
    ui.Clip clipBehavior = ui.Clip.hardEdge,
    String? restorationId,
    _i1.ScrollBehavior? scrollBehavior,
    bool scribbleEnabled = true,
    bool enableIMEPersonalizedLearning = true,
    _i1.ContentInsertionConfiguration? contentInsertionConfiguration,
    _i1.EditableTextContextMenuBuilder? contextMenuBuilder,
    _i1.SpellCheckConfiguration? spellCheckConfiguration,
    _i1.TextMagnifierConfiguration magnifierConfiguration = _i1.TextMagnifierConfiguration.disabled,
    _i1.UndoHistoryController? undoController,
    // Associate with key
    Stream<_i2.Key?>? $key,
    // Associate with controller
    Stream<_i1.TextEditingController>? $controller,
    // Associate with focusNode
    Stream<_i1.FocusNode>? $focusNode,
    // Associate with readOnly
    Stream<bool>? $readOnly,
    // Associate with obscuringCharacter
    Stream<String>? $obscuringCharacter,
    // Associate with obscureText
    Stream<bool>? $obscureText,
    // Associate with autocorrect
    Stream<bool>? $autocorrect,
    // Associate with smartDashesType
    Stream<_i3.SmartDashesType?>? $smartDashesType,
    // Associate with smartQuotesType
    Stream<_i3.SmartQuotesType?>? $smartQuotesType,
    // Associate with enableSuggestions
    Stream<bool>? $enableSuggestions,
    // Associate with style
    Stream<_i4.TextStyle>? $style,
    // Associate with strutStyle
    Stream<_i4.StrutStyle?>? $strutStyle,
    // Associate with cursorColor
    Stream<ui.Color>? $cursorColor,
    // Associate with backgroundCursorColor
    Stream<ui.Color>? $backgroundCursorColor,
    // Associate with textAlign
    Stream<ui.TextAlign>? $textAlign,
    // Associate with textDirection
    Stream<ui.TextDirection?>? $textDirection,
    // Associate with locale
    Stream<ui.Locale?>? $locale,
    // Associate with textScaleFactor
    Stream<double?>? $textScaleFactor,
    // Associate with textScaler
    Stream<_i4.TextScaler?>? $textScaler,
    // Associate with maxLines
    Stream<int?>? $maxLines,
    // Associate with minLines
    Stream<int?>? $minLines,
    // Associate with expands
    Stream<bool>? $expands,
    // Associate with forceLine
    Stream<bool>? $forceLine,
    // Associate with textHeightBehavior
    Stream<ui.TextHeightBehavior?>? $textHeightBehavior,
    // Associate with textWidthBasis
    Stream<_i4.TextWidthBasis>? $textWidthBasis,
    // Associate with autofocus
    Stream<bool>? $autofocus,
    // Associate with showCursor
    Stream<bool?>? $showCursor,
    // Associate with showSelectionHandles
    Stream<bool>? $showSelectionHandles,
    // Associate with selectionColor
    Stream<ui.Color?>? $selectionColor,
    // Associate with selectionControls
    Stream<_i1.TextSelectionControls?>? $selectionControls,
    // Associate with keyboardType
    Stream<_i3.TextInputType?>? $keyboardType,
    // Associate with textInputAction
    Stream<_i3.TextInputAction?>? $textInputAction,
    // Associate with textCapitalization
    Stream<_i3.TextCapitalization>? $textCapitalization,
    // Associate with onChanged
    Stream<_i2.ValueChanged<String>?>? $onChanged,
    // Associate with onEditingComplete
    Stream<ui.VoidCallback?>? $onEditingComplete,
    // Associate with onSubmitted
    Stream<_i2.ValueChanged<String>?>? $onSubmitted,
    // Associate with onAppPrivateCommand
    Stream<_i1.AppPrivateCommandCallback?>? $onAppPrivateCommand,
    // Associate with onSelectionChanged
    Stream<_i1.SelectionChangedCallback?>? $onSelectionChanged,
    // Associate with onSelectionHandleTapped
    Stream<ui.VoidCallback?>? $onSelectionHandleTapped,
    // Associate with onTapOutside
    Stream<_i1.TapRegionCallback?>? $onTapOutside,
    // Associate with inputFormatters
    Stream<List<_i3.TextInputFormatter>?>? $inputFormatters,
    // Associate with mouseCursor
    Stream<_i3.MouseCursor?>? $mouseCursor,
    // Associate with rendererIgnoresPointer
    Stream<bool>? $rendererIgnoresPointer,
    // Associate with cursorWidth
    Stream<double>? $cursorWidth,
    // Associate with cursorHeight
    Stream<double?>? $cursorHeight,
    // Associate with cursorRadius
    Stream<ui.Radius?>? $cursorRadius,
    // Associate with cursorOpacityAnimates
    Stream<bool>? $cursorOpacityAnimates,
    // Associate with cursorOffset
    Stream<ui.Offset?>? $cursorOffset,
    // Associate with paintCursorAboveText
    Stream<bool>? $paintCursorAboveText,
    // Associate with selectionHeightStyle
    Stream<ui.BoxHeightStyle>? $selectionHeightStyle,
    // Associate with selectionWidthStyle
    Stream<ui.BoxWidthStyle>? $selectionWidthStyle,
    // Associate with scrollPadding
    Stream<_i4.EdgeInsets>? $scrollPadding,
    // Associate with keyboardAppearance
    Stream<ui.Brightness>? $keyboardAppearance,
    // Associate with dragStartBehavior
    Stream<_i5.DragStartBehavior>? $dragStartBehavior,
    // Associate with enableInteractiveSelection
    Stream<bool?>? $enableInteractiveSelection,
    // Associate with scrollController
    Stream<_i1.ScrollController?>? $scrollController,
    // Associate with scrollPhysics
    Stream<_i1.ScrollPhysics?>? $scrollPhysics,
    // Associate with autocorrectionTextRectColor
    Stream<ui.Color?>? $autocorrectionTextRectColor,
    // Associate with toolbarOptions
    Stream<_i1.ToolbarOptions?>? $toolbarOptions,
    // Associate with autofillHints
    Stream<Iterable<String>?>? $autofillHints,
    // Associate with autofillClient
    Stream<_i3.AutofillClient?>? $autofillClient,
    // Associate with clipBehavior
    Stream<ui.Clip>? $clipBehavior,
    // Associate with restorationId
    Stream<String?>? $restorationId,
    // Associate with scrollBehavior
    Stream<_i1.ScrollBehavior?>? $scrollBehavior,
    // Associate with scribbleEnabled
    Stream<bool>? $scribbleEnabled,
    // Associate with enableIMEPersonalizedLearning
    Stream<bool>? $enableIMEPersonalizedLearning,
    // Associate with contentInsertionConfiguration
    Stream<_i1.ContentInsertionConfiguration?>? $contentInsertionConfiguration,
    // Associate with contextMenuBuilder
    Stream<_i1.EditableTextContextMenuBuilder?>? $contextMenuBuilder,
    // Associate with spellCheckConfiguration
    Stream<_i1.SpellCheckConfiguration?>? $spellCheckConfiguration,
    // Associate with magnifierConfiguration
    Stream<_i1.TextMagnifierConfiguration>? $magnifierConfiguration,
    // Associate with undoController
    Stream<_i1.UndoHistoryController?>? $undoController,
  }) : super(
          Argument(
            {
              'key': key,
              'controller': controller,
              'focusNode': focusNode,
              'readOnly': readOnly,
              'obscuringCharacter': obscuringCharacter,
              'obscureText': obscureText,
              'autocorrect': autocorrect,
              'smartDashesType': smartDashesType,
              'smartQuotesType': smartQuotesType,
              'enableSuggestions': enableSuggestions,
              'style': style,
              'strutStyle': strutStyle,
              'cursorColor': cursorColor,
              'backgroundCursorColor': backgroundCursorColor,
              'textAlign': textAlign,
              'textDirection': textDirection,
              'locale': locale,
              'textScaleFactor': textScaleFactor,
              'textScaler': textScaler,
              'maxLines': maxLines,
              'minLines': minLines,
              'expands': expands,
              'forceLine': forceLine,
              'textHeightBehavior': textHeightBehavior,
              'textWidthBasis': textWidthBasis,
              'autofocus': autofocus,
              'showCursor': showCursor,
              'showSelectionHandles': showSelectionHandles,
              'selectionColor': selectionColor,
              'selectionControls': selectionControls,
              'keyboardType': keyboardType,
              'textInputAction': textInputAction,
              'textCapitalization': textCapitalization,
              'onChanged': onChanged,
              'onEditingComplete': onEditingComplete,
              'onSubmitted': onSubmitted,
              'onAppPrivateCommand': onAppPrivateCommand,
              'onSelectionChanged': onSelectionChanged,
              'onSelectionHandleTapped': onSelectionHandleTapped,
              'onTapOutside': onTapOutside,
              'inputFormatters': inputFormatters,
              'mouseCursor': mouseCursor,
              'rendererIgnoresPointer': rendererIgnoresPointer,
              'cursorWidth': cursorWidth,
              'cursorHeight': cursorHeight,
              'cursorRadius': cursorRadius,
              'cursorOpacityAnimates': cursorOpacityAnimates,
              'cursorOffset': cursorOffset,
              'paintCursorAboveText': paintCursorAboveText,
              'selectionHeightStyle': selectionHeightStyle,
              'selectionWidthStyle': selectionWidthStyle,
              'scrollPadding': scrollPadding,
              'keyboardAppearance': keyboardAppearance,
              'dragStartBehavior': dragStartBehavior,
              'enableInteractiveSelection': enableInteractiveSelection,
              'scrollController': scrollController,
              'scrollPhysics': scrollPhysics,
              'autocorrectionTextRectColor': autocorrectionTextRectColor,
              'toolbarOptions': toolbarOptions,
              'autofillHints': autofillHints,
              'autofillClient': autofillClient,
              'clipBehavior': clipBehavior,
              'restorationId': restorationId,
              'scrollBehavior': scrollBehavior,
              'scribbleEnabled': scribbleEnabled,
              'enableIMEPersonalizedLearning': enableIMEPersonalizedLearning,
              'contentInsertionConfiguration': contentInsertionConfiguration,
              'contextMenuBuilder': contextMenuBuilder,
              'spellCheckConfiguration': spellCheckConfiguration,
              'magnifierConfiguration': magnifierConfiguration,
              'undoController': undoController,
            },
            stream: {
              'key': $key,
              'controller': $controller,
              'focusNode': $focusNode,
              'readOnly': $readOnly,
              'obscuringCharacter': $obscuringCharacter,
              'obscureText': $obscureText,
              'autocorrect': $autocorrect,
              'smartDashesType': $smartDashesType,
              'smartQuotesType': $smartQuotesType,
              'enableSuggestions': $enableSuggestions,
              'style': $style,
              'strutStyle': $strutStyle,
              'cursorColor': $cursorColor,
              'backgroundCursorColor': $backgroundCursorColor,
              'textAlign': $textAlign,
              'textDirection': $textDirection,
              'locale': $locale,
              'textScaleFactor': $textScaleFactor,
              'textScaler': $textScaler,
              'maxLines': $maxLines,
              'minLines': $minLines,
              'expands': $expands,
              'forceLine': $forceLine,
              'textHeightBehavior': $textHeightBehavior,
              'textWidthBasis': $textWidthBasis,
              'autofocus': $autofocus,
              'showCursor': $showCursor,
              'showSelectionHandles': $showSelectionHandles,
              'selectionColor': $selectionColor,
              'selectionControls': $selectionControls,
              'keyboardType': $keyboardType,
              'textInputAction': $textInputAction,
              'textCapitalization': $textCapitalization,
              'onChanged': $onChanged,
              'onEditingComplete': $onEditingComplete,
              'onSubmitted': $onSubmitted,
              'onAppPrivateCommand': $onAppPrivateCommand,
              'onSelectionChanged': $onSelectionChanged,
              'onSelectionHandleTapped': $onSelectionHandleTapped,
              'onTapOutside': $onTapOutside,
              'inputFormatters': $inputFormatters,
              'mouseCursor': $mouseCursor,
              'rendererIgnoresPointer': $rendererIgnoresPointer,
              'cursorWidth': $cursorWidth,
              'cursorHeight': $cursorHeight,
              'cursorRadius': $cursorRadius,
              'cursorOpacityAnimates': $cursorOpacityAnimates,
              'cursorOffset': $cursorOffset,
              'paintCursorAboveText': $paintCursorAboveText,
              'selectionHeightStyle': $selectionHeightStyle,
              'selectionWidthStyle': $selectionWidthStyle,
              'scrollPadding': $scrollPadding,
              'keyboardAppearance': $keyboardAppearance,
              'dragStartBehavior': $dragStartBehavior,
              'enableInteractiveSelection': $enableInteractiveSelection,
              'scrollController': $scrollController,
              'scrollPhysics': $scrollPhysics,
              'autocorrectionTextRectColor': $autocorrectionTextRectColor,
              'toolbarOptions': $toolbarOptions,
              'autofillHints': $autofillHints,
              'autofillClient': $autofillClient,
              'clipBehavior': $clipBehavior,
              'restorationId': $restorationId,
              'scrollBehavior': $scrollBehavior,
              'scribbleEnabled': $scribbleEnabled,
              'enableIMEPersonalizedLearning': $enableIMEPersonalizedLearning,
              'contentInsertionConfiguration': $contentInsertionConfiguration,
              'contextMenuBuilder': $contextMenuBuilder,
              'spellCheckConfiguration': $spellCheckConfiguration,
              'magnifierConfiguration': $magnifierConfiguration,
              'undoController': $undoController,
            },
          ),
          builder: (args) => _i1.EditableText(
            key: args('key'),
            controller: args('controller'),
            focusNode: args('focusNode'),
            readOnly: args('readOnly'),
            obscuringCharacter: args('obscuringCharacter'),
            obscureText: args('obscureText'),
            autocorrect: args('autocorrect'),
            smartDashesType: args('smartDashesType'),
            smartQuotesType: args('smartQuotesType'),
            enableSuggestions: args('enableSuggestions'),
            style: args('style'),
            strutStyle: args('strutStyle'),
            cursorColor: args('cursorColor'),
            backgroundCursorColor: args('backgroundCursorColor'),
            textAlign: args('textAlign'),
            textDirection: args('textDirection'),
            locale: args('locale'),
            textScaleFactor: args('textScaleFactor'),
            textScaler: args('textScaler'),
            maxLines: args('maxLines'),
            minLines: args('minLines'),
            expands: args('expands'),
            forceLine: args('forceLine'),
            textHeightBehavior: args('textHeightBehavior'),
            textWidthBasis: args('textWidthBasis'),
            autofocus: args('autofocus'),
            showCursor: args('showCursor'),
            showSelectionHandles: args('showSelectionHandles'),
            selectionColor: args('selectionColor'),
            selectionControls: args('selectionControls'),
            keyboardType: args('keyboardType'),
            textInputAction: args('textInputAction'),
            textCapitalization: args('textCapitalization'),
            onChanged: args('onChanged'),
            onEditingComplete: args('onEditingComplete'),
            onSubmitted: args('onSubmitted'),
            onAppPrivateCommand: args('onAppPrivateCommand'),
            onSelectionChanged: args('onSelectionChanged'),
            onSelectionHandleTapped: args('onSelectionHandleTapped'),
            onTapOutside: args('onTapOutside'),
            inputFormatters: args('inputFormatters'),
            mouseCursor: args('mouseCursor'),
            rendererIgnoresPointer: args('rendererIgnoresPointer'),
            cursorWidth: args('cursorWidth'),
            cursorHeight: args('cursorHeight'),
            cursorRadius: args('cursorRadius'),
            cursorOpacityAnimates: args('cursorOpacityAnimates'),
            cursorOffset: args('cursorOffset'),
            paintCursorAboveText: args('paintCursorAboveText'),
            selectionHeightStyle: args('selectionHeightStyle'),
            selectionWidthStyle: args('selectionWidthStyle'),
            scrollPadding: args('scrollPadding'),
            keyboardAppearance: args('keyboardAppearance'),
            dragStartBehavior: args('dragStartBehavior'),
            enableInteractiveSelection: args('enableInteractiveSelection'),
            scrollController: args('scrollController'),
            scrollPhysics: args('scrollPhysics'),
            autocorrectionTextRectColor: args('autocorrectionTextRectColor'),
            toolbarOptions: args('toolbarOptions'),
            autofillHints: args('autofillHints'),
            autofillClient: args('autofillClient'),
            clipBehavior: args('clipBehavior'),
            restorationId: args('restorationId'),
            scrollBehavior: args('scrollBehavior'),
            scribbleEnabled: args('scribbleEnabled'),
            enableIMEPersonalizedLearning: args('enableIMEPersonalizedLearning'),
            contentInsertionConfiguration: args('contentInsertionConfiguration'),
            contextMenuBuilder: args('contextMenuBuilder'),
            spellCheckConfiguration: args('spellCheckConfiguration'),
            magnifierConfiguration: args('magnifierConfiguration'),
            undoController: args('undoController'),
          ),
        );
}
