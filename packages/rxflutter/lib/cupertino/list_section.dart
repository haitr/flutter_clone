library rxflutter; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:ui' as ui;

import 'package:flutter/cupertino.dart' as _i1;
import 'package:flutter/foundation.dart' as _i2;
import 'package:flutter/painting.dart' as _i4;
import 'package:flutter/widgets.dart' as _i3;

import '../wrapper.dart';

final class CupertinoListSection extends Wrapper {
  @Goto(_i1.CupertinoListSection.new)
  CupertinoListSection({
    _i2.Key? key,
    List<_i3.Widget>? children,
    _i3.Widget? header,
    _i3.Widget? footer,
    _i4.EdgeInsetsGeometry margin = _kDefaultRowsMargin,
    ui.Color backgroundColor = _i1.CupertinoColors.systemGroupedBackground,
    _i4.BoxDecoration? decoration,
    ui.Clip clipBehavior = ui.Clip.none,
    double dividerMargin = _kBaseDividerMargin,
    double? additionalDividerMargin,
    double? topMargin = _kMarginTop,
    bool hasLeading = true,
    ui.Color? separatorColor,
    // Associate with key
    Stream<_i2.Key?>? $key,
    // Associate with children
    Stream<List<_i3.Widget>?>? $children,
    // Associate with header
    Stream<_i3.Widget?>? $header,
    // Associate with footer
    Stream<_i3.Widget?>? $footer,
    // Associate with margin
    Stream<_i4.EdgeInsetsGeometry>? $margin,
    // Associate with backgroundColor
    Stream<ui.Color>? $backgroundColor,
    // Associate with decoration
    Stream<_i4.BoxDecoration?>? $decoration,
    // Associate with clipBehavior
    Stream<ui.Clip>? $clipBehavior,
    // Associate with dividerMargin
    Stream<double>? $dividerMargin,
    // Associate with additionalDividerMargin
    Stream<double?>? $additionalDividerMargin,
    // Associate with topMargin
    Stream<double?>? $topMargin,
    // Associate with hasLeading
    Stream<bool>? $hasLeading,
    // Associate with separatorColor
    Stream<ui.Color?>? $separatorColor,
  }) : super(
          Argument(
            {
              'key': key,
              'children': children,
              'header': header,
              'footer': footer,
              'margin': margin,
              'backgroundColor': backgroundColor,
              'decoration': decoration,
              'clipBehavior': clipBehavior,
              'dividerMargin': dividerMargin,
              'additionalDividerMargin': additionalDividerMargin,
              'topMargin': topMargin,
              'hasLeading': hasLeading,
              'separatorColor': separatorColor,
            },
            stream: {
              'key': $key,
              'children': $children,
              'header': $header,
              'footer': $footer,
              'margin': $margin,
              'backgroundColor': $backgroundColor,
              'decoration': $decoration,
              'clipBehavior': $clipBehavior,
              'dividerMargin': $dividerMargin,
              'additionalDividerMargin': $additionalDividerMargin,
              'topMargin': $topMargin,
              'hasLeading': $hasLeading,
              'separatorColor': $separatorColor,
            },
          ),
          builder: (args) => _i1.CupertinoListSection(
            key: args('key'),
            children: args('children'),
            header: args('header'),
            footer: args('footer'),
            margin: args('margin'),
            backgroundColor: args('backgroundColor'),
            decoration: args('decoration'),
            clipBehavior: args('clipBehavior'),
            dividerMargin: args('dividerMargin'),
            additionalDividerMargin: args('additionalDividerMargin'),
            topMargin: args('topMargin'),
            hasLeading: args('hasLeading'),
            separatorColor: args('separatorColor'),
          ),
        );

  @Goto(_i1.CupertinoListSection.insetGrouped)
  CupertinoListSection.insetGrouped({
    _i2.Key? key,
    List<_i3.Widget>? children,
    _i3.Widget? header,
    _i3.Widget? footer,
    _i4.EdgeInsetsGeometry? margin,
    ui.Color backgroundColor = _i1.CupertinoColors.systemGroupedBackground,
    _i4.BoxDecoration? decoration,
    ui.Clip clipBehavior = ui.Clip.hardEdge,
    double dividerMargin = _kInsetDividerMargin,
    double? additionalDividerMargin,
    double? topMargin,
    bool hasLeading = true,
    ui.Color? separatorColor,
    // Associate with key
    Stream<_i2.Key?>? $key,
    // Associate with children
    Stream<List<_i3.Widget>?>? $children,
    // Associate with header
    Stream<_i3.Widget?>? $header,
    // Associate with footer
    Stream<_i3.Widget?>? $footer,
    // Associate with margin
    Stream<_i4.EdgeInsetsGeometry?>? $margin,
    // Associate with backgroundColor
    Stream<ui.Color>? $backgroundColor,
    // Associate with decoration
    Stream<_i4.BoxDecoration?>? $decoration,
    // Associate with clipBehavior
    Stream<ui.Clip>? $clipBehavior,
    // Associate with dividerMargin
    Stream<double>? $dividerMargin,
    // Associate with additionalDividerMargin
    Stream<double?>? $additionalDividerMargin,
    // Associate with topMargin
    Stream<double?>? $topMargin,
    // Associate with hasLeading
    Stream<bool>? $hasLeading,
    // Associate with separatorColor
    Stream<ui.Color?>? $separatorColor,
  }) : super(
          Argument(
            {
              'key': key,
              'children': children,
              'header': header,
              'footer': footer,
              'margin': margin,
              'backgroundColor': backgroundColor,
              'decoration': decoration,
              'clipBehavior': clipBehavior,
              'dividerMargin': dividerMargin,
              'additionalDividerMargin': additionalDividerMargin,
              'topMargin': topMargin,
              'hasLeading': hasLeading,
              'separatorColor': separatorColor,
            },
            stream: {
              'key': $key,
              'children': $children,
              'header': $header,
              'footer': $footer,
              'margin': $margin,
              'backgroundColor': $backgroundColor,
              'decoration': $decoration,
              'clipBehavior': $clipBehavior,
              'dividerMargin': $dividerMargin,
              'additionalDividerMargin': $additionalDividerMargin,
              'topMargin': $topMargin,
              'hasLeading': $hasLeading,
              'separatorColor': $separatorColor,
            },
          ),
          builder: (args) => _i1.CupertinoListSection.insetGrouped(
            key: args('key'),
            children: args('children'),
            header: args('header'),
            footer: args('footer'),
            margin: args('margin'),
            backgroundColor: args('backgroundColor'),
            decoration: args('decoration'),
            clipBehavior: args('clipBehavior'),
            dividerMargin: args('dividerMargin'),
            additionalDividerMargin: args('additionalDividerMargin'),
            topMargin: args('topMargin'),
            hasLeading: args('hasLeading'),
            separatorColor: args('separatorColor'),
          ),
        );
}

const _i4.EdgeInsets _kDefaultRowsMargin = _i4.EdgeInsets.only(bottom: 8.0);
const double _kBaseDividerMargin = 20.0;
const double _kMarginTop = 22.0;
const double _kInsetDividerMargin = 14.0;
