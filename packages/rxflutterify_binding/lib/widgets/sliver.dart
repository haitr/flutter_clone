library rxflutterify_binding; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:flutter/foundation.dart' as _i2;
import 'package:flutter/rendering.dart' as _i3;
import 'package:flutter/widgets.dart' as _i1;

import '../wrapper.dart';

final class SliverOpacity extends Wrapper {
  @Goto(_i1.SliverOpacity.new)
  SliverOpacity(
    $ $config, {
    _i2.Key? key,
    required double opacity,
    bool alwaysIncludeSemantics = false,
    _i1.Widget? sliver,
  }) : super(
          Argument({
            #key: key,
            #opacity: opacity,
            #alwaysIncludeSemantics: alwaysIncludeSemantics,
            #sliver: sliver,
          }),
          builder: (args) => _i1.SliverOpacity(
            key: args(#key),
            opacity: args(#opacity),
            alwaysIncludeSemantics: args(#alwaysIncludeSemantics),
            sliver: args(#sliver),
          ),
        );
}

final class SliverFixedExtentList extends Wrapper {
  @Goto(_i1.SliverFixedExtentList.new)
  SliverFixedExtentList(
    $ $config, {
    _i2.Key? key,
    required _i1.SliverChildDelegate delegate,
    required double itemExtent,
  }) : super(
          Argument({
            #key: key,
            #delegate: delegate,
            #itemExtent: itemExtent,
          }),
          builder: (args) => _i1.SliverFixedExtentList(
            key: args(#key),
            delegate: args(#delegate),
            itemExtent: args(#itemExtent),
          ),
        );

  @Goto(_i1.SliverFixedExtentList.builder)
  SliverFixedExtentList.builder(
    $ $config, {
    _i2.Key? key,
    required _i1.NullableIndexedWidgetBuilder itemBuilder,
    required double itemExtent,
    _i1.ChildIndexGetter? findChildIndexCallback,
    int? itemCount,
    bool addAutomaticKeepAlives = true,
    bool addRepaintBoundaries = true,
    bool addSemanticIndexes = true,
  }) : super(
          Argument({
            #key: key,
            #itemBuilder: itemBuilder,
            #itemExtent: itemExtent,
            #findChildIndexCallback: findChildIndexCallback,
            #itemCount: itemCount,
            #addAutomaticKeepAlives: addAutomaticKeepAlives,
            #addRepaintBoundaries: addRepaintBoundaries,
            #addSemanticIndexes: addSemanticIndexes,
          }),
          builder: (args) => _i1.SliverFixedExtentList.builder(
            key: args(#key),
            itemBuilder: args(#itemBuilder),
            itemExtent: args(#itemExtent),
            findChildIndexCallback: args(#findChildIndexCallback),
            itemCount: args(#itemCount),
            addAutomaticKeepAlives: args(#addAutomaticKeepAlives),
            addRepaintBoundaries: args(#addRepaintBoundaries),
            addSemanticIndexes: args(#addSemanticIndexes),
          ),
        );

  @Goto(_i1.SliverFixedExtentList.list)
  SliverFixedExtentList.list(
    $ $config, {
    _i2.Key? key,
    required List<_i1.Widget> children,
    required double itemExtent,
    bool addAutomaticKeepAlives = true,
    bool addRepaintBoundaries = true,
    bool addSemanticIndexes = true,
  }) : super(
          Argument({
            #key: key,
            #children: children,
            #itemExtent: itemExtent,
            #addAutomaticKeepAlives: addAutomaticKeepAlives,
            #addRepaintBoundaries: addRepaintBoundaries,
            #addSemanticIndexes: addSemanticIndexes,
          }),
          builder: (args) => _i1.SliverFixedExtentList.list(
            key: args(#key),
            children: args(#children),
            itemExtent: args(#itemExtent),
            addAutomaticKeepAlives: args(#addAutomaticKeepAlives),
            addRepaintBoundaries: args(#addRepaintBoundaries),
            addSemanticIndexes: args(#addSemanticIndexes),
          ),
        );
}

final class SliverIgnorePointer extends Wrapper {
  @Goto(_i1.SliverIgnorePointer.new)
  SliverIgnorePointer(
    $ $config, {
    _i2.Key? key,
    bool ignoring = true,
    bool? ignoringSemantics,
    _i1.Widget? sliver,
  }) : super(
          Argument({
            #key: key,
            #ignoring: ignoring,
            #ignoringSemantics: ignoringSemantics,
            #sliver: sliver,
          }),
          builder: (args) => _i1.SliverIgnorePointer(
            key: args(#key),
            ignoring: args(#ignoring),
            ignoringSemantics: args(#ignoringSemantics),
            sliver: args(#sliver),
          ),
        );
}

final class SliverCrossAxisGroup extends Wrapper {
  @Goto(_i1.SliverCrossAxisGroup.new)
  SliverCrossAxisGroup(
    $ $config, {
    _i2.Key? key,
    required List<_i1.Widget> slivers,
  }) : super(
          Argument({
            #key: key,
            #slivers: slivers,
          }),
          builder: (args) => _i1.SliverCrossAxisGroup(
            key: args(#key),
            slivers: args(#slivers),
          ),
        );
}

final class KeepAlive extends Wrapper {
  @Goto(_i1.KeepAlive.new)
  KeepAlive(
    $ $config, {
    _i2.Key? key,
    required bool keepAlive,
    required _i1.Widget child,
  }) : super(
          Argument({
            #key: key,
            #keepAlive: keepAlive,
            #child: child,
          }),
          builder: (args) => _i1.KeepAlive(
            key: args(#key),
            keepAlive: args(#keepAlive),
            child: args(#child),
          ),
        );
}

final class SliverList extends Wrapper {
  @Goto(_i1.SliverList.new)
  SliverList(
    $ $config, {
    _i2.Key? key,
    required _i1.SliverChildDelegate delegate,
  }) : super(
          Argument({
            #key: key,
            #delegate: delegate,
          }),
          builder: (args) => _i1.SliverList(
            key: args(#key),
            delegate: args(#delegate),
          ),
        );

  @Goto(_i1.SliverList.builder)
  SliverList.builder(
    $ $config, {
    _i2.Key? key,
    required _i1.NullableIndexedWidgetBuilder itemBuilder,
    _i1.ChildIndexGetter? findChildIndexCallback,
    int? itemCount,
    bool addAutomaticKeepAlives = true,
    bool addRepaintBoundaries = true,
    bool addSemanticIndexes = true,
  }) : super(
          Argument({
            #key: key,
            #itemBuilder: itemBuilder,
            #findChildIndexCallback: findChildIndexCallback,
            #itemCount: itemCount,
            #addAutomaticKeepAlives: addAutomaticKeepAlives,
            #addRepaintBoundaries: addRepaintBoundaries,
            #addSemanticIndexes: addSemanticIndexes,
          }),
          builder: (args) => _i1.SliverList.builder(
            key: args(#key),
            itemBuilder: args(#itemBuilder),
            findChildIndexCallback: args(#findChildIndexCallback),
            itemCount: args(#itemCount),
            addAutomaticKeepAlives: args(#addAutomaticKeepAlives),
            addRepaintBoundaries: args(#addRepaintBoundaries),
            addSemanticIndexes: args(#addSemanticIndexes),
          ),
        );

  @Goto(_i1.SliverList.separated)
  SliverList.separated(
    $ $config, {
    _i2.Key? key,
    required _i1.NullableIndexedWidgetBuilder itemBuilder,
    _i1.ChildIndexGetter? findChildIndexCallback,
    required _i1.NullableIndexedWidgetBuilder separatorBuilder,
    int? itemCount,
    bool addAutomaticKeepAlives = true,
    bool addRepaintBoundaries = true,
    bool addSemanticIndexes = true,
  }) : super(
          Argument({
            #key: key,
            #itemBuilder: itemBuilder,
            #findChildIndexCallback: findChildIndexCallback,
            #separatorBuilder: separatorBuilder,
            #itemCount: itemCount,
            #addAutomaticKeepAlives: addAutomaticKeepAlives,
            #addRepaintBoundaries: addRepaintBoundaries,
            #addSemanticIndexes: addSemanticIndexes,
          }),
          builder: (args) => _i1.SliverList.separated(
            key: args(#key),
            itemBuilder: args(#itemBuilder),
            findChildIndexCallback: args(#findChildIndexCallback),
            separatorBuilder: args(#separatorBuilder),
            itemCount: args(#itemCount),
            addAutomaticKeepAlives: args(#addAutomaticKeepAlives),
            addRepaintBoundaries: args(#addRepaintBoundaries),
            addSemanticIndexes: args(#addSemanticIndexes),
          ),
        );

  @Goto(_i1.SliverList.list)
  SliverList.list(
    $ $config, {
    _i2.Key? key,
    required List<_i1.Widget> children,
    bool addAutomaticKeepAlives = true,
    bool addRepaintBoundaries = true,
    bool addSemanticIndexes = true,
  }) : super(
          Argument({
            #key: key,
            #children: children,
            #addAutomaticKeepAlives: addAutomaticKeepAlives,
            #addRepaintBoundaries: addRepaintBoundaries,
            #addSemanticIndexes: addSemanticIndexes,
          }),
          builder: (args) => _i1.SliverList.list(
            key: args(#key),
            children: args(#children),
            addAutomaticKeepAlives: args(#addAutomaticKeepAlives),
            addRepaintBoundaries: args(#addRepaintBoundaries),
            addSemanticIndexes: args(#addSemanticIndexes),
          ),
        );
}

final class SliverGrid extends Wrapper {
  @Goto(_i1.SliverGrid.new)
  SliverGrid(
    $ $config, {
    _i2.Key? key,
    required _i1.SliverChildDelegate delegate,
    required _i3.SliverGridDelegate gridDelegate,
  }) : super(
          Argument({
            #key: key,
            #delegate: delegate,
            #gridDelegate: gridDelegate,
          }),
          builder: (args) => _i1.SliverGrid(
            key: args(#key),
            delegate: args(#delegate),
            gridDelegate: args(#gridDelegate),
          ),
        );

  @Goto(_i1.SliverGrid.builder)
  SliverGrid.builder(
    $ $config, {
    _i2.Key? key,
    required _i3.SliverGridDelegate gridDelegate,
    required _i1.NullableIndexedWidgetBuilder itemBuilder,
    _i1.ChildIndexGetter? findChildIndexCallback,
    int? itemCount,
    bool addAutomaticKeepAlives = true,
    bool addRepaintBoundaries = true,
    bool addSemanticIndexes = true,
  }) : super(
          Argument({
            #key: key,
            #gridDelegate: gridDelegate,
            #itemBuilder: itemBuilder,
            #findChildIndexCallback: findChildIndexCallback,
            #itemCount: itemCount,
            #addAutomaticKeepAlives: addAutomaticKeepAlives,
            #addRepaintBoundaries: addRepaintBoundaries,
            #addSemanticIndexes: addSemanticIndexes,
          }),
          builder: (args) => _i1.SliverGrid.builder(
            key: args(#key),
            gridDelegate: args(#gridDelegate),
            itemBuilder: args(#itemBuilder),
            findChildIndexCallback: args(#findChildIndexCallback),
            itemCount: args(#itemCount),
            addAutomaticKeepAlives: args(#addAutomaticKeepAlives),
            addRepaintBoundaries: args(#addRepaintBoundaries),
            addSemanticIndexes: args(#addSemanticIndexes),
          ),
        );

  @Goto(_i1.SliverGrid.count)
  SliverGrid.count(
    $ $config, {
    _i2.Key? key,
    required int crossAxisCount,
    double mainAxisSpacing = 0.0,
    double crossAxisSpacing = 0.0,
    double childAspectRatio = 1.0,
    List<_i1.Widget> children = const [],
  }) : super(
          Argument({
            #key: key,
            #crossAxisCount: crossAxisCount,
            #mainAxisSpacing: mainAxisSpacing,
            #crossAxisSpacing: crossAxisSpacing,
            #childAspectRatio: childAspectRatio,
            #children: children,
          }),
          builder: (args) => _i1.SliverGrid.count(
            key: args(#key),
            crossAxisCount: args(#crossAxisCount),
            mainAxisSpacing: args(#mainAxisSpacing),
            crossAxisSpacing: args(#crossAxisSpacing),
            childAspectRatio: args(#childAspectRatio),
            children: args(#children),
          ),
        );

  @Goto(_i1.SliverGrid.extent)
  SliverGrid.extent(
    $ $config, {
    _i2.Key? key,
    required double maxCrossAxisExtent,
    double mainAxisSpacing = 0.0,
    double crossAxisSpacing = 0.0,
    double childAspectRatio = 1.0,
    List<_i1.Widget> children = const [],
  }) : super(
          Argument({
            #key: key,
            #maxCrossAxisExtent: maxCrossAxisExtent,
            #mainAxisSpacing: mainAxisSpacing,
            #crossAxisSpacing: crossAxisSpacing,
            #childAspectRatio: childAspectRatio,
            #children: children,
          }),
          builder: (args) => _i1.SliverGrid.extent(
            key: args(#key),
            maxCrossAxisExtent: args(#maxCrossAxisExtent),
            mainAxisSpacing: args(#mainAxisSpacing),
            crossAxisSpacing: args(#crossAxisSpacing),
            childAspectRatio: args(#childAspectRatio),
            children: args(#children),
          ),
        );
}

final class SliverOffstage extends Wrapper {
  @Goto(_i1.SliverOffstage.new)
  SliverOffstage(
    $ $config, {
    _i2.Key? key,
    bool offstage = true,
    _i1.Widget? sliver,
  }) : super(
          Argument({
            #key: key,
            #offstage: offstage,
            #sliver: sliver,
          }),
          builder: (args) => _i1.SliverOffstage(
            key: args(#key),
            offstage: args(#offstage),
            sliver: args(#sliver),
          ),
        );
}

final class SliverConstrainedCrossAxis extends Wrapper {
  @Goto(_i1.SliverConstrainedCrossAxis.new)
  SliverConstrainedCrossAxis(
    $ $config, {
    _i2.Key? key,
    required double maxExtent,
    required _i1.Widget sliver,
  }) : super(
          Argument({
            #key: key,
            #maxExtent: maxExtent,
            #sliver: sliver,
          }),
          builder: (args) => _i1.SliverConstrainedCrossAxis(
            key: args(#key),
            maxExtent: args(#maxExtent),
            sliver: args(#sliver),
          ),
        );
}

final class SliverCrossAxisExpanded extends Wrapper {
  @Goto(_i1.SliverCrossAxisExpanded.new)
  SliverCrossAxisExpanded(
    $ $config, {
    _i2.Key? key,
    required int flex,
    required _i1.Widget sliver,
  }) : super(
          Argument({
            #key: key,
            #flex: flex,
            #sliver: sliver,
          }),
          builder: (args) => _i1.SliverCrossAxisExpanded(
            key: args(#key),
            flex: args(#flex),
            sliver: args(#sliver),
          ),
        );
}

final class SliverMainAxisGroup extends Wrapper {
  @Goto(_i1.SliverMainAxisGroup.new)
  SliverMainAxisGroup(
    $ $config, {
    _i2.Key? key,
    required List<_i1.Widget> slivers,
  }) : super(
          Argument({
            #key: key,
            #slivers: slivers,
          }),
          builder: (args) => _i1.SliverMainAxisGroup(
            key: args(#key),
            slivers: args(#slivers),
          ),
        );
}
