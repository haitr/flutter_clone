library rxflutterify; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:flutter/foundation.dart' as _i2;
import 'package:flutter/widgets.dart' as _i1;

import '../wrapper.dart';

final class Visibility extends Wrapper {
  @Goto(_i1.Visibility.new)
  Visibility(
    $ $config, {
    _i2.Key? key,
    required _i1.Widget child,
    _i1.Widget replacement = const _i1.SizedBox.shrink(),
    bool visible = true,
    bool maintainState = false,
    bool maintainAnimation = false,
    bool maintainSize = false,
    bool maintainSemantics = false,
    bool maintainInteractivity = false,
  }) : super(
          Argument({
            #key: key,
            #child: child,
            #replacement: replacement,
            #visible: visible,
            #maintainState: maintainState,
            #maintainAnimation: maintainAnimation,
            #maintainSize: maintainSize,
            #maintainSemantics: maintainSemantics,
            #maintainInteractivity: maintainInteractivity,
          }),
          builder: (args) => _i1.Visibility(
            key: args(#key),
            child: args(#child),
            replacement: args(#replacement),
            visible: args(#visible),
            maintainState: args(#maintainState),
            maintainAnimation: args(#maintainAnimation),
            maintainSize: args(#maintainSize),
            maintainSemantics: args(#maintainSemantics),
            maintainInteractivity: args(#maintainInteractivity),
          ),
        );

  @Goto(_i1.Visibility.maintain)
  Visibility.maintain(
    $ $config, {
    _i2.Key? key,
    required _i1.Widget child,
    bool visible = true,
  }) : super(
          Argument({
            #key: key,
            #child: child,
            #visible: visible,
          }),
          builder: (args) => _i1.Visibility.maintain(
            key: args(#key),
            child: args(#child),
            visible: args(#visible),
          ),
        );
}

final class SliverVisibility extends Wrapper {
  @Goto(_i1.SliverVisibility.new)
  SliverVisibility(
    $ $config, {
    _i2.Key? key,
    required _i1.Widget sliver,
    _i1.Widget replacementSliver = const _i1.SliverToBoxAdapter(),
    bool visible = true,
    bool maintainState = false,
    bool maintainAnimation = false,
    bool maintainSize = false,
    bool maintainSemantics = false,
    bool maintainInteractivity = false,
  }) : super(
          Argument({
            #key: key,
            #sliver: sliver,
            #replacementSliver: replacementSliver,
            #visible: visible,
            #maintainState: maintainState,
            #maintainAnimation: maintainAnimation,
            #maintainSize: maintainSize,
            #maintainSemantics: maintainSemantics,
            #maintainInteractivity: maintainInteractivity,
          }),
          builder: (args) => _i1.SliverVisibility(
            key: args(#key),
            sliver: args(#sliver),
            replacementSliver: args(#replacementSliver),
            visible: args(#visible),
            maintainState: args(#maintainState),
            maintainAnimation: args(#maintainAnimation),
            maintainSize: args(#maintainSize),
            maintainSemantics: args(#maintainSemantics),
            maintainInteractivity: args(#maintainInteractivity),
          ),
        );

  @Goto(_i1.SliverVisibility.maintain)
  SliverVisibility.maintain(
    $ $config, {
    _i2.Key? key,
    required _i1.Widget sliver,
    _i1.Widget replacementSliver = const _i1.SliverToBoxAdapter(),
    bool visible = true,
  }) : super(
          Argument({
            #key: key,
            #sliver: sliver,
            #replacementSliver: replacementSliver,
            #visible: visible,
          }),
          builder: (args) => _i1.SliverVisibility.maintain(
            key: args(#key),
            sliver: args(#sliver),
            replacementSliver: args(#replacementSliver),
            visible: args(#visible),
          ),
        );
}
