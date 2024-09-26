library rxflutterify_binding; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:ui' as ui;

import 'package:flutter/foundation.dart' as _i2;
import 'package:flutter/material.dart' as _i1;
import 'package:flutter/widgets.dart' as _i3;

import '../wrapper.dart';

final class SpellCheckSuggestionsToolbar extends Wrapper {
  @Goto(_i1.SpellCheckSuggestionsToolbar.new)
  SpellCheckSuggestionsToolbar(
    $ $config, {
    _i2.Key? key,
    required ui.Offset anchor,
    required List<_i3.ContextMenuButtonItem> buttonItems,
  }) : super(
          Argument({
            #key: key,
            #anchor: anchor,
            #buttonItems: buttonItems,
          }),
          builder: (args) => _i1.SpellCheckSuggestionsToolbar(
            key: args(#key),
            anchor: args(#anchor),
            buttonItems: args(#buttonItems),
          ),
        );

  @Goto(_i1.SpellCheckSuggestionsToolbar.editableText)
  SpellCheckSuggestionsToolbar.editableText(
    $ $config, {
    _i2.Key? key,
    required _i3.EditableTextState editableTextState,
  }) : super(
          Argument({
            #key: key,
            #editableTextState: editableTextState,
          }),
          builder: (args) => _i1.SpellCheckSuggestionsToolbar.editableText(
            key: args(#key),
            editableTextState: args(#editableTextState),
          ),
        );
}
