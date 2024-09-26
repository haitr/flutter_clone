library rxflutterify_binding; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:flutter/foundation.dart' as _i2;
import 'package:flutter/rendering.dart' as _i3;
import 'package:flutter/widgets.dart' as _i1;

import '../wrapper.dart';

final class SliverVariedExtentList extends Wrapper {
  @Goto(_i1.SliverVariedExtentList.new)
  SliverVariedExtentList(
    $ $config, {
    _i2.Key? key,
    required _i1.SliverChildDelegate delegate,
    required _i3.ItemExtentBuilder itemExtentBuilder,
  }) : super(
          Argument({
            #key: key,
            #delegate: delegate,
            #itemExtentBuilder: itemExtentBuilder,
          }),
          builder: (args) => _i1.SliverVariedExtentList(
            key: args(#key),
            delegate: args(#delegate),
            itemExtentBuilder: args(#itemExtentBuilder),
          ),
        );

  @Goto(_i1.SliverVariedExtentList.builder)
  SliverVariedExtentList.builder(
    $ $config, {
    _i2.Key? key,
    required _i1.NullableIndexedWidgetBuilder itemBuilder,
    required _i3.ItemExtentBuilder itemExtentBuilder,
    _i1.ChildIndexGetter? findChildIndexCallback,
    int? itemCount,
    bool addAutomaticKeepAlives = true,
    bool addRepaintBoundaries = true,
    bool addSemanticIndexes = true,
  }) : super(
          Argument({
            #key: key,
            #itemBuilder: itemBuilder,
            #itemExtentBuilder: itemExtentBuilder,
            #findChildIndexCallback: findChildIndexCallback,
            #itemCount: itemCount,
            #addAutomaticKeepAlives: addAutomaticKeepAlives,
            #addRepaintBoundaries: addRepaintBoundaries,
            #addSemanticIndexes: addSemanticIndexes,
          }),
          builder: (args) => _i1.SliverVariedExtentList.builder(
            key: args(#key),
            itemBuilder: args(#itemBuilder),
            itemExtentBuilder: args(#itemExtentBuilder),
            findChildIndexCallback: args(#findChildIndexCallback),
            itemCount: args(#itemCount),
            addAutomaticKeepAlives: args(#addAutomaticKeepAlives),
            addRepaintBoundaries: args(#addRepaintBoundaries),
            addSemanticIndexes: args(#addSemanticIndexes),
          ),
        );

  @Goto(_i1.SliverVariedExtentList.list)
  SliverVariedExtentList.list(
    $ $config, {
    _i2.Key? key,
    required List<_i1.Widget> children,
    required _i3.ItemExtentBuilder itemExtentBuilder,
    bool addAutomaticKeepAlives = true,
    bool addRepaintBoundaries = true,
    bool addSemanticIndexes = true,
  }) : super(
          Argument({
            #key: key,
            #children: children,
            #itemExtentBuilder: itemExtentBuilder,
            #addAutomaticKeepAlives: addAutomaticKeepAlives,
            #addRepaintBoundaries: addRepaintBoundaries,
            #addSemanticIndexes: addSemanticIndexes,
          }),
          builder: (args) => _i1.SliverVariedExtentList.list(
            key: args(#key),
            children: args(#children),
            itemExtentBuilder: args(#itemExtentBuilder),
            addAutomaticKeepAlives: args(#addAutomaticKeepAlives),
            addRepaintBoundaries: args(#addRepaintBoundaries),
            addSemanticIndexes: args(#addSemanticIndexes),
          ),
        );
}
