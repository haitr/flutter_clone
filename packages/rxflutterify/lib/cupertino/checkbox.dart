library rxflutterify; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:ui' as ui;

import 'package:flutter/cupertino.dart' as _i1;
import 'package:flutter/foundation.dart' as _i2;
import 'package:flutter/painting.dart' as _i4;
import 'package:flutter/widgets.dart' as _i3;

import '../wrapper.dart';

final class CupertinoCheckbox extends Wrapper {
  @Goto(_i1.CupertinoCheckbox.new)
  CupertinoCheckbox({
    _i2.Key? key,
    required bool? value,
    bool tristate = false,
    required _i2.ValueChanged<bool?>? onChanged,
    ui.Color? activeColor,
    ui.Color? inactiveColor,
    ui.Color? checkColor,
    ui.Color? focusColor,
    _i3.FocusNode? focusNode,
    bool autofocus = false,
    _i4.BorderSide? side,
    _i4.OutlinedBorder? shape,
    // Associate with key
    Stream<_i2.Key?>? $key,
    // Associate with value
    Stream<bool?>? $value,
    // Associate with tristate
    Stream<bool>? $tristate,
    // Associate with onChanged
    Stream<_i2.ValueChanged<bool?>?>? $onChanged,
    // Associate with activeColor
    Stream<ui.Color?>? $activeColor,
    // Associate with inactiveColor
    Stream<ui.Color?>? $inactiveColor,
    // Associate with checkColor
    Stream<ui.Color?>? $checkColor,
    // Associate with focusColor
    Stream<ui.Color?>? $focusColor,
    // Associate with focusNode
    Stream<_i3.FocusNode?>? $focusNode,
    // Associate with autofocus
    Stream<bool>? $autofocus,
    // Associate with side
    Stream<_i4.BorderSide?>? $side,
    // Associate with shape
    Stream<_i4.OutlinedBorder?>? $shape,
  }) : super(
          Argument(
            {
              'key': key,
              'value': value,
              'tristate': tristate,
              'onChanged': onChanged,
              'activeColor': activeColor,
              'inactiveColor': inactiveColor,
              'checkColor': checkColor,
              'focusColor': focusColor,
              'focusNode': focusNode,
              'autofocus': autofocus,
              'side': side,
              'shape': shape,
            },
            stream: {
              'key': $key,
              'value': $value,
              'tristate': $tristate,
              'onChanged': $onChanged,
              'activeColor': $activeColor,
              'inactiveColor': $inactiveColor,
              'checkColor': $checkColor,
              'focusColor': $focusColor,
              'focusNode': $focusNode,
              'autofocus': $autofocus,
              'side': $side,
              'shape': $shape,
            },
          ),
          builder: (args) => _i1.CupertinoCheckbox(
            key: args('key'),
            value: args('value'),
            tristate: args('tristate'),
            onChanged: args('onChanged'),
            activeColor: args('activeColor'),
            inactiveColor: args('inactiveColor'),
            checkColor: args('checkColor'),
            focusColor: args('focusColor'),
            focusNode: args('focusNode'),
            autofocus: args('autofocus'),
            side: args('side'),
            shape: args('shape'),
          ),
        );
}
