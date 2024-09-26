library rxflutterify; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:flutter/foundation.dart' as _i2;
import 'package:flutter/material.dart' as _i1;
import 'package:flutter/painting.dart' as _i3;
import 'package:flutter/widgets.dart' as _i4;

import '../wrapper.dart';

final class SegmentedButton<T> extends Wrapper {
  @Goto(_i1.SegmentedButton.new)
  SegmentedButton({
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
    // Associate with key
    Stream<_i2.Key?>? $key,
    // Associate with segments
    Stream<List<_i1.ButtonSegment<T>>>? $segments,
    // Associate with selected
    Stream<Set<T>>? $selected,
    // Associate with onSelectionChanged
    Stream<void Function(Set<T>)?>? $onSelectionChanged,
    // Associate with multiSelectionEnabled
    Stream<bool>? $multiSelectionEnabled,
    // Associate with emptySelectionAllowed
    Stream<bool>? $emptySelectionAllowed,
    // Associate with expandedInsets
    Stream<_i3.EdgeInsets?>? $expandedInsets,
    // Associate with style
    Stream<_i1.ButtonStyle?>? $style,
    // Associate with showSelectedIcon
    Stream<bool>? $showSelectedIcon,
    // Associate with selectedIcon
    Stream<_i4.Widget?>? $selectedIcon,
  }) : super(
          Argument(
            {
              'key': key,
              'segments': segments,
              'selected': selected,
              'onSelectionChanged': onSelectionChanged,
              'multiSelectionEnabled': multiSelectionEnabled,
              'emptySelectionAllowed': emptySelectionAllowed,
              'expandedInsets': expandedInsets,
              'style': style,
              'showSelectedIcon': showSelectedIcon,
              'selectedIcon': selectedIcon,
            },
            stream: {
              'key': $key,
              'segments': $segments,
              'selected': $selected,
              'onSelectionChanged': $onSelectionChanged,
              'multiSelectionEnabled': $multiSelectionEnabled,
              'emptySelectionAllowed': $emptySelectionAllowed,
              'expandedInsets': $expandedInsets,
              'style': $style,
              'showSelectedIcon': $showSelectedIcon,
              'selectedIcon': $selectedIcon,
            },
          ),
          builder: (args) => _i1.SegmentedButton<T>(
            key: args('key'),
            segments: args('segments'),
            selected: args('selected'),
            onSelectionChanged: args('onSelectionChanged'),
            multiSelectionEnabled: args('multiSelectionEnabled'),
            emptySelectionAllowed: args('emptySelectionAllowed'),
            expandedInsets: args('expandedInsets'),
            style: args('style'),
            showSelectedIcon: args('showSelectedIcon'),
            selectedIcon: args('selectedIcon'),
          ),
        );
}
