library rxflutterify; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:flutter/foundation.dart' as _i2;
import 'package:flutter/rendering.dart' as _i3;
import 'package:flutter/widgets.dart' as _i1;

import '../wrapper.dart';

final class SelectableRegion extends Wrapper {
  @Goto(_i1.SelectableRegion.new)
  SelectableRegion({
    _i2.Key? key,
    _i1.SelectableRegionContextMenuBuilder? contextMenuBuilder,
    required _i1.FocusNode focusNode,
    required _i1.TextSelectionControls selectionControls,
    required _i1.Widget child,
    _i1.TextMagnifierConfiguration magnifierConfiguration = _i1.TextMagnifierConfiguration.disabled,
    _i2.ValueChanged<_i3.SelectedContent?>? onSelectionChanged,
    // Associate with key
    Stream<_i2.Key?>? $key,
    // Associate with contextMenuBuilder
    Stream<_i1.SelectableRegionContextMenuBuilder?>? $contextMenuBuilder,
    // Associate with focusNode
    Stream<_i1.FocusNode>? $focusNode,
    // Associate with selectionControls
    Stream<_i1.TextSelectionControls>? $selectionControls,
    // Associate with child
    Stream<_i1.Widget>? $child,
    // Associate with magnifierConfiguration
    Stream<_i1.TextMagnifierConfiguration>? $magnifierConfiguration,
    // Associate with onSelectionChanged
    Stream<_i2.ValueChanged<_i3.SelectedContent?>?>? $onSelectionChanged,
  }) : super(
          Argument(
            {
              'key': key,
              'contextMenuBuilder': contextMenuBuilder,
              'focusNode': focusNode,
              'selectionControls': selectionControls,
              'child': child,
              'magnifierConfiguration': magnifierConfiguration,
              'onSelectionChanged': onSelectionChanged,
            },
            stream: {
              'key': $key,
              'contextMenuBuilder': $contextMenuBuilder,
              'focusNode': $focusNode,
              'selectionControls': $selectionControls,
              'child': $child,
              'magnifierConfiguration': $magnifierConfiguration,
              'onSelectionChanged': $onSelectionChanged,
            },
          ),
          builder: (args) => _i1.SelectableRegion(
            key: args('key'),
            contextMenuBuilder: args('contextMenuBuilder'),
            focusNode: args('focusNode'),
            selectionControls: args('selectionControls'),
            child: args('child'),
            magnifierConfiguration: args('magnifierConfiguration'),
            onSelectionChanged: args('onSelectionChanged'),
          ),
        );
}
