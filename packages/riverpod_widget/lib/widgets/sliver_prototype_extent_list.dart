library rxflutterify; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:flutter/foundation.dart' as _i2;
import 'package:flutter/widgets.dart' as _i1;

import '../wrapper.dart';

final class SliverPrototypeExtentList extends Wrapper {
  @Goto(_i1.SliverPrototypeExtentList.new)
  SliverPrototypeExtentList(
    $ $config, {
    _i2.Key? key,
    required _i1.SliverChildDelegate delegate,
    required _i1.Widget prototypeItem,
  }) : super(
          Argument({
            #key: key,
            #delegate: delegate,
            #prototypeItem: prototypeItem,
          }),
          builder: (args) => _i1.SliverPrototypeExtentList(
            key: args(#key),
            delegate: args(#delegate),
            prototypeItem: args(#prototypeItem),
          ),
        );

  @Goto(_i1.SliverPrototypeExtentList.builder)
  SliverPrototypeExtentList.builder(
    $ $config, {
    _i2.Key? key,
    required _i1.NullableIndexedWidgetBuilder itemBuilder,
    required _i1.Widget prototypeItem,
    _i1.ChildIndexGetter? findChildIndexCallback,
    int? itemCount,
    bool addAutomaticKeepAlives = true,
    bool addRepaintBoundaries = true,
    bool addSemanticIndexes = true,
  }) : super(
          Argument({
            #key: key,
            #itemBuilder: itemBuilder,
            #prototypeItem: prototypeItem,
            #findChildIndexCallback: findChildIndexCallback,
            #itemCount: itemCount,
            #addAutomaticKeepAlives: addAutomaticKeepAlives,
            #addRepaintBoundaries: addRepaintBoundaries,
            #addSemanticIndexes: addSemanticIndexes,
          }),
          builder: (args) => _i1.SliverPrototypeExtentList.builder(
            key: args(#key),
            itemBuilder: args(#itemBuilder),
            prototypeItem: args(#prototypeItem),
            findChildIndexCallback: args(#findChildIndexCallback),
            itemCount: args(#itemCount),
            addAutomaticKeepAlives: args(#addAutomaticKeepAlives),
            addRepaintBoundaries: args(#addRepaintBoundaries),
            addSemanticIndexes: args(#addSemanticIndexes),
          ),
        );

  @Goto(_i1.SliverPrototypeExtentList.list)
  SliverPrototypeExtentList.list(
    $ $config, {
    _i2.Key? key,
    required List<_i1.Widget> children,
    required _i1.Widget prototypeItem,
    bool addAutomaticKeepAlives = true,
    bool addRepaintBoundaries = true,
    bool addSemanticIndexes = true,
  }) : super(
          Argument({
            #key: key,
            #children: children,
            #prototypeItem: prototypeItem,
            #addAutomaticKeepAlives: addAutomaticKeepAlives,
            #addRepaintBoundaries: addRepaintBoundaries,
            #addSemanticIndexes: addSemanticIndexes,
          }),
          builder: (args) => _i1.SliverPrototypeExtentList.list(
            key: args(#key),
            children: args(#children),
            prototypeItem: args(#prototypeItem),
            addAutomaticKeepAlives: args(#addAutomaticKeepAlives),
            addRepaintBoundaries: args(#addRepaintBoundaries),
            addSemanticIndexes: args(#addSemanticIndexes),
          ),
        );
}
