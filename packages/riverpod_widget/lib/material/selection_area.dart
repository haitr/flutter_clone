library rxflutterify; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:flutter/foundation.dart' as _i2;
import 'package:flutter/material.dart' as _i1;
import 'package:flutter/rendering.dart' as _i4;
import 'package:flutter/widgets.dart' as _i3;

import '../wrapper.dart';

final class SelectionArea extends Wrapper {
  @Goto(_i1.SelectionArea.new)
  SelectionArea(
    $ $config, {
    _i2.Key? key,
    _i3.FocusNode? focusNode,
    _i3.TextSelectionControls? selectionControls,
    _i3.SelectableRegionContextMenuBuilder? contextMenuBuilder = _defaultContextMenuBuilder,
    _i3.TextMagnifierConfiguration? magnifierConfiguration,
    _i2.ValueChanged<_i4.SelectedContent?>? onSelectionChanged,
    required _i3.Widget child,
  }) : super(
          Argument({
            #key: key,
            #focusNode: focusNode,
            #selectionControls: selectionControls,
            #contextMenuBuilder: contextMenuBuilder,
            #magnifierConfiguration: magnifierConfiguration,
            #onSelectionChanged: onSelectionChanged,
            #child: child,
          }),
          builder: (args) => _i1.SelectionArea(
            key: args(#key),
            focusNode: args(#focusNode),
            selectionControls: args(#selectionControls),
            contextMenuBuilder: args(#contextMenuBuilder),
            magnifierConfiguration: args(#magnifierConfiguration),
            onSelectionChanged: args(#onSelectionChanged),
            child: args(#child),
          ),
        );

  static _i3.Widget _defaultContextMenuBuilder(
    _i3.BuildContext context,
    _i3.SelectableRegionState selectableRegionState,
  ) {
    return _i1.AdaptiveTextSelectionToolbar.selectableRegion(selectableRegionState: selectableRegionState);
  }
}
