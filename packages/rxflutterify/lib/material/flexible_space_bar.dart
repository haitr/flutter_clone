library rxflutterify; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:flutter/foundation.dart' as _i2;
import 'package:flutter/material.dart' as _i1;
import 'package:flutter/painting.dart' as _i4;
import 'package:flutter/widgets.dart' as _i3;

import '../wrapper.dart';

final class FlexibleSpaceBarSettings extends Wrapper {
  @Goto(_i1.FlexibleSpaceBarSettings.new)
  FlexibleSpaceBarSettings({
    _i2.Key? key,
    required double toolbarOpacity,
    required double minExtent,
    required double maxExtent,
    required double currentExtent,
    required _i3.Widget child,
    bool? isScrolledUnder,
    bool? hasLeading,
    // Associate with key
    Stream<_i2.Key?>? $key,
    // Associate with toolbarOpacity
    Stream<double>? $toolbarOpacity,
    // Associate with minExtent
    Stream<double>? $minExtent,
    // Associate with maxExtent
    Stream<double>? $maxExtent,
    // Associate with currentExtent
    Stream<double>? $currentExtent,
    // Associate with child
    Stream<_i3.Widget>? $child,
    // Associate with isScrolledUnder
    Stream<bool?>? $isScrolledUnder,
    // Associate with hasLeading
    Stream<bool?>? $hasLeading,
  }) : super(
          Argument(
            {
              'key': key,
              'toolbarOpacity': toolbarOpacity,
              'minExtent': minExtent,
              'maxExtent': maxExtent,
              'currentExtent': currentExtent,
              'child': child,
              'isScrolledUnder': isScrolledUnder,
              'hasLeading': hasLeading,
            },
            stream: {
              'key': $key,
              'toolbarOpacity': $toolbarOpacity,
              'minExtent': $minExtent,
              'maxExtent': $maxExtent,
              'currentExtent': $currentExtent,
              'child': $child,
              'isScrolledUnder': $isScrolledUnder,
              'hasLeading': $hasLeading,
            },
          ),
          builder: (args) => _i1.FlexibleSpaceBarSettings(
            key: args('key'),
            toolbarOpacity: args('toolbarOpacity'),
            minExtent: args('minExtent'),
            maxExtent: args('maxExtent'),
            currentExtent: args('currentExtent'),
            child: args('child'),
            isScrolledUnder: args('isScrolledUnder'),
            hasLeading: args('hasLeading'),
          ),
        );
}

final class FlexibleSpaceBar extends Wrapper {
  @Goto(_i1.FlexibleSpaceBar.new)
  FlexibleSpaceBar({
    _i2.Key? key,
    _i3.Widget? title,
    _i3.Widget? background,
    bool? centerTitle,
    _i4.EdgeInsetsGeometry? titlePadding,
    _i1.CollapseMode collapseMode = _i1.CollapseMode.parallax,
    List<_i1.StretchMode> stretchModes = const [_i1.StretchMode.zoomBackground],
    double expandedTitleScale = 1.5,
    // Associate with key
    Stream<_i2.Key?>? $key,
    // Associate with title
    Stream<_i3.Widget?>? $title,
    // Associate with background
    Stream<_i3.Widget?>? $background,
    // Associate with centerTitle
    Stream<bool?>? $centerTitle,
    // Associate with titlePadding
    Stream<_i4.EdgeInsetsGeometry?>? $titlePadding,
    // Associate with collapseMode
    Stream<_i1.CollapseMode>? $collapseMode,
    // Associate with stretchModes
    Stream<List<_i1.StretchMode>>? $stretchModes,
    // Associate with expandedTitleScale
    Stream<double>? $expandedTitleScale,
  }) : super(
          Argument(
            {
              'key': key,
              'title': title,
              'background': background,
              'centerTitle': centerTitle,
              'titlePadding': titlePadding,
              'collapseMode': collapseMode,
              'stretchModes': stretchModes,
              'expandedTitleScale': expandedTitleScale,
            },
            stream: {
              'key': $key,
              'title': $title,
              'background': $background,
              'centerTitle': $centerTitle,
              'titlePadding': $titlePadding,
              'collapseMode': $collapseMode,
              'stretchModes': $stretchModes,
              'expandedTitleScale': $expandedTitleScale,
            },
          ),
          builder: (args) => _i1.FlexibleSpaceBar(
            key: args('key'),
            title: args('title'),
            background: args('background'),
            centerTitle: args('centerTitle'),
            titlePadding: args('titlePadding'),
            collapseMode: args('collapseMode'),
            stretchModes: args('stretchModes'),
            expandedTitleScale: args('expandedTitleScale'),
          ),
        );
}
