library rxflutterify_binding; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:ui' as ui;

import 'package:flutter/cupertino.dart' as _i1;
import 'package:flutter/foundation.dart' as _i2;
import 'package:flutter/painting.dart' as _i4;
import 'package:flutter/widgets.dart' as _i3;

import '../wrapper.dart';

final class CupertinoFormSection extends Wrapper {
  @Goto(_i1.CupertinoFormSection.new)
  CupertinoFormSection(
    $ $config, {
    _i2.Key? key,
    required List<_i3.Widget> children,
    _i3.Widget? header,
    _i3.Widget? footer,
    _i4.EdgeInsetsGeometry margin = _i4.EdgeInsets.zero,
    ui.Color backgroundColor = _i1.CupertinoColors.systemGroupedBackground,
    _i4.BoxDecoration? decoration,
    ui.Clip clipBehavior = ui.Clip.none,
  }) : super(
          Argument({
            #key: key,
            #children: children,
            #header: header,
            #footer: footer,
            #margin: margin,
            #backgroundColor: backgroundColor,
            #decoration: decoration,
            #clipBehavior: clipBehavior,
          }),
          builder: (args) => _i1.CupertinoFormSection(
            key: args(#key),
            children: args(#children),
            header: args(#header),
            footer: args(#footer),
            margin: args(#margin),
            backgroundColor: args(#backgroundColor),
            decoration: args(#decoration),
            clipBehavior: args(#clipBehavior),
          ),
        );

  @Goto(_i1.CupertinoFormSection.insetGrouped)
  CupertinoFormSection.insetGrouped(
    $ $config, {
    _i2.Key? key,
    required List<_i3.Widget> children,
    _i3.Widget? header,
    _i3.Widget? footer,
    _i4.EdgeInsetsGeometry margin = _kFormDefaultInsetGroupedRowsMargin,
    ui.Color backgroundColor = _i1.CupertinoColors.systemGroupedBackground,
    _i4.BoxDecoration? decoration,
    ui.Clip clipBehavior = ui.Clip.none,
  }) : super(
          Argument({
            #key: key,
            #children: children,
            #header: header,
            #footer: footer,
            #margin: margin,
            #backgroundColor: backgroundColor,
            #decoration: decoration,
            #clipBehavior: clipBehavior,
          }),
          builder: (args) => _i1.CupertinoFormSection.insetGrouped(
            key: args(#key),
            children: args(#children),
            header: args(#header),
            footer: args(#footer),
            margin: args(#margin),
            backgroundColor: args(#backgroundColor),
            decoration: args(#decoration),
            clipBehavior: args(#clipBehavior),
          ),
        );
}

const _i4.EdgeInsetsDirectional _kFormDefaultInsetGroupedRowsMargin = _i4.EdgeInsetsDirectional.fromSTEB(
  20.0,
  0.0,
  20.0,
  10.0,
);
