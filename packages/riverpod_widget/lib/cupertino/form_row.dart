library rxflutterify; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:flutter/cupertino.dart' as _i1;
import 'package:flutter/foundation.dart' as _i2;
import 'package:flutter/painting.dart' as _i4;
import 'package:flutter/widgets.dart' as _i3;

import '../wrapper.dart';

final class CupertinoFormRow extends Wrapper {
  @Goto(_i1.CupertinoFormRow.new)
  CupertinoFormRow(
    $ $config, {
    _i2.Key? key,
    required _i3.Widget child,
    _i3.Widget? prefix,
    _i4.EdgeInsetsGeometry? padding,
    _i3.Widget? helper,
    _i3.Widget? error,
  }) : super(
          Argument({
            #key: key,
            #child: child,
            #prefix: prefix,
            #padding: padding,
            #helper: helper,
            #error: error,
          }),
          builder: (args) => _i1.CupertinoFormRow(
            key: args(#key),
            child: args(#child),
            prefix: args(#prefix),
            padding: args(#padding),
            helper: args(#helper),
            error: args(#error),
          ),
        );
}
