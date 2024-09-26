library rxflutterify; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:ui' as ui;

import 'package:flutter/foundation.dart' as _i2;
import 'package:flutter/gestures.dart' as _i6;
import 'package:flutter/material.dart' as _i1;
import 'package:flutter/painting.dart' as _i5;
import 'package:flutter/services.dart' as _i4;
import 'package:flutter/widgets.dart' as _i3;

import '../wrapper.dart';

final class TextField extends Wrapper {
  @Goto(_i1.TextField.new)
  TextField({
    _i2.Key? key,
    _i3.TextEditingController? controller,
    _i3.FocusNode? focusNode,
    _i3.UndoHistoryController? undoController,
    _i1.InputDecoration? decoration = const _i1.InputDecoration(),
    _i4.TextInputType? keyboardType,
    _i4.TextInputAction? textInputAction,
    _i4.TextCapitalization textCapitalization = _i4.TextCapitalization.none,
    _i5.TextStyle? style,
    _i5.StrutStyle? strutStyle,
    ui.TextAlign textAlign = ui.TextAlign.start,
    _i5.TextAlignVertical? textAlignVertical,
    ui.TextDirection? textDirection,
    bool readOnly = false,
    _i3.ToolbarOptions? toolbarOptions,
    bool? showCursor,
    bool autofocus = false,
    _i3.WidgetStatesController? statesController,
    String obscuringCharacter = '•',
    bool obscureText = false,
    bool autocorrect = true,
    _i4.SmartDashesType? smartDashesType,
    _i4.SmartQuotesType? smartQuotesType,
    bool enableSuggestions = true,
    int? maxLines = 1,
    int? minLines,
    bool expands = false,
    int? maxLength,
    _i4.MaxLengthEnforcement? maxLengthEnforcement,
    _i2.ValueChanged<String>? onChanged,
    ui.VoidCallback? onEditingComplete,
    _i2.ValueChanged<String>? onSubmitted,
    _i3.AppPrivateCommandCallback? onAppPrivateCommand,
    List<_i4.TextInputFormatter>? inputFormatters,
    bool? enabled,
    bool? ignorePointers,
    double cursorWidth = 2.0,
    double? cursorHeight,
    ui.Radius? cursorRadius,
    bool? cursorOpacityAnimates,
    ui.Color? cursorColor,
    ui.Color? cursorErrorColor,
    ui.BoxHeightStyle selectionHeightStyle = ui.BoxHeightStyle.tight,
    ui.BoxWidthStyle selectionWidthStyle = ui.BoxWidthStyle.tight,
    ui.Brightness? keyboardAppearance,
    _i5.EdgeInsets scrollPadding = const _i5.EdgeInsets.all(20.0),
    _i6.DragStartBehavior dragStartBehavior = _i6.DragStartBehavior.start,
    bool? enableInteractiveSelection,
    _i3.TextSelectionControls? selectionControls,
    _i6.GestureTapCallback? onTap,
    bool onTapAlwaysCalled = false,
    _i3.TapRegionCallback? onTapOutside,
    _i4.MouseCursor? mouseCursor,
    _i1.InputCounterWidgetBuilder? buildCounter,
    _i3.ScrollController? scrollController,
    _i3.ScrollPhysics? scrollPhysics,
    Iterable<String>? autofillHints = const [],
    _i3.ContentInsertionConfiguration? contentInsertionConfiguration,
    ui.Clip clipBehavior = ui.Clip.hardEdge,
    String? restorationId,
    bool scribbleEnabled = true,
    bool enableIMEPersonalizedLearning = true,
    _i3.EditableTextContextMenuBuilder? contextMenuBuilder = _defaultContextMenuBuilder,
    bool canRequestFocus = true,
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
    Stream<_i1.InputDecoration?>? $decoration,
    // Associate with keyboardType
    Stream<_i4.TextInputType?>? $keyboardType,
    // Associate with textInputAction
    Stream<_i4.TextInputAction?>? $textInputAction,
    // Associate with textCapitalization
    Stream<_i4.TextCapitalization>? $textCapitalization,
    // Associate with style
    Stream<_i5.TextStyle?>? $style,
    // Associate with strutStyle
    Stream<_i5.StrutStyle?>? $strutStyle,
    // Associate with textAlign
    Stream<ui.TextAlign>? $textAlign,
    // Associate with textAlignVertical
    Stream<_i5.TextAlignVertical?>? $textAlignVertical,
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
    // Associate with statesController
    Stream<_i3.WidgetStatesController?>? $statesController,
    // Associate with obscuringCharacter
    Stream<String>? $obscuringCharacter,
    // Associate with obscureText
    Stream<bool>? $obscureText,
    // Associate with autocorrect
    Stream<bool>? $autocorrect,
    // Associate with smartDashesType
    Stream<_i4.SmartDashesType?>? $smartDashesType,
    // Associate with smartQuotesType
    Stream<_i4.SmartQuotesType?>? $smartQuotesType,
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
    Stream<_i4.MaxLengthEnforcement?>? $maxLengthEnforcement,
    // Associate with onChanged
    Stream<_i2.ValueChanged<String>?>? $onChanged,
    // Associate with onEditingComplete
    Stream<ui.VoidCallback?>? $onEditingComplete,
    // Associate with onSubmitted
    Stream<_i2.ValueChanged<String>?>? $onSubmitted,
    // Associate with onAppPrivateCommand
    Stream<_i3.AppPrivateCommandCallback?>? $onAppPrivateCommand,
    // Associate with inputFormatters
    Stream<List<_i4.TextInputFormatter>?>? $inputFormatters,
    // Associate with enabled
    Stream<bool?>? $enabled,
    // Associate with ignorePointers
    Stream<bool?>? $ignorePointers,
    // Associate with cursorWidth
    Stream<double>? $cursorWidth,
    // Associate with cursorHeight
    Stream<double?>? $cursorHeight,
    // Associate with cursorRadius
    Stream<ui.Radius?>? $cursorRadius,
    // Associate with cursorOpacityAnimates
    Stream<bool?>? $cursorOpacityAnimates,
    // Associate with cursorColor
    Stream<ui.Color?>? $cursorColor,
    // Associate with cursorErrorColor
    Stream<ui.Color?>? $cursorErrorColor,
    // Associate with selectionHeightStyle
    Stream<ui.BoxHeightStyle>? $selectionHeightStyle,
    // Associate with selectionWidthStyle
    Stream<ui.BoxWidthStyle>? $selectionWidthStyle,
    // Associate with keyboardAppearance
    Stream<ui.Brightness?>? $keyboardAppearance,
    // Associate with scrollPadding
    Stream<_i5.EdgeInsets>? $scrollPadding,
    // Associate with dragStartBehavior
    Stream<_i6.DragStartBehavior>? $dragStartBehavior,
    // Associate with enableInteractiveSelection
    Stream<bool?>? $enableInteractiveSelection,
    // Associate with selectionControls
    Stream<_i3.TextSelectionControls?>? $selectionControls,
    // Associate with onTap
    Stream<_i6.GestureTapCallback?>? $onTap,
    // Associate with onTapAlwaysCalled
    Stream<bool>? $onTapAlwaysCalled,
    // Associate with onTapOutside
    Stream<_i3.TapRegionCallback?>? $onTapOutside,
    // Associate with mouseCursor
    Stream<_i4.MouseCursor?>? $mouseCursor,
    // Associate with buildCounter
    Stream<_i1.InputCounterWidgetBuilder?>? $buildCounter,
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
    // Associate with canRequestFocus
    Stream<bool>? $canRequestFocus,
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
              'statesController': statesController,
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
              'onAppPrivateCommand': onAppPrivateCommand,
              'inputFormatters': inputFormatters,
              'enabled': enabled,
              'ignorePointers': ignorePointers,
              'cursorWidth': cursorWidth,
              'cursorHeight': cursorHeight,
              'cursorRadius': cursorRadius,
              'cursorOpacityAnimates': cursorOpacityAnimates,
              'cursorColor': cursorColor,
              'cursorErrorColor': cursorErrorColor,
              'selectionHeightStyle': selectionHeightStyle,
              'selectionWidthStyle': selectionWidthStyle,
              'keyboardAppearance': keyboardAppearance,
              'scrollPadding': scrollPadding,
              'dragStartBehavior': dragStartBehavior,
              'enableInteractiveSelection': enableInteractiveSelection,
              'selectionControls': selectionControls,
              'onTap': onTap,
              'onTapAlwaysCalled': onTapAlwaysCalled,
              'onTapOutside': onTapOutside,
              'mouseCursor': mouseCursor,
              'buildCounter': buildCounter,
              'scrollController': scrollController,
              'scrollPhysics': scrollPhysics,
              'autofillHints': autofillHints,
              'contentInsertionConfiguration': contentInsertionConfiguration,
              'clipBehavior': clipBehavior,
              'restorationId': restorationId,
              'scribbleEnabled': scribbleEnabled,
              'enableIMEPersonalizedLearning': enableIMEPersonalizedLearning,
              'contextMenuBuilder': contextMenuBuilder,
              'canRequestFocus': canRequestFocus,
              'spellCheckConfiguration': spellCheckConfiguration,
              'magnifierConfiguration': magnifierConfiguration,
            },
            stream: {
              'key': $key,
              'controller': $controller,
              'focusNode': $focusNode,
              'undoController': $undoController,
              'decoration': $decoration,
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
              'statesController': $statesController,
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
              'onAppPrivateCommand': $onAppPrivateCommand,
              'inputFormatters': $inputFormatters,
              'enabled': $enabled,
              'ignorePointers': $ignorePointers,
              'cursorWidth': $cursorWidth,
              'cursorHeight': $cursorHeight,
              'cursorRadius': $cursorRadius,
              'cursorOpacityAnimates': $cursorOpacityAnimates,
              'cursorColor': $cursorColor,
              'cursorErrorColor': $cursorErrorColor,
              'selectionHeightStyle': $selectionHeightStyle,
              'selectionWidthStyle': $selectionWidthStyle,
              'keyboardAppearance': $keyboardAppearance,
              'scrollPadding': $scrollPadding,
              'dragStartBehavior': $dragStartBehavior,
              'enableInteractiveSelection': $enableInteractiveSelection,
              'selectionControls': $selectionControls,
              'onTap': $onTap,
              'onTapAlwaysCalled': $onTapAlwaysCalled,
              'onTapOutside': $onTapOutside,
              'mouseCursor': $mouseCursor,
              'buildCounter': $buildCounter,
              'scrollController': $scrollController,
              'scrollPhysics': $scrollPhysics,
              'autofillHints': $autofillHints,
              'contentInsertionConfiguration': $contentInsertionConfiguration,
              'clipBehavior': $clipBehavior,
              'restorationId': $restorationId,
              'scribbleEnabled': $scribbleEnabled,
              'enableIMEPersonalizedLearning': $enableIMEPersonalizedLearning,
              'contextMenuBuilder': $contextMenuBuilder,
              'canRequestFocus': $canRequestFocus,
              'spellCheckConfiguration': $spellCheckConfiguration,
              'magnifierConfiguration': $magnifierConfiguration,
            },
          ),
          builder: (args) => _i1.TextField(
            key: args('key'),
            controller: args('controller'),
            focusNode: args('focusNode'),
            undoController: args('undoController'),
            decoration: args('decoration'),
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
            statesController: args('statesController'),
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
            onAppPrivateCommand: args('onAppPrivateCommand'),
            inputFormatters: args('inputFormatters'),
            enabled: args('enabled'),
            ignorePointers: args('ignorePointers'),
            cursorWidth: args('cursorWidth'),
            cursorHeight: args('cursorHeight'),
            cursorRadius: args('cursorRadius'),
            cursorOpacityAnimates: args('cursorOpacityAnimates'),
            cursorColor: args('cursorColor'),
            cursorErrorColor: args('cursorErrorColor'),
            selectionHeightStyle: args('selectionHeightStyle'),
            selectionWidthStyle: args('selectionWidthStyle'),
            keyboardAppearance: args('keyboardAppearance'),
            scrollPadding: args('scrollPadding'),
            dragStartBehavior: args('dragStartBehavior'),
            enableInteractiveSelection: args('enableInteractiveSelection'),
            selectionControls: args('selectionControls'),
            onTap: args('onTap'),
            onTapAlwaysCalled: args('onTapAlwaysCalled'),
            onTapOutside: args('onTapOutside'),
            mouseCursor: args('mouseCursor'),
            buildCounter: args('buildCounter'),
            scrollController: args('scrollController'),
            scrollPhysics: args('scrollPhysics'),
            autofillHints: args('autofillHints'),
            contentInsertionConfiguration: args('contentInsertionConfiguration'),
            clipBehavior: args('clipBehavior'),
            restorationId: args('restorationId'),
            scribbleEnabled: args('scribbleEnabled'),
            enableIMEPersonalizedLearning: args('enableIMEPersonalizedLearning'),
            contextMenuBuilder: args('contextMenuBuilder'),
            canRequestFocus: args('canRequestFocus'),
            spellCheckConfiguration: args('spellCheckConfiguration'),
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
