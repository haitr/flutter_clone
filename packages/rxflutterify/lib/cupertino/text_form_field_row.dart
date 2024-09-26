library rxflutterify; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:ui' as ui;

import 'package:flutter/cupertino.dart' as _i1;
import 'package:flutter/foundation.dart' as _i2;
import 'package:flutter/gestures.dart' as _i6;
import 'package:flutter/painting.dart' as _i4;
import 'package:flutter/services.dart' as _i5;
import 'package:flutter/widgets.dart' as _i3;

import '../wrapper.dart';

final class CupertinoTextFormFieldRow extends Wrapper {
  @Goto(_i1.CupertinoTextFormFieldRow.new)
  CupertinoTextFormFieldRow({
    _i2.Key? key,
    _i3.Widget? prefix,
    _i4.EdgeInsetsGeometry? padding,
    _i3.TextEditingController? controller,
    String? initialValue,
    _i3.FocusNode? focusNode,
    _i4.BoxDecoration? decoration,
    _i5.TextInputType? keyboardType,
    _i5.TextCapitalization textCapitalization = _i5.TextCapitalization.none,
    _i5.TextInputAction? textInputAction,
    _i4.TextStyle? style,
    _i4.StrutStyle? strutStyle,
    ui.TextDirection? textDirection,
    ui.TextAlign textAlign = ui.TextAlign.start,
    _i4.TextAlignVertical? textAlignVertical,
    bool autofocus = false,
    bool readOnly = false,
    _i3.ToolbarOptions? toolbarOptions,
    bool? showCursor,
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
    _i2.ValueChanged<String>? onChanged,
    _i6.GestureTapCallback? onTap,
    ui.VoidCallback? onEditingComplete,
    _i2.ValueChanged<String>? onFieldSubmitted,
    _i3.FormFieldSetter<String>? onSaved,
    _i3.FormFieldValidator<String>? validator,
    List<_i5.TextInputFormatter>? inputFormatters,
    bool? enabled,
    double cursorWidth = 2.0,
    double? cursorHeight,
    ui.Color? cursorColor,
    ui.Brightness? keyboardAppearance,
    _i4.EdgeInsets scrollPadding = const _i4.EdgeInsets.all(20.0),
    bool enableInteractiveSelection = true,
    _i3.TextSelectionControls? selectionControls,
    _i3.ScrollPhysics? scrollPhysics,
    Iterable<String>? autofillHints,
    _i3.AutovalidateMode autovalidateMode = _i3.AutovalidateMode.disabled,
    String? placeholder,
    _i4.TextStyle? placeholderStyle = const _i4.TextStyle(
      fontWeight: ui.FontWeight.w400,
      color: _i1.CupertinoColors.placeholderText,
    ),
    _i3.EditableTextContextMenuBuilder? contextMenuBuilder = _defaultContextMenuBuilder,
    String? restorationId,
    // Associate with key
    Stream<_i2.Key?>? $key,
    // Associate with prefix
    Stream<_i3.Widget?>? $prefix,
    // Associate with padding
    Stream<_i4.EdgeInsetsGeometry?>? $padding,
    // Associate with controller
    Stream<_i3.TextEditingController?>? $controller,
    // Associate with initialValue
    Stream<String?>? $initialValue,
    // Associate with focusNode
    Stream<_i3.FocusNode?>? $focusNode,
    // Associate with decoration
    Stream<_i4.BoxDecoration?>? $decoration,
    // Associate with keyboardType
    Stream<_i5.TextInputType?>? $keyboardType,
    // Associate with textCapitalization
    Stream<_i5.TextCapitalization>? $textCapitalization,
    // Associate with textInputAction
    Stream<_i5.TextInputAction?>? $textInputAction,
    // Associate with style
    Stream<_i4.TextStyle?>? $style,
    // Associate with strutStyle
    Stream<_i4.StrutStyle?>? $strutStyle,
    // Associate with textDirection
    Stream<ui.TextDirection?>? $textDirection,
    // Associate with textAlign
    Stream<ui.TextAlign>? $textAlign,
    // Associate with textAlignVertical
    Stream<_i4.TextAlignVertical?>? $textAlignVertical,
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
    // Associate with onChanged
    Stream<_i2.ValueChanged<String>?>? $onChanged,
    // Associate with onTap
    Stream<_i6.GestureTapCallback?>? $onTap,
    // Associate with onEditingComplete
    Stream<ui.VoidCallback?>? $onEditingComplete,
    // Associate with onFieldSubmitted
    Stream<_i2.ValueChanged<String>?>? $onFieldSubmitted,
    // Associate with onSaved
    Stream<_i3.FormFieldSetter<String>?>? $onSaved,
    // Associate with validator
    Stream<_i3.FormFieldValidator<String>?>? $validator,
    // Associate with inputFormatters
    Stream<List<_i5.TextInputFormatter>?>? $inputFormatters,
    // Associate with enabled
    Stream<bool?>? $enabled,
    // Associate with cursorWidth
    Stream<double>? $cursorWidth,
    // Associate with cursorHeight
    Stream<double?>? $cursorHeight,
    // Associate with cursorColor
    Stream<ui.Color?>? $cursorColor,
    // Associate with keyboardAppearance
    Stream<ui.Brightness?>? $keyboardAppearance,
    // Associate with scrollPadding
    Stream<_i4.EdgeInsets>? $scrollPadding,
    // Associate with enableInteractiveSelection
    Stream<bool>? $enableInteractiveSelection,
    // Associate with selectionControls
    Stream<_i3.TextSelectionControls?>? $selectionControls,
    // Associate with scrollPhysics
    Stream<_i3.ScrollPhysics?>? $scrollPhysics,
    // Associate with autofillHints
    Stream<Iterable<String>?>? $autofillHints,
    // Associate with autovalidateMode
    Stream<_i3.AutovalidateMode>? $autovalidateMode,
    // Associate with placeholder
    Stream<String?>? $placeholder,
    // Associate with placeholderStyle
    Stream<_i4.TextStyle?>? $placeholderStyle,
    // Associate with contextMenuBuilder
    Stream<_i3.EditableTextContextMenuBuilder?>? $contextMenuBuilder,
    // Associate with restorationId
    Stream<String?>? $restorationId,
  }) : super(
          Argument(
            {
              'key': key,
              'prefix': prefix,
              'padding': padding,
              'controller': controller,
              'initialValue': initialValue,
              'focusNode': focusNode,
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
              'maxLines': maxLines,
              'minLines': minLines,
              'expands': expands,
              'maxLength': maxLength,
              'onChanged': onChanged,
              'onTap': onTap,
              'onEditingComplete': onEditingComplete,
              'onFieldSubmitted': onFieldSubmitted,
              'onSaved': onSaved,
              'validator': validator,
              'inputFormatters': inputFormatters,
              'enabled': enabled,
              'cursorWidth': cursorWidth,
              'cursorHeight': cursorHeight,
              'cursorColor': cursorColor,
              'keyboardAppearance': keyboardAppearance,
              'scrollPadding': scrollPadding,
              'enableInteractiveSelection': enableInteractiveSelection,
              'selectionControls': selectionControls,
              'scrollPhysics': scrollPhysics,
              'autofillHints': autofillHints,
              'autovalidateMode': autovalidateMode,
              'placeholder': placeholder,
              'placeholderStyle': placeholderStyle,
              'contextMenuBuilder': contextMenuBuilder,
              'restorationId': restorationId,
            },
            stream: {
              'key': $key,
              'prefix': $prefix,
              'padding': $padding,
              'controller': $controller,
              'initialValue': $initialValue,
              'focusNode': $focusNode,
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
              'maxLines': $maxLines,
              'minLines': $minLines,
              'expands': $expands,
              'maxLength': $maxLength,
              'onChanged': $onChanged,
              'onTap': $onTap,
              'onEditingComplete': $onEditingComplete,
              'onFieldSubmitted': $onFieldSubmitted,
              'onSaved': $onSaved,
              'validator': $validator,
              'inputFormatters': $inputFormatters,
              'enabled': $enabled,
              'cursorWidth': $cursorWidth,
              'cursorHeight': $cursorHeight,
              'cursorColor': $cursorColor,
              'keyboardAppearance': $keyboardAppearance,
              'scrollPadding': $scrollPadding,
              'enableInteractiveSelection': $enableInteractiveSelection,
              'selectionControls': $selectionControls,
              'scrollPhysics': $scrollPhysics,
              'autofillHints': $autofillHints,
              'autovalidateMode': $autovalidateMode,
              'placeholder': $placeholder,
              'placeholderStyle': $placeholderStyle,
              'contextMenuBuilder': $contextMenuBuilder,
              'restorationId': $restorationId,
            },
          ),
          builder: (args) => _i1.CupertinoTextFormFieldRow(
            key: args('key'),
            prefix: args('prefix'),
            padding: args('padding'),
            controller: args('controller'),
            initialValue: args('initialValue'),
            focusNode: args('focusNode'),
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
            maxLines: args('maxLines'),
            minLines: args('minLines'),
            expands: args('expands'),
            maxLength: args('maxLength'),
            onChanged: args('onChanged'),
            onTap: args('onTap'),
            onEditingComplete: args('onEditingComplete'),
            onFieldSubmitted: args('onFieldSubmitted'),
            onSaved: args('onSaved'),
            validator: args('validator'),
            inputFormatters: args('inputFormatters'),
            enabled: args('enabled'),
            cursorWidth: args('cursorWidth'),
            cursorHeight: args('cursorHeight'),
            cursorColor: args('cursorColor'),
            keyboardAppearance: args('keyboardAppearance'),
            scrollPadding: args('scrollPadding'),
            enableInteractiveSelection: args('enableInteractiveSelection'),
            selectionControls: args('selectionControls'),
            scrollPhysics: args('scrollPhysics'),
            autofillHints: args('autofillHints'),
            autovalidateMode: args('autovalidateMode'),
            placeholder: args('placeholder'),
            placeholderStyle: args('placeholderStyle'),
            contextMenuBuilder: args('contextMenuBuilder'),
            restorationId: args('restorationId'),
          ),
        );

  static _i3.Widget _defaultContextMenuBuilder(
    _i3.BuildContext context,
    _i3.EditableTextState editableTextState,
  ) {
    return _i1.CupertinoAdaptiveTextSelectionToolbar.editableText(editableTextState: editableTextState);
  }
}
