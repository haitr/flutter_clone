library rxflutterify; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:ui' as ui;

import 'package:flutter/foundation.dart' as _i2;
import 'package:flutter/gestures.dart' as _i6;
import 'package:flutter/material.dart' as _i1;
import 'package:flutter/painting.dart' as _i3;
import 'package:flutter/rendering.dart' as _i5;
import 'package:flutter/services.dart' as _i7;
import 'package:flutter/widgets.dart' as _i4;

import '../wrapper.dart';

final class DataTable extends Wrapper {
  @Goto(_i1.DataTable.new)
  DataTable({
    _i2.Key? key,
    required List<_i1.DataColumn> columns,
    int? sortColumnIndex,
    bool sortAscending = true,
    _i2.ValueSetter<bool?>? onSelectAll,
    _i3.Decoration? decoration,
    _i4.WidgetStateProperty<ui.Color?>? dataRowColor,
    double? dataRowHeight,
    double? dataRowMinHeight,
    double? dataRowMaxHeight,
    _i3.TextStyle? dataTextStyle,
    _i4.WidgetStateProperty<ui.Color?>? headingRowColor,
    double? headingRowHeight,
    _i3.TextStyle? headingTextStyle,
    double? horizontalMargin,
    double? columnSpacing,
    bool showCheckboxColumn = true,
    bool showBottomBorder = false,
    double? dividerThickness,
    required List<_i1.DataRow> rows,
    double? checkboxHorizontalMargin,
    _i5.TableBorder? border,
    ui.Clip clipBehavior = ui.Clip.none,
    // Associate with key
    Stream<_i2.Key?>? $key,
    // Associate with columns
    Stream<List<_i1.DataColumn>>? $columns,
    // Associate with sortColumnIndex
    Stream<int?>? $sortColumnIndex,
    // Associate with sortAscending
    Stream<bool>? $sortAscending,
    // Associate with onSelectAll
    Stream<_i2.ValueSetter<bool?>?>? $onSelectAll,
    // Associate with decoration
    Stream<_i3.Decoration?>? $decoration,
    // Associate with dataRowColor
    Stream<_i4.WidgetStateProperty<ui.Color?>?>? $dataRowColor,
    // Associate with dataRowHeight
    Stream<double?>? $dataRowHeight,
    // Associate with dataRowMinHeight
    Stream<double?>? $dataRowMinHeight,
    // Associate with dataRowMaxHeight
    Stream<double?>? $dataRowMaxHeight,
    // Associate with dataTextStyle
    Stream<_i3.TextStyle?>? $dataTextStyle,
    // Associate with headingRowColor
    Stream<_i4.WidgetStateProperty<ui.Color?>?>? $headingRowColor,
    // Associate with headingRowHeight
    Stream<double?>? $headingRowHeight,
    // Associate with headingTextStyle
    Stream<_i3.TextStyle?>? $headingTextStyle,
    // Associate with horizontalMargin
    Stream<double?>? $horizontalMargin,
    // Associate with columnSpacing
    Stream<double?>? $columnSpacing,
    // Associate with showCheckboxColumn
    Stream<bool>? $showCheckboxColumn,
    // Associate with showBottomBorder
    Stream<bool>? $showBottomBorder,
    // Associate with dividerThickness
    Stream<double?>? $dividerThickness,
    // Associate with rows
    Stream<List<_i1.DataRow>>? $rows,
    // Associate with checkboxHorizontalMargin
    Stream<double?>? $checkboxHorizontalMargin,
    // Associate with border
    Stream<_i5.TableBorder?>? $border,
    // Associate with clipBehavior
    Stream<ui.Clip>? $clipBehavior,
  }) : super(
          Argument(
            {
              'key': key,
              'columns': columns,
              'sortColumnIndex': sortColumnIndex,
              'sortAscending': sortAscending,
              'onSelectAll': onSelectAll,
              'decoration': decoration,
              'dataRowColor': dataRowColor,
              'dataRowHeight': dataRowHeight,
              'dataRowMinHeight': dataRowMinHeight,
              'dataRowMaxHeight': dataRowMaxHeight,
              'dataTextStyle': dataTextStyle,
              'headingRowColor': headingRowColor,
              'headingRowHeight': headingRowHeight,
              'headingTextStyle': headingTextStyle,
              'horizontalMargin': horizontalMargin,
              'columnSpacing': columnSpacing,
              'showCheckboxColumn': showCheckboxColumn,
              'showBottomBorder': showBottomBorder,
              'dividerThickness': dividerThickness,
              'rows': rows,
              'checkboxHorizontalMargin': checkboxHorizontalMargin,
              'border': border,
              'clipBehavior': clipBehavior,
            },
            stream: {
              'key': $key,
              'columns': $columns,
              'sortColumnIndex': $sortColumnIndex,
              'sortAscending': $sortAscending,
              'onSelectAll': $onSelectAll,
              'decoration': $decoration,
              'dataRowColor': $dataRowColor,
              'dataRowHeight': $dataRowHeight,
              'dataRowMinHeight': $dataRowMinHeight,
              'dataRowMaxHeight': $dataRowMaxHeight,
              'dataTextStyle': $dataTextStyle,
              'headingRowColor': $headingRowColor,
              'headingRowHeight': $headingRowHeight,
              'headingTextStyle': $headingTextStyle,
              'horizontalMargin': $horizontalMargin,
              'columnSpacing': $columnSpacing,
              'showCheckboxColumn': $showCheckboxColumn,
              'showBottomBorder': $showBottomBorder,
              'dividerThickness': $dividerThickness,
              'rows': $rows,
              'checkboxHorizontalMargin': $checkboxHorizontalMargin,
              'border': $border,
              'clipBehavior': $clipBehavior,
            },
          ),
          builder: (args) => _i1.DataTable(
            key: args('key'),
            columns: args('columns'),
            sortColumnIndex: args('sortColumnIndex'),
            sortAscending: args('sortAscending'),
            onSelectAll: args('onSelectAll'),
            decoration: args('decoration'),
            dataRowColor: args('dataRowColor'),
            dataRowHeight: args('dataRowHeight'),
            dataRowMinHeight: args('dataRowMinHeight'),
            dataRowMaxHeight: args('dataRowMaxHeight'),
            dataTextStyle: args('dataTextStyle'),
            headingRowColor: args('headingRowColor'),
            headingRowHeight: args('headingRowHeight'),
            headingTextStyle: args('headingTextStyle'),
            horizontalMargin: args('horizontalMargin'),
            columnSpacing: args('columnSpacing'),
            showCheckboxColumn: args('showCheckboxColumn'),
            showBottomBorder: args('showBottomBorder'),
            dividerThickness: args('dividerThickness'),
            rows: args('rows'),
            checkboxHorizontalMargin: args('checkboxHorizontalMargin'),
            border: args('border'),
            clipBehavior: args('clipBehavior'),
          ),
        );
}

final class TableRowInkWell extends Wrapper {
  @Goto(_i1.TableRowInkWell.new)
  TableRowInkWell({
    _i2.Key? key,
    _i4.Widget? child,
    _i6.GestureTapCallback? onTap,
    _i6.GestureTapCallback? onDoubleTap,
    _i6.GestureLongPressCallback? onLongPress,
    _i2.ValueChanged<bool>? onHighlightChanged,
    _i6.GestureTapCallback? onSecondaryTap,
    _i6.GestureTapDownCallback? onSecondaryTapDown,
    _i4.WidgetStateProperty<ui.Color?>? overlayColor,
    _i7.MouseCursor? mouseCursor,
    // Associate with key
    Stream<_i2.Key?>? $key,
    // Associate with child
    Stream<_i4.Widget?>? $child,
    // Associate with onTap
    Stream<_i6.GestureTapCallback?>? $onTap,
    // Associate with onDoubleTap
    Stream<_i6.GestureTapCallback?>? $onDoubleTap,
    // Associate with onLongPress
    Stream<_i6.GestureLongPressCallback?>? $onLongPress,
    // Associate with onHighlightChanged
    Stream<_i2.ValueChanged<bool>?>? $onHighlightChanged,
    // Associate with onSecondaryTap
    Stream<_i6.GestureTapCallback?>? $onSecondaryTap,
    // Associate with onSecondaryTapDown
    Stream<_i6.GestureTapDownCallback?>? $onSecondaryTapDown,
    // Associate with overlayColor
    Stream<_i4.WidgetStateProperty<ui.Color?>?>? $overlayColor,
    // Associate with mouseCursor
    Stream<_i7.MouseCursor?>? $mouseCursor,
  }) : super(
          Argument(
            {
              'key': key,
              'child': child,
              'onTap': onTap,
              'onDoubleTap': onDoubleTap,
              'onLongPress': onLongPress,
              'onHighlightChanged': onHighlightChanged,
              'onSecondaryTap': onSecondaryTap,
              'onSecondaryTapDown': onSecondaryTapDown,
              'overlayColor': overlayColor,
              'mouseCursor': mouseCursor,
            },
            stream: {
              'key': $key,
              'child': $child,
              'onTap': $onTap,
              'onDoubleTap': $onDoubleTap,
              'onLongPress': $onLongPress,
              'onHighlightChanged': $onHighlightChanged,
              'onSecondaryTap': $onSecondaryTap,
              'onSecondaryTapDown': $onSecondaryTapDown,
              'overlayColor': $overlayColor,
              'mouseCursor': $mouseCursor,
            },
          ),
          builder: (args) => _i1.TableRowInkWell(
            key: args('key'),
            child: args('child'),
            onTap: args('onTap'),
            onDoubleTap: args('onDoubleTap'),
            onLongPress: args('onLongPress'),
            onHighlightChanged: args('onHighlightChanged'),
            onSecondaryTap: args('onSecondaryTap'),
            onSecondaryTapDown: args('onSecondaryTapDown'),
            overlayColor: args('overlayColor'),
            mouseCursor: args('mouseCursor'),
          ),
        );
}
