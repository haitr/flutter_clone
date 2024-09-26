library rxflutterify_binding; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:ui' as ui;

import 'package:flutter/cupertino.dart' as _i1;
import 'package:flutter/foundation.dart' as _i2;

import '../wrapper.dart';

final class CupertinoSlider extends Wrapper {
  @Goto(_i1.CupertinoSlider.new)
  CupertinoSlider(
    $ $config, {
    _i2.Key? key,
    required double value,
    required _i2.ValueChanged<double>? onChanged,
    _i2.ValueChanged<double>? onChangeStart,
    _i2.ValueChanged<double>? onChangeEnd,
    double min = 0.0,
    double max = 1.0,
    int? divisions,
    ui.Color? activeColor,
    ui.Color thumbColor = _i1.CupertinoColors.white,
  }) : super(
          Argument({
            #key: key,
            #value: value,
            #onChanged: onChanged,
            #onChangeStart: onChangeStart,
            #onChangeEnd: onChangeEnd,
            #min: min,
            #max: max,
            #divisions: divisions,
            #activeColor: activeColor,
            #thumbColor: thumbColor,
          }),
          builder: (args) => _i1.CupertinoSlider(
            key: args(#key),
            value: args(#value),
            onChanged: args(#onChanged),
            onChangeStart: args(#onChangeStart),
            onChangeEnd: args(#onChangeEnd),
            min: args(#min),
            max: args(#max),
            divisions: args(#divisions),
            activeColor: args(#activeColor),
            thumbColor: args(#thumbColor),
          ),
        );
}
