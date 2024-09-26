library rxflutterify; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:ui' as ui;

import 'package:flutter/cupertino.dart' as _i1;
import 'package:flutter/foundation.dart' as _i2;
import 'package:flutter/widgets.dart' as _i3;

import '../wrapper.dart';

final class CupertinoPickerDefaultSelectionOverlay extends Wrapper {
  @Goto(_i1.CupertinoPickerDefaultSelectionOverlay.new)
  CupertinoPickerDefaultSelectionOverlay({
    _i2.Key? key,
    ui.Color background = _i1.CupertinoColors.tertiarySystemFill,
    bool capStartEdge = true,
    bool capEndEdge = true,
    // Associate with key
    Stream<_i2.Key?>? $key,
    // Associate with background
    Stream<ui.Color>? $background,
    // Associate with capStartEdge
    Stream<bool>? $capStartEdge,
    // Associate with capEndEdge
    Stream<bool>? $capEndEdge,
  }) : super(
          Argument(
            {
              'key': key,
              'background': background,
              'capStartEdge': capStartEdge,
              'capEndEdge': capEndEdge,
            },
            stream: {
              'key': $key,
              'background': $background,
              'capStartEdge': $capStartEdge,
              'capEndEdge': $capEndEdge,
            },
          ),
          builder: (args) => _i1.CupertinoPickerDefaultSelectionOverlay(
            key: args('key'),
            background: args('background'),
            capStartEdge: args('capStartEdge'),
            capEndEdge: args('capEndEdge'),
          ),
        );
}

final class CupertinoPicker extends Wrapper {
  @Goto(_i1.CupertinoPicker.new)
  CupertinoPicker({
    _i2.Key? key,
    double diameterRatio = _kDefaultDiameterRatio,
    ui.Color? backgroundColor,
    double offAxisFraction = 0.0,
    bool useMagnifier = false,
    double magnification = 1.0,
    _i3.FixedExtentScrollController? scrollController,
    double squeeze = _kSqueeze,
    required double itemExtent,
    required _i2.ValueChanged<int>? onSelectedItemChanged,
    required List<_i3.Widget> children,
    _i3.Widget? selectionOverlay = const _i1.CupertinoPickerDefaultSelectionOverlay(),
    bool looping = false,
    // Associate with key
    Stream<_i2.Key?>? $key,
    // Associate with diameterRatio
    Stream<double>? $diameterRatio,
    // Associate with backgroundColor
    Stream<ui.Color?>? $backgroundColor,
    // Associate with offAxisFraction
    Stream<double>? $offAxisFraction,
    // Associate with useMagnifier
    Stream<bool>? $useMagnifier,
    // Associate with magnification
    Stream<double>? $magnification,
    // Associate with scrollController
    Stream<_i3.FixedExtentScrollController?>? $scrollController,
    // Associate with squeeze
    Stream<double>? $squeeze,
    // Associate with itemExtent
    Stream<double>? $itemExtent,
    // Associate with onSelectedItemChanged
    Stream<_i2.ValueChanged<int>?>? $onSelectedItemChanged,
    // Associate with children
    Stream<List<_i3.Widget>>? $children,
    // Associate with selectionOverlay
    Stream<_i3.Widget?>? $selectionOverlay,
    // Associate with looping
    Stream<bool>? $looping,
  }) : super(
          Argument(
            {
              'key': key,
              'diameterRatio': diameterRatio,
              'backgroundColor': backgroundColor,
              'offAxisFraction': offAxisFraction,
              'useMagnifier': useMagnifier,
              'magnification': magnification,
              'scrollController': scrollController,
              'squeeze': squeeze,
              'itemExtent': itemExtent,
              'onSelectedItemChanged': onSelectedItemChanged,
              'children': children,
              'selectionOverlay': selectionOverlay,
              'looping': looping,
            },
            stream: {
              'key': $key,
              'diameterRatio': $diameterRatio,
              'backgroundColor': $backgroundColor,
              'offAxisFraction': $offAxisFraction,
              'useMagnifier': $useMagnifier,
              'magnification': $magnification,
              'scrollController': $scrollController,
              'squeeze': $squeeze,
              'itemExtent': $itemExtent,
              'onSelectedItemChanged': $onSelectedItemChanged,
              'children': $children,
              'selectionOverlay': $selectionOverlay,
              'looping': $looping,
            },
          ),
          builder: (args) => _i1.CupertinoPicker(
            key: args('key'),
            diameterRatio: args('diameterRatio'),
            backgroundColor: args('backgroundColor'),
            offAxisFraction: args('offAxisFraction'),
            useMagnifier: args('useMagnifier'),
            magnification: args('magnification'),
            scrollController: args('scrollController'),
            squeeze: args('squeeze'),
            itemExtent: args('itemExtent'),
            onSelectedItemChanged: args('onSelectedItemChanged'),
            children: args('children'),
            selectionOverlay: args('selectionOverlay'),
            looping: args('looping'),
          ),
        );

  @Goto(_i1.CupertinoPicker.builder)
  CupertinoPicker.builder({
    _i2.Key? key,
    double diameterRatio = _kDefaultDiameterRatio,
    ui.Color? backgroundColor,
    double offAxisFraction = 0.0,
    bool useMagnifier = false,
    double magnification = 1.0,
    _i3.FixedExtentScrollController? scrollController,
    double squeeze = _kSqueeze,
    required double itemExtent,
    required _i2.ValueChanged<int>? onSelectedItemChanged,
    required _i3.NullableIndexedWidgetBuilder itemBuilder,
    int? childCount,
    _i3.Widget? selectionOverlay = const _i1.CupertinoPickerDefaultSelectionOverlay(),
    // Associate with key
    Stream<_i2.Key?>? $key,
    // Associate with diameterRatio
    Stream<double>? $diameterRatio,
    // Associate with backgroundColor
    Stream<ui.Color?>? $backgroundColor,
    // Associate with offAxisFraction
    Stream<double>? $offAxisFraction,
    // Associate with useMagnifier
    Stream<bool>? $useMagnifier,
    // Associate with magnification
    Stream<double>? $magnification,
    // Associate with scrollController
    Stream<_i3.FixedExtentScrollController?>? $scrollController,
    // Associate with squeeze
    Stream<double>? $squeeze,
    // Associate with itemExtent
    Stream<double>? $itemExtent,
    // Associate with onSelectedItemChanged
    Stream<_i2.ValueChanged<int>?>? $onSelectedItemChanged,
    // Associate with itemBuilder
    Stream<_i3.NullableIndexedWidgetBuilder>? $itemBuilder,
    // Associate with childCount
    Stream<int?>? $childCount,
    // Associate with selectionOverlay
    Stream<_i3.Widget?>? $selectionOverlay,
  }) : super(
          Argument(
            {
              'key': key,
              'diameterRatio': diameterRatio,
              'backgroundColor': backgroundColor,
              'offAxisFraction': offAxisFraction,
              'useMagnifier': useMagnifier,
              'magnification': magnification,
              'scrollController': scrollController,
              'squeeze': squeeze,
              'itemExtent': itemExtent,
              'onSelectedItemChanged': onSelectedItemChanged,
              'itemBuilder': itemBuilder,
              'childCount': childCount,
              'selectionOverlay': selectionOverlay,
            },
            stream: {
              'key': $key,
              'diameterRatio': $diameterRatio,
              'backgroundColor': $backgroundColor,
              'offAxisFraction': $offAxisFraction,
              'useMagnifier': $useMagnifier,
              'magnification': $magnification,
              'scrollController': $scrollController,
              'squeeze': $squeeze,
              'itemExtent': $itemExtent,
              'onSelectedItemChanged': $onSelectedItemChanged,
              'itemBuilder': $itemBuilder,
              'childCount': $childCount,
              'selectionOverlay': $selectionOverlay,
            },
          ),
          builder: (args) => _i1.CupertinoPicker.builder(
            key: args('key'),
            diameterRatio: args('diameterRatio'),
            backgroundColor: args('backgroundColor'),
            offAxisFraction: args('offAxisFraction'),
            useMagnifier: args('useMagnifier'),
            magnification: args('magnification'),
            scrollController: args('scrollController'),
            squeeze: args('squeeze'),
            itemExtent: args('itemExtent'),
            onSelectedItemChanged: args('onSelectedItemChanged'),
            itemBuilder: args('itemBuilder'),
            childCount: args('childCount'),
            selectionOverlay: args('selectionOverlay'),
          ),
        );
}

const double _kDefaultDiameterRatio = 1.07;
const double _kSqueeze = 1.25;
