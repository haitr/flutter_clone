library rxflutterify; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:ui' as ui;

import 'package:flutter/foundation.dart' as _i2;
import 'package:flutter/material.dart' as _i1;
import 'package:flutter/painting.dart' as _i4;
import 'package:flutter/widgets.dart' as _i3;

import '../wrapper.dart';

final class NavigationDrawer extends Wrapper {
  @Goto(_i1.NavigationDrawer.new)
  NavigationDrawer(
    $ $config, {
    _i2.Key? key,
    required List<_i3.Widget> children,
    ui.Color? backgroundColor,
    ui.Color? shadowColor,
    ui.Color? surfaceTintColor,
    double? elevation,
    ui.Color? indicatorColor,
    _i4.ShapeBorder? indicatorShape,
    _i2.ValueChanged<int>? onDestinationSelected,
    int? selectedIndex = 0,
    _i4.EdgeInsetsGeometry tilePadding = const _i4.EdgeInsets.symmetric(horizontal: 12.0),
  }) : super(
          Argument({
            #key: key,
            #children: children,
            #backgroundColor: backgroundColor,
            #shadowColor: shadowColor,
            #surfaceTintColor: surfaceTintColor,
            #elevation: elevation,
            #indicatorColor: indicatorColor,
            #indicatorShape: indicatorShape,
            #onDestinationSelected: onDestinationSelected,
            #selectedIndex: selectedIndex,
            #tilePadding: tilePadding,
          }),
          builder: (args) => _i1.NavigationDrawer(
            key: args(#key),
            children: args(#children),
            backgroundColor: args(#backgroundColor),
            shadowColor: args(#shadowColor),
            surfaceTintColor: args(#surfaceTintColor),
            elevation: args(#elevation),
            indicatorColor: args(#indicatorColor),
            indicatorShape: args(#indicatorShape),
            onDestinationSelected: args(#onDestinationSelected),
            selectedIndex: args(#selectedIndex),
            tilePadding: args(#tilePadding),
          ),
        );
}

final class NavigationDrawerDestination extends Wrapper {
  @Goto(_i1.NavigationDrawerDestination.new)
  NavigationDrawerDestination(
    $ $config, {
    _i2.Key? key,
    ui.Color? backgroundColor,
    required _i3.Widget icon,
    _i3.Widget? selectedIcon,
    required _i3.Widget label,
    bool enabled = true,
  }) : super(
          Argument({
            #key: key,
            #backgroundColor: backgroundColor,
            #icon: icon,
            #selectedIcon: selectedIcon,
            #label: label,
            #enabled: enabled,
          }),
          builder: (args) => _i1.NavigationDrawerDestination(
            key: args(#key),
            backgroundColor: args(#backgroundColor),
            icon: args(#icon),
            selectedIcon: args(#selectedIcon),
            label: args(#label),
            enabled: args(#enabled),
          ),
        );
}
