library rxflutterify; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:ui' as ui;

import 'package:flutter/foundation.dart' as _i2;
import 'package:flutter/rendering.dart' as _i3;
import 'package:flutter/widgets.dart' as _i1;

import '../wrapper.dart';

final class SnapshotWidget extends Wrapper {
  @Goto(_i1.SnapshotWidget.new)
  SnapshotWidget(
    $ $config, {
    _i2.Key? key,
    _i1.SnapshotMode mode = _i1.SnapshotMode.normal,
    _i1.SnapshotPainter painter = const _DefaultSnapshotPainter(),
    bool autoresize = false,
    required _i1.SnapshotController controller,
    required _i1.Widget? child,
  }) : super(
          Argument({
            #key: key,
            #mode: mode,
            #painter: painter,
            #autoresize: autoresize,
            #controller: controller,
            #child: child,
          }),
          builder: (args) => _i1.SnapshotWidget(
            key: args(#key),
            mode: args(#mode),
            painter: args(#painter),
            autoresize: args(#autoresize),
            controller: args(#controller),
            child: args(#child),
          ),
        );
}

class _DefaultSnapshotPainter implements _i1.SnapshotPainter {
  const _DefaultSnapshotPainter();
  @override
  void addListener(ui.VoidCallback listener) {}
  @override
  void dispose() {}
  @override
  bool get hasListeners => false;
  @override
  void notifyListeners() {}
  @override
  void paint(_i3.PaintingContext context, ui.Offset offset, ui.Size size, _i3.PaintingContextCallback painter) {
    painter(context, offset);
  }

  @override
  void paintSnapshot(_i3.PaintingContext context, ui.Offset offset, ui.Size size, ui.Image image, ui.Size sourceSize, double pixelRatio) {
    final ui.Rect src = ui.Rect.fromLTWH(0, 0, sourceSize.width, sourceSize.height);
    final ui.Rect dst = ui.Rect.fromLTWH(offset.dx, offset.dy, size.width, size.height);
    final ui.Paint paint = ui.Paint()..filterQuality = ui.FilterQuality.medium;
    context.canvas.drawImageRect(image, src, dst, paint);
  }

  @override
  void removeListener(ui.VoidCallback listener) {}
  @override
  bool shouldRepaint(covariant _DefaultSnapshotPainter oldPainter) => false;
}
