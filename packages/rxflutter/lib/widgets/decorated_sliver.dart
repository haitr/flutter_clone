library rxflutter; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:flutter/foundation.dart' as _i2;
import 'package:flutter/painting.dart' as _i3;
import 'package:flutter/rendering.dart' as _i4;
import 'package:flutter/widgets.dart' as _i1;

import '../wrapper.dart';

final class DecoratedSliver extends Wrapper {
  @Goto(_i1.DecoratedSliver.new)
  DecoratedSliver({
    _i2.Key? key,
    required _i3.Decoration decoration,
    _i4.DecorationPosition position = _i4.DecorationPosition.background,
    _i1.Widget? sliver,
    // Associate with key
    Stream<_i2.Key?>? $key,
    // Associate with decoration
    Stream<_i3.Decoration>? $decoration,
    // Associate with position
    Stream<_i4.DecorationPosition>? $position,
    // Associate with sliver
    Stream<_i1.Widget?>? $sliver,
  }) : super(
          Argument(
            {
              'key': key,
              'decoration': decoration,
              'position': position,
              'sliver': sliver,
            },
            stream: {
              'key': $key,
              'decoration': $decoration,
              'position': $position,
              'sliver': $sliver,
            },
          ),
          builder: (args) => _i1.DecoratedSliver(
            key: args('key'),
            decoration: args('decoration'),
            position: args('position'),
            sliver: args('sliver'),
          ),
        );
}
