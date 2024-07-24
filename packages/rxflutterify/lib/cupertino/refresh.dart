library rxflutterify; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:flutter/cupertino.dart' as _i1;
import 'package:flutter/foundation.dart' as _i2;

import '../wrapper.dart';

final class CupertinoSliverRefreshControl extends Wrapper {
  @Goto(_i1.CupertinoSliverRefreshControl.new)
  CupertinoSliverRefreshControl(
    $ $config, {
    _i2.Key? key,
    double refreshTriggerPullDistance = _defaultRefreshTriggerPullDistance,
    double refreshIndicatorExtent = _defaultRefreshIndicatorExtent,
    _i1.RefreshControlIndicatorBuilder? builder = _i1.CupertinoSliverRefreshControl.buildRefreshIndicator,
    _i1.RefreshCallback? onRefresh,
  }) : super(
          Argument({
            #key: key,
            #refreshTriggerPullDistance: refreshTriggerPullDistance,
            #refreshIndicatorExtent: refreshIndicatorExtent,
            #builder: builder,
            #onRefresh: onRefresh,
          }),
          builder: (args) => _i1.CupertinoSliverRefreshControl(
            key: args(#key),
            refreshTriggerPullDistance: args(#refreshTriggerPullDistance),
            refreshIndicatorExtent: args(#refreshIndicatorExtent),
            builder: args(#builder),
            onRefresh: args(#onRefresh),
          ),
        );

  static const double _defaultRefreshTriggerPullDistance = 100.0;

  static const double _defaultRefreshIndicatorExtent = 60.0;
}
