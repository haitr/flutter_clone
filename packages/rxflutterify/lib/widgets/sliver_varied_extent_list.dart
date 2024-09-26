library rxflutterify; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:flutter/foundation.dart' as _i2;
import 'package:flutter/rendering.dart' as _i3;
import 'package:flutter/widgets.dart' as _i1;

import '../wrapper.dart';

final class SliverVariedExtentList extends Wrapper {
  @Goto(_i1.SliverVariedExtentList.new)
  SliverVariedExtentList({
    _i2.Key? key,
    required _i1.SliverChildDelegate delegate,
    required _i3.ItemExtentBuilder itemExtentBuilder,
    // Associate with key
    Stream<_i2.Key?>? $key,
    // Associate with delegate
    Stream<_i1.SliverChildDelegate>? $delegate,
    // Associate with itemExtentBuilder
    Stream<_i3.ItemExtentBuilder>? $itemExtentBuilder,
  }) : super(
          Argument(
            {
              'key': key,
              'delegate': delegate,
              'itemExtentBuilder': itemExtentBuilder,
            },
            stream: {
              'key': $key,
              'delegate': $delegate,
              'itemExtentBuilder': $itemExtentBuilder,
            },
          ),
          builder: (args) => _i1.SliverVariedExtentList(
            key: args('key'),
            delegate: args('delegate'),
            itemExtentBuilder: args('itemExtentBuilder'),
          ),
        );

  @Goto(_i1.SliverVariedExtentList.builder)
  SliverVariedExtentList.builder({
    _i2.Key? key,
    required _i1.NullableIndexedWidgetBuilder itemBuilder,
    required _i3.ItemExtentBuilder itemExtentBuilder,
    _i1.ChildIndexGetter? findChildIndexCallback,
    int? itemCount,
    bool addAutomaticKeepAlives = true,
    bool addRepaintBoundaries = true,
    bool addSemanticIndexes = true,
    // Associate with key
    Stream<_i2.Key?>? $key,
    // Associate with itemBuilder
    Stream<_i1.NullableIndexedWidgetBuilder>? $itemBuilder,
    // Associate with itemExtentBuilder
    Stream<_i3.ItemExtentBuilder>? $itemExtentBuilder,
    // Associate with findChildIndexCallback
    Stream<_i1.ChildIndexGetter?>? $findChildIndexCallback,
    // Associate with itemCount
    Stream<int?>? $itemCount,
    // Associate with addAutomaticKeepAlives
    Stream<bool>? $addAutomaticKeepAlives,
    // Associate with addRepaintBoundaries
    Stream<bool>? $addRepaintBoundaries,
    // Associate with addSemanticIndexes
    Stream<bool>? $addSemanticIndexes,
  }) : super(
          Argument(
            {
              'key': key,
              'itemBuilder': itemBuilder,
              'itemExtentBuilder': itemExtentBuilder,
              'findChildIndexCallback': findChildIndexCallback,
              'itemCount': itemCount,
              'addAutomaticKeepAlives': addAutomaticKeepAlives,
              'addRepaintBoundaries': addRepaintBoundaries,
              'addSemanticIndexes': addSemanticIndexes,
            },
            stream: {
              'key': $key,
              'itemBuilder': $itemBuilder,
              'itemExtentBuilder': $itemExtentBuilder,
              'findChildIndexCallback': $findChildIndexCallback,
              'itemCount': $itemCount,
              'addAutomaticKeepAlives': $addAutomaticKeepAlives,
              'addRepaintBoundaries': $addRepaintBoundaries,
              'addSemanticIndexes': $addSemanticIndexes,
            },
          ),
          builder: (args) => _i1.SliverVariedExtentList.builder(
            key: args('key'),
            itemBuilder: args('itemBuilder'),
            itemExtentBuilder: args('itemExtentBuilder'),
            findChildIndexCallback: args('findChildIndexCallback'),
            itemCount: args('itemCount'),
            addAutomaticKeepAlives: args('addAutomaticKeepAlives'),
            addRepaintBoundaries: args('addRepaintBoundaries'),
            addSemanticIndexes: args('addSemanticIndexes'),
          ),
        );

  @Goto(_i1.SliverVariedExtentList.list)
  SliverVariedExtentList.list({
    _i2.Key? key,
    required List<_i1.Widget> children,
    required _i3.ItemExtentBuilder itemExtentBuilder,
    bool addAutomaticKeepAlives = true,
    bool addRepaintBoundaries = true,
    bool addSemanticIndexes = true,
    // Associate with key
    Stream<_i2.Key?>? $key,
    // Associate with children
    Stream<List<_i1.Widget>>? $children,
    // Associate with itemExtentBuilder
    Stream<_i3.ItemExtentBuilder>? $itemExtentBuilder,
    // Associate with addAutomaticKeepAlives
    Stream<bool>? $addAutomaticKeepAlives,
    // Associate with addRepaintBoundaries
    Stream<bool>? $addRepaintBoundaries,
    // Associate with addSemanticIndexes
    Stream<bool>? $addSemanticIndexes,
  }) : super(
          Argument(
            {
              'key': key,
              'children': children,
              'itemExtentBuilder': itemExtentBuilder,
              'addAutomaticKeepAlives': addAutomaticKeepAlives,
              'addRepaintBoundaries': addRepaintBoundaries,
              'addSemanticIndexes': addSemanticIndexes,
            },
            stream: {
              'key': $key,
              'children': $children,
              'itemExtentBuilder': $itemExtentBuilder,
              'addAutomaticKeepAlives': $addAutomaticKeepAlives,
              'addRepaintBoundaries': $addRepaintBoundaries,
              'addSemanticIndexes': $addSemanticIndexes,
            },
          ),
          builder: (args) => _i1.SliverVariedExtentList.list(
            key: args('key'),
            children: args('children'),
            itemExtentBuilder: args('itemExtentBuilder'),
            addAutomaticKeepAlives: args('addAutomaticKeepAlives'),
            addRepaintBoundaries: args('addRepaintBoundaries'),
            addSemanticIndexes: args('addSemanticIndexes'),
          ),
        );
}
