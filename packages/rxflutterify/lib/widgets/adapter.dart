library rxflutterify; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:flutter/rendering.dart' as _i1;
import 'package:flutter/widgets.dart' as _i2;

import '../wrapper.dart';

final class RenderObjectToWidgetAdapter<T extends _i1.RenderObject> extends Wrapper {
  @Goto(_i2.RenderObjectToWidgetAdapter.new)
  RenderObjectToWidgetAdapter(
    $ $config, {
    _i2.Widget? child,
    required _i1.RenderObjectWithChildMixin<T> container,
    String? debugShortDescription,
  }) : super(
          Argument({
            #child: child,
            #container: container,
            #debugShortDescription: debugShortDescription,
          }),
          builder: (args) => _i2.RenderObjectToWidgetAdapter<T>(
            child: args(#child),
            container: args(#container),
            debugShortDescription: args(#debugShortDescription),
          ),
        );
}
