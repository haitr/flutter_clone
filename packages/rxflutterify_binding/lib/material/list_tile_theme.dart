library rxflutterify_binding; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:ui' as ui;

import 'package:flutter/foundation.dart' as _i2;
import 'package:flutter/material.dart' as _i1;
import 'package:flutter/painting.dart' as _i3;
import 'package:flutter/services.dart' as _i5;
import 'package:flutter/widgets.dart' as _i4;

import '../wrapper.dart';

final class ListTileTheme extends Wrapper {
  @Goto(_i1.ListTileTheme.new)
  ListTileTheme(
    $ $config, {
    _i2.Key? key,
    _i1.ListTileThemeData? data,
    bool? dense,
    _i3.ShapeBorder? shape,
    _i1.ListTileStyle? style,
    ui.Color? selectedColor,
    ui.Color? iconColor,
    ui.Color? textColor,
    _i3.EdgeInsetsGeometry? contentPadding,
    ui.Color? tileColor,
    ui.Color? selectedTileColor,
    bool? enableFeedback,
    _i4.WidgetStateProperty<_i5.MouseCursor?>? mouseCursor,
    double? horizontalTitleGap,
    double? minVerticalPadding,
    double? minLeadingWidth,
    required _i4.Widget child,
  }) : super(
          Argument({
            #key: key,
            #data: data,
            #dense: dense,
            #shape: shape,
            #style: style,
            #selectedColor: selectedColor,
            #iconColor: iconColor,
            #textColor: textColor,
            #contentPadding: contentPadding,
            #tileColor: tileColor,
            #selectedTileColor: selectedTileColor,
            #enableFeedback: enableFeedback,
            #mouseCursor: mouseCursor,
            #horizontalTitleGap: horizontalTitleGap,
            #minVerticalPadding: minVerticalPadding,
            #minLeadingWidth: minLeadingWidth,
            #child: child,
          }),
          builder: (args) => _i1.ListTileTheme(
            key: args(#key),
            data: args(#data),
            dense: args(#dense),
            shape: args(#shape),
            style: args(#style),
            selectedColor: args(#selectedColor),
            iconColor: args(#iconColor),
            textColor: args(#textColor),
            contentPadding: args(#contentPadding),
            tileColor: args(#tileColor),
            selectedTileColor: args(#selectedTileColor),
            enableFeedback: args(#enableFeedback),
            mouseCursor: args(#mouseCursor),
            horizontalTitleGap: args(#horizontalTitleGap),
            minVerticalPadding: args(#minVerticalPadding),
            minLeadingWidth: args(#minLeadingWidth),
            child: args(#child),
          ),
        );
}
