library rxflutterify; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:ui' as ui;

import 'package:flutter/foundation.dart' as _i2;
import 'package:flutter/gestures.dart' as _i3;
import 'package:flutter/painting.dart' as _i5;
import 'package:flutter/rendering.dart' as _i4;
import 'package:flutter/widgets.dart' as _i1;

import '../wrapper.dart';

final class TwoDimensionalScrollable extends Wrapper {
  @Goto(_i1.TwoDimensionalScrollable.new)
  TwoDimensionalScrollable(
    $ $config, {
    _i2.Key? key,
    required _i1.ScrollableDetails horizontalDetails,
    required _i1.ScrollableDetails verticalDetails,
    required _i1.TwoDimensionalViewportBuilder viewportBuilder,
    _i1.ScrollIncrementCalculator? incrementCalculator,
    String? restorationId,
    bool excludeFromSemantics = false,
    _i1.DiagonalDragBehavior diagonalDragBehavior = _i1.DiagonalDragBehavior.none,
    _i3.DragStartBehavior dragStartBehavior = _i3.DragStartBehavior.start,
    _i4.HitTestBehavior hitTestBehavior = _i4.HitTestBehavior.opaque,
  }) : super(
          Argument({
            #key: key,
            #horizontalDetails: horizontalDetails,
            #verticalDetails: verticalDetails,
            #viewportBuilder: viewportBuilder,
            #incrementCalculator: incrementCalculator,
            #restorationId: restorationId,
            #excludeFromSemantics: excludeFromSemantics,
            #diagonalDragBehavior: diagonalDragBehavior,
            #dragStartBehavior: dragStartBehavior,
            #hitTestBehavior: hitTestBehavior,
          }),
          builder: (args) => _i1.TwoDimensionalScrollable(
            key: args(#key),
            horizontalDetails: args(#horizontalDetails),
            verticalDetails: args(#verticalDetails),
            viewportBuilder: args(#viewportBuilder),
            incrementCalculator: args(#incrementCalculator),
            restorationId: args(#restorationId),
            excludeFromSemantics: args(#excludeFromSemantics),
            diagonalDragBehavior: args(#diagonalDragBehavior),
            dragStartBehavior: args(#dragStartBehavior),
            hitTestBehavior: args(#hitTestBehavior),
          ),
        );
}

final class Scrollable extends Wrapper {
  @Goto(_i1.Scrollable.new)
  Scrollable(
    $ $config, {
    _i2.Key? key,
    _i5.AxisDirection axisDirection = _i5.AxisDirection.down,
    _i1.ScrollController? controller,
    _i1.ScrollPhysics? physics,
    required _i1.ViewportBuilder viewportBuilder,
    _i1.ScrollIncrementCalculator? incrementCalculator,
    bool excludeFromSemantics = false,
    int? semanticChildCount,
    _i3.DragStartBehavior dragStartBehavior = _i3.DragStartBehavior.start,
    String? restorationId,
    _i1.ScrollBehavior? scrollBehavior,
    ui.Clip clipBehavior = ui.Clip.hardEdge,
    _i4.HitTestBehavior hitTestBehavior = _i4.HitTestBehavior.opaque,
  }) : super(
          Argument({
            #key: key,
            #axisDirection: axisDirection,
            #controller: controller,
            #physics: physics,
            #viewportBuilder: viewportBuilder,
            #incrementCalculator: incrementCalculator,
            #excludeFromSemantics: excludeFromSemantics,
            #semanticChildCount: semanticChildCount,
            #dragStartBehavior: dragStartBehavior,
            #restorationId: restorationId,
            #scrollBehavior: scrollBehavior,
            #clipBehavior: clipBehavior,
            #hitTestBehavior: hitTestBehavior,
          }),
          builder: (args) => _i1.Scrollable(
            key: args(#key),
            axisDirection: args(#axisDirection),
            controller: args(#controller),
            physics: args(#physics),
            viewportBuilder: args(#viewportBuilder),
            incrementCalculator: args(#incrementCalculator),
            excludeFromSemantics: args(#excludeFromSemantics),
            semanticChildCount: args(#semanticChildCount),
            dragStartBehavior: args(#dragStartBehavior),
            restorationId: args(#restorationId),
            scrollBehavior: args(#scrollBehavior),
            clipBehavior: args(#clipBehavior),
            hitTestBehavior: args(#hitTestBehavior),
          ),
        );
}
