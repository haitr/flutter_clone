library rxflutter; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:ui' as ui;

import 'package:flutter/foundation.dart' as _i2;
import 'package:flutter/material.dart' as _i1;
import 'package:flutter/painting.dart' as _i5;
import 'package:flutter/services.dart' as _i3;
import 'package:flutter/widgets.dart' as _i4;

import '../wrapper.dart';

final class RadioListTile<T> extends Wrapper {
  @Goto(_i1.RadioListTile.new)
  RadioListTile({
    _i2.Key? key,
    required T value,
    required T? groupValue,
    required _i2.ValueChanged<T?>? onChanged,
    _i3.MouseCursor? mouseCursor,
    bool toggleable = false,
    ui.Color? activeColor,
    _i4.WidgetStateProperty<ui.Color?>? fillColor,
    ui.Color? hoverColor,
    _i4.WidgetStateProperty<ui.Color?>? overlayColor,
    double? splashRadius,
    _i1.MaterialTapTargetSize? materialTapTargetSize,
    _i4.Widget? title,
    _i4.Widget? subtitle,
    bool isThreeLine = false,
    bool? dense,
    _i4.Widget? secondary,
    bool selected = false,
    _i1.ListTileControlAffinity controlAffinity = _i1.ListTileControlAffinity.platform,
    bool autofocus = false,
    _i5.EdgeInsetsGeometry? contentPadding,
    _i5.ShapeBorder? shape,
    ui.Color? tileColor,
    ui.Color? selectedTileColor,
    _i1.VisualDensity? visualDensity,
    _i4.FocusNode? focusNode,
    _i2.ValueChanged<bool>? onFocusChange,
    bool? enableFeedback,
    // Associate with key
    Stream<_i2.Key?>? $key,
    // Associate with value
    Stream<T>? $value,
    // Associate with groupValue
    Stream<T?>? $groupValue,
    // Associate with onChanged
    Stream<_i2.ValueChanged<T?>?>? $onChanged,
    // Associate with mouseCursor
    Stream<_i3.MouseCursor?>? $mouseCursor,
    // Associate with toggleable
    Stream<bool>? $toggleable,
    // Associate with activeColor
    Stream<ui.Color?>? $activeColor,
    // Associate with fillColor
    Stream<_i4.WidgetStateProperty<ui.Color?>?>? $fillColor,
    // Associate with hoverColor
    Stream<ui.Color?>? $hoverColor,
    // Associate with overlayColor
    Stream<_i4.WidgetStateProperty<ui.Color?>?>? $overlayColor,
    // Associate with splashRadius
    Stream<double?>? $splashRadius,
    // Associate with materialTapTargetSize
    Stream<_i1.MaterialTapTargetSize?>? $materialTapTargetSize,
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
    // Associate with autofocus
    Stream<bool>? $autofocus,
    // Associate with contentPadding
    Stream<_i5.EdgeInsetsGeometry?>? $contentPadding,
    // Associate with shape
    Stream<_i5.ShapeBorder?>? $shape,
    // Associate with tileColor
    Stream<ui.Color?>? $tileColor,
    // Associate with selectedTileColor
    Stream<ui.Color?>? $selectedTileColor,
    // Associate with visualDensity
    Stream<_i1.VisualDensity?>? $visualDensity,
    // Associate with focusNode
    Stream<_i4.FocusNode?>? $focusNode,
    // Associate with onFocusChange
    Stream<_i2.ValueChanged<bool>?>? $onFocusChange,
    // Associate with enableFeedback
    Stream<bool?>? $enableFeedback,
  }) : super(
          Argument(
            {
              'key': key,
              'value': value,
              'groupValue': groupValue,
              'onChanged': onChanged,
              'mouseCursor': mouseCursor,
              'toggleable': toggleable,
              'activeColor': activeColor,
              'fillColor': fillColor,
              'hoverColor': hoverColor,
              'overlayColor': overlayColor,
              'splashRadius': splashRadius,
              'materialTapTargetSize': materialTapTargetSize,
              'title': title,
              'subtitle': subtitle,
              'isThreeLine': isThreeLine,
              'dense': dense,
              'secondary': secondary,
              'selected': selected,
              'controlAffinity': controlAffinity,
              'autofocus': autofocus,
              'contentPadding': contentPadding,
              'shape': shape,
              'tileColor': tileColor,
              'selectedTileColor': selectedTileColor,
              'visualDensity': visualDensity,
              'focusNode': focusNode,
              'onFocusChange': onFocusChange,
              'enableFeedback': enableFeedback,
            },
            stream: {
              'key': $key,
              'value': $value,
              'groupValue': $groupValue,
              'onChanged': $onChanged,
              'mouseCursor': $mouseCursor,
              'toggleable': $toggleable,
              'activeColor': $activeColor,
              'fillColor': $fillColor,
              'hoverColor': $hoverColor,
              'overlayColor': $overlayColor,
              'splashRadius': $splashRadius,
              'materialTapTargetSize': $materialTapTargetSize,
              'title': $title,
              'subtitle': $subtitle,
              'isThreeLine': $isThreeLine,
              'dense': $dense,
              'secondary': $secondary,
              'selected': $selected,
              'controlAffinity': $controlAffinity,
              'autofocus': $autofocus,
              'contentPadding': $contentPadding,
              'shape': $shape,
              'tileColor': $tileColor,
              'selectedTileColor': $selectedTileColor,
              'visualDensity': $visualDensity,
              'focusNode': $focusNode,
              'onFocusChange': $onFocusChange,
              'enableFeedback': $enableFeedback,
            },
          ),
          builder: (args) => _i1.RadioListTile<T>(
            key: args('key'),
            value: args('value'),
            groupValue: args('groupValue'),
            onChanged: args('onChanged'),
            mouseCursor: args('mouseCursor'),
            toggleable: args('toggleable'),
            activeColor: args('activeColor'),
            fillColor: args('fillColor'),
            hoverColor: args('hoverColor'),
            overlayColor: args('overlayColor'),
            splashRadius: args('splashRadius'),
            materialTapTargetSize: args('materialTapTargetSize'),
            title: args('title'),
            subtitle: args('subtitle'),
            isThreeLine: args('isThreeLine'),
            dense: args('dense'),
            secondary: args('secondary'),
            selected: args('selected'),
            controlAffinity: args('controlAffinity'),
            autofocus: args('autofocus'),
            contentPadding: args('contentPadding'),
            shape: args('shape'),
            tileColor: args('tileColor'),
            selectedTileColor: args('selectedTileColor'),
            visualDensity: args('visualDensity'),
            focusNode: args('focusNode'),
            onFocusChange: args('onFocusChange'),
            enableFeedback: args('enableFeedback'),
          ),
        );

  @Goto(_i1.RadioListTile.adaptive)
  RadioListTile.adaptive({
    _i2.Key? key,
    required T value,
    required T? groupValue,
    required _i2.ValueChanged<T?>? onChanged,
    _i3.MouseCursor? mouseCursor,
    bool toggleable = false,
    ui.Color? activeColor,
    _i4.WidgetStateProperty<ui.Color?>? fillColor,
    ui.Color? hoverColor,
    _i4.WidgetStateProperty<ui.Color?>? overlayColor,
    double? splashRadius,
    _i1.MaterialTapTargetSize? materialTapTargetSize,
    _i4.Widget? title,
    _i4.Widget? subtitle,
    bool isThreeLine = false,
    bool? dense,
    _i4.Widget? secondary,
    bool selected = false,
    _i1.ListTileControlAffinity controlAffinity = _i1.ListTileControlAffinity.platform,
    bool autofocus = false,
    _i5.EdgeInsetsGeometry? contentPadding,
    _i5.ShapeBorder? shape,
    ui.Color? tileColor,
    ui.Color? selectedTileColor,
    _i1.VisualDensity? visualDensity,
    _i4.FocusNode? focusNode,
    _i2.ValueChanged<bool>? onFocusChange,
    bool? enableFeedback,
    bool useCupertinoCheckmarkStyle = false,
    // Associate with key
    Stream<_i2.Key?>? $key,
    // Associate with value
    Stream<T>? $value,
    // Associate with groupValue
    Stream<T?>? $groupValue,
    // Associate with onChanged
    Stream<_i2.ValueChanged<T?>?>? $onChanged,
    // Associate with mouseCursor
    Stream<_i3.MouseCursor?>? $mouseCursor,
    // Associate with toggleable
    Stream<bool>? $toggleable,
    // Associate with activeColor
    Stream<ui.Color?>? $activeColor,
    // Associate with fillColor
    Stream<_i4.WidgetStateProperty<ui.Color?>?>? $fillColor,
    // Associate with hoverColor
    Stream<ui.Color?>? $hoverColor,
    // Associate with overlayColor
    Stream<_i4.WidgetStateProperty<ui.Color?>?>? $overlayColor,
    // Associate with splashRadius
    Stream<double?>? $splashRadius,
    // Associate with materialTapTargetSize
    Stream<_i1.MaterialTapTargetSize?>? $materialTapTargetSize,
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
    // Associate with autofocus
    Stream<bool>? $autofocus,
    // Associate with contentPadding
    Stream<_i5.EdgeInsetsGeometry?>? $contentPadding,
    // Associate with shape
    Stream<_i5.ShapeBorder?>? $shape,
    // Associate with tileColor
    Stream<ui.Color?>? $tileColor,
    // Associate with selectedTileColor
    Stream<ui.Color?>? $selectedTileColor,
    // Associate with visualDensity
    Stream<_i1.VisualDensity?>? $visualDensity,
    // Associate with focusNode
    Stream<_i4.FocusNode?>? $focusNode,
    // Associate with onFocusChange
    Stream<_i2.ValueChanged<bool>?>? $onFocusChange,
    // Associate with enableFeedback
    Stream<bool?>? $enableFeedback,
    // Associate with useCupertinoCheckmarkStyle
    Stream<bool>? $useCupertinoCheckmarkStyle,
  }) : super(
          Argument(
            {
              'key': key,
              'value': value,
              'groupValue': groupValue,
              'onChanged': onChanged,
              'mouseCursor': mouseCursor,
              'toggleable': toggleable,
              'activeColor': activeColor,
              'fillColor': fillColor,
              'hoverColor': hoverColor,
              'overlayColor': overlayColor,
              'splashRadius': splashRadius,
              'materialTapTargetSize': materialTapTargetSize,
              'title': title,
              'subtitle': subtitle,
              'isThreeLine': isThreeLine,
              'dense': dense,
              'secondary': secondary,
              'selected': selected,
              'controlAffinity': controlAffinity,
              'autofocus': autofocus,
              'contentPadding': contentPadding,
              'shape': shape,
              'tileColor': tileColor,
              'selectedTileColor': selectedTileColor,
              'visualDensity': visualDensity,
              'focusNode': focusNode,
              'onFocusChange': onFocusChange,
              'enableFeedback': enableFeedback,
              'useCupertinoCheckmarkStyle': useCupertinoCheckmarkStyle,
            },
            stream: {
              'key': $key,
              'value': $value,
              'groupValue': $groupValue,
              'onChanged': $onChanged,
              'mouseCursor': $mouseCursor,
              'toggleable': $toggleable,
              'activeColor': $activeColor,
              'fillColor': $fillColor,
              'hoverColor': $hoverColor,
              'overlayColor': $overlayColor,
              'splashRadius': $splashRadius,
              'materialTapTargetSize': $materialTapTargetSize,
              'title': $title,
              'subtitle': $subtitle,
              'isThreeLine': $isThreeLine,
              'dense': $dense,
              'secondary': $secondary,
              'selected': $selected,
              'controlAffinity': $controlAffinity,
              'autofocus': $autofocus,
              'contentPadding': $contentPadding,
              'shape': $shape,
              'tileColor': $tileColor,
              'selectedTileColor': $selectedTileColor,
              'visualDensity': $visualDensity,
              'focusNode': $focusNode,
              'onFocusChange': $onFocusChange,
              'enableFeedback': $enableFeedback,
              'useCupertinoCheckmarkStyle': $useCupertinoCheckmarkStyle,
            },
          ),
          builder: (args) => _i1.RadioListTile<T>.adaptive(
            key: args('key'),
            value: args('value'),
            groupValue: args('groupValue'),
            onChanged: args('onChanged'),
            mouseCursor: args('mouseCursor'),
            toggleable: args('toggleable'),
            activeColor: args('activeColor'),
            fillColor: args('fillColor'),
            hoverColor: args('hoverColor'),
            overlayColor: args('overlayColor'),
            splashRadius: args('splashRadius'),
            materialTapTargetSize: args('materialTapTargetSize'),
            title: args('title'),
            subtitle: args('subtitle'),
            isThreeLine: args('isThreeLine'),
            dense: args('dense'),
            secondary: args('secondary'),
            selected: args('selected'),
            controlAffinity: args('controlAffinity'),
            autofocus: args('autofocus'),
            contentPadding: args('contentPadding'),
            shape: args('shape'),
            tileColor: args('tileColor'),
            selectedTileColor: args('selectedTileColor'),
            visualDensity: args('visualDensity'),
            focusNode: args('focusNode'),
            onFocusChange: args('onFocusChange'),
            enableFeedback: args('enableFeedback'),
            useCupertinoCheckmarkStyle: args('useCupertinoCheckmarkStyle'),
          ),
        );
}
