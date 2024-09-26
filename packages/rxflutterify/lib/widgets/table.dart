library rxflutterify; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:ui' as ui;

import 'package:flutter/foundation.dart' as _i2;
import 'package:flutter/rendering.dart' as _i3;
import 'package:flutter/widgets.dart' as _i1;

import '../wrapper.dart';

final class Table extends Wrapper {
  @Goto(_i1.Table.new)
  Table({
    _i2.Key? key,
    List<_i1.TableRow> children = const [],
    Map<int, _i3.TableColumnWidth>? columnWidths,
    _i3.TableColumnWidth defaultColumnWidth = const _i3.FlexColumnWidth(),
    ui.TextDirection? textDirection,
    _i3.TableBorder? border,
    _i3.TableCellVerticalAlignment defaultVerticalAlignment = _i3.TableCellVerticalAlignment.top,
    ui.TextBaseline? textBaseline,
    // Associate with key
    Stream<_i2.Key?>? $key,
    // Associate with children
    Stream<List<_i1.TableRow>>? $children,
    // Associate with columnWidths
    Stream<Map<int, _i3.TableColumnWidth>?>? $columnWidths,
    // Associate with defaultColumnWidth
    Stream<_i3.TableColumnWidth>? $defaultColumnWidth,
    // Associate with textDirection
    Stream<ui.TextDirection?>? $textDirection,
    // Associate with border
    Stream<_i3.TableBorder?>? $border,
    // Associate with defaultVerticalAlignment
    Stream<_i3.TableCellVerticalAlignment>? $defaultVerticalAlignment,
    // Associate with textBaseline
    Stream<ui.TextBaseline?>? $textBaseline,
  }) : super(
          Argument(
            {
              'key': key,
              'children': children,
              'columnWidths': columnWidths,
              'defaultColumnWidth': defaultColumnWidth,
              'textDirection': textDirection,
              'border': border,
              'defaultVerticalAlignment': defaultVerticalAlignment,
              'textBaseline': textBaseline,
            },
            stream: {
              'key': $key,
              'children': $children,
              'columnWidths': $columnWidths,
              'defaultColumnWidth': $defaultColumnWidth,
              'textDirection': $textDirection,
              'border': $border,
              'defaultVerticalAlignment': $defaultVerticalAlignment,
              'textBaseline': $textBaseline,
            },
          ),
          builder: (args) => _i1.Table(
            key: args('key'),
            children: args('children'),
            columnWidths: args('columnWidths'),
            defaultColumnWidth: args('defaultColumnWidth'),
            textDirection: args('textDirection'),
            border: args('border'),
            defaultVerticalAlignment: args('defaultVerticalAlignment'),
            textBaseline: args('textBaseline'),
          ),
        );
}

final class TableCell extends Wrapper {
  @Goto(_i1.TableCell.new)
  TableCell({
    _i2.Key? key,
    _i3.TableCellVerticalAlignment? verticalAlignment,
    required _i1.Widget child,
    // Associate with key
    Stream<_i2.Key?>? $key,
    // Associate with verticalAlignment
    Stream<_i3.TableCellVerticalAlignment?>? $verticalAlignment,
    // Associate with child
    Stream<_i1.Widget>? $child,
  }) : super(
          Argument(
            {
              'key': key,
              'verticalAlignment': verticalAlignment,
              'child': child,
            },
            stream: {
              'key': $key,
              'verticalAlignment': $verticalAlignment,
              'child': $child,
            },
          ),
          builder: (args) => _i1.TableCell(
            key: args('key'),
            verticalAlignment: args('verticalAlignment'),
            child: args('child'),
          ),
        );
}
