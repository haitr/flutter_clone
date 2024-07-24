library rxflutter; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:flutter/foundation.dart' as _i2;
import 'package:flutter/services.dart' as _i3;
import 'package:flutter/widgets.dart' as _i1;

import '../wrapper.dart';

final class RestorationScope extends Wrapper {
  @Goto(_i1.RestorationScope.new)
  RestorationScope({
    _i2.Key? key,
    required String? restorationId,
    required _i1.Widget child,
    // Associate with key
    Stream<_i2.Key?>? $key,
    // Associate with restorationId
    Stream<String?>? $restorationId,
    // Associate with child
    Stream<_i1.Widget>? $child,
  }) : super(
          Argument(
            {
              'key': key,
              'restorationId': restorationId,
              'child': child,
            },
            stream: {
              'key': $key,
              'restorationId': $restorationId,
              'child': $child,
            },
          ),
          builder: (args) => _i1.RestorationScope(
            key: args('key'),
            restorationId: args('restorationId'),
            child: args('child'),
          ),
        );
}

final class RootRestorationScope extends Wrapper {
  @Goto(_i1.RootRestorationScope.new)
  RootRestorationScope({
    _i2.Key? key,
    required String? restorationId,
    required _i1.Widget child,
    // Associate with key
    Stream<_i2.Key?>? $key,
    // Associate with restorationId
    Stream<String?>? $restorationId,
    // Associate with child
    Stream<_i1.Widget>? $child,
  }) : super(
          Argument(
            {
              'key': key,
              'restorationId': restorationId,
              'child': child,
            },
            stream: {
              'key': $key,
              'restorationId': $restorationId,
              'child': $child,
            },
          ),
          builder: (args) => _i1.RootRestorationScope(
            key: args('key'),
            restorationId: args('restorationId'),
            child: args('child'),
          ),
        );
}

final class UnmanagedRestorationScope extends Wrapper {
  @Goto(_i1.UnmanagedRestorationScope.new)
  UnmanagedRestorationScope({
    _i2.Key? key,
    _i3.RestorationBucket? bucket,
    required _i1.Widget child,
    // Associate with key
    Stream<_i2.Key?>? $key,
    // Associate with bucket
    Stream<_i3.RestorationBucket?>? $bucket,
    // Associate with child
    Stream<_i1.Widget>? $child,
  }) : super(
          Argument(
            {
              'key': key,
              'bucket': bucket,
              'child': child,
            },
            stream: {
              'key': $key,
              'bucket': $bucket,
              'child': $child,
            },
          ),
          builder: (args) => _i1.UnmanagedRestorationScope(
            key: args('key'),
            bucket: args('bucket'),
            child: args('child'),
          ),
        );
}
