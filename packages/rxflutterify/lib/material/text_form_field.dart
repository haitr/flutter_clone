library rxflutterify; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:ui' as ui;

import 'package:flutter/foundation.dart' as _i2;
import 'package:flutter/gestures.dart' as _i6;
import 'package:flutter/material.dart' as _i1;
import 'package:flutter/painting.dart' as _i5;
import 'package:flutter/services.dart' as _i4;
import 'package:flutter/widgets.dart' as _i3;

import '../wrapper.dart';

final class TextFormField extends Wrapper {
  @Goto(_i1.TextFormField.new)
  TextFormField({
    _i2.Key? key,
    Object groupId = _i3.EditableText,
    _i3.TextEditingController? controller,
    String? initialValue,
    _i3.FocusNode? focusNode,
    String? forceErrorText,
    _i1.InputDecoration? decoration = const _i1.InputDecoration(),
    _i4.TextInputType? keyboardType,
    _i4.TextCapitalization textCapitalization = _i4.TextCapitalization.none,
    _i4.TextInputAction? textInputAction,
    _i5.TextStyle? style,
    _i5.StrutStyle? strutStyle,
    ui.TextDirection? textDirection,
    ui.TextAlign textAlign = ui.TextAlign.start,
    _i5.TextAlignVertical? textAlignVertical,
    bool autofocus = false,
    bool readOnly = false,
    _i3.ToolbarOptions? toolbarOptions,
    bool? showCursor,
    String obscuringCharacter = '•',
    bool obscureText = false,
    bool autocorrect = true,
    _i4.SmartDashesType? smartDashesType,
    _i4.SmartQuotesType? smartQuotesType,
    bool enableSuggestions = true,
    _i4.MaxLengthEnforcement? maxLengthEnforcement,
    int? maxLines = 1,
    int? minLines,
    bool expands = false,
    int? maxLength,
    _i2.ValueChanged<String>? onChanged,
    _i6.GestureTapCallback? onTap,
    bool onTapAlwaysCalled = false,
    _i3.TapRegionCallback? onTapOutside,
    ui.VoidCallback? onEditingComplete,
    _i2.ValueChanged<String>? onFieldSubmitted,
    _i3.FormFieldSetter<String>? onSaved,
    _i3.FormFieldValidator<String>? validator,
    List<_i4.TextInputFormatter>? inputFormatters,
    bool? enabled,
    bool? ignorePointers,
    double cursorWidth = 2.0,
    double? cursorHeight,
    ui.Radius? cursorRadius,
    ui.Color? cursorColor,
    ui.Color? cursorErrorColor,
    ui.Brightness? keyboardAppearance,
    _i5.EdgeInsets scrollPadding = const _i5.EdgeInsets.all(20.0),
    bool? enableInteractiveSelection,
    _i3.TextSelectionControls? selectionControls,
    _i1.InputCounterWidgetBuilder? buildCounter,
    _i3.ScrollPhysics? scrollPhysics,
    Iterable<String>? autofillHints,
    _i3.AutovalidateMode? autovalidateMode,
    _i3.ScrollController? scrollController,
    String? restorationId,
    bool enableIMEPersonalizedLearning = true,
    _i4.MouseCursor? mouseCursor,
    _i3.EditableTextContextMenuBuilder? contextMenuBuilder = _defaultContextMenuBuilder,
    _i3.SpellCheckConfiguration? spellCheckConfiguration,
    _i3.TextMagnifierConfiguration? magnifierConfiguration,
    _i3.UndoHistoryController? undoController,
    _i3.AppPrivateCommandCallback? onAppPrivateCommand,
    bool? cursorOpacityAnimates,
    ui.BoxHeightStyle selectionHeightStyle = ui.BoxHeightStyle.tight,
    ui.BoxWidthStyle selectionWidthStyle = ui.BoxWidthStyle.tight,
    _i6.DragStartBehavior dragStartBehavior = _i6.DragStartBehavior.start,
    _i3.ContentInsertionConfiguration? contentInsertionConfiguration,
    _i3.WidgetStatesController? statesController,
    ui.Clip clipBehavior = ui.Clip.hardEdge,
    bool scribbleEnabled = true,
    bool canRequestFocus = true,
    // Associate with key
    Stream<_i2.Key?>? $key,
    // Associate with groupId
    Stream<Object>? $groupId,
    // Associate with controller
    Stream<_i3.TextEditingController?>? $controller,
    // Associate with initialValue
    Stream<String?>? $initialValue,
    // Associate with focusNode
    Stream<_i3.FocusNode?>? $focusNode,
    // Associate with forceErrorText
    Stream<String?>? $forceErrorText,
    // Associate with decoration
    Stream<_i1.InputDecoration?>? $decoration,
    // Associate with keyboardType
    Stream<_i4.TextInputType?>? $keyboardType,
    // Associate with textCapitalization
    Stream<_i4.TextCapitalization>? $textCapitalization,
    // Associate with textInputAction
    Stream<_i4.TextInputAction?>? $textInputAction,
    // Associate with style
    Stream<_i5.TextStyle?>? $style,
    // Associate with strutStyle
    Stream<_i5.StrutStyle?>? $strutStyle,
    // Associate with textDirection
    Stream<ui.TextDirection?>? $textDirection,
    // Associate with textAlign
    Stream<ui.TextAlign>? $textAlign,
    // Associate with textAlignVertical
    Stream<_i5.TextAlignVertical?>? $textAlignVertical,
    // Associate with autofocus
    Stream<bool>? $autofocus,
    // Associate with readOnly
    Stream<bool>? $readOnly,
    // Associate with toolbarOptions
    Stream<_i3.ToolbarOptions?>? $toolbarOptions,
    // Associate with showCursor
    Stream<bool?>? $showCursor,
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
    // Associate with maxLengthEnforcement
    Stream<_i4.MaxLengthEnforcement?>? $maxLengthEnforcement,
    // Associate with maxLines
    Stream<int?>? $maxLines,
    // Associate with minLines
    Stream<int?>? $minLines,
    // Associate with expands
    Stream<bool>? $expands,
    // Associate with maxLength
    Stream<int?>? $maxLength,
    // Associate with onChanged
    Stream<_i2.ValueChanged<String>?>? $onChanged,
    // Associate with onTap
    Stream<_i6.GestureTapCallback?>? $onTap,
    // Associate with onTapAlwaysCalled
    Stream<bool>? $onTapAlwaysCalled,
    // Associate with onTapOutside
    Stream<_i3.TapRegionCallback?>? $onTapOutside,
    // Associate with onEditingComplete
    Stream<ui.VoidCallback?>? $onEditingComplete,
    // Associate with onFieldSubmitted
    Stream<_i2.ValueChanged<String>?>? $onFieldSubmitted,
    // Associate with onSaved
    Stream<_i3.FormFieldSetter<String>?>? $onSaved,
    // Associate with validator
    Stream<_i3.FormFieldValidator<String>?>? $validator,
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
    // Associate with cursorColor
    Stream<ui.Color?>? $cursorColor,
    // Associate with cursorErrorColor
    Stream<ui.Color?>? $cursorErrorColor,
    // Associate with keyboardAppearance
    Stream<ui.Brightness?>? $keyboardAppearance,
    // Associate with scrollPadding
    Stream<_i5.EdgeInsets>? $scrollPadding,
    // Associate with enableInteractiveSelection
    Stream<bool?>? $enableInteractiveSelection,
    // Associate with selectionControls
    Stream<_i3.TextSelectionControls?>? $selectionControls,
    // Associate with buildCounter
    Stream<_i1.InputCounterWidgetBuilder?>? $buildCounter,
    // Associate with scrollPhysics
    Stream<_i3.ScrollPhysics?>? $scrollPhysics,
    // Associate with autofillHints
    Stream<Iterable<String>?>? $autofillHints,
    // Associate with autovalidateMode
    Stream<_i3.AutovalidateMode?>? $autovalidateMode,
    // Associate with scrollController
    Stream<_i3.ScrollController?>? $scrollController,
    // Associate with restorationId
    Stream<String?>? $restorationId,
    // Associate with enableIMEPersonalizedLearning
    Stream<bool>? $enableIMEPersonalizedLearning,
    // Associate with mouseCursor
    Stream<_i4.MouseCursor?>? $mouseCursor,
    // Associate with contextMenuBuilder
    Stream<_i3.EditableTextContextMenuBuilder?>? $contextMenuBuilder,
    // Associate with spellCheckConfiguration
    Stream<_i3.SpellCheckConfiguration?>? $spellCheckConfiguration,
    // Associate with magnifierConfiguration
    Stream<_i3.TextMagnifierConfiguration?>? $magnifierConfiguration,
    // Associate with undoController
    Stream<_i3.UndoHistoryController?>? $undoController,
    // Associate with onAppPrivateCommand
    Stream<_i3.AppPrivateCommandCallback?>? $onAppPrivateCommand,
    // Associate with cursorOpacityAnimates
    Stream<bool?>? $cursorOpacityAnimates,
    // Associate with selectionHeightStyle
    Stream<ui.BoxHeightStyle>? $selectionHeightStyle,
    // Associate with selectionWidthStyle
    Stream<ui.BoxWidthStyle>? $selectionWidthStyle,
    // Associate with dragStartBehavior
    Stream<_i6.DragStartBehavior>? $dragStartBehavior,
    // Associate with contentInsertionConfiguration
    Stream<_i3.ContentInsertionConfiguration?>? $contentInsertionConfiguration,
    // Associate with statesController
    Stream<_i3.WidgetStatesController?>? $statesController,
    // Associate with clipBehavior
    Stream<ui.Clip>? $clipBehavior,
    // Associate with scribbleEnabled
    Stream<bool>? $scribbleEnabled,
    // Associate with canRequestFocus
    Stream<bool>? $canRequestFocus,
  }) : super(
          Argument(
            {
              'key': key,
              'groupId': groupId,
              'controller': controller,
              'initialValue': initialValue,
              'focusNode': focusNode,
              'forceErrorText': forceErrorText,
              'decoration': decoration,
              'keyboardType': keyboardType,
              'textCapitalization': textCapitalization,
              'textInputAction': textInputAction,
              'style': style,
              'strutStyle': strutStyle,
              'textDirection': textDirection,
              'textAlign': textAlign,
              'textAlignVertical': textAlignVertical,
              'autofocus': autofocus,
              'readOnly': readOnly,
              'toolbarOptions': toolbarOptions,
              'showCursor': showCursor,
              'obscuringCharacter': obscuringCharacter,
              'obscureText': obscureText,
              'autocorrect': autocorrect,
              'smartDashesType': smartDashesType,
              'smartQuotesType': smartQuotesType,
              'enableSuggestions': enableSuggestions,
              'maxLengthEnforcement': maxLengthEnforcement,
              'maxLines': maxLines,
              'minLines': minLines,
              'expands': expands,
              'maxLength': maxLength,
              'onChanged': onChanged,
              'onTap': onTap,
              'onTapAlwaysCalled': onTapAlwaysCalled,
              'onTapOutside': onTapOutside,
              'onEditingComplete': onEditingComplete,
              'onFieldSubmitted': onFieldSubmitted,
              'onSaved': onSaved,
              'validator': validator,
              'inputFormatters': inputFormatters,
              'enabled': enabled,
              'ignorePointers': ignorePointers,
              'cursorWidth': cursorWidth,
              'cursorHeight': cursorHeight,
              'cursorRadius': cursorRadius,
              'cursorColor': cursorColor,
              'cursorErrorColor': cursorErrorColor,
              'keyboardAppearance': keyboardAppearance,
              'scrollPadding': scrollPadding,
              'enableInteractiveSelection': enableInteractiveSelection,
              'selectionControls': selectionControls,
              'buildCounter': buildCounter,
              'scrollPhysics': scrollPhysics,
              'autofillHints': autofillHints,
              'autovalidateMode': autovalidateMode,
              'scrollController': scrollController,
              'restorationId': restorationId,
              'enableIMEPersonalizedLearning': enableIMEPersonalizedLearning,
              'mouseCursor': mouseCursor,
              'contextMenuBuilder': contextMenuBuilder,
              'spellCheckConfiguration': spellCheckConfiguration,
              'magnifierConfiguration': magnifierConfiguration,
              'undoController': undoController,
              'onAppPrivateCommand': onAppPrivateCommand,
              'cursorOpacityAnimates': cursorOpacityAnimates,
              'selectionHeightStyle': selectionHeightStyle,
              'selectionWidthStyle': selectionWidthStyle,
              'dragStartBehavior': dragStartBehavior,
              'contentInsertionConfiguration': contentInsertionConfiguration,
              'statesController': statesController,
              'clipBehavior': clipBehavior,
              'scribbleEnabled': scribbleEnabled,
              'canRequestFocus': canRequestFocus,
            },
            stream: {
              'key': $key,
              'groupId': $groupId,
              'controller': $controller,
              'initialValue': $initialValue,
              'focusNode': $focusNode,
              'forceErrorText': $forceErrorText,
              'decoration': $decoration,
              'keyboardType': $keyboardType,
              'textCapitalization': $textCapitalization,
              'textInputAction': $textInputAction,
              'style': $style,
              'strutStyle': $strutStyle,
              'textDirection': $textDirection,
              'textAlign': $textAlign,
              'textAlignVertical': $textAlignVertical,
              'autofocus': $autofocus,
              'readOnly': $readOnly,
              'toolbarOptions': $toolbarOptions,
              'showCursor': $showCursor,
              'obscuringCharacter': $obscuringCharacter,
              'obscureText': $obscureText,
              'autocorrect': $autocorrect,
              'smartDashesType': $smartDashesType,
              'smartQuotesType': $smartQuotesType,
              'enableSuggestions': $enableSuggestions,
              'maxLengthEnforcement': $maxLengthEnforcement,
              'maxLines': $maxLines,
              'minLines': $minLines,
              'expands': $expands,
              'maxLength': $maxLength,
              'onChanged': $onChanged,
              'onTap': $onTap,
              'onTapAlwaysCalled': $onTapAlwaysCalled,
              'onTapOutside': $onTapOutside,
              'onEditingComplete': $onEditingComplete,
              'onFieldSubmitted': $onFieldSubmitted,
              'onSaved': $onSaved,
              'validator': $validator,
              'inputFormatters': $inputFormatters,
              'enabled': $enabled,
              'ignorePointers': $ignorePointers,
              'cursorWidth': $cursorWidth,
              'cursorHeight': $cursorHeight,
              'cursorRadius': $cursorRadius,
              'cursorColor': $cursorColor,
              'cursorErrorColor': $cursorErrorColor,
              'keyboardAppearance': $keyboardAppearance,
              'scrollPadding': $scrollPadding,
              'enableInteractiveSelection': $enableInteractiveSelection,
              'selectionControls': $selectionControls,
              'buildCounter': $buildCounter,
              'scrollPhysics': $scrollPhysics,
              'autofillHints': $autofillHints,
              'autovalidateMode': $autovalidateMode,
              'scrollController': $scrollController,
              'restorationId': $restorationId,
              'enableIMEPersonalizedLearning': $enableIMEPersonalizedLearning,
              'mouseCursor': $mouseCursor,
              'contextMenuBuilder': $contextMenuBuilder,
              'spellCheckConfiguration': $spellCheckConfiguration,
              'magnifierConfiguration': $magnifierConfiguration,
              'undoController': $undoController,
              'onAppPrivateCommand': $onAppPrivateCommand,
              'cursorOpacityAnimates': $cursorOpacityAnimates,
              'selectionHeightStyle': $selectionHeightStyle,
              'selectionWidthStyle': $selectionWidthStyle,
              'dragStartBehavior': $dragStartBehavior,
              'contentInsertionConfiguration': $contentInsertionConfiguration,
              'statesController': $statesController,
              'clipBehavior': $clipBehavior,
              'scribbleEnabled': $scribbleEnabled,
              'canRequestFocus': $canRequestFocus,
            },
          ),
          builder: (args) => _i1.TextFormField(
            key: args('key'),
            groupId: args('groupId'),
            controller: args('controller'),
            initialValue: args('initialValue'),
            focusNode: args('focusNode'),
            forceErrorText: args('forceErrorText'),
            decoration: args('decoration'),
            keyboardType: args('keyboardType'),
            textCapitalization: args('textCapitalization'),
            textInputAction: args('textInputAction'),
            style: args('style'),
            strutStyle: args('strutStyle'),
            textDirection: args('textDirection'),
            textAlign: args('textAlign'),
            textAlignVertical: args('textAlignVertical'),
            autofocus: args('autofocus'),
            readOnly: args('readOnly'),
            toolbarOptions: args('toolbarOptions'),
            showCursor: args('showCursor'),
            obscuringCharacter: args('obscuringCharacter'),
            obscureText: args('obscureText'),
            autocorrect: args('autocorrect'),
            smartDashesType: args('smartDashesType'),
            smartQuotesType: args('smartQuotesType'),
            enableSuggestions: args('enableSuggestions'),
            maxLengthEnforcement: args('maxLengthEnforcement'),
            maxLines: args('maxLines'),
            minLines: args('minLines'),
            expands: args('expands'),
            maxLength: args('maxLength'),
            onChanged: args('onChanged'),
            onTap: args('onTap'),
            onTapAlwaysCalled: args('onTapAlwaysCalled'),
            onTapOutside: args('onTapOutside'),
            onEditingComplete: args('onEditingComplete'),
            onFieldSubmitted: args('onFieldSubmitted'),
            onSaved: args('onSaved'),
            validator: args('validator'),
            inputFormatters: args('inputFormatters'),
            enabled: args('enabled'),
            ignorePointers: args('ignorePointers'),
            cursorWidth: args('cursorWidth'),
            cursorHeight: args('cursorHeight'),
            cursorRadius: args('cursorRadius'),
            cursorColor: args('cursorColor'),
            cursorErrorColor: args('cursorErrorColor'),
            keyboardAppearance: args('keyboardAppearance'),
            scrollPadding: args('scrollPadding'),
            enableInteractiveSelection: args('enableInteractiveSelection'),
            selectionControls: args('selectionControls'),
            buildCounter: args('buildCounter'),
            scrollPhysics: args('scrollPhysics'),
            autofillHints: args('autofillHints'),
            autovalidateMode: args('autovalidateMode'),
            scrollController: args('scrollController'),
            restorationId: args('restorationId'),
            enableIMEPersonalizedLearning: args('enableIMEPersonalizedLearning'),
            mouseCursor: args('mouseCursor'),
            contextMenuBuilder: args('contextMenuBuilder'),
            spellCheckConfiguration: args('spellCheckConfiguration'),
            magnifierConfiguration: args('magnifierConfiguration'),
            undoController: args('undoController'),
            onAppPrivateCommand: args('onAppPrivateCommand'),
            cursorOpacityAnimates: args('cursorOpacityAnimates'),
            selectionHeightStyle: args('selectionHeightStyle'),
            selectionWidthStyle: args('selectionWidthStyle'),
            dragStartBehavior: args('dragStartBehavior'),
            contentInsertionConfiguration: args('contentInsertionConfiguration'),
            statesController: args('statesController'),
            clipBehavior: args('clipBehavior'),
            scribbleEnabled: args('scribbleEnabled'),
            canRequestFocus: args('canRequestFocus'),
          ),
        );

  static _i3.Widget _defaultContextMenuBuilder(
    _i3.BuildContext context,
    _i3.EditableTextState editableTextState,
  ) {
    return _i1.AdaptiveTextSelectionToolbar.editableText(editableTextState: editableTextState);
  }
}
