library rxflutterify_binding; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:flutter/foundation.dart' as _i2;
import 'package:flutter/widgets.dart' as _i1;

import '../wrapper.dart';

final class PageStorage extends Wrapper {
  @Goto(_i1.PageStorage.new)
  PageStorage(
    $ $config, {
    _i2.Key? key,
    required _i1.PageStorageBucket bucket,
    required _i1.Widget child,
  }) : super(
          Argument({
            #key: key,
            #bucket: bucket,
            #child: child,
          }),
          builder: (args) => _i1.PageStorage(
            key: args(#key),
            bucket: args(#bucket),
            child: args(#child),
          ),
        );
}
