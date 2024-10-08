library rxflutterify; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:ui' as ui;

import 'package:flutter/cupertino.dart' as _i1;
import 'package:flutter/foundation.dart' as _i2;
import 'package:flutter/painting.dart' as _i4;
import 'package:flutter/widgets.dart' as _i3;

import '../wrapper.dart';

final class CupertinoSegmentedControl<T extends Object> extends Wrapper {
  @Goto(_i1.CupertinoSegmentedControl.new)
  CupertinoSegmentedControl(
    $ $config, {
    _i2.Key? key,
    required Map<T, _i3.Widget> children,
    required _i2.ValueChanged<T> onValueChanged,
    T? groupValue,
    ui.Color? unselectedColor,
    ui.Color? selectedColor,
    ui.Color? borderColor,
    ui.Color? pressedColor,
    _i4.EdgeInsetsGeometry? padding,
  }) : super(
          Argument({
            #key: key,
            #children: children,
            #onValueChanged: onValueChanged,
            #groupValue: groupValue,
            #unselectedColor: unselectedColor,
            #selectedColor: selectedColor,
            #borderColor: borderColor,
            #pressedColor: pressedColor,
            #padding: padding,
          }),
          builder: (args) => _i1.CupertinoSegmentedControl<T>(
            key: args(#key),
            children: args(#children),
            onValueChanged: args(#onValueChanged),
            groupValue: args(#groupValue),
            unselectedColor: args(#unselectedColor),
            selectedColor: args(#selectedColor),
            borderColor: args(#borderColor),
            pressedColor: args(#pressedColor),
            padding: args(#padding),
          ),
        );
}
