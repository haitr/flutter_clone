library rxflutterify; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:ui' as ui;

import 'package:flutter/animation.dart' as _i3;
import 'package:flutter/foundation.dart' as _i2;
import 'package:flutter/material.dart' as _i1;
import 'package:flutter/painting.dart' as _i4;
import 'package:flutter/rendering.dart' as _i5;
import 'package:flutter/widgets.dart' as _i6;

import '../wrapper.dart';

final class BottomSheet extends Wrapper {
  @Goto(_i1.BottomSheet.new)
  BottomSheet({
    _i2.Key? key,
    _i3.AnimationController? animationController,
    bool enableDrag = true,
    bool? showDragHandle,
    ui.Color? dragHandleColor,
    ui.Size? dragHandleSize,
    _i1.BottomSheetDragStartHandler? onDragStart,
    _i1.BottomSheetDragEndHandler? onDragEnd,
    ui.Color? backgroundColor,
    ui.Color? shadowColor,
    double? elevation,
    _i4.ShapeBorder? shape,
    ui.Clip? clipBehavior,
    _i5.BoxConstraints? constraints,
    required ui.VoidCallback onClosing,
    required _i6.WidgetBuilder builder,
    // Associate with key
    Stream<_i2.Key?>? $key,
    // Associate with animationController
    Stream<_i3.AnimationController?>? $animationController,
    // Associate with enableDrag
    Stream<bool>? $enableDrag,
    // Associate with showDragHandle
    Stream<bool?>? $showDragHandle,
    // Associate with dragHandleColor
    Stream<ui.Color?>? $dragHandleColor,
    // Associate with dragHandleSize
    Stream<ui.Size?>? $dragHandleSize,
    // Associate with onDragStart
    Stream<_i1.BottomSheetDragStartHandler?>? $onDragStart,
    // Associate with onDragEnd
    Stream<_i1.BottomSheetDragEndHandler?>? $onDragEnd,
    // Associate with backgroundColor
    Stream<ui.Color?>? $backgroundColor,
    // Associate with shadowColor
    Stream<ui.Color?>? $shadowColor,
    // Associate with elevation
    Stream<double?>? $elevation,
    // Associate with shape
    Stream<_i4.ShapeBorder?>? $shape,
    // Associate with clipBehavior
    Stream<ui.Clip?>? $clipBehavior,
    // Associate with constraints
    Stream<_i5.BoxConstraints?>? $constraints,
    // Associate with onClosing
    Stream<ui.VoidCallback>? $onClosing,
    // Associate with builder
    Stream<_i6.WidgetBuilder>? $builder,
  }) : super(
          Argument(
            {
              'key': key,
              'animationController': animationController,
              'enableDrag': enableDrag,
              'showDragHandle': showDragHandle,
              'dragHandleColor': dragHandleColor,
              'dragHandleSize': dragHandleSize,
              'onDragStart': onDragStart,
              'onDragEnd': onDragEnd,
              'backgroundColor': backgroundColor,
              'shadowColor': shadowColor,
              'elevation': elevation,
              'shape': shape,
              'clipBehavior': clipBehavior,
              'constraints': constraints,
              'onClosing': onClosing,
              'builder': builder,
            },
            stream: {
              'key': $key,
              'animationController': $animationController,
              'enableDrag': $enableDrag,
              'showDragHandle': $showDragHandle,
              'dragHandleColor': $dragHandleColor,
              'dragHandleSize': $dragHandleSize,
              'onDragStart': $onDragStart,
              'onDragEnd': $onDragEnd,
              'backgroundColor': $backgroundColor,
              'shadowColor': $shadowColor,
              'elevation': $elevation,
              'shape': $shape,
              'clipBehavior': $clipBehavior,
              'constraints': $constraints,
              'onClosing': $onClosing,
              'builder': $builder,
            },
          ),
          builder: (args) => _i1.BottomSheet(
            key: args('key'),
            animationController: args('animationController'),
            enableDrag: args('enableDrag'),
            showDragHandle: args('showDragHandle'),
            dragHandleColor: args('dragHandleColor'),
            dragHandleSize: args('dragHandleSize'),
            onDragStart: args('onDragStart'),
            onDragEnd: args('onDragEnd'),
            backgroundColor: args('backgroundColor'),
            shadowColor: args('shadowColor'),
            elevation: args('elevation'),
            shape: args('shape'),
            clipBehavior: args('clipBehavior'),
            constraints: args('constraints'),
            onClosing: args('onClosing'),
            builder: args('builder'),
          ),
        );
}
