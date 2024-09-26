library rxflutterify; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:flutter/foundation.dart' as _i2;
import 'package:flutter/widgets.dart' as _i1;

import '../wrapper.dart';

final class DraggableScrollableActuator extends Wrapper {
  @Goto(_i1.DraggableScrollableActuator.new)
  DraggableScrollableActuator({
    _i2.Key? key,
    required _i1.Widget child,
    // Associate with key
    Stream<_i2.Key?>? $key,
    // Associate with child
    Stream<_i1.Widget>? $child,
  }) : super(
          Argument(
            {
              'key': key,
              'child': child,
            },
            stream: {
              'key': $key,
              'child': $child,
            },
          ),
          builder: (args) => _i1.DraggableScrollableActuator(
            key: args('key'),
            child: args('child'),
          ),
        );
}

final class DraggableScrollableSheet extends Wrapper {
  @Goto(_i1.DraggableScrollableSheet.new)
  DraggableScrollableSheet({
    _i2.Key? key,
    double initialChildSize = 0.5,
    double minChildSize = 0.25,
    double maxChildSize = 1.0,
    bool expand = true,
    bool snap = false,
    List<double>? snapSizes,
    Duration? snapAnimationDuration,
    _i1.DraggableScrollableController? controller,
    bool shouldCloseOnMinExtent = true,
    required _i1.ScrollableWidgetBuilder builder,
    // Associate with key
    Stream<_i2.Key?>? $key,
    // Associate with initialChildSize
    Stream<double>? $initialChildSize,
    // Associate with minChildSize
    Stream<double>? $minChildSize,
    // Associate with maxChildSize
    Stream<double>? $maxChildSize,
    // Associate with expand
    Stream<bool>? $expand,
    // Associate with snap
    Stream<bool>? $snap,
    // Associate with snapSizes
    Stream<List<double>?>? $snapSizes,
    // Associate with snapAnimationDuration
    Stream<Duration?>? $snapAnimationDuration,
    // Associate with controller
    Stream<_i1.DraggableScrollableController?>? $controller,
    // Associate with shouldCloseOnMinExtent
    Stream<bool>? $shouldCloseOnMinExtent,
    // Associate with builder
    Stream<_i1.ScrollableWidgetBuilder>? $builder,
  }) : super(
          Argument(
            {
              'key': key,
              'initialChildSize': initialChildSize,
              'minChildSize': minChildSize,
              'maxChildSize': maxChildSize,
              'expand': expand,
              'snap': snap,
              'snapSizes': snapSizes,
              'snapAnimationDuration': snapAnimationDuration,
              'controller': controller,
              'shouldCloseOnMinExtent': shouldCloseOnMinExtent,
              'builder': builder,
            },
            stream: {
              'key': $key,
              'initialChildSize': $initialChildSize,
              'minChildSize': $minChildSize,
              'maxChildSize': $maxChildSize,
              'expand': $expand,
              'snap': $snap,
              'snapSizes': $snapSizes,
              'snapAnimationDuration': $snapAnimationDuration,
              'controller': $controller,
              'shouldCloseOnMinExtent': $shouldCloseOnMinExtent,
              'builder': $builder,
            },
          ),
          builder: (args) => _i1.DraggableScrollableSheet(
            key: args('key'),
            initialChildSize: args('initialChildSize'),
            minChildSize: args('minChildSize'),
            maxChildSize: args('maxChildSize'),
            expand: args('expand'),
            snap: args('snap'),
            snapSizes: args('snapSizes'),
            snapAnimationDuration: args('snapAnimationDuration'),
            controller: args('controller'),
            shouldCloseOnMinExtent: args('shouldCloseOnMinExtent'),
            builder: args('builder'),
          ),
        );
}
