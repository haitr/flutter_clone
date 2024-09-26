library rxflutterify; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:ui' as ui;

import 'package:flutter/cupertino.dart' as _i1;
import 'package:flutter/foundation.dart' as _i2;
import 'package:flutter/gestures.dart' as _i6;
import 'package:flutter/painting.dart' as _i4;
import 'package:flutter/services.dart' as _i5;
import 'package:flutter/widgets.dart' as _i3;

import '../wrapper.dart';

final class CupertinoTextField extends Wrapper {
  @Goto(_i1.CupertinoTextField.new)
  CupertinoTextField({
    _i2.Key? key,
    _i3.TextEditingController? controller,
    _i3.FocusNode? focusNode,
    _i3.UndoHistoryController? undoController,
    _i4.BoxDecoration? decoration = _kDefaultRoundedBorderDecoration,
    _i4.EdgeInsetsGeometry padding = const _i4.EdgeInsets.all(7.0),
    String? placeholder,
    _i4.TextStyle? placeholderStyle = const _i4.TextStyle(
      fontWeight: ui.FontWeight.w400,
      color: _i1.CupertinoColors.placeholderText,
    ),
    _i3.Widget? prefix,
    _i1.OverlayVisibilityMode prefixMode = _i1.OverlayVisibilityMode.always,
    _i3.Widget? suffix,
    _i1.OverlayVisibilityMode suffixMode = _i1.OverlayVisibilityMode.always,
    _i1.OverlayVisibilityMode clearButtonMode = _i1.OverlayVisibilityMode.never,
    String? clearButtonSemanticLabel,
    _i5.TextInputType? keyboardType,
    _i5.TextInputAction? textInputAction,
    _i5.TextCapitalization textCapitalization = _i5.TextCapitalization.none,
    _i4.TextStyle? style,
    _i4.StrutStyle? strutStyle,
    ui.TextAlign textAlign = ui.TextAlign.start,
    _i4.TextAlignVertical? textAlignVertical,
    ui.TextDirection? textDirection,
    bool readOnly = false,
    _i3.ToolbarOptions? toolbarOptions,
    bool? showCursor,
    bool autofocus = false,
    String obscuringCharacter = '•',
    bool obscureText = false,
    bool autocorrect = true,
    _i5.SmartDashesType? smartDashesType,
    _i5.SmartQuotesType? smartQuotesType,
    bool enableSuggestions = true,
    int? maxLines = 1,
    int? minLines,
    bool expands = false,
    int? maxLength,
    _i5.MaxLengthEnforcement? maxLengthEnforcement,
    _i2.ValueChanged<String>? onChanged,
    ui.VoidCallback? onEditingComplete,
    _i2.ValueChanged<String>? onSubmitted,
    _i3.TapRegionCallback? onTapOutside,
    List<_i5.TextInputFormatter>? inputFormatters,
    bool enabled = true,
    double cursorWidth = 2.0,
    double? cursorHeight,
    ui.Radius cursorRadius = const ui.Radius.circular(2.0),
    bool cursorOpacityAnimates = true,
    ui.Color? cursorColor,
    ui.BoxHeightStyle selectionHeightStyle = ui.BoxHeightStyle.tight,
    ui.BoxWidthStyle selectionWidthStyle = ui.BoxWidthStyle.tight,
    ui.Brightness? keyboardAppearance,
    _i4.EdgeInsets scrollPadding = const _i4.EdgeInsets.all(20.0),
    _i6.DragStartBehavior dragStartBehavior = _i6.DragStartBehavior.start,
    bool? enableInteractiveSelection,
    _i3.TextSelectionControls? selectionControls,
    _i6.GestureTapCallback? onTap,
    _i3.ScrollController? scrollController,
    _i3.ScrollPhysics? scrollPhysics,
    Iterable<String>? autofillHints = const [],
    _i3.ContentInsertionConfiguration? contentInsertionConfiguration,
    ui.Clip clipBehavior = ui.Clip.hardEdge,
    String? restorationId,
    bool scribbleEnabled = true,
    bool enableIMEPersonalizedLearning = true,
    _i3.EditableTextContextMenuBuilder? contextMenuBuilder = _defaultContextMenuBuilder,
    _i3.SpellCheckConfiguration? spellCheckConfiguration,
    _i3.TextMagnifierConfiguration? magnifierConfiguration,
    // Associate with key
    Stream<_i2.Key?>? $key,
    // Associate with controller
    Stream<_i3.TextEditingController?>? $controller,
    // Associate with focusNode
    Stream<_i3.FocusNode?>? $focusNode,
    // Associate with undoController
    Stream<_i3.UndoHistoryController?>? $undoController,
    // Associate with decoration
    Stream<_i4.BoxDecoration?>? $decoration,
    // Associate with padding
    Stream<_i4.EdgeInsetsGeometry>? $padding,
    // Associate with placeholder
    Stream<String?>? $placeholder,
    // Associate with placeholderStyle
    Stream<_i4.TextStyle?>? $placeholderStyle,
    // Associate with prefix
    Stream<_i3.Widget?>? $prefix,
    // Associate with prefixMode
    Stream<_i1.OverlayVisibilityMode>? $prefixMode,
    // Associate with suffix
    Stream<_i3.Widget?>? $suffix,
    // Associate with suffixMode
    Stream<_i1.OverlayVisibilityMode>? $suffixMode,
    // Associate with clearButtonMode
    Stream<_i1.OverlayVisibilityMode>? $clearButtonMode,
    // Associate with clearButtonSemanticLabel
    Stream<String?>? $clearButtonSemanticLabel,
    // Associate with keyboardType
    Stream<_i5.TextInputType?>? $keyboardType,
    // Associate with textInputAction
    Stream<_i5.TextInputAction?>? $textInputAction,
    // Associate with textCapitalization
    Stream<_i5.TextCapitalization>? $textCapitalization,
    // Associate with style
    Stream<_i4.TextStyle?>? $style,
    // Associate with strutStyle
    Stream<_i4.StrutStyle?>? $strutStyle,
    // Associate with textAlign
    Stream<ui.TextAlign>? $textAlign,
    // Associate with textAlignVertical
    Stream<_i4.TextAlignVertical?>? $textAlignVertical,
    // Associate with textDirection
    Stream<ui.TextDirection?>? $textDirection,
    // Associate with readOnly
    Stream<bool>? $readOnly,
    // Associate with toolbarOptions
    Stream<_i3.ToolbarOptions?>? $toolbarOptions,
    // Associate with showCursor
    Stream<bool?>? $showCursor,
    // Associate with autofocus
    Stream<bool>? $autofocus,
    // Associate with obscuringCharacter
    Stream<String>? $obscuringCharacter,
    // Associate with obscureText
    Stream<bool>? $obscureText,
    // Associate with autocorrect
    Stream<bool>? $autocorrect,
    // Associate with smartDashesType
    Stream<_i5.SmartDashesType?>? $smartDashesType,
    // Associate with smartQuotesType
    Stream<_i5.SmartQuotesType?>? $smartQuotesType,
    // Associate with enableSuggestions
    Stream<bool>? $enableSuggestions,
    // Associate with maxLines
    Stream<int?>? $maxLines,
    // Associate with minLines
    Stream<int?>? $minLines,
    // Associate with expands
    Stream<bool>? $expands,
    // Associate with maxLength
    Stream<int?>? $maxLength,
    // Associate with maxLengthEnforcement
    Stream<_i5.MaxLengthEnforcement?>? $maxLengthEnforcement,
    // Associate with onChanged
    Stream<_i2.ValueChanged<String>?>? $onChanged,
    // Associate with onEditingComplete
    Stream<ui.VoidCallback?>? $onEditingComplete,
    // Associate with onSubmitted
    Stream<_i2.ValueChanged<String>?>? $onSubmitted,
    // Associate with onTapOutside
    Stream<_i3.TapRegionCallback?>? $onTapOutside,
    // Associate with inputFormatters
    Stream<List<_i5.TextInputFormatter>?>? $inputFormatters,
    // Associate with enabled
    Stream<bool>? $enabled,
    // Associate with cursorWidth
    Stream<double>? $cursorWidth,
    // Associate with cursorHeight
    Stream<double?>? $cursorHeight,
    // Associate with cursorRadius
    Stream<ui.Radius>? $cursorRadius,
    // Associate with cursorOpacityAnimates
    Stream<bool>? $cursorOpacityAnimates,
    // Associate with cursorColor
    Stream<ui.Color?>? $cursorColor,
    // Associate with selectionHeightStyle
    Stream<ui.BoxHeightStyle>? $selectionHeightStyle,
    // Associate with selectionWidthStyle
    Stream<ui.BoxWidthStyle>? $selectionWidthStyle,
    // Associate with keyboardAppearance
    Stream<ui.Brightness?>? $keyboardAppearance,
    // Associate with scrollPadding
    Stream<_i4.EdgeInsets>? $scrollPadding,
    // Associate with dragStartBehavior
    Stream<_i6.DragStartBehavior>? $dragStartBehavior,
    // Associate with enableInteractiveSelection
    Stream<bool?>? $enableInteractiveSelection,
    // Associate with selectionControls
    Stream<_i3.TextSelectionControls?>? $selectionControls,
    // Associate with onTap
    Stream<_i6.GestureTapCallback?>? $onTap,
    // Associate with scrollController
    Stream<_i3.ScrollController?>? $scrollController,
    // Associate with scrollPhysics
    Stream<_i3.ScrollPhysics?>? $scrollPhysics,
    // Associate with autofillHints
    Stream<Iterable<String>?>? $autofillHints,
    // Associate with contentInsertionConfiguration
    Stream<_i3.ContentInsertionConfiguration?>? $contentInsertionConfiguration,
    // Associate with clipBehavior
    Stream<ui.Clip>? $clipBehavior,
    // Associate with restorationId
    Stream<String?>? $restorationId,
    // Associate with scribbleEnabled
    Stream<bool>? $scribbleEnabled,
    // Associate with enableIMEPersonalizedLearning
    Stream<bool>? $enableIMEPersonalizedLearning,
    // Associate with contextMenuBuilder
    Stream<_i3.EditableTextContextMenuBuilder?>? $contextMenuBuilder,
    // Associate with spellCheckConfiguration
    Stream<_i3.SpellCheckConfiguration?>? $spellCheckConfiguration,
    // Associate with magnifierConfiguration
    Stream<_i3.TextMagnifierConfiguration?>? $magnifierConfiguration,
  }) : super(
          Argument(
            {
              'key': key,
              'controller': controller,
              'focusNode': focusNode,
              'undoController': undoController,
              'decoration': decoration,
              'padding': padding,
              'placeholder': placeholder,
              'placeholderStyle': placeholderStyle,
              'prefix': prefix,
              'prefixMode': prefixMode,
              'suffix': suffix,
              'suffixMode': suffixMode,
              'clearButtonMode': clearButtonMode,
              'clearButtonSemanticLabel': clearButtonSemanticLabel,
              'keyboardType': keyboardType,
              'textInputAction': textInputAction,
              'textCapitalization': textCapitalization,
              'style': style,
              'strutStyle': strutStyle,
              'textAlign': textAlign,
              'textAlignVertical': textAlignVertical,
              'textDirection': textDirection,
              'readOnly': readOnly,
              'toolbarOptions': toolbarOptions,
              'showCursor': showCursor,
              'autofocus': autofocus,
              'obscuringCharacter': obscuringCharacter,
              'obscureText': obscureText,
              'autocorrect': autocorrect,
              'smartDashesType': smartDashesType,
              'smartQuotesType': smartQuotesType,
              'enableSuggestions': enableSuggestions,
              'maxLines': maxLines,
              'minLines': minLines,
              'expands': expands,
              'maxLength': maxLength,
              'maxLengthEnforcement': maxLengthEnforcement,
              'onChanged': onChanged,
              'onEditingComplete': onEditingComplete,
              'onSubmitted': onSubmitted,
              'onTapOutside': onTapOutside,
              'inputFormatters': inputFormatters,
              'enabled': enabled,
              'cursorWidth': cursorWidth,
              'cursorHeight': cursorHeight,
              'cursorRadius': cursorRadius,
              'cursorOpacityAnimates': cursorOpacityAnimates,
              'cursorColor': cursorColor,
              'selectionHeightStyle': selectionHeightStyle,
              'selectionWidthStyle': selectionWidthStyle,
              'keyboardAppearance': keyboardAppearance,
              'scrollPadding': scrollPadding,
              'dragStartBehavior': dragStartBehavior,
              'enableInteractiveSelection': enableInteractiveSelection,
              'selectionControls': selectionControls,
              'onTap': onTap,
              'scrollController': scrollController,
              'scrollPhysics': scrollPhysics,
              'autofillHints': autofillHints,
              'contentInsertionConfiguration': contentInsertionConfiguration,
              'clipBehavior': clipBehavior,
              'restorationId': restorationId,
              'scribbleEnabled': scribbleEnabled,
              'enableIMEPersonalizedLearning': enableIMEPersonalizedLearning,
              'contextMenuBuilder': contextMenuBuilder,
              'spellCheckConfiguration': spellCheckConfiguration,
              'magnifierConfiguration': magnifierConfiguration,
            },
            stream: {
              'key': $key,
              'controller': $controller,
              'focusNode': $focusNode,
              'undoController': $undoController,
              'decoration': $decoration,
              'padding': $padding,
              'placeholder': $placeholder,
              'placeholderStyle': $placeholderStyle,
              'prefix': $prefix,
              'prefixMode': $prefixMode,
              'suffix': $suffix,
              'suffixMode': $suffixMode,
              'clearButtonMode': $clearButtonMode,
              'clearButtonSemanticLabel': $clearButtonSemanticLabel,
              'keyboardType': $keyboardType,
              'textInputAction': $textInputAction,
              'textCapitalization': $textCapitalization,
              'style': $style,
              'strutStyle': $strutStyle,
              'textAlign': $textAlign,
              'textAlignVertical': $textAlignVertical,
              'textDirection': $textDirection,
              'readOnly': $readOnly,
              'toolbarOptions': $toolbarOptions,
              'showCursor': $showCursor,
              'autofocus': $autofocus,
              'obscuringCharacter': $obscuringCharacter,
              'obscureText': $obscureText,
              'autocorrect': $autocorrect,
              'smartDashesType': $smartDashesType,
              'smartQuotesType': $smartQuotesType,
              'enableSuggestions': $enableSuggestions,
              'maxLines': $maxLines,
              'minLines': $minLines,
              'expands': $expands,
              'maxLength': $maxLength,
              'maxLengthEnforcement': $maxLengthEnforcement,
              'onChanged': $onChanged,
              'onEditingComplete': $onEditingComplete,
              'onSubmitted': $onSubmitted,
              'onTapOutside': $onTapOutside,
              'inputFormatters': $inputFormatters,
              'enabled': $enabled,
              'cursorWidth': $cursorWidth,
              'cursorHeight': $cursorHeight,
              'cursorRadius': $cursorRadius,
              'cursorOpacityAnimates': $cursorOpacityAnimates,
              'cursorColor': $cursorColor,
              'selectionHeightStyle': $selectionHeightStyle,
              'selectionWidthStyle': $selectionWidthStyle,
              'keyboardAppearance': $keyboardAppearance,
              'scrollPadding': $scrollPadding,
              'dragStartBehavior': $dragStartBehavior,
              'enableInteractiveSelection': $enableInteractiveSelection,
              'selectionControls': $selectionControls,
              'onTap': $onTap,
              'scrollController': $scrollController,
              'scrollPhysics': $scrollPhysics,
              'autofillHints': $autofillHints,
              'contentInsertionConfiguration': $contentInsertionConfiguration,
              'clipBehavior': $clipBehavior,
              'restorationId': $restorationId,
              'scribbleEnabled': $scribbleEnabled,
              'enableIMEPersonalizedLearning': $enableIMEPersonalizedLearning,
              'contextMenuBuilder': $contextMenuBuilder,
              'spellCheckConfiguration': $spellCheckConfiguration,
              'magnifierConfiguration': $magnifierConfiguration,
            },
          ),
          builder: (args) => _i1.CupertinoTextField(
            key: args('key'),
            controller: args('controller'),
            focusNode: args('focusNode'),
            undoController: args('undoController'),
            decoration: args('decoration'),
            padding: args('padding'),
            placeholder: args('placeholder'),
            placeholderStyle: args('placeholderStyle'),
            prefix: args('prefix'),
            prefixMode: args('prefixMode'),
            suffix: args('suffix'),
            suffixMode: args('suffixMode'),
            clearButtonMode: args('clearButtonMode'),
            clearButtonSemanticLabel: args('clearButtonSemanticLabel'),
            keyboardType: args('keyboardType'),
            textInputAction: args('textInputAction'),
            textCapitalization: args('textCapitalization'),
            style: args('style'),
            strutStyle: args('strutStyle'),
            textAlign: args('textAlign'),
            textAlignVertical: args('textAlignVertical'),
            textDirection: args('textDirection'),
            readOnly: args('readOnly'),
            toolbarOptions: args('toolbarOptions'),
            showCursor: args('showCursor'),
            autofocus: args('autofocus'),
            obscuringCharacter: args('obscuringCharacter'),
            obscureText: args('obscureText'),
            autocorrect: args('autocorrect'),
            smartDashesType: args('smartDashesType'),
            smartQuotesType: args('smartQuotesType'),
            enableSuggestions: args('enableSuggestions'),
            maxLines: args('maxLines'),
            minLines: args('minLines'),
            expands: args('expands'),
            maxLength: args('maxLength'),
            maxLengthEnforcement: args('maxLengthEnforcement'),
            onChanged: args('onChanged'),
            onEditingComplete: args('onEditingComplete'),
            onSubmitted: args('onSubmitted'),
            onTapOutside: args('onTapOutside'),
            inputFormatters: args('inputFormatters'),
            enabled: args('enabled'),
            cursorWidth: args('cursorWidth'),
            cursorHeight: args('cursorHeight'),
            cursorRadius: args('cursorRadius'),
            cursorOpacityAnimates: args('cursorOpacityAnimates'),
            cursorColor: args('cursorColor'),
            selectionHeightStyle: args('selectionHeightStyle'),
            selectionWidthStyle: args('selectionWidthStyle'),
            keyboardAppearance: args('keyboardAppearance'),
            scrollPadding: args('scrollPadding'),
            dragStartBehavior: args('dragStartBehavior'),
            enableInteractiveSelection: args('enableInteractiveSelection'),
            selectionControls: args('selectionControls'),
            onTap: args('onTap'),
            scrollController: args('scrollController'),
            scrollPhysics: args('scrollPhysics'),
            autofillHints: args('autofillHints'),
            contentInsertionConfiguration: args('contentInsertionConfiguration'),
            clipBehavior: args('clipBehavior'),
            restorationId: args('restorationId'),
            scribbleEnabled: args('scribbleEnabled'),
            enableIMEPersonalizedLearning: args('enableIMEPersonalizedLearning'),
            contextMenuBuilder: args('contextMenuBuilder'),
            spellCheckConfiguration: args('spellCheckConfiguration'),
            magnifierConfiguration: args('magnifierConfiguration'),
          ),
        );

  @Goto(_i1.CupertinoTextField.borderless)
  CupertinoTextField.borderless({
    _i2.Key? key,
    _i3.TextEditingController? controller,
    _i3.FocusNode? focusNode,
    _i3.UndoHistoryController? undoController,
    _i4.BoxDecoration? decoration,
    _i4.EdgeInsetsGeometry padding = const _i4.EdgeInsets.all(7.0),
    String? placeholder,
    _i4.TextStyle? placeholderStyle = _kDefaultPlaceholderStyle,
    _i3.Widget? prefix,
    _i1.OverlayVisibilityMode prefixMode = _i1.OverlayVisibilityMode.always,
    _i3.Widget? suffix,
    _i1.OverlayVisibilityMode suffixMode = _i1.OverlayVisibilityMode.always,
    _i1.OverlayVisibilityMode clearButtonMode = _i1.OverlayVisibilityMode.never,
    String? clearButtonSemanticLabel,
    _i5.TextInputType? keyboardType,
    _i5.TextInputAction? textInputAction,
    _i5.TextCapitalization textCapitalization = _i5.TextCapitalization.none,
    _i4.TextStyle? style,
    _i4.StrutStyle? strutStyle,
    ui.TextAlign textAlign = ui.TextAlign.start,
    _i4.TextAlignVertical? textAlignVertical,
    ui.TextDirection? textDirection,
    bool readOnly = false,
    _i3.ToolbarOptions? toolbarOptions,
    bool? showCursor,
    bool autofocus = false,
    String obscuringCharacter = '•',
    bool obscureText = false,
    bool autocorrect = true,
    _i5.SmartDashesType? smartDashesType,
    _i5.SmartQuotesType? smartQuotesType,
    bool enableSuggestions = true,
    int? maxLines = 1,
    int? minLines,
    bool expands = false,
    int? maxLength,
    _i5.MaxLengthEnforcement? maxLengthEnforcement,
    _i2.ValueChanged<String>? onChanged,
    ui.VoidCallback? onEditingComplete,
    _i2.ValueChanged<String>? onSubmitted,
    _i3.TapRegionCallback? onTapOutside,
    List<_i5.TextInputFormatter>? inputFormatters,
    bool enabled = true,
    double cursorWidth = 2.0,
    double? cursorHeight,
    ui.Radius cursorRadius = const ui.Radius.circular(2.0),
    bool cursorOpacityAnimates = true,
    ui.Color? cursorColor,
    ui.BoxHeightStyle selectionHeightStyle = ui.BoxHeightStyle.tight,
    ui.BoxWidthStyle selectionWidthStyle = ui.BoxWidthStyle.tight,
    ui.Brightness? keyboardAppearance,
    _i4.EdgeInsets scrollPadding = const _i4.EdgeInsets.all(20.0),
    _i6.DragStartBehavior dragStartBehavior = _i6.DragStartBehavior.start,
    bool? enableInteractiveSelection,
    _i3.TextSelectionControls? selectionControls,
    _i6.GestureTapCallback? onTap,
    _i3.ScrollController? scrollController,
    _i3.ScrollPhysics? scrollPhysics,
    Iterable<String>? autofillHints = const [],
    _i3.ContentInsertionConfiguration? contentInsertionConfiguration,
    ui.Clip clipBehavior = ui.Clip.hardEdge,
    String? restorationId,
    bool scribbleEnabled = true,
    bool enableIMEPersonalizedLearning = true,
    _i3.EditableTextContextMenuBuilder? contextMenuBuilder = _defaultContextMenuBuilder,
    _i3.SpellCheckConfiguration? spellCheckConfiguration,
    _i3.TextMagnifierConfiguration? magnifierConfiguration,
    // Associate with key
    Stream<_i2.Key?>? $key,
    // Associate with controller
    Stream<_i3.TextEditingController?>? $controller,
    // Associate with focusNode
    Stream<_i3.FocusNode?>? $focusNode,
    // Associate with undoController
    Stream<_i3.UndoHistoryController?>? $undoController,
    // Associate with decoration
    Stream<_i4.BoxDecoration?>? $decoration,
    // Associate with padding
    Stream<_i4.EdgeInsetsGeometry>? $padding,
    // Associate with placeholder
    Stream<String?>? $placeholder,
    // Associate with placeholderStyle
    Stream<_i4.TextStyle?>? $placeholderStyle,
    // Associate with prefix
    Stream<_i3.Widget?>? $prefix,
    // Associate with prefixMode
    Stream<_i1.OverlayVisibilityMode>? $prefixMode,
    // Associate with suffix
    Stream<_i3.Widget?>? $suffix,
    // Associate with suffixMode
    Stream<_i1.OverlayVisibilityMode>? $suffixMode,
    // Associate with clearButtonMode
    Stream<_i1.OverlayVisibilityMode>? $clearButtonMode,
    // Associate with clearButtonSemanticLabel
    Stream<String?>? $clearButtonSemanticLabel,
    // Associate with keyboardType
    Stream<_i5.TextInputType?>? $keyboardType,
    // Associate with textInputAction
    Stream<_i5.TextInputAction?>? $textInputAction,
    // Associate with textCapitalization
    Stream<_i5.TextCapitalization>? $textCapitalization,
    // Associate with style
    Stream<_i4.TextStyle?>? $style,
    // Associate with strutStyle
    Stream<_i4.StrutStyle?>? $strutStyle,
    // Associate with textAlign
    Stream<ui.TextAlign>? $textAlign,
    // Associate with textAlignVertical
    Stream<_i4.TextAlignVertical?>? $textAlignVertical,
    // Associate with textDirection
    Stream<ui.TextDirection?>? $textDirection,
    // Associate with readOnly
    Stream<bool>? $readOnly,
    // Associate with toolbarOptions
    Stream<_i3.ToolbarOptions?>? $toolbarOptions,
    // Associate with showCursor
    Stream<bool?>? $showCursor,
    // Associate with autofocus
    Stream<bool>? $autofocus,
    // Associate with obscuringCharacter
    Stream<String>? $obscuringCharacter,
    // Associate with obscureText
    Stream<bool>? $obscureText,
    // Associate with autocorrect
    Stream<bool>? $autocorrect,
    // Associate with smartDashesType
    Stream<_i5.SmartDashesType?>? $smartDashesType,
    // Associate with smartQuotesType
    Stream<_i5.SmartQuotesType?>? $smartQuotesType,
    // Associate with enableSuggestions
    Stream<bool>? $enableSuggestions,
    // Associate with maxLines
    Stream<int?>? $maxLines,
    // Associate with minLines
    Stream<int?>? $minLines,
    // Associate with expands
    Stream<bool>? $expands,
    // Associate with maxLength
    Stream<int?>? $maxLength,
    // Associate with maxLengthEnforcement
    Stream<_i5.MaxLengthEnforcement?>? $maxLengthEnforcement,
    // Associate with onChanged
    Stream<_i2.ValueChanged<String>?>? $onChanged,
    // Associate with onEditingComplete
    Stream<ui.VoidCallback?>? $onEditingComplete,
    // Associate with onSubmitted
    Stream<_i2.ValueChanged<String>?>? $onSubmitted,
    // Associate with onTapOutside
    Stream<_i3.TapRegionCallback?>? $onTapOutside,
    // Associate with inputFormatters
    Stream<List<_i5.TextInputFormatter>?>? $inputFormatters,
    // Associate with enabled
    Stream<bool>? $enabled,
    // Associate with cursorWidth
    Stream<double>? $cursorWidth,
    // Associate with cursorHeight
    Stream<double?>? $cursorHeight,
    // Associate with cursorRadius
    Stream<ui.Radius>? $cursorRadius,
    // Associate with cursorOpacityAnimates
    Stream<bool>? $cursorOpacityAnimates,
    // Associate with cursorColor
    Stream<ui.Color?>? $cursorColor,
    // Associate with selectionHeightStyle
    Stream<ui.BoxHeightStyle>? $selectionHeightStyle,
    // Associate with selectionWidthStyle
    Stream<ui.BoxWidthStyle>? $selectionWidthStyle,
    // Associate with keyboardAppearance
    Stream<ui.Brightness?>? $keyboardAppearance,
    // Associate with scrollPadding
    Stream<_i4.EdgeInsets>? $scrollPadding,
    // Associate with dragStartBehavior
    Stream<_i6.DragStartBehavior>? $dragStartBehavior,
    // Associate with enableInteractiveSelection
    Stream<bool?>? $enableInteractiveSelection,
    // Associate with selectionControls
    Stream<_i3.TextSelectionControls?>? $selectionControls,
    // Associate with onTap
    Stream<_i6.GestureTapCallback?>? $onTap,
    // Associate with scrollController
    Stream<_i3.ScrollController?>? $scrollController,
    // Associate with scrollPhysics
    Stream<_i3.ScrollPhysics?>? $scrollPhysics,
    // Associate with autofillHints
    Stream<Iterable<String>?>? $autofillHints,
    // Associate with contentInsertionConfiguration
    Stream<_i3.ContentInsertionConfiguration?>? $contentInsertionConfiguration,
    // Associate with clipBehavior
    Stream<ui.Clip>? $clipBehavior,
    // Associate with restorationId
    Stream<String?>? $restorationId,
    // Associate with scribbleEnabled
    Stream<bool>? $scribbleEnabled,
    // Associate with enableIMEPersonalizedLearning
    Stream<bool>? $enableIMEPersonalizedLearning,
    // Associate with contextMenuBuilder
    Stream<_i3.EditableTextContextMenuBuilder?>? $contextMenuBuilder,
    // Associate with spellCheckConfiguration
    Stream<_i3.SpellCheckConfiguration?>? $spellCheckConfiguration,
    // Associate with magnifierConfiguration
    Stream<_i3.TextMagnifierConfiguration?>? $magnifierConfiguration,
  }) : super(
          Argument(
            {
              'key': key,
              'controller': controller,
              'focusNode': focusNode,
              'undoController': undoController,
              'decoration': decoration,
              'padding': padding,
              'placeholder': placeholder,
              'placeholderStyle': placeholderStyle,
              'prefix': prefix,
              'prefixMode': prefixMode,
              'suffix': suffix,
              'suffixMode': suffixMode,
              'clearButtonMode': clearButtonMode,
              'clearButtonSemanticLabel': clearButtonSemanticLabel,
              'keyboardType': keyboardType,
              'textInputAction': textInputAction,
              'textCapitalization': textCapitalization,
              'style': style,
              'strutStyle': strutStyle,
              'textAlign': textAlign,
              'textAlignVertical': textAlignVertical,
              'textDirection': textDirection,
              'readOnly': readOnly,
              'toolbarOptions': toolbarOptions,
              'showCursor': showCursor,
              'autofocus': autofocus,
              'obscuringCharacter': obscuringCharacter,
              'obscureText': obscureText,
              'autocorrect': autocorrect,
              'smartDashesType': smartDashesType,
              'smartQuotesType': smartQuotesType,
              'enableSuggestions': enableSuggestions,
              'maxLines': maxLines,
              'minLines': minLines,
              'expands': expands,
              'maxLength': maxLength,
              'maxLengthEnforcement': maxLengthEnforcement,
              'onChanged': onChanged,
              'onEditingComplete': onEditingComplete,
              'onSubmitted': onSubmitted,
              'onTapOutside': onTapOutside,
              'inputFormatters': inputFormatters,
              'enabled': enabled,
              'cursorWidth': cursorWidth,
              'cursorHeight': cursorHeight,
              'cursorRadius': cursorRadius,
              'cursorOpacityAnimates': cursorOpacityAnimates,
              'cursorColor': cursorColor,
              'selectionHeightStyle': selectionHeightStyle,
              'selectionWidthStyle': selectionWidthStyle,
              'keyboardAppearance': keyboardAppearance,
              'scrollPadding': scrollPadding,
              'dragStartBehavior': dragStartBehavior,
              'enableInteractiveSelection': enableInteractiveSelection,
              'selectionControls': selectionControls,
              'onTap': onTap,
              'scrollController': scrollController,
              'scrollPhysics': scrollPhysics,
              'autofillHints': autofillHints,
              'contentInsertionConfiguration': contentInsertionConfiguration,
              'clipBehavior': clipBehavior,
              'restorationId': restorationId,
              'scribbleEnabled': scribbleEnabled,
              'enableIMEPersonalizedLearning': enableIMEPersonalizedLearning,
              'contextMenuBuilder': contextMenuBuilder,
              'spellCheckConfiguration': spellCheckConfiguration,
              'magnifierConfiguration': magnifierConfiguration,
            },
            stream: {
              'key': $key,
              'controller': $controller,
              'focusNode': $focusNode,
              'undoController': $undoController,
              'decoration': $decoration,
              'padding': $padding,
              'placeholder': $placeholder,
              'placeholderStyle': $placeholderStyle,
              'prefix': $prefix,
              'prefixMode': $prefixMode,
              'suffix': $suffix,
              'suffixMode': $suffixMode,
              'clearButtonMode': $clearButtonMode,
              'clearButtonSemanticLabel': $clearButtonSemanticLabel,
              'keyboardType': $keyboardType,
              'textInputAction': $textInputAction,
              'textCapitalization': $textCapitalization,
              'style': $style,
              'strutStyle': $strutStyle,
              'textAlign': $textAlign,
              'textAlignVertical': $textAlignVertical,
              'textDirection': $textDirection,
              'readOnly': $readOnly,
              'toolbarOptions': $toolbarOptions,
              'showCursor': $showCursor,
              'autofocus': $autofocus,
              'obscuringCharacter': $obscuringCharacter,
              'obscureText': $obscureText,
              'autocorrect': $autocorrect,
              'smartDashesType': $smartDashesType,
              'smartQuotesType': $smartQuotesType,
              'enableSuggestions': $enableSuggestions,
              'maxLines': $maxLines,
              'minLines': $minLines,
              'expands': $expands,
              'maxLength': $maxLength,
              'maxLengthEnforcement': $maxLengthEnforcement,
              'onChanged': $onChanged,
              'onEditingComplete': $onEditingComplete,
              'onSubmitted': $onSubmitted,
              'onTapOutside': $onTapOutside,
              'inputFormatters': $inputFormatters,
              'enabled': $enabled,
              'cursorWidth': $cursorWidth,
              'cursorHeight': $cursorHeight,
              'cursorRadius': $cursorRadius,
              'cursorOpacityAnimates': $cursorOpacityAnimates,
              'cursorColor': $cursorColor,
              'selectionHeightStyle': $selectionHeightStyle,
              'selectionWidthStyle': $selectionWidthStyle,
              'keyboardAppearance': $keyboardAppearance,
              'scrollPadding': $scrollPadding,
              'dragStartBehavior': $dragStartBehavior,
              'enableInteractiveSelection': $enableInteractiveSelection,
              'selectionControls': $selectionControls,
              'onTap': $onTap,
              'scrollController': $scrollController,
              'scrollPhysics': $scrollPhysics,
              'autofillHints': $autofillHints,
              'contentInsertionConfiguration': $contentInsertionConfiguration,
              'clipBehavior': $clipBehavior,
              'restorationId': $restorationId,
              'scribbleEnabled': $scribbleEnabled,
              'enableIMEPersonalizedLearning': $enableIMEPersonalizedLearning,
              'contextMenuBuilder': $contextMenuBuilder,
              'spellCheckConfiguration': $spellCheckConfiguration,
              'magnifierConfiguration': $magnifierConfiguration,
            },
          ),
          builder: (args) => _i1.CupertinoTextField.borderless(
            key: args('key'),
            controller: args('controller'),
            focusNode: args('focusNode'),
            undoController: args('undoController'),
            decoration: args('decoration'),
            padding: args('padding'),
            placeholder: args('placeholder'),
            placeholderStyle: args('placeholderStyle'),
            prefix: args('prefix'),
            prefixMode: args('prefixMode'),
            suffix: args('suffix'),
            suffixMode: args('suffixMode'),
            clearButtonMode: args('clearButtonMode'),
            clearButtonSemanticLabel: args('clearButtonSemanticLabel'),
            keyboardType: args('keyboardType'),
            textInputAction: args('textInputAction'),
            textCapitalization: args('textCapitalization'),
            style: args('style'),
            strutStyle: args('strutStyle'),
            textAlign: args('textAlign'),
            textAlignVertical: args('textAlignVertical'),
            textDirection: args('textDirection'),
            readOnly: args('readOnly'),
            toolbarOptions: args('toolbarOptions'),
            showCursor: args('showCursor'),
            autofocus: args('autofocus'),
            obscuringCharacter: args('obscuringCharacter'),
            obscureText: args('obscureText'),
            autocorrect: args('autocorrect'),
            smartDashesType: args('smartDashesType'),
            smartQuotesType: args('smartQuotesType'),
            enableSuggestions: args('enableSuggestions'),
            maxLines: args('maxLines'),
            minLines: args('minLines'),
            expands: args('expands'),
            maxLength: args('maxLength'),
            maxLengthEnforcement: args('maxLengthEnforcement'),
            onChanged: args('onChanged'),
            onEditingComplete: args('onEditingComplete'),
            onSubmitted: args('onSubmitted'),
            onTapOutside: args('onTapOutside'),
            inputFormatters: args('inputFormatters'),
            enabled: args('enabled'),
            cursorWidth: args('cursorWidth'),
            cursorHeight: args('cursorHeight'),
            cursorRadius: args('cursorRadius'),
            cursorOpacityAnimates: args('cursorOpacityAnimates'),
            cursorColor: args('cursorColor'),
            selectionHeightStyle: args('selectionHeightStyle'),
            selectionWidthStyle: args('selectionWidthStyle'),
            keyboardAppearance: args('keyboardAppearance'),
            scrollPadding: args('scrollPadding'),
            dragStartBehavior: args('dragStartBehavior'),
            enableInteractiveSelection: args('enableInteractiveSelection'),
            selectionControls: args('selectionControls'),
            onTap: args('onTap'),
            scrollController: args('scrollController'),
            scrollPhysics: args('scrollPhysics'),
            autofillHints: args('autofillHints'),
            contentInsertionConfiguration: args('contentInsertionConfiguration'),
            clipBehavior: args('clipBehavior'),
            restorationId: args('restorationId'),
            scribbleEnabled: args('scribbleEnabled'),
            enableIMEPersonalizedLearning: args('enableIMEPersonalizedLearning'),
            contextMenuBuilder: args('contextMenuBuilder'),
            spellCheckConfiguration: args('spellCheckConfiguration'),
            magnifierConfiguration: args('magnifierConfiguration'),
          ),
        );

  static _i3.Widget _defaultContextMenuBuilder(
    _i3.BuildContext context,
    _i3.EditableTextState editableTextState,
  ) {
    return _i1.CupertinoAdaptiveTextSelectionToolbar.editableText(editableTextState: editableTextState);
  }
}

const _i4.BoxDecoration _kDefaultRoundedBorderDecoration = _i4.BoxDecoration(
  color: _i1.CupertinoDynamicColor.withBrightness(
    color: _i1.CupertinoColors.white,
    darkColor: _i1.CupertinoColors.black,
  ),
  border: _kDefaultRoundedBorder,
  borderRadius: _i4.BorderRadius.all(ui.Radius.circular(5.0)),
);
const _i4.TextStyle _kDefaultPlaceholderStyle = _i4.TextStyle(
  fontWeight: ui.FontWeight.w400,
  color: _i1.CupertinoColors.placeholderText,
);
const _i4.Border _kDefaultRoundedBorder = _i4.Border(
  top: _kDefaultRoundedBorderSide,
  bottom: _kDefaultRoundedBorderSide,
  left: _kDefaultRoundedBorderSide,
  right: _kDefaultRoundedBorderSide,
);
const _i4.BorderSide _kDefaultRoundedBorderSide = _i4.BorderSide(
  color: _i1.CupertinoDynamicColor.withBrightness(
    color: ui.Color(0x33000000),
    darkColor: ui.Color(0x33FFFFFF),
  ),
  width: 0.0,
);
