library rxflutter; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:flutter/foundation.dart' as _i2;
import 'package:flutter/widgets.dart' as _i1;

import '../wrapper.dart';

final class SliverPersistentHeader extends Wrapper {
  @Goto(_i1.SliverPersistentHeader.new)
  SliverPersistentHeader({
    _i2.Key? key,
    required _i1.SliverPersistentHeaderDelegate delegate,
    bool pinned = false,
    bool floating = false,
    // Associate with key
    Stream<_i2.Key?>? $key,
    // Associate with delegate
    Stream<_i1.SliverPersistentHeaderDelegate>? $delegate,
    // Associate with pinned
    Stream<bool>? $pinned,
    // Associate with floating
    Stream<bool>? $floating,
  }) : super(
          Argument(
            {
              'key': key,
              'delegate': delegate,
              'pinned': pinned,
              'floating': floating,
            },
            stream: {
              'key': $key,
              'delegate': $delegate,
              'pinned': $pinned,
              'floating': $floating,
            },
          ),
          builder: (args) => _i1.SliverPersistentHeader(
            key: args('key'),
            delegate: args('delegate'),
            pinned: args('pinned'),
            floating: args('floating'),
          ),
        );
}
