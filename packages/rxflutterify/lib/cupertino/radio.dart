library rxflutterify; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:ui' as ui;

import 'package:flutter/cupertino.dart' as _i1;
import 'package:flutter/foundation.dart' as _i2;
import 'package:flutter/widgets.dart' as _i3;

import '../wrapper.dart';

final class CupertinoRadio<T> extends Wrapper {
  @Goto(_i1.CupertinoRadio.new)
  CupertinoRadio({
    _i2.Key? key,
    required T value,
    required T? groupValue,
    required _i2.ValueChanged<T?>? onChanged,
    bool toggleable = false,
    ui.Color? activeColor,
    ui.Color? inactiveColor,
    ui.Color? fillColor,
    ui.Color? focusColor,
    _i3.FocusNode? focusNode,
    bool autofocus = false,
    bool useCheckmarkStyle = false,
    // Associate with key
    Stream<_i2.Key?>? $key,
    // Associate with value
    Stream<T>? $value,
    // Associate with groupValue
    Stream<T?>? $groupValue,
    // Associate with onChanged
    Stream<_i2.ValueChanged<T?>?>? $onChanged,
    // Associate with toggleable
    Stream<bool>? $toggleable,
    // Associate with activeColor
    Stream<ui.Color?>? $activeColor,
    // Associate with inactiveColor
    Stream<ui.Color?>? $inactiveColor,
    // Associate with fillColor
    Stream<ui.Color?>? $fillColor,
    // Associate with focusColor
    Stream<ui.Color?>? $focusColor,
    // Associate with focusNode
    Stream<_i3.FocusNode?>? $focusNode,
    // Associate with autofocus
    Stream<bool>? $autofocus,
    // Associate with useCheckmarkStyle
    Stream<bool>? $useCheckmarkStyle,
  }) : super(
          Argument(
            {
              'key': key,
              'value': value,
              'groupValue': groupValue,
              'onChanged': onChanged,
              'toggleable': toggleable,
              'activeColor': activeColor,
              'inactiveColor': inactiveColor,
              'fillColor': fillColor,
              'focusColor': focusColor,
              'focusNode': focusNode,
              'autofocus': autofocus,
              'useCheckmarkStyle': useCheckmarkStyle,
            },
            stream: {
              'key': $key,
              'value': $value,
              'groupValue': $groupValue,
              'onChanged': $onChanged,
              'toggleable': $toggleable,
              'activeColor': $activeColor,
              'inactiveColor': $inactiveColor,
              'fillColor': $fillColor,
              'focusColor': $focusColor,
              'focusNode': $focusNode,
              'autofocus': $autofocus,
              'useCheckmarkStyle': $useCheckmarkStyle,
            },
          ),
          builder: (args) => _i1.CupertinoRadio<T>(
            key: args('key'),
            value: args('value'),
            groupValue: args('groupValue'),
            onChanged: args('onChanged'),
            toggleable: args('toggleable'),
            activeColor: args('activeColor'),
            inactiveColor: args('inactiveColor'),
            fillColor: args('fillColor'),
            focusColor: args('focusColor'),
            focusNode: args('focusNode'),
            autofocus: args('autofocus'),
            useCheckmarkStyle: args('useCheckmarkStyle'),
          ),
        );
}
