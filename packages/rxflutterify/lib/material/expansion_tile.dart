library rxflutterify; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:ui' as ui;

import 'package:flutter/animation.dart' as _i6;
import 'package:flutter/foundation.dart' as _i2;
import 'package:flutter/material.dart' as _i1;
import 'package:flutter/painting.dart' as _i4;
import 'package:flutter/rendering.dart' as _i5;
import 'package:flutter/widgets.dart' as _i3;

import '../wrapper.dart';

final class ExpansionTile extends Wrapper {
  @Goto(_i1.ExpansionTile.new)
  ExpansionTile({
    _i2.Key? key,
    _i3.Widget? leading,
    required _i3.Widget title,
    _i3.Widget? subtitle,
    _i2.ValueChanged<bool>? onExpansionChanged,
    List<_i3.Widget> children = const [],
    _i3.Widget? trailing,
    bool initiallyExpanded = false,
    bool maintainState = false,
    _i4.EdgeInsetsGeometry? tilePadding,
    _i5.CrossAxisAlignment? expandedCrossAxisAlignment,
    _i4.Alignment? expandedAlignment,
    _i4.EdgeInsetsGeometry? childrenPadding,
    ui.Color? backgroundColor,
    ui.Color? collapsedBackgroundColor,
    ui.Color? textColor,
    ui.Color? collapsedTextColor,
    ui.Color? iconColor,
    ui.Color? collapsedIconColor,
    _i4.ShapeBorder? shape,
    _i4.ShapeBorder? collapsedShape,
    ui.Clip? clipBehavior,
    _i1.ListTileControlAffinity? controlAffinity,
    _i1.ExpansionTileController? controller,
    bool? dense,
    _i1.VisualDensity? visualDensity,
    double? minTileHeight,
    bool? enableFeedback = true,
    bool enabled = true,
    _i6.AnimationStyle? expansionAnimationStyle,
    // Associate with key
    Stream<_i2.Key?>? $key,
    // Associate with leading
    Stream<_i3.Widget?>? $leading,
    // Associate with title
    Stream<_i3.Widget>? $title,
    // Associate with subtitle
    Stream<_i3.Widget?>? $subtitle,
    // Associate with onExpansionChanged
    Stream<_i2.ValueChanged<bool>?>? $onExpansionChanged,
    // Associate with children
    Stream<List<_i3.Widget>>? $children,
    // Associate with trailing
    Stream<_i3.Widget?>? $trailing,
    // Associate with initiallyExpanded
    Stream<bool>? $initiallyExpanded,
    // Associate with maintainState
    Stream<bool>? $maintainState,
    // Associate with tilePadding
    Stream<_i4.EdgeInsetsGeometry?>? $tilePadding,
    // Associate with expandedCrossAxisAlignment
    Stream<_i5.CrossAxisAlignment?>? $expandedCrossAxisAlignment,
    // Associate with expandedAlignment
    Stream<_i4.Alignment?>? $expandedAlignment,
    // Associate with childrenPadding
    Stream<_i4.EdgeInsetsGeometry?>? $childrenPadding,
    // Associate with backgroundColor
    Stream<ui.Color?>? $backgroundColor,
    // Associate with collapsedBackgroundColor
    Stream<ui.Color?>? $collapsedBackgroundColor,
    // Associate with textColor
    Stream<ui.Color?>? $textColor,
    // Associate with collapsedTextColor
    Stream<ui.Color?>? $collapsedTextColor,
    // Associate with iconColor
    Stream<ui.Color?>? $iconColor,
    // Associate with collapsedIconColor
    Stream<ui.Color?>? $collapsedIconColor,
    // Associate with shape
    Stream<_i4.ShapeBorder?>? $shape,
    // Associate with collapsedShape
    Stream<_i4.ShapeBorder?>? $collapsedShape,
    // Associate with clipBehavior
    Stream<ui.Clip?>? $clipBehavior,
    // Associate with controlAffinity
    Stream<_i1.ListTileControlAffinity?>? $controlAffinity,
    // Associate with controller
    Stream<_i1.ExpansionTileController?>? $controller,
    // Associate with dense
    Stream<bool?>? $dense,
    // Associate with visualDensity
    Stream<_i1.VisualDensity?>? $visualDensity,
    // Associate with minTileHeight
    Stream<double?>? $minTileHeight,
    // Associate with enableFeedback
    Stream<bool?>? $enableFeedback,
    // Associate with enabled
    Stream<bool>? $enabled,
    // Associate with expansionAnimationStyle
    Stream<_i6.AnimationStyle?>? $expansionAnimationStyle,
  }) : super(
          Argument(
            {
              'key': key,
              'leading': leading,
              'title': title,
              'subtitle': subtitle,
              'onExpansionChanged': onExpansionChanged,
              'children': children,
              'trailing': trailing,
              'initiallyExpanded': initiallyExpanded,
              'maintainState': maintainState,
              'tilePadding': tilePadding,
              'expandedCrossAxisAlignment': expandedCrossAxisAlignment,
              'expandedAlignment': expandedAlignment,
              'childrenPadding': childrenPadding,
              'backgroundColor': backgroundColor,
              'collapsedBackgroundColor': collapsedBackgroundColor,
              'textColor': textColor,
              'collapsedTextColor': collapsedTextColor,
              'iconColor': iconColor,
              'collapsedIconColor': collapsedIconColor,
              'shape': shape,
              'collapsedShape': collapsedShape,
              'clipBehavior': clipBehavior,
              'controlAffinity': controlAffinity,
              'controller': controller,
              'dense': dense,
              'visualDensity': visualDensity,
              'minTileHeight': minTileHeight,
              'enableFeedback': enableFeedback,
              'enabled': enabled,
              'expansionAnimationStyle': expansionAnimationStyle,
            },
            stream: {
              'key': $key,
              'leading': $leading,
              'title': $title,
              'subtitle': $subtitle,
              'onExpansionChanged': $onExpansionChanged,
              'children': $children,
              'trailing': $trailing,
              'initiallyExpanded': $initiallyExpanded,
              'maintainState': $maintainState,
              'tilePadding': $tilePadding,
              'expandedCrossAxisAlignment': $expandedCrossAxisAlignment,
              'expandedAlignment': $expandedAlignment,
              'childrenPadding': $childrenPadding,
              'backgroundColor': $backgroundColor,
              'collapsedBackgroundColor': $collapsedBackgroundColor,
              'textColor': $textColor,
              'collapsedTextColor': $collapsedTextColor,
              'iconColor': $iconColor,
              'collapsedIconColor': $collapsedIconColor,
              'shape': $shape,
              'collapsedShape': $collapsedShape,
              'clipBehavior': $clipBehavior,
              'controlAffinity': $controlAffinity,
              'controller': $controller,
              'dense': $dense,
              'visualDensity': $visualDensity,
              'minTileHeight': $minTileHeight,
              'enableFeedback': $enableFeedback,
              'enabled': $enabled,
              'expansionAnimationStyle': $expansionAnimationStyle,
            },
          ),
          builder: (args) => _i1.ExpansionTile(
            key: args('key'),
            leading: args('leading'),
            title: args('title'),
            subtitle: args('subtitle'),
            onExpansionChanged: args('onExpansionChanged'),
            children: args('children'),
            trailing: args('trailing'),
            initiallyExpanded: args('initiallyExpanded'),
            maintainState: args('maintainState'),
            tilePadding: args('tilePadding'),
            expandedCrossAxisAlignment: args('expandedCrossAxisAlignment'),
            expandedAlignment: args('expandedAlignment'),
            childrenPadding: args('childrenPadding'),
            backgroundColor: args('backgroundColor'),
            collapsedBackgroundColor: args('collapsedBackgroundColor'),
            textColor: args('textColor'),
            collapsedTextColor: args('collapsedTextColor'),
            iconColor: args('iconColor'),
            collapsedIconColor: args('collapsedIconColor'),
            shape: args('shape'),
            collapsedShape: args('collapsedShape'),
            clipBehavior: args('clipBehavior'),
            controlAffinity: args('controlAffinity'),
            controller: args('controller'),
            dense: args('dense'),
            visualDensity: args('visualDensity'),
            minTileHeight: args('minTileHeight'),
            enableFeedback: args('enableFeedback'),
            enabled: args('enabled'),
            expansionAnimationStyle: args('expansionAnimationStyle'),
          ),
        );
}
