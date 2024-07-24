library rxflutterify; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:flutter/foundation.dart' as _i2;
import 'package:flutter/widgets.dart' as _i1;

import '../wrapper.dart';

final class DraggableScrollableActuator extends Wrapper {
  @Goto(_i1.DraggableScrollableActuator.new)
  DraggableScrollableActuator(
    $ $config, {
    _i2.Key? key,
    required _i1.Widget child,
  }) : super(
          Argument({
            #key: key,
            #child: child,
          }),
          builder: (args) => _i1.DraggableScrollableActuator(
            key: args(#key),
            child: args(#child),
          ),
        );
}

final class DraggableScrollableSheet extends Wrapper {
  @Goto(_i1.DraggableScrollableSheet.new)
  DraggableScrollableSheet(
    $ $config, {
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
  }) : super(
          Argument({
            #key: key,
            #initialChildSize: initialChildSize,
            #minChildSize: minChildSize,
            #maxChildSize: maxChildSize,
            #expand: expand,
            #snap: snap,
            #snapSizes: snapSizes,
            #snapAnimationDuration: snapAnimationDuration,
            #controller: controller,
            #shouldCloseOnMinExtent: shouldCloseOnMinExtent,
            #builder: builder,
          }),
          builder: (args) => _i1.DraggableScrollableSheet(
            key: args(#key),
            initialChildSize: args(#initialChildSize),
            minChildSize: args(#minChildSize),
            maxChildSize: args(#maxChildSize),
            expand: args(#expand),
            snap: args(#snap),
            snapSizes: args(#snapSizes),
            snapAnimationDuration: args(#snapAnimationDuration),
            controller: args(#controller),
            shouldCloseOnMinExtent: args(#shouldCloseOnMinExtent),
            builder: args(#builder),
          ),
        );
}
