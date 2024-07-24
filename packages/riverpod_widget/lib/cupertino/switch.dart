library rxflutterify; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:ui' as ui;

import 'package:flutter/cupertino.dart' as _i1;
import 'package:flutter/foundation.dart' as _i2;
import 'package:flutter/gestures.dart' as _i4;
import 'package:flutter/widgets.dart' as _i3;

import '../wrapper.dart';

final class CupertinoSwitch extends Wrapper {
  @Goto(_i1.CupertinoSwitch.new)
  CupertinoSwitch(
    $ $config, {
    _i2.Key? key,
    required bool value,
    required _i2.ValueChanged<bool>? onChanged,
    ui.Color? activeColor,
    ui.Color? trackColor,
    ui.Color? thumbColor,
    bool? applyTheme,
    ui.Color? focusColor,
    ui.Color? onLabelColor,
    ui.Color? offLabelColor,
    _i3.FocusNode? focusNode,
    _i2.ValueChanged<bool>? onFocusChange,
    bool autofocus = false,
    _i4.DragStartBehavior dragStartBehavior = _i4.DragStartBehavior.start,
  }) : super(
          Argument({
            #key: key,
            #value: value,
            #onChanged: onChanged,
            #activeColor: activeColor,
            #trackColor: trackColor,
            #thumbColor: thumbColor,
            #applyTheme: applyTheme,
            #focusColor: focusColor,
            #onLabelColor: onLabelColor,
            #offLabelColor: offLabelColor,
            #focusNode: focusNode,
            #onFocusChange: onFocusChange,
            #autofocus: autofocus,
            #dragStartBehavior: dragStartBehavior,
          }),
          builder: (args) => _i1.CupertinoSwitch(
            key: args(#key),
            value: args(#value),
            onChanged: args(#onChanged),
            activeColor: args(#activeColor),
            trackColor: args(#trackColor),
            thumbColor: args(#thumbColor),
            applyTheme: args(#applyTheme),
            focusColor: args(#focusColor),
            onLabelColor: args(#onLabelColor),
            offLabelColor: args(#offLabelColor),
            focusNode: args(#focusNode),
            onFocusChange: args(#onFocusChange),
            autofocus: args(#autofocus),
            dragStartBehavior: args(#dragStartBehavior),
          ),
        );
}
