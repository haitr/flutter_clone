library rxflutterify_binding; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:ui' as ui;

import 'package:flutter/cupertino.dart' as _i1;
import 'package:flutter/foundation.dart' as _i2;
import 'package:flutter/rendering.dart' as _i4;
import 'package:flutter/widgets.dart' as _i3;

import '../wrapper.dart';

final class CupertinoAdaptiveTextSelectionToolbar extends Wrapper {
  @Goto(_i1.CupertinoAdaptiveTextSelectionToolbar.new)
  CupertinoAdaptiveTextSelectionToolbar(
    $ $config, {
    _i2.Key? key,
    required List<_i3.Widget>? children,
    required _i3.TextSelectionToolbarAnchors anchors,
  }) : super(
          Argument({
            #key: key,
            #children: children,
            #anchors: anchors,
          }),
          builder: (args) => _i1.CupertinoAdaptiveTextSelectionToolbar(
            key: args(#key),
            children: args(#children),
            anchors: args(#anchors),
          ),
        );

  @Goto(_i1.CupertinoAdaptiveTextSelectionToolbar.buttonItems)
  CupertinoAdaptiveTextSelectionToolbar.buttonItems(
    $ $config, {
    _i2.Key? key,
    required List<_i3.ContextMenuButtonItem>? buttonItems,
    required _i3.TextSelectionToolbarAnchors anchors,
  }) : super(
          Argument({
            #key: key,
            #buttonItems: buttonItems,
            #anchors: anchors,
          }),
          builder: (args) => _i1.CupertinoAdaptiveTextSelectionToolbar.buttonItems(
            key: args(#key),
            buttonItems: args(#buttonItems),
            anchors: args(#anchors),
          ),
        );

  @Goto(_i1.CupertinoAdaptiveTextSelectionToolbar.editable)
  CupertinoAdaptiveTextSelectionToolbar.editable(
    $ $config, {
    _i2.Key? key,
    required _i3.ClipboardStatus clipboardStatus,
    required ui.VoidCallback? onCopy,
    required ui.VoidCallback? onCut,
    required ui.VoidCallback? onPaste,
    required ui.VoidCallback? onSelectAll,
    required ui.VoidCallback? onLookUp,
    required ui.VoidCallback? onSearchWeb,
    required ui.VoidCallback? onShare,
    required ui.VoidCallback? onLiveTextInput,
    required _i3.TextSelectionToolbarAnchors anchors,
  }) : super(
          Argument({
            #key: key,
            #clipboardStatus: clipboardStatus,
            #onCopy: onCopy,
            #onCut: onCut,
            #onPaste: onPaste,
            #onSelectAll: onSelectAll,
            #onLookUp: onLookUp,
            #onSearchWeb: onSearchWeb,
            #onShare: onShare,
            #onLiveTextInput: onLiveTextInput,
            #anchors: anchors,
          }),
          builder: (args) => _i1.CupertinoAdaptiveTextSelectionToolbar.editable(
            key: args(#key),
            clipboardStatus: args(#clipboardStatus),
            onCopy: args(#onCopy),
            onCut: args(#onCut),
            onPaste: args(#onPaste),
            onSelectAll: args(#onSelectAll),
            onLookUp: args(#onLookUp),
            onSearchWeb: args(#onSearchWeb),
            onShare: args(#onShare),
            onLiveTextInput: args(#onLiveTextInput),
            anchors: args(#anchors),
          ),
        );

  @Goto(_i1.CupertinoAdaptiveTextSelectionToolbar.editableText)
  CupertinoAdaptiveTextSelectionToolbar.editableText(
    $ $config, {
    _i2.Key? key,
    required _i3.EditableTextState editableTextState,
  }) : super(
          Argument({
            #key: key,
            #editableTextState: editableTextState,
          }),
          builder: (args) => _i1.CupertinoAdaptiveTextSelectionToolbar.editableText(
            key: args(#key),
            editableTextState: args(#editableTextState),
          ),
        );

  @Goto(_i1.CupertinoAdaptiveTextSelectionToolbar.selectable)
  CupertinoAdaptiveTextSelectionToolbar.selectable(
    $ $config, {
    _i2.Key? key,
    required ui.VoidCallback onCopy,
    required ui.VoidCallback onSelectAll,
    required _i4.SelectionGeometry selectionGeometry,
    required _i3.TextSelectionToolbarAnchors anchors,
  }) : super(
          Argument({
            #key: key,
            #onCopy: onCopy,
            #onSelectAll: onSelectAll,
            #selectionGeometry: selectionGeometry,
            #anchors: anchors,
          }),
          builder: (args) => _i1.CupertinoAdaptiveTextSelectionToolbar.selectable(
            key: args(#key),
            onCopy: args(#onCopy),
            onSelectAll: args(#onSelectAll),
            selectionGeometry: args(#selectionGeometry),
            anchors: args(#anchors),
          ),
        );
}
