library rxflutterify_binding; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:flutter/foundation.dart' as _i2;
import 'package:flutter/material.dart' as _i1;
import 'package:flutter/painting.dart' as _i3;
import 'package:flutter/widgets.dart' as _i4;

import '../wrapper.dart';

final class SegmentedButton<T> extends Wrapper {
  @Goto(_i1.SegmentedButton.new)
  SegmentedButton(
    $ $config, {
    _i2.Key? key,
    required List<_i1.ButtonSegment<T>> segments,
    required Set<T> selected,
    void Function(Set<T>)? onSelectionChanged,
    bool multiSelectionEnabled = false,
    bool emptySelectionAllowed = false,
    _i3.EdgeInsets? expandedInsets,
    _i1.ButtonStyle? style,
    bool showSelectedIcon = true,
    _i4.Widget? selectedIcon,
  }) : super(
          Argument({
            #key: key,
            #segments: segments,
            #selected: selected,
            #onSelectionChanged: onSelectionChanged,
            #multiSelectionEnabled: multiSelectionEnabled,
            #emptySelectionAllowed: emptySelectionAllowed,
            #expandedInsets: expandedInsets,
            #style: style,
            #showSelectedIcon: showSelectedIcon,
            #selectedIcon: selectedIcon,
          }),
          builder: (args) => _i1.SegmentedButton<T>(
            key: args(#key),
            segments: args(#segments),
            selected: args(#selected),
            onSelectionChanged: args(#onSelectionChanged),
            multiSelectionEnabled: args(#multiSelectionEnabled),
            emptySelectionAllowed: args(#emptySelectionAllowed),
            expandedInsets: args(#expandedInsets),
            style: args(#style),
            showSelectedIcon: args(#showSelectedIcon),
            selectedIcon: args(#selectedIcon),
          ),
        );
}
