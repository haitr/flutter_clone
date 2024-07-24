library rxflutterify; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:ui' as ui;

import 'package:flutter/foundation.dart' as _i2;
import 'package:flutter/material.dart' as _i1;
import 'package:flutter/rendering.dart' as _i4;
import 'package:flutter/widgets.dart' as _i3;

import '../wrapper.dart';

final class AdaptiveTextSelectionToolbar extends Wrapper {
  @Goto(_i1.AdaptiveTextSelectionToolbar.new)
  AdaptiveTextSelectionToolbar(
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
          builder: (args) => _i1.AdaptiveTextSelectionToolbar(
            key: args(#key),
            children: args(#children),
            anchors: args(#anchors),
          ),
        );

  @Goto(_i1.AdaptiveTextSelectionToolbar.buttonItems)
  AdaptiveTextSelectionToolbar.buttonItems(
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
          builder: (args) => _i1.AdaptiveTextSelectionToolbar.buttonItems(
            key: args(#key),
            buttonItems: args(#buttonItems),
            anchors: args(#anchors),
          ),
        );

  @Goto(_i1.AdaptiveTextSelectionToolbar.editable)
  AdaptiveTextSelectionToolbar.editable(
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
          builder: (args) => _i1.AdaptiveTextSelectionToolbar.editable(
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

  @Goto(_i1.AdaptiveTextSelectionToolbar.editableText)
  AdaptiveTextSelectionToolbar.editableText(
    $ $config, {
    _i2.Key? key,
    required _i3.EditableTextState editableTextState,
  }) : super(
          Argument({
            #key: key,
            #editableTextState: editableTextState,
          }),
          builder: (args) => _i1.AdaptiveTextSelectionToolbar.editableText(
            key: args(#key),
            editableTextState: args(#editableTextState),
          ),
        );

  @Goto(_i1.AdaptiveTextSelectionToolbar.selectable)
  AdaptiveTextSelectionToolbar.selectable(
    $ $config, {
    _i2.Key? key,
    required ui.VoidCallback onCopy,
    required ui.VoidCallback onSelectAll,
    required ui.VoidCallback? onShare,
    required _i4.SelectionGeometry selectionGeometry,
    required _i3.TextSelectionToolbarAnchors anchors,
  }) : super(
          Argument({
            #key: key,
            #onCopy: onCopy,
            #onSelectAll: onSelectAll,
            #onShare: onShare,
            #selectionGeometry: selectionGeometry,
            #anchors: anchors,
          }),
          builder: (args) => _i1.AdaptiveTextSelectionToolbar.selectable(
            key: args(#key),
            onCopy: args(#onCopy),
            onSelectAll: args(#onSelectAll),
            onShare: args(#onShare),
            selectionGeometry: args(#selectionGeometry),
            anchors: args(#anchors),
          ),
        );

  @Goto(_i1.AdaptiveTextSelectionToolbar.selectableRegion)
  AdaptiveTextSelectionToolbar.selectableRegion(
    $ $config, {
    _i2.Key? key,
    required _i3.SelectableRegionState selectableRegionState,
  }) : super(
          Argument({
            #key: key,
            #selectableRegionState: selectableRegionState,
          }),
          builder: (args) => _i1.AdaptiveTextSelectionToolbar.selectableRegion(
            key: args(#key),
            selectableRegionState: args(#selectableRegionState),
          ),
        );
}
