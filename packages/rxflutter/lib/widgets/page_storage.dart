library rxflutter; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:flutter/foundation.dart' as _i2;
import 'package:flutter/widgets.dart' as _i1;

import '../wrapper.dart';

final class PageStorage extends Wrapper {
  @Goto(_i1.PageStorage.new)
  PageStorage({
    _i2.Key? key,
    required _i1.PageStorageBucket bucket,
    required _i1.Widget child,
    // Associate with key
    Stream<_i2.Key?>? $key,
    // Associate with bucket
    Stream<_i1.PageStorageBucket>? $bucket,
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
          builder: (args) => _i1.PageStorage(
            key: args('key'),
            bucket: args('bucket'),
            child: args('child'),
          ),
        );
}
