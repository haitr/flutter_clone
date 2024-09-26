library rxflutterify; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:flutter/foundation.dart' as _i2;
import 'package:flutter/widgets.dart' as _i1;

import '../wrapper.dart';

final class ErrorWidget extends Wrapper {
  @Goto(_i1.ErrorWidget.new)
  ErrorWidget(
    Object exception, {
    // Associate with exception
    Stream<Object>? $exception,
  }) : super(
          Argument(
            {'exception': exception},
            stream: {'exception': $exception},
          ),
          builder: (args) => _i1.ErrorWidget(args('exception')),
        );

  @Goto(_i1.ErrorWidget.withDetails)
  ErrorWidget.withDetails({
    String message = '',
    _i2.FlutterError? error,
    // Associate with message
    Stream<String>? $message,
    // Associate with error
    Stream<_i2.FlutterError?>? $error,
  }) : super(
          Argument(
            {
              'message': message,
              'error': error,
            },
            stream: {
              'message': $message,
              'error': $error,
            },
          ),
          builder: (args) => _i1.ErrorWidget.withDetails(
            message: args('message'),
            error: args('error'),
          ),
        );
}
