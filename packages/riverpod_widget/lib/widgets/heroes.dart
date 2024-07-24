library rxflutterify; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:flutter/foundation.dart' as _i2;
import 'package:flutter/widgets.dart' as _i1;

import '../wrapper.dart';

final class HeroMode extends Wrapper {
  @Goto(_i1.HeroMode.new)
  HeroMode(
    $ $config, {
    _i2.Key? key,
    required _i1.Widget child,
    bool enabled = true,
  }) : super(
          Argument({
            #key: key,
            #child: child,
            #enabled: enabled,
          }),
          builder: (args) => _i1.HeroMode(
            key: args(#key),
            child: args(#child),
            enabled: args(#enabled),
          ),
        );
}

final class Hero extends Wrapper {
  @Goto(_i1.Hero.new)
  Hero(
    $ $config, {
    _i2.Key? key,
    required Object tag,
    _i1.CreateRectTween? createRectTween,
    _i1.HeroFlightShuttleBuilder? flightShuttleBuilder,
    _i1.HeroPlaceholderBuilder? placeholderBuilder,
    bool transitionOnUserGestures = false,
    required _i1.Widget child,
  }) : super(
          Argument({
            #key: key,
            #tag: tag,
            #createRectTween: createRectTween,
            #flightShuttleBuilder: flightShuttleBuilder,
            #placeholderBuilder: placeholderBuilder,
            #transitionOnUserGestures: transitionOnUserGestures,
            #child: child,
          }),
          builder: (args) => _i1.Hero(
            key: args(#key),
            tag: args(#tag),
            createRectTween: args(#createRectTween),
            flightShuttleBuilder: args(#flightShuttleBuilder),
            placeholderBuilder: args(#placeholderBuilder),
            transitionOnUserGestures: args(#transitionOnUserGestures),
            child: args(#child),
          ),
        );
}
