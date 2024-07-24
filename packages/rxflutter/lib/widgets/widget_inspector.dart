library rxflutter; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:flutter/foundation.dart' as _i2;
import 'package:flutter/widgets.dart' as _i1;

import '../wrapper.dart';

final class WidgetInspector extends Wrapper {
  @Goto(_i1.WidgetInspector.new)
  WidgetInspector({
    _i2.Key? key,
    required _i1.Widget child,
    required _i1.InspectorSelectButtonBuilder? selectButtonBuilder,
    // Associate with key
    Stream<_i2.Key?>? $key,
    // Associate with child
    Stream<_i1.Widget>? $child,
    // Associate with selectButtonBuilder
    Stream<_i1.InspectorSelectButtonBuilder?>? $selectButtonBuilder,
  }) : super(
          Argument(
            {
              'key': key,
              'child': child,
              'selectButtonBuilder': selectButtonBuilder,
            },
            stream: {
              'key': $key,
              'child': $child,
              'selectButtonBuilder': $selectButtonBuilder,
            },
          ),
          builder: (args) => _i1.WidgetInspector(
            key: args('key'),
            child: args('child'),
            selectButtonBuilder: args('selectButtonBuilder'),
          ),
        );
}
