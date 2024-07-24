library rxflutterify; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:ui' as ui;

import 'package:flutter/foundation.dart' as _i2;
import 'package:flutter/material.dart' as _i1;
import 'package:flutter/painting.dart' as _i4;
import 'package:flutter/widgets.dart' as _i3;

import '../wrapper.dart';

final class DropdownButton<T> extends Wrapper {
  @Goto(_i1.DropdownButton.new)
  DropdownButton(
    $ $config, {
    _i2.Key? key,
    required List<_i1.DropdownMenuItem<T>>? items,
    _i1.DropdownButtonBuilder? selectedItemBuilder,
    T? value,
    _i3.Widget? hint,
    _i3.Widget? disabledHint,
    required _i2.ValueChanged<T?>? onChanged,
    ui.VoidCallback? onTap,
    int elevation = 8,
    _i4.TextStyle? style,
    _i3.Widget? underline,
    _i3.Widget? icon,
    ui.Color? iconDisabledColor,
    ui.Color? iconEnabledColor,
    double iconSize = 24.0,
    bool isDense = false,
    bool isExpanded = false,
    double? itemHeight = _i1.kMinInteractiveDimension,
    ui.Color? focusColor,
    _i3.FocusNode? focusNode,
    bool autofocus = false,
    ui.Color? dropdownColor,
    double? menuMaxHeight,
    bool? enableFeedback,
    _i4.AlignmentGeometry alignment = _i4.AlignmentDirectional.centerStart,
    _i4.BorderRadius? borderRadius,
    _i4.EdgeInsetsGeometry? padding,
  }) : super(
          Argument({
            #key: key,
            #items: items,
            #selectedItemBuilder: selectedItemBuilder,
            #value: value,
            #hint: hint,
            #disabledHint: disabledHint,
            #onChanged: onChanged,
            #onTap: onTap,
            #elevation: elevation,
            #style: style,
            #underline: underline,
            #icon: icon,
            #iconDisabledColor: iconDisabledColor,
            #iconEnabledColor: iconEnabledColor,
            #iconSize: iconSize,
            #isDense: isDense,
            #isExpanded: isExpanded,
            #itemHeight: itemHeight,
            #focusColor: focusColor,
            #focusNode: focusNode,
            #autofocus: autofocus,
            #dropdownColor: dropdownColor,
            #menuMaxHeight: menuMaxHeight,
            #enableFeedback: enableFeedback,
            #alignment: alignment,
            #borderRadius: borderRadius,
            #padding: padding,
          }),
          builder: (args) => _i1.DropdownButton<T>(
            key: args(#key),
            items: args(#items),
            selectedItemBuilder: args(#selectedItemBuilder),
            value: args(#value),
            hint: args(#hint),
            disabledHint: args(#disabledHint),
            onChanged: args(#onChanged),
            onTap: args(#onTap),
            elevation: args(#elevation),
            style: args(#style),
            underline: args(#underline),
            icon: args(#icon),
            iconDisabledColor: args(#iconDisabledColor),
            iconEnabledColor: args(#iconEnabledColor),
            iconSize: args(#iconSize),
            isDense: args(#isDense),
            isExpanded: args(#isExpanded),
            itemHeight: args(#itemHeight),
            focusColor: args(#focusColor),
            focusNode: args(#focusNode),
            autofocus: args(#autofocus),
            dropdownColor: args(#dropdownColor),
            menuMaxHeight: args(#menuMaxHeight),
            enableFeedback: args(#enableFeedback),
            alignment: args(#alignment),
            borderRadius: args(#borderRadius),
            padding: args(#padding),
          ),
        );
}

final class DropdownMenuItem<T> extends Wrapper {
  @Goto(_i1.DropdownMenuItem.new)
  DropdownMenuItem(
    $ $config, {
    _i2.Key? key,
    ui.VoidCallback? onTap,
    T? value,
    bool enabled = true,
    _i4.AlignmentGeometry alignment = _i4.AlignmentDirectional.centerStart,
    required _i3.Widget child,
  }) : super(
          Argument({
            #key: key,
            #onTap: onTap,
            #value: value,
            #enabled: enabled,
            #alignment: alignment,
            #child: child,
          }),
          builder: (args) => _i1.DropdownMenuItem<T>(
            key: args(#key),
            onTap: args(#onTap),
            value: args(#value),
            enabled: args(#enabled),
            alignment: args(#alignment),
            child: args(#child),
          ),
        );
}

final class DropdownButtonFormField<T> extends Wrapper {
  @Goto(_i1.DropdownButtonFormField.new)
  DropdownButtonFormField(
    $ $config, {
    _i2.Key? key,
    required List<_i1.DropdownMenuItem<T>>? items,
    _i1.DropdownButtonBuilder? selectedItemBuilder,
    T? value,
    _i3.Widget? hint,
    _i3.Widget? disabledHint,
    required _i2.ValueChanged<T?>? onChanged,
    ui.VoidCallback? onTap,
    int elevation = 8,
    _i4.TextStyle? style,
    _i3.Widget? icon,
    ui.Color? iconDisabledColor,
    ui.Color? iconEnabledColor,
    double iconSize = 24.0,
    bool isDense = true,
    bool isExpanded = false,
    double? itemHeight,
    ui.Color? focusColor,
    _i3.FocusNode? focusNode,
    bool autofocus = false,
    ui.Color? dropdownColor,
    _i1.InputDecoration? decoration,
    _i3.FormFieldSetter<T>? onSaved,
    _i3.FormFieldValidator<T>? validator,
    _i3.AutovalidateMode? autovalidateMode,
    double? menuMaxHeight,
    bool? enableFeedback,
    _i4.AlignmentGeometry alignment = _i4.AlignmentDirectional.centerStart,
    _i4.BorderRadius? borderRadius,
    _i4.EdgeInsetsGeometry? padding,
  }) : super(
          Argument({
            #key: key,
            #items: items,
            #selectedItemBuilder: selectedItemBuilder,
            #value: value,
            #hint: hint,
            #disabledHint: disabledHint,
            #onChanged: onChanged,
            #onTap: onTap,
            #elevation: elevation,
            #style: style,
            #icon: icon,
            #iconDisabledColor: iconDisabledColor,
            #iconEnabledColor: iconEnabledColor,
            #iconSize: iconSize,
            #isDense: isDense,
            #isExpanded: isExpanded,
            #itemHeight: itemHeight,
            #focusColor: focusColor,
            #focusNode: focusNode,
            #autofocus: autofocus,
            #dropdownColor: dropdownColor,
            #decoration: decoration,
            #onSaved: onSaved,
            #validator: validator,
            #autovalidateMode: autovalidateMode,
            #menuMaxHeight: menuMaxHeight,
            #enableFeedback: enableFeedback,
            #alignment: alignment,
            #borderRadius: borderRadius,
            #padding: padding,
          }),
          builder: (args) => _i1.DropdownButtonFormField<T>(
            key: args(#key),
            items: args(#items),
            selectedItemBuilder: args(#selectedItemBuilder),
            value: args(#value),
            hint: args(#hint),
            disabledHint: args(#disabledHint),
            onChanged: args(#onChanged),
            onTap: args(#onTap),
            elevation: args(#elevation),
            style: args(#style),
            icon: args(#icon),
            iconDisabledColor: args(#iconDisabledColor),
            iconEnabledColor: args(#iconEnabledColor),
            iconSize: args(#iconSize),
            isDense: args(#isDense),
            isExpanded: args(#isExpanded),
            itemHeight: args(#itemHeight),
            focusColor: args(#focusColor),
            focusNode: args(#focusNode),
            autofocus: args(#autofocus),
            dropdownColor: args(#dropdownColor),
            decoration: args(#decoration),
            onSaved: args(#onSaved),
            validator: args(#validator),
            autovalidateMode: args(#autovalidateMode),
            menuMaxHeight: args(#menuMaxHeight),
            enableFeedback: args(#enableFeedback),
            alignment: args(#alignment),
            borderRadius: args(#borderRadius),
            padding: args(#padding),
          ),
        );
}

final class DropdownButtonHideUnderline extends Wrapper {
  @Goto(_i1.DropdownButtonHideUnderline.new)
  DropdownButtonHideUnderline(
    $ $config, {
    _i2.Key? key,
    required _i3.Widget child,
  }) : super(
          Argument({
            #key: key,
            #child: child,
          }),
          builder: (args) => _i1.DropdownButtonHideUnderline(
            key: args(#key),
            child: args(#child),
          ),
        );
}
