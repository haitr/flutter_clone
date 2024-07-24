library rxflutterify; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:flutter/foundation.dart' as _i2;
import 'package:flutter/widgets.dart' as _i1;

import '../wrapper.dart';

final class SliverFillRemaining extends Wrapper {
  @Goto(_i1.SliverFillRemaining.new)
  SliverFillRemaining(
    $ $config, {
    _i2.Key? key,
    _i1.Widget? child,
    bool hasScrollBody = true,
    bool fillOverscroll = false,
  }) : super(
          Argument({
            #key: key,
            #child: child,
            #hasScrollBody: hasScrollBody,
            #fillOverscroll: fillOverscroll,
          }),
          builder: (args) => _i1.SliverFillRemaining(
            key: args(#key),
            child: args(#child),
            hasScrollBody: args(#hasScrollBody),
            fillOverscroll: args(#fillOverscroll),
          ),
        );
}

final class SliverFillViewport extends Wrapper {
  @Goto(_i1.SliverFillViewport.new)
  SliverFillViewport(
    $ $config, {
    _i2.Key? key,
    required _i1.SliverChildDelegate delegate,
    double viewportFraction = 1.0,
    bool padEnds = true,
  }) : super(
          Argument({
            #key: key,
            #delegate: delegate,
            #viewportFraction: viewportFraction,
            #padEnds: padEnds,
          }),
          builder: (args) => _i1.SliverFillViewport(
            key: args(#key),
            delegate: args(#delegate),
            viewportFraction: args(#viewportFraction),
            padEnds: args(#padEnds),
          ),
        );
}
