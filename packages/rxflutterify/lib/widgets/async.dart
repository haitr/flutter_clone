library rxflutterify; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:async';

import 'package:flutter/foundation.dart' as _i2;
import 'package:flutter/widgets.dart' as _i1;

import '../wrapper.dart';

final class StreamBuilder<T> extends Wrapper {
  @Goto(_i1.StreamBuilder.new)
  StreamBuilder(
    $ $config, {
    _i2.Key? key,
    T? initialData,
    required Stream<T>? stream,
    required _i1.AsyncWidgetBuilder<T> builder,
  }) : super(
          Argument({
            #key: key,
            #initialData: initialData,
            #stream: stream,
            #builder: builder,
          }),
          builder: (args) => _i1.StreamBuilder<T>(
            key: args(#key),
            initialData: args(#initialData),
            stream: args(#stream),
            builder: args(#builder),
          ),
        );
}

final class FutureBuilder<T> extends Wrapper {
  @Goto(_i1.FutureBuilder.new)
  FutureBuilder(
    $ $config, {
    _i2.Key? key,
    required Future<T>? future,
    T? initialData,
    required _i1.AsyncWidgetBuilder<T> builder,
  }) : super(
          Argument({
            #key: key,
            #future: future,
            #initialData: initialData,
            #builder: builder,
          }),
          builder: (args) => _i1.FutureBuilder<T>(
            key: args(#key),
            future: args(#future),
            initialData: args(#initialData),
            builder: args(#builder),
          ),
        );
}
