library rxflutterify; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:ui' as ui;

import 'package:flutter/foundation.dart' as _i2;
import 'package:flutter/gestures.dart' as _i3;
import 'package:flutter/painting.dart' as _i4;
import 'package:flutter/widgets.dart' as _i1;

import '../wrapper.dart';

final class TwoDimensionalScrollable extends Wrapper {
  @Goto(_i1.TwoDimensionalScrollable.new)
  TwoDimensionalScrollable({
    _i2.Key? key,
    required _i1.ScrollableDetails horizontalDetails,
    required _i1.ScrollableDetails verticalDetails,
    required _i1.TwoDimensionalViewportBuilder viewportBuilder,
    _i1.ScrollIncrementCalculator? incrementCalculator,
    String? restorationId,
    bool excludeFromSemantics = false,
    _i1.DiagonalDragBehavior diagonalDragBehavior = _i1.DiagonalDragBehavior.none,
    _i3.DragStartBehavior dragStartBehavior = _i3.DragStartBehavior.start,
    // Associate with key
    Stream<_i2.Key?>? $key,
    // Associate with horizontalDetails
    Stream<_i1.ScrollableDetails>? $horizontalDetails,
    // Associate with verticalDetails
    Stream<_i1.ScrollableDetails>? $verticalDetails,
    // Associate with viewportBuilder
    Stream<_i1.TwoDimensionalViewportBuilder>? $viewportBuilder,
    // Associate with incrementCalculator
    Stream<_i1.ScrollIncrementCalculator?>? $incrementCalculator,
    // Associate with restorationId
    Stream<String?>? $restorationId,
    // Associate with excludeFromSemantics
    Stream<bool>? $excludeFromSemantics,
    // Associate with diagonalDragBehavior
    Stream<_i1.DiagonalDragBehavior>? $diagonalDragBehavior,
    // Associate with dragStartBehavior
    Stream<_i3.DragStartBehavior>? $dragStartBehavior,
  }) : super(
          Argument(
            {
              'key': key,
              'horizontalDetails': horizontalDetails,
              'verticalDetails': verticalDetails,
              'viewportBuilder': viewportBuilder,
              'incrementCalculator': incrementCalculator,
              'restorationId': restorationId,
              'excludeFromSemantics': excludeFromSemantics,
              'diagonalDragBehavior': diagonalDragBehavior,
              'dragStartBehavior': dragStartBehavior,
            },
            stream: {
              'key': $key,
              'horizontalDetails': $horizontalDetails,
              'verticalDetails': $verticalDetails,
              'viewportBuilder': $viewportBuilder,
              'incrementCalculator': $incrementCalculator,
              'restorationId': $restorationId,
              'excludeFromSemantics': $excludeFromSemantics,
              'diagonalDragBehavior': $diagonalDragBehavior,
              'dragStartBehavior': $dragStartBehavior,
            },
          ),
          builder: (args) => _i1.TwoDimensionalScrollable(
            key: args('key'),
            horizontalDetails: args('horizontalDetails'),
            verticalDetails: args('verticalDetails'),
            viewportBuilder: args('viewportBuilder'),
            incrementCalculator: args('incrementCalculator'),
            restorationId: args('restorationId'),
            excludeFromSemantics: args('excludeFromSemantics'),
            diagonalDragBehavior: args('diagonalDragBehavior'),
            dragStartBehavior: args('dragStartBehavior'),
          ),
        );
}

final class Scrollable extends Wrapper {
  @Goto(_i1.Scrollable.new)
  Scrollable({
    _i2.Key? key,
    _i4.AxisDirection axisDirection = _i4.AxisDirection.down,
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
    // Associate with key
    Stream<_i2.Key?>? $key,
    // Associate with axisDirection
    Stream<_i4.AxisDirection>? $axisDirection,
    // Associate with controller
    Stream<_i1.ScrollController?>? $controller,
    // Associate with physics
    Stream<_i1.ScrollPhysics?>? $physics,
    // Associate with viewportBuilder
    Stream<_i1.ViewportBuilder>? $viewportBuilder,
    // Associate with incrementCalculator
    Stream<_i1.ScrollIncrementCalculator?>? $incrementCalculator,
    // Associate with excludeFromSemantics
    Stream<bool>? $excludeFromSemantics,
    // Associate with semanticChildCount
    Stream<int?>? $semanticChildCount,
    // Associate with dragStartBehavior
    Stream<_i3.DragStartBehavior>? $dragStartBehavior,
    // Associate with restorationId
    Stream<String?>? $restorationId,
    // Associate with scrollBehavior
    Stream<_i1.ScrollBehavior?>? $scrollBehavior,
    // Associate with clipBehavior
    Stream<ui.Clip>? $clipBehavior,
  }) : super(
          Argument(
            {
              'key': key,
              'axisDirection': axisDirection,
              'controller': controller,
              'physics': physics,
              'viewportBuilder': viewportBuilder,
              'incrementCalculator': incrementCalculator,
              'excludeFromSemantics': excludeFromSemantics,
              'semanticChildCount': semanticChildCount,
              'dragStartBehavior': dragStartBehavior,
              'restorationId': restorationId,
              'scrollBehavior': scrollBehavior,
              'clipBehavior': clipBehavior,
            },
            stream: {
              'key': $key,
              'axisDirection': $axisDirection,
              'controller': $controller,
              'physics': $physics,
              'viewportBuilder': $viewportBuilder,
              'incrementCalculator': $incrementCalculator,
              'excludeFromSemantics': $excludeFromSemantics,
              'semanticChildCount': $semanticChildCount,
              'dragStartBehavior': $dragStartBehavior,
              'restorationId': $restorationId,
              'scrollBehavior': $scrollBehavior,
              'clipBehavior': $clipBehavior,
            },
          ),
          builder: (args) => _i1.Scrollable(
            key: args('key'),
            axisDirection: args('axisDirection'),
            controller: args('controller'),
            physics: args('physics'),
            viewportBuilder: args('viewportBuilder'),
            incrementCalculator: args('incrementCalculator'),
            excludeFromSemantics: args('excludeFromSemantics'),
            semanticChildCount: args('semanticChildCount'),
            dragStartBehavior: args('dragStartBehavior'),
            restorationId: args('restorationId'),
            scrollBehavior: args('scrollBehavior'),
            clipBehavior: args('clipBehavior'),
          ),
        );
}
