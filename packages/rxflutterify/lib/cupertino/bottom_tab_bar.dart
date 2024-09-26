library rxflutterify; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:ui' as ui;

import 'package:flutter/cupertino.dart' as _i1;
import 'package:flutter/foundation.dart' as _i2;
import 'package:flutter/painting.dart' as _i4;
import 'package:flutter/widgets.dart' as _i3;

import '../wrapper.dart';

final class CupertinoTabBar extends Wrapper {
  @Goto(_i1.CupertinoTabBar.new)
  CupertinoTabBar({
    _i2.Key? key,
    required List<_i3.BottomNavigationBarItem> items,
    _i2.ValueChanged<int>? onTap,
    int currentIndex = 0,
    ui.Color? backgroundColor,
    ui.Color? activeColor,
    ui.Color inactiveColor = _kDefaultTabBarInactiveColor,
    double iconSize = 30.0,
    double height = _kTabBarHeight,
    _i4.Border? border = const _i4.Border(
        top: _i4.BorderSide(
      color: _kDefaultTabBarBorderColor,
      width: 0.0,
    )),
    // Associate with key
    Stream<_i2.Key?>? $key,
    // Associate with items
    Stream<List<_i3.BottomNavigationBarItem>>? $items,
    // Associate with onTap
    Stream<_i2.ValueChanged<int>?>? $onTap,
    // Associate with currentIndex
    Stream<int>? $currentIndex,
    // Associate with backgroundColor
    Stream<ui.Color?>? $backgroundColor,
    // Associate with activeColor
    Stream<ui.Color?>? $activeColor,
    // Associate with inactiveColor
    Stream<ui.Color>? $inactiveColor,
    // Associate with iconSize
    Stream<double>? $iconSize,
    // Associate with height
    Stream<double>? $height,
    // Associate with border
    Stream<_i4.Border?>? $border,
  }) : super(
          Argument(
            {
              'key': key,
              'items': items,
              'onTap': onTap,
              'currentIndex': currentIndex,
              'backgroundColor': backgroundColor,
              'activeColor': activeColor,
              'inactiveColor': inactiveColor,
              'iconSize': iconSize,
              'height': height,
              'border': border,
            },
            stream: {
              'key': $key,
              'items': $items,
              'onTap': $onTap,
              'currentIndex': $currentIndex,
              'backgroundColor': $backgroundColor,
              'activeColor': $activeColor,
              'inactiveColor': $inactiveColor,
              'iconSize': $iconSize,
              'height': $height,
              'border': $border,
            },
          ),
          builder: (args) => _i1.CupertinoTabBar(
            key: args('key'),
            items: args('items'),
            onTap: args('onTap'),
            currentIndex: args('currentIndex'),
            backgroundColor: args('backgroundColor'),
            activeColor: args('activeColor'),
            inactiveColor: args('inactiveColor'),
            iconSize: args('iconSize'),
            height: args('height'),
            border: args('border'),
          ),
        );
}

const ui.Color _kDefaultTabBarInactiveColor = _i1.CupertinoColors.inactiveGray;
const double _kTabBarHeight = 50.0;
const ui.Color _kDefaultTabBarBorderColor = _i1.CupertinoDynamicColor.withBrightness(
  color: ui.Color(0x4D000000),
  darkColor: ui.Color(0x29000000),
);
