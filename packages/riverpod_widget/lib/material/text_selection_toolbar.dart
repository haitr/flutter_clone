library rxflutterify; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:ui' as ui;

import 'package:flutter/foundation.dart' as _i2;
import 'package:flutter/material.dart' as _i1;
import 'package:flutter/painting.dart' as _i4;
import 'package:flutter/widgets.dart' as _i3;

import '../wrapper.dart';

final class TextSelectionToolbar extends Wrapper {
  @Goto(_i1.TextSelectionToolbar.new)
  TextSelectionToolbar(
    $ $config, {
    _i2.Key? key,
    required ui.Offset anchorAbove,
    required ui.Offset anchorBelow,
    _i3.ToolbarBuilder toolbarBuilder = _defaultToolbarBuilder,
    required List<_i3.Widget> children,
  }) : super(
          Argument({
            #key: key,
            #anchorAbove: anchorAbove,
            #anchorBelow: anchorBelow,
            #toolbarBuilder: toolbarBuilder,
            #children: children,
          }),
          builder: (args) => _i1.TextSelectionToolbar(
            key: args(#key),
            anchorAbove: args(#anchorAbove),
            anchorBelow: args(#anchorBelow),
            toolbarBuilder: args(#toolbarBuilder),
            children: args(#children),
          ),
        );

  static _i3.Widget _defaultToolbarBuilder(
    _i3.BuildContext context,
    _i3.Widget child,
  ) {
    return _TextSelectionToolbarContainer(child: child);
  }
}

class _TextSelectionToolbarContainer extends _i3.StatelessWidget {
  const _TextSelectionToolbarContainer({required this.child});
  final _i3.Widget child;
  static const ui.Color _defaultColorLight = ui.Color(0xffffffff);
  static const ui.Color _defaultColorDark = ui.Color(0xff424242);
  static ui.Color _getColor(_i1.ColorScheme colorScheme) {
    final bool isDefaultSurface = switch (colorScheme.brightness) {
      ui.Brightness.light => identical(_i1.ThemeData().colorScheme.surface, colorScheme.surface),
      ui.Brightness.dark => identical(_i1.ThemeData.dark().colorScheme.surface, colorScheme.surface)
    };
    if (!isDefaultSurface) {
      return colorScheme.surface;
    }
    return switch (colorScheme.brightness) { ui.Brightness.light => _defaultColorLight, ui.Brightness.dark => _defaultColorDark };
  }

  @override
  _i3.Widget build(_i3.BuildContext context) {
    final _i1.ThemeData theme = _i1.Theme.of(context);
    return _i1.Material(
        borderRadius: const _i4.BorderRadius.all(ui.Radius.circular(_kToolbarHeight / 2)),
        clipBehavior: ui.Clip.antiAlias,
        color: _getColor(theme.colorScheme),
        elevation: 1.0,
        type: _i1.MaterialType.card,
        child: child);
  }
}

const double _kToolbarHeight = 44.0;
