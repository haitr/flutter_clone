library rxflutterify; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:ui' as ui;

import 'package:flutter/foundation.dart' as _i2;
import 'package:flutter/gestures.dart' as _i4;
import 'package:flutter/material.dart' as _i1;
import 'package:flutter/widgets.dart' as _i3;

import '../wrapper.dart';

final class PaginatedDataTable extends Wrapper {
  @Goto(_i1.PaginatedDataTable.new)
  PaginatedDataTable({
    _i2.Key? key,
    _i3.Widget? header,
    List<_i3.Widget>? actions,
    required List<_i1.DataColumn> columns,
    int? sortColumnIndex,
    bool sortAscending = true,
    _i2.ValueSetter<bool?>? onSelectAll,
    double? dataRowHeight,
    double? dataRowMinHeight,
    double? dataRowMaxHeight,
    double headingRowHeight = 56.0,
    double horizontalMargin = 24.0,
    double columnSpacing = 56.0,
    bool showCheckboxColumn = true,
    bool showFirstLastButtons = false,
    int? initialFirstRowIndex = 0,
    _i2.ValueChanged<int>? onPageChanged,
    int rowsPerPage = _i1.PaginatedDataTable.defaultRowsPerPage,
    List<int> availableRowsPerPage = const [
      _i1.PaginatedDataTable.defaultRowsPerPage,
      _i1.PaginatedDataTable.defaultRowsPerPage * 2,
      _i1.PaginatedDataTable.defaultRowsPerPage * 5,
      _i1.PaginatedDataTable.defaultRowsPerPage * 10,
    ],
    _i2.ValueChanged<int?>? onRowsPerPageChanged,
    _i4.DragStartBehavior dragStartBehavior = _i4.DragStartBehavior.start,
    ui.Color? arrowHeadColor,
    required _i1.DataTableSource source,
    double? checkboxHorizontalMargin,
    _i3.ScrollController? controller,
    bool? primary,
    _i3.WidgetStateProperty<ui.Color?>? headingRowColor,
    bool showEmptyRows = true,
    // Associate with key
    Stream<_i2.Key?>? $key,
    // Associate with header
    Stream<_i3.Widget?>? $header,
    // Associate with actions
    Stream<List<_i3.Widget>?>? $actions,
    // Associate with columns
    Stream<List<_i1.DataColumn>>? $columns,
    // Associate with sortColumnIndex
    Stream<int?>? $sortColumnIndex,
    // Associate with sortAscending
    Stream<bool>? $sortAscending,
    // Associate with onSelectAll
    Stream<_i2.ValueSetter<bool?>?>? $onSelectAll,
    // Associate with dataRowHeight
    Stream<double?>? $dataRowHeight,
    // Associate with dataRowMinHeight
    Stream<double?>? $dataRowMinHeight,
    // Associate with dataRowMaxHeight
    Stream<double?>? $dataRowMaxHeight,
    // Associate with headingRowHeight
    Stream<double>? $headingRowHeight,
    // Associate with horizontalMargin
    Stream<double>? $horizontalMargin,
    // Associate with columnSpacing
    Stream<double>? $columnSpacing,
    // Associate with showCheckboxColumn
    Stream<bool>? $showCheckboxColumn,
    // Associate with showFirstLastButtons
    Stream<bool>? $showFirstLastButtons,
    // Associate with initialFirstRowIndex
    Stream<int?>? $initialFirstRowIndex,
    // Associate with onPageChanged
    Stream<_i2.ValueChanged<int>?>? $onPageChanged,
    // Associate with rowsPerPage
    Stream<int>? $rowsPerPage,
    // Associate with availableRowsPerPage
    Stream<List<int>>? $availableRowsPerPage,
    // Associate with onRowsPerPageChanged
    Stream<_i2.ValueChanged<int?>?>? $onRowsPerPageChanged,
    // Associate with dragStartBehavior
    Stream<_i4.DragStartBehavior>? $dragStartBehavior,
    // Associate with arrowHeadColor
    Stream<ui.Color?>? $arrowHeadColor,
    // Associate with source
    Stream<_i1.DataTableSource>? $source,
    // Associate with checkboxHorizontalMargin
    Stream<double?>? $checkboxHorizontalMargin,
    // Associate with controller
    Stream<_i3.ScrollController?>? $controller,
    // Associate with primary
    Stream<bool?>? $primary,
    // Associate with headingRowColor
    Stream<_i3.WidgetStateProperty<ui.Color?>?>? $headingRowColor,
    // Associate with showEmptyRows
    Stream<bool>? $showEmptyRows,
  }) : super(
          Argument(
            {
              'key': key,
              'header': header,
              'actions': actions,
              'columns': columns,
              'sortColumnIndex': sortColumnIndex,
              'sortAscending': sortAscending,
              'onSelectAll': onSelectAll,
              'dataRowHeight': dataRowHeight,
              'dataRowMinHeight': dataRowMinHeight,
              'dataRowMaxHeight': dataRowMaxHeight,
              'headingRowHeight': headingRowHeight,
              'horizontalMargin': horizontalMargin,
              'columnSpacing': columnSpacing,
              'showCheckboxColumn': showCheckboxColumn,
              'showFirstLastButtons': showFirstLastButtons,
              'initialFirstRowIndex': initialFirstRowIndex,
              'onPageChanged': onPageChanged,
              'rowsPerPage': rowsPerPage,
              'availableRowsPerPage': availableRowsPerPage,
              'onRowsPerPageChanged': onRowsPerPageChanged,
              'dragStartBehavior': dragStartBehavior,
              'arrowHeadColor': arrowHeadColor,
              'source': source,
              'checkboxHorizontalMargin': checkboxHorizontalMargin,
              'controller': controller,
              'primary': primary,
              'headingRowColor': headingRowColor,
              'showEmptyRows': showEmptyRows,
            },
            stream: {
              'key': $key,
              'header': $header,
              'actions': $actions,
              'columns': $columns,
              'sortColumnIndex': $sortColumnIndex,
              'sortAscending': $sortAscending,
              'onSelectAll': $onSelectAll,
              'dataRowHeight': $dataRowHeight,
              'dataRowMinHeight': $dataRowMinHeight,
              'dataRowMaxHeight': $dataRowMaxHeight,
              'headingRowHeight': $headingRowHeight,
              'horizontalMargin': $horizontalMargin,
              'columnSpacing': $columnSpacing,
              'showCheckboxColumn': $showCheckboxColumn,
              'showFirstLastButtons': $showFirstLastButtons,
              'initialFirstRowIndex': $initialFirstRowIndex,
              'onPageChanged': $onPageChanged,
              'rowsPerPage': $rowsPerPage,
              'availableRowsPerPage': $availableRowsPerPage,
              'onRowsPerPageChanged': $onRowsPerPageChanged,
              'dragStartBehavior': $dragStartBehavior,
              'arrowHeadColor': $arrowHeadColor,
              'source': $source,
              'checkboxHorizontalMargin': $checkboxHorizontalMargin,
              'controller': $controller,
              'primary': $primary,
              'headingRowColor': $headingRowColor,
              'showEmptyRows': $showEmptyRows,
            },
          ),
          builder: (args) => _i1.PaginatedDataTable(
            key: args('key'),
            header: args('header'),
            actions: args('actions'),
            columns: args('columns'),
            sortColumnIndex: args('sortColumnIndex'),
            sortAscending: args('sortAscending'),
            onSelectAll: args('onSelectAll'),
            dataRowHeight: args('dataRowHeight'),
            dataRowMinHeight: args('dataRowMinHeight'),
            dataRowMaxHeight: args('dataRowMaxHeight'),
            headingRowHeight: args('headingRowHeight'),
            horizontalMargin: args('horizontalMargin'),
            columnSpacing: args('columnSpacing'),
            showCheckboxColumn: args('showCheckboxColumn'),
            showFirstLastButtons: args('showFirstLastButtons'),
            initialFirstRowIndex: args('initialFirstRowIndex'),
            onPageChanged: args('onPageChanged'),
            rowsPerPage: args('rowsPerPage'),
            availableRowsPerPage: args('availableRowsPerPage'),
            onRowsPerPageChanged: args('onRowsPerPageChanged'),
            dragStartBehavior: args('dragStartBehavior'),
            arrowHeadColor: args('arrowHeadColor'),
            source: args('source'),
            checkboxHorizontalMargin: args('checkboxHorizontalMargin'),
            controller: args('controller'),
            primary: args('primary'),
            headingRowColor: args('headingRowColor'),
            showEmptyRows: args('showEmptyRows'),
          ),
        );
}
