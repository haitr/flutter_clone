library rxflutterify; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:ui' as ui;

import 'package:flutter/foundation.dart' as _i2;
import 'package:flutter/material.dart' as _i1;
import 'package:flutter/painting.dart' as _i4;
import 'package:flutter/widgets.dart' as _i3;

import '../wrapper.dart';

final class NavigationRail extends Wrapper {
  @Goto(_i1.NavigationRail.new)
  NavigationRail({
    _i2.Key? key,
    ui.Color? backgroundColor,
    bool extended = false,
    _i3.Widget? leading,
    _i3.Widget? trailing,
    required List<_i1.NavigationRailDestination> destinations,
    required int? selectedIndex,
    _i2.ValueChanged<int>? onDestinationSelected,
    double? elevation,
    double? groupAlignment,
    _i1.NavigationRailLabelType? labelType,
    _i4.TextStyle? unselectedLabelTextStyle,
    _i4.TextStyle? selectedLabelTextStyle,
    _i3.IconThemeData? unselectedIconTheme,
    _i3.IconThemeData? selectedIconTheme,
    double? minWidth,
    double? minExtendedWidth,
    bool? useIndicator,
    ui.Color? indicatorColor,
    _i4.ShapeBorder? indicatorShape,
    // Associate with key
    Stream<_i2.Key?>? $key,
    // Associate with backgroundColor
    Stream<ui.Color?>? $backgroundColor,
    // Associate with extended
    Stream<bool>? $extended,
    // Associate with leading
    Stream<_i3.Widget?>? $leading,
    // Associate with trailing
    Stream<_i3.Widget?>? $trailing,
    // Associate with destinations
    Stream<List<_i1.NavigationRailDestination>>? $destinations,
    // Associate with selectedIndex
    Stream<int?>? $selectedIndex,
    // Associate with onDestinationSelected
    Stream<_i2.ValueChanged<int>?>? $onDestinationSelected,
    // Associate with elevation
    Stream<double?>? $elevation,
    // Associate with groupAlignment
    Stream<double?>? $groupAlignment,
    // Associate with labelType
    Stream<_i1.NavigationRailLabelType?>? $labelType,
    // Associate with unselectedLabelTextStyle
    Stream<_i4.TextStyle?>? $unselectedLabelTextStyle,
    // Associate with selectedLabelTextStyle
    Stream<_i4.TextStyle?>? $selectedLabelTextStyle,
    // Associate with unselectedIconTheme
    Stream<_i3.IconThemeData?>? $unselectedIconTheme,
    // Associate with selectedIconTheme
    Stream<_i3.IconThemeData?>? $selectedIconTheme,
    // Associate with minWidth
    Stream<double?>? $minWidth,
    // Associate with minExtendedWidth
    Stream<double?>? $minExtendedWidth,
    // Associate with useIndicator
    Stream<bool?>? $useIndicator,
    // Associate with indicatorColor
    Stream<ui.Color?>? $indicatorColor,
    // Associate with indicatorShape
    Stream<_i4.ShapeBorder?>? $indicatorShape,
  }) : super(
          Argument(
            {
              'key': key,
              'backgroundColor': backgroundColor,
              'extended': extended,
              'leading': leading,
              'trailing': trailing,
              'destinations': destinations,
              'selectedIndex': selectedIndex,
              'onDestinationSelected': onDestinationSelected,
              'elevation': elevation,
              'groupAlignment': groupAlignment,
              'labelType': labelType,
              'unselectedLabelTextStyle': unselectedLabelTextStyle,
              'selectedLabelTextStyle': selectedLabelTextStyle,
              'unselectedIconTheme': unselectedIconTheme,
              'selectedIconTheme': selectedIconTheme,
              'minWidth': minWidth,
              'minExtendedWidth': minExtendedWidth,
              'useIndicator': useIndicator,
              'indicatorColor': indicatorColor,
              'indicatorShape': indicatorShape,
            },
            stream: {
              'key': $key,
              'backgroundColor': $backgroundColor,
              'extended': $extended,
              'leading': $leading,
              'trailing': $trailing,
              'destinations': $destinations,
              'selectedIndex': $selectedIndex,
              'onDestinationSelected': $onDestinationSelected,
              'elevation': $elevation,
              'groupAlignment': $groupAlignment,
              'labelType': $labelType,
              'unselectedLabelTextStyle': $unselectedLabelTextStyle,
              'selectedLabelTextStyle': $selectedLabelTextStyle,
              'unselectedIconTheme': $unselectedIconTheme,
              'selectedIconTheme': $selectedIconTheme,
              'minWidth': $minWidth,
              'minExtendedWidth': $minExtendedWidth,
              'useIndicator': $useIndicator,
              'indicatorColor': $indicatorColor,
              'indicatorShape': $indicatorShape,
            },
          ),
          builder: (args) => _i1.NavigationRail(
            key: args('key'),
            backgroundColor: args('backgroundColor'),
            extended: args('extended'),
            leading: args('leading'),
            trailing: args('trailing'),
            destinations: args('destinations'),
            selectedIndex: args('selectedIndex'),
            onDestinationSelected: args('onDestinationSelected'),
            elevation: args('elevation'),
            groupAlignment: args('groupAlignment'),
            labelType: args('labelType'),
            unselectedLabelTextStyle: args('unselectedLabelTextStyle'),
            selectedLabelTextStyle: args('selectedLabelTextStyle'),
            unselectedIconTheme: args('unselectedIconTheme'),
            selectedIconTheme: args('selectedIconTheme'),
            minWidth: args('minWidth'),
            minExtendedWidth: args('minExtendedWidth'),
            useIndicator: args('useIndicator'),
            indicatorColor: args('indicatorColor'),
            indicatorShape: args('indicatorShape'),
          ),
        );
}
