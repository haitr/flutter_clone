library rxflutterify_binding; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:ui' as ui;

import 'package:flutter/foundation.dart' as _i2;
import 'package:flutter/material.dart' as _i1;
import 'package:flutter/painting.dart' as _i3;

import '../wrapper.dart';

final class ExpansionPanelList extends Wrapper {
  @Goto(_i1.ExpansionPanelList.new)
  ExpansionPanelList(
    $ $config, {
    _i2.Key? key,
    List<_i1.ExpansionPanel> children = const [],
    _i1.ExpansionPanelCallback? expansionCallback,
    Duration animationDuration = _i1.kThemeAnimationDuration,
    _i3.EdgeInsets expandedHeaderPadding = _kPanelHeaderExpandedDefaultPadding,
    ui.Color? dividerColor,
    double elevation = 2,
    ui.Color? expandIconColor,
    double materialGapSize = 16.0,
  }) : super(
          Argument({
            #key: key,
            #children: children,
            #expansionCallback: expansionCallback,
            #animationDuration: animationDuration,
            #expandedHeaderPadding: expandedHeaderPadding,
            #dividerColor: dividerColor,
            #elevation: elevation,
            #expandIconColor: expandIconColor,
            #materialGapSize: materialGapSize,
          }),
          builder: (args) => _i1.ExpansionPanelList(
            key: args(#key),
            children: args(#children),
            expansionCallback: args(#expansionCallback),
            animationDuration: args(#animationDuration),
            expandedHeaderPadding: args(#expandedHeaderPadding),
            dividerColor: args(#dividerColor),
            elevation: args(#elevation),
            expandIconColor: args(#expandIconColor),
            materialGapSize: args(#materialGapSize),
          ),
        );

  @Goto(_i1.ExpansionPanelList.radio)
  ExpansionPanelList.radio(
    $ $config, {
    _i2.Key? key,
    List<_i1.ExpansionPanel> children = const [],
    _i1.ExpansionPanelCallback? expansionCallback,
    Duration animationDuration = _i1.kThemeAnimationDuration,
    Object? initialOpenPanelValue,
    _i3.EdgeInsets expandedHeaderPadding = _kPanelHeaderExpandedDefaultPadding,
    ui.Color? dividerColor,
    double elevation = 2,
    ui.Color? expandIconColor,
    double materialGapSize = 16.0,
  }) : super(
          Argument({
            #key: key,
            #children: children,
            #expansionCallback: expansionCallback,
            #animationDuration: animationDuration,
            #initialOpenPanelValue: initialOpenPanelValue,
            #expandedHeaderPadding: expandedHeaderPadding,
            #dividerColor: dividerColor,
            #elevation: elevation,
            #expandIconColor: expandIconColor,
            #materialGapSize: materialGapSize,
          }),
          builder: (args) => _i1.ExpansionPanelList.radio(
            key: args(#key),
            children: args(#children),
            expansionCallback: args(#expansionCallback),
            animationDuration: args(#animationDuration),
            initialOpenPanelValue: args(#initialOpenPanelValue),
            expandedHeaderPadding: args(#expandedHeaderPadding),
            dividerColor: args(#dividerColor),
            elevation: args(#elevation),
            expandIconColor: args(#expandIconColor),
            materialGapSize: args(#materialGapSize),
          ),
        );
}

const _i3.EdgeInsets _kPanelHeaderExpandedDefaultPadding = _i3.EdgeInsets.symmetric(vertical: 64.0 - _kPanelHeaderCollapsedHeight);
const double _kPanelHeaderCollapsedHeight = _i1.kMinInteractiveDimension;
