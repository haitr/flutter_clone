library rxflutterify; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:ui' as ui;

import 'package:flutter/foundation.dart' as _i2;
import 'package:flutter/gestures.dart' as _i5;
import 'package:flutter/rendering.dart' as _i4;
import 'package:flutter/services.dart' as _i3;
import 'package:flutter/widgets.dart' as _i1;

import '../wrapper.dart';

final class PlatformViewLink extends Wrapper {
  @Goto(_i1.PlatformViewLink.new)
  PlatformViewLink(
    $ $config, {
    _i2.Key? key,
    required _i1.PlatformViewSurfaceFactory surfaceFactory,
    required _i1.CreatePlatformViewCallback onCreatePlatformView,
    required String viewType,
  }) : super(
          Argument({
            #key: key,
            #surfaceFactory: surfaceFactory,
            #onCreatePlatformView: onCreatePlatformView,
            #viewType: viewType,
          }),
          builder: (args) => _i1.PlatformViewLink(
            key: args(#key),
            surfaceFactory: args(#surfaceFactory),
            onCreatePlatformView: args(#onCreatePlatformView),
            viewType: args(#viewType),
          ),
        );
}

final class PlatformViewSurface extends Wrapper {
  @Goto(_i1.PlatformViewSurface.new)
  PlatformViewSurface(
    $ $config, {
    _i2.Key? key,
    required _i3.PlatformViewController controller,
    required _i4.PlatformViewHitTestBehavior hitTestBehavior,
    required Set<_i2.Factory<_i5.OneSequenceGestureRecognizer>> gestureRecognizers,
  }) : super(
          Argument({
            #key: key,
            #controller: controller,
            #hitTestBehavior: hitTestBehavior,
            #gestureRecognizers: gestureRecognizers,
          }),
          builder: (args) => _i1.PlatformViewSurface(
            key: args(#key),
            controller: args(#controller),
            hitTestBehavior: args(#hitTestBehavior),
            gestureRecognizers: args(#gestureRecognizers),
          ),
        );
}

final class AndroidViewSurface extends Wrapper {
  @Goto(_i1.AndroidViewSurface.new)
  AndroidViewSurface(
    $ $config, {
    _i2.Key? key,
    required _i3.AndroidViewController controller,
    required _i4.PlatformViewHitTestBehavior hitTestBehavior,
    required Set<_i2.Factory<_i5.OneSequenceGestureRecognizer>> gestureRecognizers,
  }) : super(
          Argument({
            #key: key,
            #controller: controller,
            #hitTestBehavior: hitTestBehavior,
            #gestureRecognizers: gestureRecognizers,
          }),
          builder: (args) => _i1.AndroidViewSurface(
            key: args(#key),
            controller: args(#controller),
            hitTestBehavior: args(#hitTestBehavior),
            gestureRecognizers: args(#gestureRecognizers),
          ),
        );
}

final class AndroidView extends Wrapper {
  @Goto(_i1.AndroidView.new)
  AndroidView(
    $ $config, {
    _i2.Key? key,
    required String viewType,
    _i3.PlatformViewCreatedCallback? onPlatformViewCreated,
    _i4.PlatformViewHitTestBehavior hitTestBehavior = _i4.PlatformViewHitTestBehavior.opaque,
    ui.TextDirection? layoutDirection,
    Set<_i2.Factory<_i5.OneSequenceGestureRecognizer>>? gestureRecognizers,
    dynamic creationParams,
    _i3.MessageCodec<dynamic>? creationParamsCodec,
    ui.Clip clipBehavior = ui.Clip.hardEdge,
  }) : super(
          Argument({
            #key: key,
            #viewType: viewType,
            #onPlatformViewCreated: onPlatformViewCreated,
            #hitTestBehavior: hitTestBehavior,
            #layoutDirection: layoutDirection,
            #gestureRecognizers: gestureRecognizers,
            #creationParams: creationParams,
            #creationParamsCodec: creationParamsCodec,
            #clipBehavior: clipBehavior,
          }),
          builder: (args) => _i1.AndroidView(
            key: args(#key),
            viewType: args(#viewType),
            onPlatformViewCreated: args(#onPlatformViewCreated),
            hitTestBehavior: args(#hitTestBehavior),
            layoutDirection: args(#layoutDirection),
            gestureRecognizers: args(#gestureRecognizers),
            creationParams: args(#creationParams),
            creationParamsCodec: args(#creationParamsCodec),
            clipBehavior: args(#clipBehavior),
          ),
        );
}

final class HtmlElementView extends Wrapper {
  @Goto(_i1.HtmlElementView.new)
  HtmlElementView(
    $ $config, {
    _i2.Key? key,
    required String viewType,
    _i3.PlatformViewCreatedCallback? onPlatformViewCreated,
    Object? creationParams,
  }) : super(
          Argument({
            #key: key,
            #viewType: viewType,
            #onPlatformViewCreated: onPlatformViewCreated,
            #creationParams: creationParams,
          }),
          builder: (args) => _i1.HtmlElementView(
            key: args(#key),
            viewType: args(#viewType),
            onPlatformViewCreated: args(#onPlatformViewCreated),
            creationParams: args(#creationParams),
          ),
        );

  @Goto(_i1.HtmlElementView.fromTagName)
  HtmlElementView.fromTagName(
    $ $config, {
    _i2.Key? key,
    required String tagName,
    bool isVisible = true,
    _i1.ElementCreatedCallback? onElementCreated,
  }) : super(
          Argument({
            #key: key,
            #tagName: tagName,
            #isVisible: isVisible,
            #onElementCreated: onElementCreated,
          }),
          builder: (args) => _i1.HtmlElementView.fromTagName(
            key: args(#key),
            tagName: args(#tagName),
            isVisible: args(#isVisible),
            onElementCreated: args(#onElementCreated),
          ),
        );
}

final class AppKitView extends Wrapper {
  @Goto(_i1.AppKitView.new)
  AppKitView(
    $ $config, {
    _i2.Key? key,
    required String viewType,
    _i3.PlatformViewCreatedCallback? onPlatformViewCreated,
    _i4.PlatformViewHitTestBehavior hitTestBehavior = _i4.PlatformViewHitTestBehavior.opaque,
    ui.TextDirection? layoutDirection,
    dynamic creationParams,
    _i3.MessageCodec<dynamic>? creationParamsCodec,
    Set<_i2.Factory<_i5.OneSequenceGestureRecognizer>>? gestureRecognizers,
  }) : super(
          Argument({
            #key: key,
            #viewType: viewType,
            #onPlatformViewCreated: onPlatformViewCreated,
            #hitTestBehavior: hitTestBehavior,
            #layoutDirection: layoutDirection,
            #creationParams: creationParams,
            #creationParamsCodec: creationParamsCodec,
            #gestureRecognizers: gestureRecognizers,
          }),
          builder: (args) => _i1.AppKitView(
            key: args(#key),
            viewType: args(#viewType),
            onPlatformViewCreated: args(#onPlatformViewCreated),
            hitTestBehavior: args(#hitTestBehavior),
            layoutDirection: args(#layoutDirection),
            creationParams: args(#creationParams),
            creationParamsCodec: args(#creationParamsCodec),
            gestureRecognizers: args(#gestureRecognizers),
          ),
        );
}

final class UiKitView extends Wrapper {
  @Goto(_i1.UiKitView.new)
  UiKitView(
    $ $config, {
    _i2.Key? key,
    required String viewType,
    _i3.PlatformViewCreatedCallback? onPlatformViewCreated,
    _i4.PlatformViewHitTestBehavior hitTestBehavior = _i4.PlatformViewHitTestBehavior.opaque,
    ui.TextDirection? layoutDirection,
    dynamic creationParams,
    _i3.MessageCodec<dynamic>? creationParamsCodec,
    Set<_i2.Factory<_i5.OneSequenceGestureRecognizer>>? gestureRecognizers,
  }) : super(
          Argument({
            #key: key,
            #viewType: viewType,
            #onPlatformViewCreated: onPlatformViewCreated,
            #hitTestBehavior: hitTestBehavior,
            #layoutDirection: layoutDirection,
            #creationParams: creationParams,
            #creationParamsCodec: creationParamsCodec,
            #gestureRecognizers: gestureRecognizers,
          }),
          builder: (args) => _i1.UiKitView(
            key: args(#key),
            viewType: args(#viewType),
            onPlatformViewCreated: args(#onPlatformViewCreated),
            hitTestBehavior: args(#hitTestBehavior),
            layoutDirection: args(#layoutDirection),
            creationParams: args(#creationParams),
            creationParamsCodec: args(#creationParamsCodec),
            gestureRecognizers: args(#gestureRecognizers),
          ),
        );
}
