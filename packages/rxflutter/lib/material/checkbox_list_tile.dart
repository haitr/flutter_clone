library rxflutter; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:ui' as ui;

import 'package:flutter/foundation.dart' as _i2;
import 'package:flutter/material.dart' as _i1;
import 'package:flutter/painting.dart' as _i5;
import 'package:flutter/services.dart' as _i3;
import 'package:flutter/widgets.dart' as _i4;

import '../wrapper.dart';

final class CheckboxListTile extends Wrapper {
  @Goto(_i1.CheckboxListTile.new)
  CheckboxListTile({
    _i2.Key? key,
    required bool? value,
    required _i2.ValueChanged<bool?>? onChanged,
    _i3.MouseCursor? mouseCursor,
    ui.Color? activeColor,
    _i4.WidgetStateProperty<ui.Color?>? fillColor,
    ui.Color? checkColor,
    ui.Color? hoverColor,
    _i4.WidgetStateProperty<ui.Color?>? overlayColor,
    double? splashRadius,
    _i1.MaterialTapTargetSize? materialTapTargetSize,
    _i1.VisualDensity? visualDensity,
    _i4.FocusNode? focusNode,
    bool autofocus = false,
    _i5.ShapeBorder? shape,
    _i5.BorderSide? side,
    bool isError = false,
    bool? enabled,
    ui.Color? tileColor,
    _i4.Widget? title,
    _i4.Widget? subtitle,
    bool isThreeLine = false,
    bool? dense,
    _i4.Widget? secondary,
    bool selected = false,
    _i1.ListTileControlAffinity controlAffinity = _i1.ListTileControlAffinity.platform,
    _i5.EdgeInsetsGeometry? contentPadding,
    bool tristate = false,
    _i5.OutlinedBorder? checkboxShape,
    ui.Color? selectedTileColor,
    _i2.ValueChanged<bool>? onFocusChange,
    bool? enableFeedback,
    String? checkboxSemanticLabel,
    // Associate with key
    Stream<_i2.Key?>? $key,
    // Associate with value
    Stream<bool?>? $value,
    // Associate with onChanged
    Stream<_i2.ValueChanged<bool?>?>? $onChanged,
    // Associate with mouseCursor
    Stream<_i3.MouseCursor?>? $mouseCursor,
    // Associate with activeColor
    Stream<ui.Color?>? $activeColor,
    // Associate with fillColor
    Stream<_i4.WidgetStateProperty<ui.Color?>?>? $fillColor,
    // Associate with checkColor
    Stream<ui.Color?>? $checkColor,
    // Associate with hoverColor
    Stream<ui.Color?>? $hoverColor,
    // Associate with overlayColor
    Stream<_i4.WidgetStateProperty<ui.Color?>?>? $overlayColor,
    // Associate with splashRadius
    Stream<double?>? $splashRadius,
    // Associate with materialTapTargetSize
    Stream<_i1.MaterialTapTargetSize?>? $materialTapTargetSize,
    // Associate with visualDensity
    Stream<_i1.VisualDensity?>? $visualDensity,
    // Associate with focusNode
    Stream<_i4.FocusNode?>? $focusNode,
    // Associate with autofocus
    Stream<bool>? $autofocus,
    // Associate with shape
    Stream<_i5.ShapeBorder?>? $shape,
    // Associate with side
    Stream<_i5.BorderSide?>? $side,
    // Associate with isError
    Stream<bool>? $isError,
    // Associate with enabled
    Stream<bool?>? $enabled,
    // Associate with tileColor
    Stream<ui.Color?>? $tileColor,
    // Associate with title
    Stream<_i4.Widget?>? $title,
    // Associate with subtitle
    Stream<_i4.Widget?>? $subtitle,
    // Associate with isThreeLine
    Stream<bool>? $isThreeLine,
    // Associate with dense
    Stream<bool?>? $dense,
    // Associate with secondary
    Stream<_i4.Widget?>? $secondary,
    // Associate with selected
    Stream<bool>? $selected,
    // Associate with controlAffinity
    Stream<_i1.ListTileControlAffinity>? $controlAffinity,
    // Associate with contentPadding
    Stream<_i5.EdgeInsetsGeometry?>? $contentPadding,
    // Associate with tristate
    Stream<bool>? $tristate,
    // Associate with checkboxShape
    Stream<_i5.OutlinedBorder?>? $checkboxShape,
    // Associate with selectedTileColor
    Stream<ui.Color?>? $selectedTileColor,
    // Associate with onFocusChange
    Stream<_i2.ValueChanged<bool>?>? $onFocusChange,
    // Associate with enableFeedback
    Stream<bool?>? $enableFeedback,
    // Associate with checkboxSemanticLabel
    Stream<String?>? $checkboxSemanticLabel,
  }) : super(
          Argument(
            {
              'key': key,
              'value': value,
              'onChanged': onChanged,
              'mouseCursor': mouseCursor,
              'activeColor': activeColor,
              'fillColor': fillColor,
              'checkColor': checkColor,
              'hoverColor': hoverColor,
              'overlayColor': overlayColor,
              'splashRadius': splashRadius,
              'materialTapTargetSize': materialTapTargetSize,
              'visualDensity': visualDensity,
              'focusNode': focusNode,
              'autofocus': autofocus,
              'shape': shape,
              'side': side,
              'isError': isError,
              'enabled': enabled,
              'tileColor': tileColor,
              'title': title,
              'subtitle': subtitle,
              'isThreeLine': isThreeLine,
              'dense': dense,
              'secondary': secondary,
              'selected': selected,
              'controlAffinity': controlAffinity,
              'contentPadding': contentPadding,
              'tristate': tristate,
              'checkboxShape': checkboxShape,
              'selectedTileColor': selectedTileColor,
              'onFocusChange': onFocusChange,
              'enableFeedback': enableFeedback,
              'checkboxSemanticLabel': checkboxSemanticLabel,
            },
            stream: {
              'key': $key,
              'value': $value,
              'onChanged': $onChanged,
              'mouseCursor': $mouseCursor,
              'activeColor': $activeColor,
              'fillColor': $fillColor,
              'checkColor': $checkColor,
              'hoverColor': $hoverColor,
              'overlayColor': $overlayColor,
              'splashRadius': $splashRadius,
              'materialTapTargetSize': $materialTapTargetSize,
              'visualDensity': $visualDensity,
              'focusNode': $focusNode,
              'autofocus': $autofocus,
              'shape': $shape,
              'side': $side,
              'isError': $isError,
              'enabled': $enabled,
              'tileColor': $tileColor,
              'title': $title,
              'subtitle': $subtitle,
              'isThreeLine': $isThreeLine,
              'dense': $dense,
              'secondary': $secondary,
              'selected': $selected,
              'controlAffinity': $controlAffinity,
              'contentPadding': $contentPadding,
              'tristate': $tristate,
              'checkboxShape': $checkboxShape,
              'selectedTileColor': $selectedTileColor,
              'onFocusChange': $onFocusChange,
              'enableFeedback': $enableFeedback,
              'checkboxSemanticLabel': $checkboxSemanticLabel,
            },
          ),
          builder: (args) => _i1.CheckboxListTile(
            key: args('key'),
            value: args('value'),
            onChanged: args('onChanged'),
            mouseCursor: args('mouseCursor'),
            activeColor: args('activeColor'),
            fillColor: args('fillColor'),
            checkColor: args('checkColor'),
            hoverColor: args('hoverColor'),
            overlayColor: args('overlayColor'),
            splashRadius: args('splashRadius'),
            materialTapTargetSize: args('materialTapTargetSize'),
            visualDensity: args('visualDensity'),
            focusNode: args('focusNode'),
            autofocus: args('autofocus'),
            shape: args('shape'),
            side: args('side'),
            isError: args('isError'),
            enabled: args('enabled'),
            tileColor: args('tileColor'),
            title: args('title'),
            subtitle: args('subtitle'),
            isThreeLine: args('isThreeLine'),
            dense: args('dense'),
            secondary: args('secondary'),
            selected: args('selected'),
            controlAffinity: args('controlAffinity'),
            contentPadding: args('contentPadding'),
            tristate: args('tristate'),
            checkboxShape: args('checkboxShape'),
            selectedTileColor: args('selectedTileColor'),
            onFocusChange: args('onFocusChange'),
            enableFeedback: args('enableFeedback'),
            checkboxSemanticLabel: args('checkboxSemanticLabel'),
          ),
        );

  @Goto(_i1.CheckboxListTile.adaptive)
  CheckboxListTile.adaptive({
    _i2.Key? key,
    required bool? value,
    required _i2.ValueChanged<bool?>? onChanged,
    _i3.MouseCursor? mouseCursor,
    ui.Color? activeColor,
    _i4.WidgetStateProperty<ui.Color?>? fillColor,
    ui.Color? checkColor,
    ui.Color? hoverColor,
    _i4.WidgetStateProperty<ui.Color?>? overlayColor,
    double? splashRadius,
    _i1.MaterialTapTargetSize? materialTapTargetSize,
    _i1.VisualDensity? visualDensity,
    _i4.FocusNode? focusNode,
    bool autofocus = false,
    _i5.ShapeBorder? shape,
    _i5.BorderSide? side,
    bool isError = false,
    bool? enabled,
    ui.Color? tileColor,
    _i4.Widget? title,
    _i4.Widget? subtitle,
    bool isThreeLine = false,
    bool? dense,
    _i4.Widget? secondary,
    bool selected = false,
    _i1.ListTileControlAffinity controlAffinity = _i1.ListTileControlAffinity.platform,
    _i5.EdgeInsetsGeometry? contentPadding,
    bool tristate = false,
    _i5.OutlinedBorder? checkboxShape,
    ui.Color? selectedTileColor,
    _i2.ValueChanged<bool>? onFocusChange,
    bool? enableFeedback,
    String? checkboxSemanticLabel,
    // Associate with key
    Stream<_i2.Key?>? $key,
    // Associate with value
    Stream<bool?>? $value,
    // Associate with onChanged
    Stream<_i2.ValueChanged<bool?>?>? $onChanged,
    // Associate with mouseCursor
    Stream<_i3.MouseCursor?>? $mouseCursor,
    // Associate with activeColor
    Stream<ui.Color?>? $activeColor,
    // Associate with fillColor
    Stream<_i4.WidgetStateProperty<ui.Color?>?>? $fillColor,
    // Associate with checkColor
    Stream<ui.Color?>? $checkColor,
    // Associate with hoverColor
    Stream<ui.Color?>? $hoverColor,
    // Associate with overlayColor
    Stream<_i4.WidgetStateProperty<ui.Color?>?>? $overlayColor,
    // Associate with splashRadius
    Stream<double?>? $splashRadius,
    // Associate with materialTapTargetSize
    Stream<_i1.MaterialTapTargetSize?>? $materialTapTargetSize,
    // Associate with visualDensity
    Stream<_i1.VisualDensity?>? $visualDensity,
    // Associate with focusNode
    Stream<_i4.FocusNode?>? $focusNode,
    // Associate with autofocus
    Stream<bool>? $autofocus,
    // Associate with shape
    Stream<_i5.ShapeBorder?>? $shape,
    // Associate with side
    Stream<_i5.BorderSide?>? $side,
    // Associate with isError
    Stream<bool>? $isError,
    // Associate with enabled
    Stream<bool?>? $enabled,
    // Associate with tileColor
    Stream<ui.Color?>? $tileColor,
    // Associate with title
    Stream<_i4.Widget?>? $title,
    // Associate with subtitle
    Stream<_i4.Widget?>? $subtitle,
    // Associate with isThreeLine
    Stream<bool>? $isThreeLine,
    // Associate with dense
    Stream<bool?>? $dense,
    // Associate with secondary
    Stream<_i4.Widget?>? $secondary,
    // Associate with selected
    Stream<bool>? $selected,
    // Associate with controlAffinity
    Stream<_i1.ListTileControlAffinity>? $controlAffinity,
    // Associate with contentPadding
    Stream<_i5.EdgeInsetsGeometry?>? $contentPadding,
    // Associate with tristate
    Stream<bool>? $tristate,
    // Associate with checkboxShape
    Stream<_i5.OutlinedBorder?>? $checkboxShape,
    // Associate with selectedTileColor
    Stream<ui.Color?>? $selectedTileColor,
    // Associate with onFocusChange
    Stream<_i2.ValueChanged<bool>?>? $onFocusChange,
    // Associate with enableFeedback
    Stream<bool?>? $enableFeedback,
    // Associate with checkboxSemanticLabel
    Stream<String?>? $checkboxSemanticLabel,
  }) : super(
          Argument(
            {
              'key': key,
              'value': value,
              'onChanged': onChanged,
              'mouseCursor': mouseCursor,
              'activeColor': activeColor,
              'fillColor': fillColor,
              'checkColor': checkColor,
              'hoverColor': hoverColor,
              'overlayColor': overlayColor,
              'splashRadius': splashRadius,
              'materialTapTargetSize': materialTapTargetSize,
              'visualDensity': visualDensity,
              'focusNode': focusNode,
              'autofocus': autofocus,
              'shape': shape,
              'side': side,
              'isError': isError,
              'enabled': enabled,
              'tileColor': tileColor,
              'title': title,
              'subtitle': subtitle,
              'isThreeLine': isThreeLine,
              'dense': dense,
              'secondary': secondary,
              'selected': selected,
              'controlAffinity': controlAffinity,
              'contentPadding': contentPadding,
              'tristate': tristate,
              'checkboxShape': checkboxShape,
              'selectedTileColor': selectedTileColor,
              'onFocusChange': onFocusChange,
              'enableFeedback': enableFeedback,
              'checkboxSemanticLabel': checkboxSemanticLabel,
            },
            stream: {
              'key': $key,
              'value': $value,
              'onChanged': $onChanged,
              'mouseCursor': $mouseCursor,
              'activeColor': $activeColor,
              'fillColor': $fillColor,
              'checkColor': $checkColor,
              'hoverColor': $hoverColor,
              'overlayColor': $overlayColor,
              'splashRadius': $splashRadius,
              'materialTapTargetSize': $materialTapTargetSize,
              'visualDensity': $visualDensity,
              'focusNode': $focusNode,
              'autofocus': $autofocus,
              'shape': $shape,
              'side': $side,
              'isError': $isError,
              'enabled': $enabled,
              'tileColor': $tileColor,
              'title': $title,
              'subtitle': $subtitle,
              'isThreeLine': $isThreeLine,
              'dense': $dense,
              'secondary': $secondary,
              'selected': $selected,
              'controlAffinity': $controlAffinity,
              'contentPadding': $contentPadding,
              'tristate': $tristate,
              'checkboxShape': $checkboxShape,
              'selectedTileColor': $selectedTileColor,
              'onFocusChange': $onFocusChange,
              'enableFeedback': $enableFeedback,
              'checkboxSemanticLabel': $checkboxSemanticLabel,
            },
          ),
          builder: (args) => _i1.CheckboxListTile.adaptive(
            key: args('key'),
            value: args('value'),
            onChanged: args('onChanged'),
            mouseCursor: args('mouseCursor'),
            activeColor: args('activeColor'),
            fillColor: args('fillColor'),
            checkColor: args('checkColor'),
            hoverColor: args('hoverColor'),
            overlayColor: args('overlayColor'),
            splashRadius: args('splashRadius'),
            materialTapTargetSize: args('materialTapTargetSize'),
            visualDensity: args('visualDensity'),
            focusNode: args('focusNode'),
            autofocus: args('autofocus'),
            shape: args('shape'),
            side: args('side'),
            isError: args('isError'),
            enabled: args('enabled'),
            tileColor: args('tileColor'),
            title: args('title'),
            subtitle: args('subtitle'),
            isThreeLine: args('isThreeLine'),
            dense: args('dense'),
            secondary: args('secondary'),
            selected: args('selected'),
            controlAffinity: args('controlAffinity'),
            contentPadding: args('contentPadding'),
            tristate: args('tristate'),
            checkboxShape: args('checkboxShape'),
            selectedTileColor: args('selectedTileColor'),
            onFocusChange: args('onFocusChange'),
            enableFeedback: args('enableFeedback'),
            checkboxSemanticLabel: args('checkboxSemanticLabel'),
          ),
        );
}
