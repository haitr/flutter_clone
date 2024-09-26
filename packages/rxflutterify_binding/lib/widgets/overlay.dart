library rxflutterify_binding; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:ui' as ui;

import 'package:flutter/foundation.dart' as _i2;
import 'package:flutter/widgets.dart' as _i1;

import '../wrapper.dart';

final class OverlayPortal extends Wrapper {
  @Goto(_i1.OverlayPortal.new)
  OverlayPortal(
    $ $config, {
    _i2.Key? key,
    required _i1.OverlayPortalController controller,
    required _i1.WidgetBuilder overlayChildBuilder,
    _i1.Widget? child,
  }) : super(
          Argument({
            #key: key,
            #controller: controller,
            #overlayChildBuilder: overlayChildBuilder,
            #child: child,
          }),
          builder: (args) => _i1.OverlayPortal(
            key: args(#key),
            controller: args(#controller),
            overlayChildBuilder: args(#overlayChildBuilder),
            child: args(#child),
          ),
        );

  @Goto(_i1.OverlayPortal.targetsRootOverlay)
  OverlayPortal.targetsRootOverlay(
    $ $config, {
    _i2.Key? key,
    required _i1.OverlayPortalController controller,
    required _i1.WidgetBuilder overlayChildBuilder,
    _i1.Widget? child,
  }) : super(
          Argument({
            #key: key,
            #controller: controller,
            #overlayChildBuilder: overlayChildBuilder,
            #child: child,
          }),
          builder: (args) => _i1.OverlayPortal.targetsRootOverlay(
            key: args(#key),
            controller: args(#controller),
            overlayChildBuilder: args(#overlayChildBuilder),
            child: args(#child),
          ),
        );
}

final class Overlay extends Wrapper {
  @Goto(_i1.Overlay.new)
  Overlay(
    $ $config, {
    _i2.Key? key,
    List<_i1.OverlayEntry> initialEntries = const [],
    ui.Clip clipBehavior = ui.Clip.hardEdge,
  }) : super(
          Argument({
            #key: key,
            #initialEntries: initialEntries,
            #clipBehavior: clipBehavior,
          }),
          builder: (args) => _i1.Overlay(
            key: args(#key),
            initialEntries: args(#initialEntries),
            clipBehavior: args(#clipBehavior),
          ),
        );
}
