library rxflutterify; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:ui' as ui;

import 'package:flutter/foundation.dart' as _i2;
import 'package:flutter/gestures.dart' as _i4;
import 'package:flutter/painting.dart' as _i3;
import 'package:flutter/widgets.dart' as _i1;

import '../wrapper.dart';

final class SingleChildScrollView extends Wrapper {
  @Goto(_i1.SingleChildScrollView.new)
  SingleChildScrollView({
    _i2.Key? key,
    _i3.Axis scrollDirection = _i3.Axis.vertical,
    bool reverse = false,
    _i3.EdgeInsetsGeometry? padding,
    bool? primary,
    _i1.ScrollPhysics? physics,
    _i1.ScrollController? controller,
    _i1.Widget? child,
    _i4.DragStartBehavior dragStartBehavior = _i4.DragStartBehavior.start,
    ui.Clip clipBehavior = ui.Clip.hardEdge,
    String? restorationId,
    _i1.ScrollViewKeyboardDismissBehavior keyboardDismissBehavior = _i1.ScrollViewKeyboardDismissBehavior.manual,
    // Associate with key
    Stream<_i2.Key?>? $key,
    // Associate with scrollDirection
    Stream<_i3.Axis>? $scrollDirection,
    // Associate with reverse
    Stream<bool>? $reverse,
    // Associate with padding
    Stream<_i3.EdgeInsetsGeometry?>? $padding,
    // Associate with primary
    Stream<bool?>? $primary,
    // Associate with physics
    Stream<_i1.ScrollPhysics?>? $physics,
    // Associate with controller
    Stream<_i1.ScrollController?>? $controller,
    // Associate with child
    Stream<_i1.Widget?>? $child,
    // Associate with dragStartBehavior
    Stream<_i4.DragStartBehavior>? $dragStartBehavior,
    // Associate with clipBehavior
    Stream<ui.Clip>? $clipBehavior,
    // Associate with restorationId
    Stream<String?>? $restorationId,
    // Associate with keyboardDismissBehavior
    Stream<_i1.ScrollViewKeyboardDismissBehavior>? $keyboardDismissBehavior,
  }) : super(
          Argument(
            {
              'key': key,
              'scrollDirection': scrollDirection,
              'reverse': reverse,
              'padding': padding,
              'primary': primary,
              'physics': physics,
              'controller': controller,
              'child': child,
              'dragStartBehavior': dragStartBehavior,
              'clipBehavior': clipBehavior,
              'restorationId': restorationId,
              'keyboardDismissBehavior': keyboardDismissBehavior,
            },
            stream: {
              'key': $key,
              'scrollDirection': $scrollDirection,
              'reverse': $reverse,
              'padding': $padding,
              'primary': $primary,
              'physics': $physics,
              'controller': $controller,
              'child': $child,
              'dragStartBehavior': $dragStartBehavior,
              'clipBehavior': $clipBehavior,
              'restorationId': $restorationId,
              'keyboardDismissBehavior': $keyboardDismissBehavior,
            },
          ),
          builder: (args) => _i1.SingleChildScrollView(
            key: args('key'),
            scrollDirection: args('scrollDirection'),
            reverse: args('reverse'),
            padding: args('padding'),
            primary: args('primary'),
            physics: args('physics'),
            controller: args('controller'),
            child: args('child'),
            dragStartBehavior: args('dragStartBehavior'),
            clipBehavior: args('clipBehavior'),
            restorationId: args('restorationId'),
            keyboardDismissBehavior: args('keyboardDismissBehavior'),
          ),
        );
}
