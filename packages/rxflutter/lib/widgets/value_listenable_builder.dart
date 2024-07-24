library rxflutter; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:flutter/foundation.dart' as _i2;
import 'package:flutter/widgets.dart' as _i1;

import '../wrapper.dart';

final class ValueListenableBuilder<T> extends Wrapper {
  @Goto(_i1.ValueListenableBuilder.new)
  ValueListenableBuilder({
    _i2.Key? key,
    required _i2.ValueListenable<T> valueListenable,
    required _i1.ValueWidgetBuilder<T> builder,
    _i1.Widget? child,
    // Associate with key
    Stream<_i2.Key?>? $key,
    // Associate with valueListenable
    Stream<_i2.ValueListenable<T>>? $valueListenable,
    // Associate with builder
    Stream<_i1.ValueWidgetBuilder<T>>? $builder,
    // Associate with child
    Stream<_i1.Widget?>? $child,
  }) : super(
          Argument(
            {
              'key': key,
              'valueListenable': valueListenable,
              'builder': builder,
              'child': child,
            },
            stream: {
              'key': $key,
              'valueListenable': $valueListenable,
              'builder': $builder,
              'child': $child,
            },
          ),
          builder: (args) => _i1.ValueListenableBuilder<T>(
            key: args('key'),
            valueListenable: args('valueListenable'),
            builder: args('builder'),
            child: args('child'),
          ),
        );
}
