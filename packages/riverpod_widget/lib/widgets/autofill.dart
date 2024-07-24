library rxflutterify; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:flutter/foundation.dart' as _i2;
import 'package:flutter/widgets.dart' as _i1;

import '../wrapper.dart';

final class AutofillGroup extends Wrapper {
  @Goto(_i1.AutofillGroup.new)
  AutofillGroup(
    $ $config, {
    _i2.Key? key,
    required _i1.Widget child,
    _i1.AutofillContextAction onDisposeAction = _i1.AutofillContextAction.commit,
  }) : super(
          Argument({
            #key: key,
            #child: child,
            #onDisposeAction: onDisposeAction,
          }),
          builder: (args) => _i1.AutofillGroup(
            key: args(#key),
            child: args(#child),
            onDisposeAction: args(#onDisposeAction),
          ),
        );
}
