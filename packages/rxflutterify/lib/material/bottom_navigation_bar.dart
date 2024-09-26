library rxflutterify; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:ui' as ui;

import 'package:flutter/foundation.dart' as _i2;
import 'package:flutter/material.dart' as _i1;
import 'package:flutter/painting.dart' as _i4;
import 'package:flutter/services.dart' as _i5;
import 'package:flutter/widgets.dart' as _i3;

import '../wrapper.dart';

final class BottomNavigationBar extends Wrapper {
  @Goto(_i1.BottomNavigationBar.new)
  BottomNavigationBar({
    _i2.Key? key,
    required List<_i3.BottomNavigationBarItem> items,
    _i2.ValueChanged<int>? onTap,
    int currentIndex = 0,
    double? elevation,
    _i1.BottomNavigationBarType? type,
    ui.Color? fixedColor,
    ui.Color? backgroundColor,
    double iconSize = 24.0,
    ui.Color? selectedItemColor,
    ui.Color? unselectedItemColor,
    _i3.IconThemeData? selectedIconTheme,
    _i3.IconThemeData? unselectedIconTheme,
    double selectedFontSize = 14.0,
    double unselectedFontSize = 12.0,
    _i4.TextStyle? selectedLabelStyle,
    _i4.TextStyle? unselectedLabelStyle,
    bool? showSelectedLabels,
    bool? showUnselectedLabels,
    _i5.MouseCursor? mouseCursor,
    bool? enableFeedback,
    _i1.BottomNavigationBarLandscapeLayout? landscapeLayout,
    bool useLegacyColorScheme = true,
    // Associate with key
    Stream<_i2.Key?>? $key,
    // Associate with items
    Stream<List<_i3.BottomNavigationBarItem>>? $items,
    // Associate with onTap
    Stream<_i2.ValueChanged<int>?>? $onTap,
    // Associate with currentIndex
    Stream<int>? $currentIndex,
    // Associate with elevation
    Stream<double?>? $elevation,
    // Associate with type
    Stream<_i1.BottomNavigationBarType?>? $type,
    // Associate with fixedColor
    Stream<ui.Color?>? $fixedColor,
    // Associate with backgroundColor
    Stream<ui.Color?>? $backgroundColor,
    // Associate with iconSize
    Stream<double>? $iconSize,
    // Associate with selectedItemColor
    Stream<ui.Color?>? $selectedItemColor,
    // Associate with unselectedItemColor
    Stream<ui.Color?>? $unselectedItemColor,
    // Associate with selectedIconTheme
    Stream<_i3.IconThemeData?>? $selectedIconTheme,
    // Associate with unselectedIconTheme
    Stream<_i3.IconThemeData?>? $unselectedIconTheme,
    // Associate with selectedFontSize
    Stream<double>? $selectedFontSize,
    // Associate with unselectedFontSize
    Stream<double>? $unselectedFontSize,
    // Associate with selectedLabelStyle
    Stream<_i4.TextStyle?>? $selectedLabelStyle,
    // Associate with unselectedLabelStyle
    Stream<_i4.TextStyle?>? $unselectedLabelStyle,
    // Associate with showSelectedLabels
    Stream<bool?>? $showSelectedLabels,
    // Associate with showUnselectedLabels
    Stream<bool?>? $showUnselectedLabels,
    // Associate with mouseCursor
    Stream<_i5.MouseCursor?>? $mouseCursor,
    // Associate with enableFeedback
    Stream<bool?>? $enableFeedback,
    // Associate with landscapeLayout
    Stream<_i1.BottomNavigationBarLandscapeLayout?>? $landscapeLayout,
    // Associate with useLegacyColorScheme
    Stream<bool>? $useLegacyColorScheme,
  }) : super(
          Argument(
            {
              'key': key,
              'items': items,
              'onTap': onTap,
              'currentIndex': currentIndex,
              'elevation': elevation,
              'type': type,
              'fixedColor': fixedColor,
              'backgroundColor': backgroundColor,
              'iconSize': iconSize,
              'selectedItemColor': selectedItemColor,
              'unselectedItemColor': unselectedItemColor,
              'selectedIconTheme': selectedIconTheme,
              'unselectedIconTheme': unselectedIconTheme,
              'selectedFontSize': selectedFontSize,
              'unselectedFontSize': unselectedFontSize,
              'selectedLabelStyle': selectedLabelStyle,
              'unselectedLabelStyle': unselectedLabelStyle,
              'showSelectedLabels': showSelectedLabels,
              'showUnselectedLabels': showUnselectedLabels,
              'mouseCursor': mouseCursor,
              'enableFeedback': enableFeedback,
              'landscapeLayout': landscapeLayout,
              'useLegacyColorScheme': useLegacyColorScheme,
            },
            stream: {
              'key': $key,
              'items': $items,
              'onTap': $onTap,
              'currentIndex': $currentIndex,
              'elevation': $elevation,
              'type': $type,
              'fixedColor': $fixedColor,
              'backgroundColor': $backgroundColor,
              'iconSize': $iconSize,
              'selectedItemColor': $selectedItemColor,
              'unselectedItemColor': $unselectedItemColor,
              'selectedIconTheme': $selectedIconTheme,
              'unselectedIconTheme': $unselectedIconTheme,
              'selectedFontSize': $selectedFontSize,
              'unselectedFontSize': $unselectedFontSize,
              'selectedLabelStyle': $selectedLabelStyle,
              'unselectedLabelStyle': $unselectedLabelStyle,
              'showSelectedLabels': $showSelectedLabels,
              'showUnselectedLabels': $showUnselectedLabels,
              'mouseCursor': $mouseCursor,
              'enableFeedback': $enableFeedback,
              'landscapeLayout': $landscapeLayout,
              'useLegacyColorScheme': $useLegacyColorScheme,
            },
          ),
          builder: (args) => _i1.BottomNavigationBar(
            key: args('key'),
            items: args('items'),
            onTap: args('onTap'),
            currentIndex: args('currentIndex'),
            elevation: args('elevation'),
            type: args('type'),
            fixedColor: args('fixedColor'),
            backgroundColor: args('backgroundColor'),
            iconSize: args('iconSize'),
            selectedItemColor: args('selectedItemColor'),
            unselectedItemColor: args('unselectedItemColor'),
            selectedIconTheme: args('selectedIconTheme'),
            unselectedIconTheme: args('unselectedIconTheme'),
            selectedFontSize: args('selectedFontSize'),
            unselectedFontSize: args('unselectedFontSize'),
            selectedLabelStyle: args('selectedLabelStyle'),
            unselectedLabelStyle: args('unselectedLabelStyle'),
            showSelectedLabels: args('showSelectedLabels'),
            showUnselectedLabels: args('showUnselectedLabels'),
            mouseCursor: args('mouseCursor'),
            enableFeedback: args('enableFeedback'),
            landscapeLayout: args('landscapeLayout'),
            useLegacyColorScheme: args('useLegacyColorScheme'),
          ),
        );
}
