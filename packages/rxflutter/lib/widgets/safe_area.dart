library rxflutter; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:flutter/foundation.dart' as _i2;
import 'package:flutter/painting.dart' as _i3;
import 'package:flutter/widgets.dart' as _i1;

import '../wrapper.dart';

final class SliverSafeArea extends Wrapper {
  @Goto(_i1.SliverSafeArea.new)
  SliverSafeArea({
    _i2.Key? key,
    bool left = true,
    bool top = true,
    bool right = true,
    bool bottom = true,
    _i3.EdgeInsets minimum = _i3.EdgeInsets.zero,
    required _i1.Widget sliver,
    // Associate with key
    Stream<_i2.Key?>? $key,
    // Associate with left
    Stream<bool>? $left,
    // Associate with top
    Stream<bool>? $top,
    // Associate with right
    Stream<bool>? $right,
    // Associate with bottom
    Stream<bool>? $bottom,
    // Associate with minimum
    Stream<_i3.EdgeInsets>? $minimum,
    // Associate with sliver
    Stream<_i1.Widget>? $sliver,
  }) : super(
          Argument(
            {
              'key': key,
              'left': left,
              'top': top,
              'right': right,
              'bottom': bottom,
              'minimum': minimum,
              'sliver': sliver,
            },
            stream: {
              'key': $key,
              'left': $left,
              'top': $top,
              'right': $right,
              'bottom': $bottom,
              'minimum': $minimum,
              'sliver': $sliver,
            },
          ),
          builder: (args) => _i1.SliverSafeArea(
            key: args('key'),
            left: args('left'),
            top: args('top'),
            right: args('right'),
            bottom: args('bottom'),
            minimum: args('minimum'),
            sliver: args('sliver'),
          ),
        );
}

final class SafeArea extends Wrapper {
  @Goto(_i1.SafeArea.new)
  SafeArea({
    _i2.Key? key,
    bool left = true,
    bool top = true,
    bool right = true,
    bool bottom = true,
    _i3.EdgeInsets minimum = _i3.EdgeInsets.zero,
    bool maintainBottomViewPadding = false,
    required _i1.Widget child,
    // Associate with key
    Stream<_i2.Key?>? $key,
    // Associate with left
    Stream<bool>? $left,
    // Associate with top
    Stream<bool>? $top,
    // Associate with right
    Stream<bool>? $right,
    // Associate with bottom
    Stream<bool>? $bottom,
    // Associate with minimum
    Stream<_i3.EdgeInsets>? $minimum,
    // Associate with maintainBottomViewPadding
    Stream<bool>? $maintainBottomViewPadding,
    // Associate with child
    Stream<_i1.Widget>? $child,
  }) : super(
          Argument(
            {
              'key': key,
              'left': left,
              'top': top,
              'right': right,
              'bottom': bottom,
              'minimum': minimum,
              'maintainBottomViewPadding': maintainBottomViewPadding,
              'child': child,
            },
            stream: {
              'key': $key,
              'left': $left,
              'top': $top,
              'right': $right,
              'bottom': $bottom,
              'minimum': $minimum,
              'maintainBottomViewPadding': $maintainBottomViewPadding,
              'child': $child,
            },
          ),
          builder: (args) => _i1.SafeArea(
            key: args('key'),
            left: args('left'),
            top: args('top'),
            right: args('right'),
            bottom: args('bottom'),
            minimum: args('minimum'),
            maintainBottomViewPadding: args('maintainBottomViewPadding'),
            child: args('child'),
          ),
        );
}
