library rxflutterify; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:flutter/cupertino.dart' as _i1;
import 'package:flutter/foundation.dart' as _i2;
import 'package:flutter/widgets.dart' as _i3;

import '../wrapper.dart';

final class CupertinoSpellCheckSuggestionsToolbar extends Wrapper {
  @Goto(_i1.CupertinoSpellCheckSuggestionsToolbar.new)
  CupertinoSpellCheckSuggestionsToolbar(
    $ $config, {
    _i2.Key? key,
    required _i3.TextSelectionToolbarAnchors anchors,
    required List<_i3.ContextMenuButtonItem> buttonItems,
  }) : super(
          Argument({
            #key: key,
            #anchors: anchors,
            #buttonItems: buttonItems,
          }),
          builder: (args) => _i1.CupertinoSpellCheckSuggestionsToolbar(
            key: args(#key),
            anchors: args(#anchors),
            buttonItems: args(#buttonItems),
          ),
        );

  @Goto(_i1.CupertinoSpellCheckSuggestionsToolbar.editableText)
  CupertinoSpellCheckSuggestionsToolbar.editableText(
    $ $config, {
    _i2.Key? key,
    required _i3.EditableTextState editableTextState,
  }) : super(
          Argument({
            #key: key,
            #editableTextState: editableTextState,
          }),
          builder: (args) => _i1.CupertinoSpellCheckSuggestionsToolbar.editableText(
            key: args(#key),
            editableTextState: args(#editableTextState),
          ),
        );
}
