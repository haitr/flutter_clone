library rxflutterify_binding; // ignore_for_file: no_leading_underscores_for_library_prefixes

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
  TextFormField(
    $ $config, {
    _i2.Key? key,
    _i3.TextEditingController? controller,
    String? initialValue,
    _i3.FocusNode? focusNode,
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
  }) : super(
          Argument({
            #key: key,
            #controller: controller,
            #initialValue: initialValue,
            #focusNode: focusNode,
            #decoration: decoration,
            #keyboardType: keyboardType,
            #textCapitalization: textCapitalization,
            #textInputAction: textInputAction,
            #style: style,
            #strutStyle: strutStyle,
            #textDirection: textDirection,
            #textAlign: textAlign,
            #textAlignVertical: textAlignVertical,
            #autofocus: autofocus,
            #readOnly: readOnly,
            #toolbarOptions: toolbarOptions,
            #showCursor: showCursor,
            #obscuringCharacter: obscuringCharacter,
            #obscureText: obscureText,
            #autocorrect: autocorrect,
            #smartDashesType: smartDashesType,
            #smartQuotesType: smartQuotesType,
            #enableSuggestions: enableSuggestions,
            #maxLengthEnforcement: maxLengthEnforcement,
            #maxLines: maxLines,
            #minLines: minLines,
            #expands: expands,
            #maxLength: maxLength,
            #onChanged: onChanged,
            #onTap: onTap,
            #onTapAlwaysCalled: onTapAlwaysCalled,
            #onTapOutside: onTapOutside,
            #onEditingComplete: onEditingComplete,
            #onFieldSubmitted: onFieldSubmitted,
            #onSaved: onSaved,
            #validator: validator,
            #inputFormatters: inputFormatters,
            #enabled: enabled,
            #ignorePointers: ignorePointers,
            #cursorWidth: cursorWidth,
            #cursorHeight: cursorHeight,
            #cursorRadius: cursorRadius,
            #cursorColor: cursorColor,
            #cursorErrorColor: cursorErrorColor,
            #keyboardAppearance: keyboardAppearance,
            #scrollPadding: scrollPadding,
            #enableInteractiveSelection: enableInteractiveSelection,
            #selectionControls: selectionControls,
            #buildCounter: buildCounter,
            #scrollPhysics: scrollPhysics,
            #autofillHints: autofillHints,
            #autovalidateMode: autovalidateMode,
            #scrollController: scrollController,
            #restorationId: restorationId,
            #enableIMEPersonalizedLearning: enableIMEPersonalizedLearning,
            #mouseCursor: mouseCursor,
            #contextMenuBuilder: contextMenuBuilder,
            #spellCheckConfiguration: spellCheckConfiguration,
            #magnifierConfiguration: magnifierConfiguration,
            #undoController: undoController,
            #onAppPrivateCommand: onAppPrivateCommand,
            #cursorOpacityAnimates: cursorOpacityAnimates,
            #selectionHeightStyle: selectionHeightStyle,
            #selectionWidthStyle: selectionWidthStyle,
            #dragStartBehavior: dragStartBehavior,
            #contentInsertionConfiguration: contentInsertionConfiguration,
            #statesController: statesController,
            #clipBehavior: clipBehavior,
            #scribbleEnabled: scribbleEnabled,
            #canRequestFocus: canRequestFocus,
          }),
          builder: (args) => _i1.TextFormField(
            key: args(#key),
            controller: args(#controller),
            initialValue: args(#initialValue),
            focusNode: args(#focusNode),
            decoration: args(#decoration),
            keyboardType: args(#keyboardType),
            textCapitalization: args(#textCapitalization),
            textInputAction: args(#textInputAction),
            style: args(#style),
            strutStyle: args(#strutStyle),
            textDirection: args(#textDirection),
            textAlign: args(#textAlign),
            textAlignVertical: args(#textAlignVertical),
            autofocus: args(#autofocus),
            readOnly: args(#readOnly),
            toolbarOptions: args(#toolbarOptions),
            showCursor: args(#showCursor),
            obscuringCharacter: args(#obscuringCharacter),
            obscureText: args(#obscureText),
            autocorrect: args(#autocorrect),
            smartDashesType: args(#smartDashesType),
            smartQuotesType: args(#smartQuotesType),
            enableSuggestions: args(#enableSuggestions),
            maxLengthEnforcement: args(#maxLengthEnforcement),
            maxLines: args(#maxLines),
            minLines: args(#minLines),
            expands: args(#expands),
            maxLength: args(#maxLength),
            onChanged: args(#onChanged),
            onTap: args(#onTap),
            onTapAlwaysCalled: args(#onTapAlwaysCalled),
            onTapOutside: args(#onTapOutside),
            onEditingComplete: args(#onEditingComplete),
            onFieldSubmitted: args(#onFieldSubmitted),
            onSaved: args(#onSaved),
            validator: args(#validator),
            inputFormatters: args(#inputFormatters),
            enabled: args(#enabled),
            ignorePointers: args(#ignorePointers),
            cursorWidth: args(#cursorWidth),
            cursorHeight: args(#cursorHeight),
            cursorRadius: args(#cursorRadius),
            cursorColor: args(#cursorColor),
            cursorErrorColor: args(#cursorErrorColor),
            keyboardAppearance: args(#keyboardAppearance),
            scrollPadding: args(#scrollPadding),
            enableInteractiveSelection: args(#enableInteractiveSelection),
            selectionControls: args(#selectionControls),
            buildCounter: args(#buildCounter),
            scrollPhysics: args(#scrollPhysics),
            autofillHints: args(#autofillHints),
            autovalidateMode: args(#autovalidateMode),
            scrollController: args(#scrollController),
            restorationId: args(#restorationId),
            enableIMEPersonalizedLearning: args(#enableIMEPersonalizedLearning),
            mouseCursor: args(#mouseCursor),
            contextMenuBuilder: args(#contextMenuBuilder),
            spellCheckConfiguration: args(#spellCheckConfiguration),
            magnifierConfiguration: args(#magnifierConfiguration),
            undoController: args(#undoController),
            onAppPrivateCommand: args(#onAppPrivateCommand),
            cursorOpacityAnimates: args(#cursorOpacityAnimates),
            selectionHeightStyle: args(#selectionHeightStyle),
            selectionWidthStyle: args(#selectionWidthStyle),
            dragStartBehavior: args(#dragStartBehavior),
            contentInsertionConfiguration: args(#contentInsertionConfiguration),
            statesController: args(#statesController),
            clipBehavior: args(#clipBehavior),
            scribbleEnabled: args(#scribbleEnabled),
            canRequestFocus: args(#canRequestFocus),
          ),
        );

  static _i3.Widget _defaultContextMenuBuilder(
    _i3.BuildContext context,
    _i3.EditableTextState editableTextState,
  ) {
    return _i1.AdaptiveTextSelectionToolbar.editableText(editableTextState: editableTextState);
  }
}
