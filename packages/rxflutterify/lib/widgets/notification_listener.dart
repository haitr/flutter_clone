library rxflutterify; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:flutter/foundation.dart' as _i2;
import 'package:flutter/widgets.dart' as _i1;

import '../wrapper.dart';

final class NotificationListener<T extends _i1.Notification> extends Wrapper {
  @Goto(_i1.NotificationListener.new)
  NotificationListener({
    _i2.Key? key,
    required _i1.Widget child,
    _i1.NotificationListenerCallback<T>? onNotification,
    // Associate with key
    Stream<_i2.Key?>? $key,
    // Associate with child
    Stream<_i1.Widget>? $child,
    // Associate with onNotification
    Stream<_i1.NotificationListenerCallback<T>?>? $onNotification,
  }) : super(
          Argument(
            {
              'key': key,
              'child': child,
              'onNotification': onNotification,
            },
            stream: {
              'key': $key,
              'child': $child,
              'onNotification': $onNotification,
            },
          ),
          builder: (args) => _i1.NotificationListener<T>(
            key: args('key'),
            child: args('child'),
            onNotification: args('onNotification'),
          ),
        );
}
