library rxflutterify_binding; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:ui' as ui;

import 'package:flutter/animation.dart' as _i3;
import 'package:flutter/foundation.dart' as _i2;
import 'package:flutter/material.dart' as _i1;
import 'package:flutter/painting.dart' as _i4;
import 'package:flutter/widgets.dart' as _i5;

import '../wrapper.dart';

final class NavigationIndicator extends Wrapper {
  @Goto(_i1.NavigationIndicator.new)
  NavigationIndicator(
    $ $config, {
    _i2.Key? key,
    required _i3.Animation<double> animation,
    ui.Color? color,
    double width = _kIndicatorWidth,
    double height = _kIndicatorHeight,
    _i4.BorderRadius borderRadius = const _i4.BorderRadius.all(ui.Radius.circular(16)),
    _i4.ShapeBorder? shape,
  }) : super(
          Argument({
            #key: key,
            #animation: animation,
            #color: color,
            #width: width,
            #height: height,
            #borderRadius: borderRadius,
            #shape: shape,
          }),
          builder: (args) => _i1.NavigationIndicator(
            key: args(#key),
            animation: args(#animation),
            color: args(#color),
            width: args(#width),
            height: args(#height),
            borderRadius: args(#borderRadius),
            shape: args(#shape),
          ),
        );
}

final class NavigationBar extends Wrapper {
  @Goto(_i1.NavigationBar.new)
  NavigationBar(
    $ $config, {
    _i2.Key? key,
    Duration? animationDuration,
    int selectedIndex = 0,
    required List<_i5.Widget> destinations,
    _i2.ValueChanged<int>? onDestinationSelected,
    ui.Color? backgroundColor,
    double? elevation,
    ui.Color? shadowColor,
    ui.Color? surfaceTintColor,
    ui.Color? indicatorColor,
    _i4.ShapeBorder? indicatorShape,
    double? height,
    _i1.NavigationDestinationLabelBehavior? labelBehavior,
    _i5.WidgetStateProperty<ui.Color?>? overlayColor,
  }) : super(
          Argument({
            #key: key,
            #animationDuration: animationDuration,
            #selectedIndex: selectedIndex,
            #destinations: destinations,
            #onDestinationSelected: onDestinationSelected,
            #backgroundColor: backgroundColor,
            #elevation: elevation,
            #shadowColor: shadowColor,
            #surfaceTintColor: surfaceTintColor,
            #indicatorColor: indicatorColor,
            #indicatorShape: indicatorShape,
            #height: height,
            #labelBehavior: labelBehavior,
            #overlayColor: overlayColor,
          }),
          builder: (args) => _i1.NavigationBar(
            key: args(#key),
            animationDuration: args(#animationDuration),
            selectedIndex: args(#selectedIndex),
            destinations: args(#destinations),
            onDestinationSelected: args(#onDestinationSelected),
            backgroundColor: args(#backgroundColor),
            elevation: args(#elevation),
            shadowColor: args(#shadowColor),
            surfaceTintColor: args(#surfaceTintColor),
            indicatorColor: args(#indicatorColor),
            indicatorShape: args(#indicatorShape),
            height: args(#height),
            labelBehavior: args(#labelBehavior),
            overlayColor: args(#overlayColor),
          ),
        );
}

final class NavigationDestination extends Wrapper {
  @Goto(_i1.NavigationDestination.new)
  NavigationDestination(
    $ $config, {
    _i2.Key? key,
    required _i5.Widget icon,
    _i5.Widget? selectedIcon,
    required String label,
    String? tooltip,
    bool enabled = true,
  }) : super(
          Argument({
            #key: key,
            #icon: icon,
            #selectedIcon: selectedIcon,
            #label: label,
            #tooltip: tooltip,
            #enabled: enabled,
          }),
          builder: (args) => _i1.NavigationDestination(
            key: args(#key),
            icon: args(#icon),
            selectedIcon: args(#selectedIcon),
            label: args(#label),
            tooltip: args(#tooltip),
            enabled: args(#enabled),
          ),
        );
}

const double _kIndicatorWidth = 64;
const double _kIndicatorHeight = 32;
