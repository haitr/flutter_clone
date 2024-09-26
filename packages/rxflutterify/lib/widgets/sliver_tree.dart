library rxflutterify; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:flutter/animation.dart' as _i3;
import 'package:flutter/foundation.dart' as _i2;
import 'package:flutter/rendering.dart' as _i4;
import 'package:flutter/widgets.dart' as _i1;

import '../wrapper.dart';

final class TreeSliver<T> extends Wrapper {
  @Goto(_i1.TreeSliver.new)
  TreeSliver({
    _i2.Key? key,
    required List<_i1.TreeSliverNode<T>> tree,
    _i1.TreeSliverNodeBuilder treeNodeBuilder = _i1.TreeSliver.defaultTreeNodeBuilder,
    _i1.TreeSliverRowExtentBuilder treeRowExtentBuilder = _i1.TreeSliver.defaultTreeRowExtentBuilder,
    _i1.TreeSliverController? controller,
    _i1.TreeSliverNodeCallback? onNodeToggle,
    _i3.AnimationStyle? toggleAnimationStyle,
    _i4.TreeSliverIndentationType indentation = _i4.TreeSliverIndentationType.standard,
    bool addAutomaticKeepAlives = true,
    bool addRepaintBoundaries = true,
    bool addSemanticIndexes = true,
    _i1.SemanticIndexCallback semanticIndexCallback = _kDefaultSemanticIndexCallback,
    int semanticIndexOffset = 0,
    int? Function(_i2.Key)? findChildIndexCallback,
    // Associate with key
    Stream<_i2.Key?>? $key,
    // Associate with tree
    Stream<List<_i1.TreeSliverNode<T>>>? $tree,
    // Associate with treeNodeBuilder
    Stream<_i1.TreeSliverNodeBuilder>? $treeNodeBuilder,
    // Associate with treeRowExtentBuilder
    Stream<_i1.TreeSliverRowExtentBuilder>? $treeRowExtentBuilder,
    // Associate with controller
    Stream<_i1.TreeSliverController?>? $controller,
    // Associate with onNodeToggle
    Stream<_i1.TreeSliverNodeCallback?>? $onNodeToggle,
    // Associate with toggleAnimationStyle
    Stream<_i3.AnimationStyle?>? $toggleAnimationStyle,
    // Associate with indentation
    Stream<_i4.TreeSliverIndentationType>? $indentation,
    // Associate with addAutomaticKeepAlives
    Stream<bool>? $addAutomaticKeepAlives,
    // Associate with addRepaintBoundaries
    Stream<bool>? $addRepaintBoundaries,
    // Associate with addSemanticIndexes
    Stream<bool>? $addSemanticIndexes,
    // Associate with semanticIndexCallback
    Stream<_i1.SemanticIndexCallback>? $semanticIndexCallback,
    // Associate with semanticIndexOffset
    Stream<int>? $semanticIndexOffset,
    // Associate with findChildIndexCallback
    Stream<int? Function(_i2.Key)?>? $findChildIndexCallback,
  }) : super(
          Argument(
            {
              'key': key,
              'tree': tree,
              'treeNodeBuilder': treeNodeBuilder,
              'treeRowExtentBuilder': treeRowExtentBuilder,
              'controller': controller,
              'onNodeToggle': onNodeToggle,
              'toggleAnimationStyle': toggleAnimationStyle,
              'indentation': indentation,
              'addAutomaticKeepAlives': addAutomaticKeepAlives,
              'addRepaintBoundaries': addRepaintBoundaries,
              'addSemanticIndexes': addSemanticIndexes,
              'semanticIndexCallback': semanticIndexCallback,
              'semanticIndexOffset': semanticIndexOffset,
              'findChildIndexCallback': findChildIndexCallback,
            },
            stream: {
              'key': $key,
              'tree': $tree,
              'treeNodeBuilder': $treeNodeBuilder,
              'treeRowExtentBuilder': $treeRowExtentBuilder,
              'controller': $controller,
              'onNodeToggle': $onNodeToggle,
              'toggleAnimationStyle': $toggleAnimationStyle,
              'indentation': $indentation,
              'addAutomaticKeepAlives': $addAutomaticKeepAlives,
              'addRepaintBoundaries': $addRepaintBoundaries,
              'addSemanticIndexes': $addSemanticIndexes,
              'semanticIndexCallback': $semanticIndexCallback,
              'semanticIndexOffset': $semanticIndexOffset,
              'findChildIndexCallback': $findChildIndexCallback,
            },
          ),
          builder: (args) => _i1.TreeSliver<T>(
            key: args('key'),
            tree: args('tree'),
            treeNodeBuilder: args('treeNodeBuilder'),
            treeRowExtentBuilder: args('treeRowExtentBuilder'),
            controller: args('controller'),
            onNodeToggle: args('onNodeToggle'),
            toggleAnimationStyle: args('toggleAnimationStyle'),
            indentation: args('indentation'),
            addAutomaticKeepAlives: args('addAutomaticKeepAlives'),
            addRepaintBoundaries: args('addRepaintBoundaries'),
            addSemanticIndexes: args('addSemanticIndexes'),
            semanticIndexCallback: args('semanticIndexCallback'),
            semanticIndexOffset: args('semanticIndexOffset'),
            findChildIndexCallback: args('findChildIndexCallback'),
          ),
        );
}

int _kDefaultSemanticIndexCallback(_i1.Widget _, int localIndex) => localIndex;
