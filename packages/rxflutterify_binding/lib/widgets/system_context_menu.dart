library rxflutterify_binding; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:flutter/foundation.dart' as _i2;
import 'package:flutter/widgets.dart' as _i1;

import '../wrapper.dart';

final class SystemContextMenu extends Wrapper {
  @Goto(_i1.SystemContextMenu.editableText)
  SystemContextMenu.editableText(
    $ $config, {
    _i2.Key? key,
    required _i1.EditableTextState editableTextState,
  }) : super(
          Argument({
            #key: key,
            #editableTextState: editableTextState,
          }),
          builder: (args) => _i1.SystemContextMenu.editableText(
            key: args(#key),
            editableTextState: args(#editableTextState),
          ),
        );
}
