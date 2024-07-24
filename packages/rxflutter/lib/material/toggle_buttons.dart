library rxflutter; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:ui' as ui;

import 'package:flutter/foundation.dart' as _i2;
import 'package:flutter/material.dart' as _i1;
import 'package:flutter/painting.dart' as _i5;
import 'package:flutter/rendering.dart' as _i6;
import 'package:flutter/services.dart' as _i4;
import 'package:flutter/widgets.dart' as _i3;

import '../wrapper.dart';

final class ToggleButtons extends Wrapper {
  @Goto(_i1.ToggleButtons.new)
  ToggleButtons({
    _i2.Key? key,
    required List<_i3.Widget> children,
    required List<bool> isSelected,
    void Function(int)? onPressed,
    _i4.MouseCursor? mouseCursor,
    _i1.MaterialTapTargetSize? tapTargetSize,
    _i5.TextStyle? textStyle,
    _i6.BoxConstraints? constraints,
    ui.Color? color,
    ui.Color? selectedColor,
    ui.Color? disabledColor,
    ui.Color? fillColor,
    ui.Color? focusColor,
    ui.Color? highlightColor,
    ui.Color? hoverColor,
    ui.Color? splashColor,
    List<_i3.FocusNode>? focusNodes,
    bool renderBorder = true,
    ui.Color? borderColor,
    ui.Color? selectedBorderColor,
    ui.Color? disabledBorderColor,
    _i5.BorderRadius? borderRadius,
    double? borderWidth,
    _i5.Axis direction = _i5.Axis.horizontal,
    _i5.VerticalDirection verticalDirection = _i5.VerticalDirection.down,
    // Associate with key
    Stream<_i2.Key?>? $key,
    // Associate with children
    Stream<List<_i3.Widget>>? $children,
    // Associate with isSelected
    Stream<List<bool>>? $isSelected,
    // Associate with onPressed
    Stream<void Function(int)?>? $onPressed,
    // Associate with mouseCursor
    Stream<_i4.MouseCursor?>? $mouseCursor,
    // Associate with tapTargetSize
    Stream<_i1.MaterialTapTargetSize?>? $tapTargetSize,
    // Associate with textStyle
    Stream<_i5.TextStyle?>? $textStyle,
    // Associate with constraints
    Stream<_i6.BoxConstraints?>? $constraints,
    // Associate with color
    Stream<ui.Color?>? $color,
    // Associate with selectedColor
    Stream<ui.Color?>? $selectedColor,
    // Associate with disabledColor
    Stream<ui.Color?>? $disabledColor,
    // Associate with fillColor
    Stream<ui.Color?>? $fillColor,
    // Associate with focusColor
    Stream<ui.Color?>? $focusColor,
    // Associate with highlightColor
    Stream<ui.Color?>? $highlightColor,
    // Associate with hoverColor
    Stream<ui.Color?>? $hoverColor,
    // Associate with splashColor
    Stream<ui.Color?>? $splashColor,
    // Associate with focusNodes
    Stream<List<_i3.FocusNode>?>? $focusNodes,
    // Associate with renderBorder
    Stream<bool>? $renderBorder,
    // Associate with borderColor
    Stream<ui.Color?>? $borderColor,
    // Associate with selectedBorderColor
    Stream<ui.Color?>? $selectedBorderColor,
    // Associate with disabledBorderColor
    Stream<ui.Color?>? $disabledBorderColor,
    // Associate with borderRadius
    Stream<_i5.BorderRadius?>? $borderRadius,
    // Associate with borderWidth
    Stream<double?>? $borderWidth,
    // Associate with direction
    Stream<_i5.Axis>? $direction,
    // Associate with verticalDirection
    Stream<_i5.VerticalDirection>? $verticalDirection,
  }) : super(
          Argument(
            {
              'key': key,
              'children': children,
              'isSelected': isSelected,
              'onPressed': onPressed,
              'mouseCursor': mouseCursor,
              'tapTargetSize': tapTargetSize,
              'textStyle': textStyle,
              'constraints': constraints,
              'color': color,
              'selectedColor': selectedColor,
              'disabledColor': disabledColor,
              'fillColor': fillColor,
              'focusColor': focusColor,
              'highlightColor': highlightColor,
              'hoverColor': hoverColor,
              'splashColor': splashColor,
              'focusNodes': focusNodes,
              'renderBorder': renderBorder,
              'borderColor': borderColor,
              'selectedBorderColor': selectedBorderColor,
              'disabledBorderColor': disabledBorderColor,
              'borderRadius': borderRadius,
              'borderWidth': borderWidth,
              'direction': direction,
              'verticalDirection': verticalDirection,
            },
            stream: {
              'key': $key,
              'children': $children,
              'isSelected': $isSelected,
              'onPressed': $onPressed,
              'mouseCursor': $mouseCursor,
              'tapTargetSize': $tapTargetSize,
              'textStyle': $textStyle,
              'constraints': $constraints,
              'color': $color,
              'selectedColor': $selectedColor,
              'disabledColor': $disabledColor,
              'fillColor': $fillColor,
              'focusColor': $focusColor,
              'highlightColor': $highlightColor,
              'hoverColor': $hoverColor,
              'splashColor': $splashColor,
              'focusNodes': $focusNodes,
              'renderBorder': $renderBorder,
              'borderColor': $borderColor,
              'selectedBorderColor': $selectedBorderColor,
              'disabledBorderColor': $disabledBorderColor,
              'borderRadius': $borderRadius,
              'borderWidth': $borderWidth,
              'direction': $direction,
              'verticalDirection': $verticalDirection,
            },
          ),
          builder: (args) => _i1.ToggleButtons(
            key: args('key'),
            children: args('children'),
            isSelected: args('isSelected'),
            onPressed: args('onPressed'),
            mouseCursor: args('mouseCursor'),
            tapTargetSize: args('tapTargetSize'),
            textStyle: args('textStyle'),
            constraints: args('constraints'),
            color: args('color'),
            selectedColor: args('selectedColor'),
            disabledColor: args('disabledColor'),
            fillColor: args('fillColor'),
            focusColor: args('focusColor'),
            highlightColor: args('highlightColor'),
            hoverColor: args('hoverColor'),
            splashColor: args('splashColor'),
            focusNodes: args('focusNodes'),
            renderBorder: args('renderBorder'),
            borderColor: args('borderColor'),
            selectedBorderColor: args('selectedBorderColor'),
            disabledBorderColor: args('disabledBorderColor'),
            borderRadius: args('borderRadius'),
            borderWidth: args('borderWidth'),
            direction: args('direction'),
            verticalDirection: args('verticalDirection'),
          ),
        );
}
