library rxflutterify_binding; // ignore_for_file: no_leading_underscores_for_library_prefixes

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
  ExpansionTile(
    $ $config, {
    _i2.Key? key,
    _i3.Widget? leading,
    required _i3.Widget title,
    _i3.Widget? subtitle,
    _i2.ValueChanged<bool>? onExpansionChanged,
    List<_i3.Widget> children = const [],
    _i3.Widget? trailing,
    bool showTrailingIcon = true,
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
  }) : super(
          Argument({
            #key: key,
            #leading: leading,
            #title: title,
            #subtitle: subtitle,
            #onExpansionChanged: onExpansionChanged,
            #children: children,
            #trailing: trailing,
            #showTrailingIcon: showTrailingIcon,
            #initiallyExpanded: initiallyExpanded,
            #maintainState: maintainState,
            #tilePadding: tilePadding,
            #expandedCrossAxisAlignment: expandedCrossAxisAlignment,
            #expandedAlignment: expandedAlignment,
            #childrenPadding: childrenPadding,
            #backgroundColor: backgroundColor,
            #collapsedBackgroundColor: collapsedBackgroundColor,
            #textColor: textColor,
            #collapsedTextColor: collapsedTextColor,
            #iconColor: iconColor,
            #collapsedIconColor: collapsedIconColor,
            #shape: shape,
            #collapsedShape: collapsedShape,
            #clipBehavior: clipBehavior,
            #controlAffinity: controlAffinity,
            #controller: controller,
            #dense: dense,
            #visualDensity: visualDensity,
            #minTileHeight: minTileHeight,
            #enableFeedback: enableFeedback,
            #enabled: enabled,
            #expansionAnimationStyle: expansionAnimationStyle,
          }),
          builder: (args) => _i1.ExpansionTile(
            key: args(#key),
            leading: args(#leading),
            title: args(#title),
            subtitle: args(#subtitle),
            onExpansionChanged: args(#onExpansionChanged),
            children: args(#children),
            trailing: args(#trailing),
            showTrailingIcon: args(#showTrailingIcon),
            initiallyExpanded: args(#initiallyExpanded),
            maintainState: args(#maintainState),
            tilePadding: args(#tilePadding),
            expandedCrossAxisAlignment: args(#expandedCrossAxisAlignment),
            expandedAlignment: args(#expandedAlignment),
            childrenPadding: args(#childrenPadding),
            backgroundColor: args(#backgroundColor),
            collapsedBackgroundColor: args(#collapsedBackgroundColor),
            textColor: args(#textColor),
            collapsedTextColor: args(#collapsedTextColor),
            iconColor: args(#iconColor),
            collapsedIconColor: args(#collapsedIconColor),
            shape: args(#shape),
            collapsedShape: args(#collapsedShape),
            clipBehavior: args(#clipBehavior),
            controlAffinity: args(#controlAffinity),
            controller: args(#controller),
            dense: args(#dense),
            visualDensity: args(#visualDensity),
            minTileHeight: args(#minTileHeight),
            enableFeedback: args(#enableFeedback),
            enabled: args(#enabled),
            expansionAnimationStyle: args(#expansionAnimationStyle),
          ),
        );
}
