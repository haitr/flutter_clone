library rxflutter; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:flutter/foundation.dart' as _i2;
import 'package:flutter/material.dart' as _i1;
import 'package:flutter/painting.dart' as _i4;
import 'package:flutter/rendering.dart' as _i3;
import 'package:flutter/widgets.dart' as _i5;

import '../wrapper.dart';

final class ButtonBar extends Wrapper {
  @Goto(_i1.ButtonBar.new)
  ButtonBar({
    _i2.Key? key,
    _i3.MainAxisAlignment? alignment,
    _i3.MainAxisSize? mainAxisSize,
    _i1.ButtonTextTheme? buttonTextTheme,
    double? buttonMinWidth,
    double? buttonHeight,
    _i4.EdgeInsetsGeometry? buttonPadding,
    bool? buttonAlignedDropdown,
    _i1.ButtonBarLayoutBehavior? layoutBehavior,
    _i4.VerticalDirection? overflowDirection,
    double? overflowButtonSpacing,
    List<_i5.Widget> children = const [],
    // Associate with key
    Stream<_i2.Key?>? $key,
    // Associate with alignment
    Stream<_i3.MainAxisAlignment?>? $alignment,
    // Associate with mainAxisSize
    Stream<_i3.MainAxisSize?>? $mainAxisSize,
    // Associate with buttonTextTheme
    Stream<_i1.ButtonTextTheme?>? $buttonTextTheme,
    // Associate with buttonMinWidth
    Stream<double?>? $buttonMinWidth,
    // Associate with buttonHeight
    Stream<double?>? $buttonHeight,
    // Associate with buttonPadding
    Stream<_i4.EdgeInsetsGeometry?>? $buttonPadding,
    // Associate with buttonAlignedDropdown
    Stream<bool?>? $buttonAlignedDropdown,
    // Associate with layoutBehavior
    Stream<_i1.ButtonBarLayoutBehavior?>? $layoutBehavior,
    // Associate with overflowDirection
    Stream<_i4.VerticalDirection?>? $overflowDirection,
    // Associate with overflowButtonSpacing
    Stream<double?>? $overflowButtonSpacing,
    // Associate with children
    Stream<List<_i5.Widget>>? $children,
  }) : super(
          Argument(
            {
              'key': key,
              'alignment': alignment,
              'mainAxisSize': mainAxisSize,
              'buttonTextTheme': buttonTextTheme,
              'buttonMinWidth': buttonMinWidth,
              'buttonHeight': buttonHeight,
              'buttonPadding': buttonPadding,
              'buttonAlignedDropdown': buttonAlignedDropdown,
              'layoutBehavior': layoutBehavior,
              'overflowDirection': overflowDirection,
              'overflowButtonSpacing': overflowButtonSpacing,
              'children': children,
            },
            stream: {
              'key': $key,
              'alignment': $alignment,
              'mainAxisSize': $mainAxisSize,
              'buttonTextTheme': $buttonTextTheme,
              'buttonMinWidth': $buttonMinWidth,
              'buttonHeight': $buttonHeight,
              'buttonPadding': $buttonPadding,
              'buttonAlignedDropdown': $buttonAlignedDropdown,
              'layoutBehavior': $layoutBehavior,
              'overflowDirection': $overflowDirection,
              'overflowButtonSpacing': $overflowButtonSpacing,
              'children': $children,
            },
          ),
          builder: (args) => _i1.ButtonBar(
            key: args('key'),
            alignment: args('alignment'),
            mainAxisSize: args('mainAxisSize'),
            buttonTextTheme: args('buttonTextTheme'),
            buttonMinWidth: args('buttonMinWidth'),
            buttonHeight: args('buttonHeight'),
            buttonPadding: args('buttonPadding'),
            buttonAlignedDropdown: args('buttonAlignedDropdown'),
            layoutBehavior: args('layoutBehavior'),
            overflowDirection: args('overflowDirection'),
            overflowButtonSpacing: args('overflowButtonSpacing'),
            children: args('children'),
          ),
        );
}
