library rxflutterify; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:ui' as ui;

import 'package:flutter/cupertino.dart' as _i1;
import 'package:flutter/foundation.dart' as _i2;

import '../wrapper.dart';

final class CupertinoActivityIndicator extends Wrapper {
  @Goto(_i1.CupertinoActivityIndicator.new)
  CupertinoActivityIndicator({
    _i2.Key? key,
    ui.Color? color,
    bool animating = true,
    double radius = _kDefaultIndicatorRadius,
    // Associate with key
    Stream<_i2.Key?>? $key,
    // Associate with color
    Stream<ui.Color?>? $color,
    // Associate with animating
    Stream<bool>? $animating,
    // Associate with radius
    Stream<double>? $radius,
  }) : super(
          Argument(
            {
              'key': key,
              'color': color,
              'animating': animating,
              'radius': radius,
            },
            stream: {
              'key': $key,
              'color': $color,
              'animating': $animating,
              'radius': $radius,
            },
          ),
          builder: (args) => _i1.CupertinoActivityIndicator(
            key: args('key'),
            color: args('color'),
            animating: args('animating'),
            radius: args('radius'),
          ),
        );

  @Goto(_i1.CupertinoActivityIndicator.partiallyRevealed)
  CupertinoActivityIndicator.partiallyRevealed({
    _i2.Key? key,
    ui.Color? color,
    double radius = _kDefaultIndicatorRadius,
    double progress = 1.0,
    // Associate with key
    Stream<_i2.Key?>? $key,
    // Associate with color
    Stream<ui.Color?>? $color,
    // Associate with radius
    Stream<double>? $radius,
    // Associate with progress
    Stream<double>? $progress,
  }) : super(
          Argument(
            {
              'key': key,
              'color': color,
              'radius': radius,
              'progress': progress,
            },
            stream: {
              'key': $key,
              'color': $color,
              'radius': $radius,
              'progress': $progress,
            },
          ),
          builder: (args) => _i1.CupertinoActivityIndicator.partiallyRevealed(
            key: args('key'),
            color: args('color'),
            radius: args('radius'),
            progress: args('progress'),
          ),
        );
}

const double _kDefaultIndicatorRadius = 10.0;
