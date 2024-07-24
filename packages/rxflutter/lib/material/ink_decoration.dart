library rxflutter; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:ui' as ui;

import 'package:flutter/foundation.dart' as _i2;
import 'package:flutter/material.dart' as _i1;
import 'package:flutter/painting.dart' as _i3;
import 'package:flutter/widgets.dart' as _i4;

import '../wrapper.dart';

final class Ink extends Wrapper {
  @Goto(_i1.Ink.new)
  Ink({
    _i2.Key? key,
    _i3.EdgeInsetsGeometry? padding,
    ui.Color? color,
    _i3.Decoration? decoration,
    double? width,
    double? height,
    _i4.Widget? child,
    // Associate with key
    Stream<_i2.Key?>? $key,
    // Associate with padding
    Stream<_i3.EdgeInsetsGeometry?>? $padding,
    // Associate with color
    Stream<ui.Color?>? $color,
    // Associate with decoration
    Stream<_i3.Decoration?>? $decoration,
    // Associate with width
    Stream<double?>? $width,
    // Associate with height
    Stream<double?>? $height,
    // Associate with child
    Stream<_i4.Widget?>? $child,
  }) : super(
          Argument(
            {
              'key': key,
              'padding': padding,
              'color': color,
              'decoration': decoration,
              'width': width,
              'height': height,
              'child': child,
            },
            stream: {
              'key': $key,
              'padding': $padding,
              'color': $color,
              'decoration': $decoration,
              'width': $width,
              'height': $height,
              'child': $child,
            },
          ),
          builder: (args) => _i1.Ink(
            key: args('key'),
            padding: args('padding'),
            color: args('color'),
            decoration: args('decoration'),
            width: args('width'),
            height: args('height'),
            child: args('child'),
          ),
        );

  @Goto(_i1.Ink.image)
  Ink.image({
    _i2.Key? key,
    _i3.EdgeInsetsGeometry? padding,
    required _i3.ImageProvider image,
    _i3.ImageErrorListener? onImageError,
    ui.ColorFilter? colorFilter,
    _i3.BoxFit? fit,
    _i3.AlignmentGeometry alignment = _i3.Alignment.center,
    ui.Rect? centerSlice,
    _i3.ImageRepeat repeat = _i3.ImageRepeat.noRepeat,
    bool matchTextDirection = false,
    double? width,
    double? height,
    _i4.Widget? child,
    // Associate with key
    Stream<_i2.Key?>? $key,
    // Associate with padding
    Stream<_i3.EdgeInsetsGeometry?>? $padding,
    // Associate with image
    Stream<_i3.ImageProvider>? $image,
    // Associate with onImageError
    Stream<_i3.ImageErrorListener?>? $onImageError,
    // Associate with colorFilter
    Stream<ui.ColorFilter?>? $colorFilter,
    // Associate with fit
    Stream<_i3.BoxFit?>? $fit,
    // Associate with alignment
    Stream<_i3.AlignmentGeometry>? $alignment,
    // Associate with centerSlice
    Stream<ui.Rect?>? $centerSlice,
    // Associate with repeat
    Stream<_i3.ImageRepeat>? $repeat,
    // Associate with matchTextDirection
    Stream<bool>? $matchTextDirection,
    // Associate with width
    Stream<double?>? $width,
    // Associate with height
    Stream<double?>? $height,
    // Associate with child
    Stream<_i4.Widget?>? $child,
  }) : super(
          Argument(
            {
              'key': key,
              'padding': padding,
              'image': image,
              'onImageError': onImageError,
              'colorFilter': colorFilter,
              'fit': fit,
              'alignment': alignment,
              'centerSlice': centerSlice,
              'repeat': repeat,
              'matchTextDirection': matchTextDirection,
              'width': width,
              'height': height,
              'child': child,
            },
            stream: {
              'key': $key,
              'padding': $padding,
              'image': $image,
              'onImageError': $onImageError,
              'colorFilter': $colorFilter,
              'fit': $fit,
              'alignment': $alignment,
              'centerSlice': $centerSlice,
              'repeat': $repeat,
              'matchTextDirection': $matchTextDirection,
              'width': $width,
              'height': $height,
              'child': $child,
            },
          ),
          builder: (args) => _i1.Ink.image(
            key: args('key'),
            padding: args('padding'),
            image: args('image'),
            onImageError: args('onImageError'),
            colorFilter: args('colorFilter'),
            fit: args('fit'),
            alignment: args('alignment'),
            centerSlice: args('centerSlice'),
            repeat: args('repeat'),
            matchTextDirection: args('matchTextDirection'),
            width: args('width'),
            height: args('height'),
            child: args('child'),
          ),
        );
}
