library rxflutter; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:typed_data' as _i5;
import 'dart:ui' as ui;

import 'package:flutter/animation.dart' as _i4;
import 'package:flutter/foundation.dart' as _i2;
import 'package:flutter/painting.dart' as _i3;
import 'package:flutter/services.dart' as _i6;
import 'package:flutter/widgets.dart' as _i1;

import '../wrapper.dart';

final class FadeInImage extends Wrapper {
  @Goto(_i1.FadeInImage.new)
  FadeInImage({
    _i2.Key? key,
    required _i3.ImageProvider placeholder,
    _i1.ImageErrorWidgetBuilder? placeholderErrorBuilder,
    required _i3.ImageProvider image,
    _i1.ImageErrorWidgetBuilder? imageErrorBuilder,
    bool excludeFromSemantics = false,
    String? imageSemanticLabel,
    Duration fadeOutDuration = const Duration(milliseconds: 300),
    _i4.Curve fadeOutCurve = _i4.Curves.easeOut,
    Duration fadeInDuration = const Duration(milliseconds: 700),
    _i4.Curve fadeInCurve = _i4.Curves.easeIn,
    ui.Color? color,
    ui.BlendMode? colorBlendMode,
    ui.Color? placeholderColor,
    ui.BlendMode? placeholderColorBlendMode,
    double? width,
    double? height,
    _i3.BoxFit? fit,
    _i3.BoxFit? placeholderFit,
    ui.FilterQuality filterQuality = ui.FilterQuality.low,
    ui.FilterQuality? placeholderFilterQuality,
    _i3.AlignmentGeometry alignment = _i3.Alignment.center,
    _i3.ImageRepeat repeat = _i3.ImageRepeat.noRepeat,
    bool matchTextDirection = false,
    // Associate with key
    Stream<_i2.Key?>? $key,
    // Associate with placeholder
    Stream<_i3.ImageProvider>? $placeholder,
    // Associate with placeholderErrorBuilder
    Stream<_i1.ImageErrorWidgetBuilder?>? $placeholderErrorBuilder,
    // Associate with image
    Stream<_i3.ImageProvider>? $image,
    // Associate with imageErrorBuilder
    Stream<_i1.ImageErrorWidgetBuilder?>? $imageErrorBuilder,
    // Associate with excludeFromSemantics
    Stream<bool>? $excludeFromSemantics,
    // Associate with imageSemanticLabel
    Stream<String?>? $imageSemanticLabel,
    // Associate with fadeOutDuration
    Stream<Duration>? $fadeOutDuration,
    // Associate with fadeOutCurve
    Stream<_i4.Curve>? $fadeOutCurve,
    // Associate with fadeInDuration
    Stream<Duration>? $fadeInDuration,
    // Associate with fadeInCurve
    Stream<_i4.Curve>? $fadeInCurve,
    // Associate with color
    Stream<ui.Color?>? $color,
    // Associate with colorBlendMode
    Stream<ui.BlendMode?>? $colorBlendMode,
    // Associate with placeholderColor
    Stream<ui.Color?>? $placeholderColor,
    // Associate with placeholderColorBlendMode
    Stream<ui.BlendMode?>? $placeholderColorBlendMode,
    // Associate with width
    Stream<double?>? $width,
    // Associate with height
    Stream<double?>? $height,
    // Associate with fit
    Stream<_i3.BoxFit?>? $fit,
    // Associate with placeholderFit
    Stream<_i3.BoxFit?>? $placeholderFit,
    // Associate with filterQuality
    Stream<ui.FilterQuality>? $filterQuality,
    // Associate with placeholderFilterQuality
    Stream<ui.FilterQuality?>? $placeholderFilterQuality,
    // Associate with alignment
    Stream<_i3.AlignmentGeometry>? $alignment,
    // Associate with repeat
    Stream<_i3.ImageRepeat>? $repeat,
    // Associate with matchTextDirection
    Stream<bool>? $matchTextDirection,
  }) : super(
          Argument(
            {
              'key': key,
              'placeholder': placeholder,
              'placeholderErrorBuilder': placeholderErrorBuilder,
              'image': image,
              'imageErrorBuilder': imageErrorBuilder,
              'excludeFromSemantics': excludeFromSemantics,
              'imageSemanticLabel': imageSemanticLabel,
              'fadeOutDuration': fadeOutDuration,
              'fadeOutCurve': fadeOutCurve,
              'fadeInDuration': fadeInDuration,
              'fadeInCurve': fadeInCurve,
              'color': color,
              'colorBlendMode': colorBlendMode,
              'placeholderColor': placeholderColor,
              'placeholderColorBlendMode': placeholderColorBlendMode,
              'width': width,
              'height': height,
              'fit': fit,
              'placeholderFit': placeholderFit,
              'filterQuality': filterQuality,
              'placeholderFilterQuality': placeholderFilterQuality,
              'alignment': alignment,
              'repeat': repeat,
              'matchTextDirection': matchTextDirection,
            },
            stream: {
              'key': $key,
              'placeholder': $placeholder,
              'placeholderErrorBuilder': $placeholderErrorBuilder,
              'image': $image,
              'imageErrorBuilder': $imageErrorBuilder,
              'excludeFromSemantics': $excludeFromSemantics,
              'imageSemanticLabel': $imageSemanticLabel,
              'fadeOutDuration': $fadeOutDuration,
              'fadeOutCurve': $fadeOutCurve,
              'fadeInDuration': $fadeInDuration,
              'fadeInCurve': $fadeInCurve,
              'color': $color,
              'colorBlendMode': $colorBlendMode,
              'placeholderColor': $placeholderColor,
              'placeholderColorBlendMode': $placeholderColorBlendMode,
              'width': $width,
              'height': $height,
              'fit': $fit,
              'placeholderFit': $placeholderFit,
              'filterQuality': $filterQuality,
              'placeholderFilterQuality': $placeholderFilterQuality,
              'alignment': $alignment,
              'repeat': $repeat,
              'matchTextDirection': $matchTextDirection,
            },
          ),
          builder: (args) => _i1.FadeInImage(
            key: args('key'),
            placeholder: args('placeholder'),
            placeholderErrorBuilder: args('placeholderErrorBuilder'),
            image: args('image'),
            imageErrorBuilder: args('imageErrorBuilder'),
            excludeFromSemantics: args('excludeFromSemantics'),
            imageSemanticLabel: args('imageSemanticLabel'),
            fadeOutDuration: args('fadeOutDuration'),
            fadeOutCurve: args('fadeOutCurve'),
            fadeInDuration: args('fadeInDuration'),
            fadeInCurve: args('fadeInCurve'),
            color: args('color'),
            colorBlendMode: args('colorBlendMode'),
            placeholderColor: args('placeholderColor'),
            placeholderColorBlendMode: args('placeholderColorBlendMode'),
            width: args('width'),
            height: args('height'),
            fit: args('fit'),
            placeholderFit: args('placeholderFit'),
            filterQuality: args('filterQuality'),
            placeholderFilterQuality: args('placeholderFilterQuality'),
            alignment: args('alignment'),
            repeat: args('repeat'),
            matchTextDirection: args('matchTextDirection'),
          ),
        );

  @Goto(_i1.FadeInImage.memoryNetwork)
  FadeInImage.memoryNetwork({
    _i2.Key? key,
    required _i5.Uint8List placeholder,
    _i1.ImageErrorWidgetBuilder? placeholderErrorBuilder,
    required String image,
    _i1.ImageErrorWidgetBuilder? imageErrorBuilder,
    double placeholderScale = 1.0,
    double imageScale = 1.0,
    bool excludeFromSemantics = false,
    String? imageSemanticLabel,
    Duration fadeOutDuration = const Duration(milliseconds: 300),
    _i4.Curve fadeOutCurve = _i4.Curves.easeOut,
    Duration fadeInDuration = const Duration(milliseconds: 700),
    _i4.Curve fadeInCurve = _i4.Curves.easeIn,
    double? width,
    double? height,
    _i3.BoxFit? fit,
    ui.Color? color,
    ui.BlendMode? colorBlendMode,
    ui.Color? placeholderColor,
    ui.BlendMode? placeholderColorBlendMode,
    _i3.BoxFit? placeholderFit,
    ui.FilterQuality filterQuality = ui.FilterQuality.low,
    ui.FilterQuality? placeholderFilterQuality,
    _i3.AlignmentGeometry alignment = _i3.Alignment.center,
    _i3.ImageRepeat repeat = _i3.ImageRepeat.noRepeat,
    bool matchTextDirection = false,
    int? placeholderCacheWidth,
    int? placeholderCacheHeight,
    int? imageCacheWidth,
    int? imageCacheHeight,
    // Associate with key
    Stream<_i2.Key?>? $key,
    // Associate with placeholder
    Stream<_i5.Uint8List>? $placeholder,
    // Associate with placeholderErrorBuilder
    Stream<_i1.ImageErrorWidgetBuilder?>? $placeholderErrorBuilder,
    // Associate with image
    Stream<String>? $image,
    // Associate with imageErrorBuilder
    Stream<_i1.ImageErrorWidgetBuilder?>? $imageErrorBuilder,
    // Associate with placeholderScale
    Stream<double>? $placeholderScale,
    // Associate with imageScale
    Stream<double>? $imageScale,
    // Associate with excludeFromSemantics
    Stream<bool>? $excludeFromSemantics,
    // Associate with imageSemanticLabel
    Stream<String?>? $imageSemanticLabel,
    // Associate with fadeOutDuration
    Stream<Duration>? $fadeOutDuration,
    // Associate with fadeOutCurve
    Stream<_i4.Curve>? $fadeOutCurve,
    // Associate with fadeInDuration
    Stream<Duration>? $fadeInDuration,
    // Associate with fadeInCurve
    Stream<_i4.Curve>? $fadeInCurve,
    // Associate with width
    Stream<double?>? $width,
    // Associate with height
    Stream<double?>? $height,
    // Associate with fit
    Stream<_i3.BoxFit?>? $fit,
    // Associate with color
    Stream<ui.Color?>? $color,
    // Associate with colorBlendMode
    Stream<ui.BlendMode?>? $colorBlendMode,
    // Associate with placeholderColor
    Stream<ui.Color?>? $placeholderColor,
    // Associate with placeholderColorBlendMode
    Stream<ui.BlendMode?>? $placeholderColorBlendMode,
    // Associate with placeholderFit
    Stream<_i3.BoxFit?>? $placeholderFit,
    // Associate with filterQuality
    Stream<ui.FilterQuality>? $filterQuality,
    // Associate with placeholderFilterQuality
    Stream<ui.FilterQuality?>? $placeholderFilterQuality,
    // Associate with alignment
    Stream<_i3.AlignmentGeometry>? $alignment,
    // Associate with repeat
    Stream<_i3.ImageRepeat>? $repeat,
    // Associate with matchTextDirection
    Stream<bool>? $matchTextDirection,
    // Associate with placeholderCacheWidth
    Stream<int?>? $placeholderCacheWidth,
    // Associate with placeholderCacheHeight
    Stream<int?>? $placeholderCacheHeight,
    // Associate with imageCacheWidth
    Stream<int?>? $imageCacheWidth,
    // Associate with imageCacheHeight
    Stream<int?>? $imageCacheHeight,
  }) : super(
          Argument(
            {
              'key': key,
              'placeholder': placeholder,
              'placeholderErrorBuilder': placeholderErrorBuilder,
              'image': image,
              'imageErrorBuilder': imageErrorBuilder,
              'placeholderScale': placeholderScale,
              'imageScale': imageScale,
              'excludeFromSemantics': excludeFromSemantics,
              'imageSemanticLabel': imageSemanticLabel,
              'fadeOutDuration': fadeOutDuration,
              'fadeOutCurve': fadeOutCurve,
              'fadeInDuration': fadeInDuration,
              'fadeInCurve': fadeInCurve,
              'width': width,
              'height': height,
              'fit': fit,
              'color': color,
              'colorBlendMode': colorBlendMode,
              'placeholderColor': placeholderColor,
              'placeholderColorBlendMode': placeholderColorBlendMode,
              'placeholderFit': placeholderFit,
              'filterQuality': filterQuality,
              'placeholderFilterQuality': placeholderFilterQuality,
              'alignment': alignment,
              'repeat': repeat,
              'matchTextDirection': matchTextDirection,
              'placeholderCacheWidth': placeholderCacheWidth,
              'placeholderCacheHeight': placeholderCacheHeight,
              'imageCacheWidth': imageCacheWidth,
              'imageCacheHeight': imageCacheHeight,
            },
            stream: {
              'key': $key,
              'placeholder': $placeholder,
              'placeholderErrorBuilder': $placeholderErrorBuilder,
              'image': $image,
              'imageErrorBuilder': $imageErrorBuilder,
              'placeholderScale': $placeholderScale,
              'imageScale': $imageScale,
              'excludeFromSemantics': $excludeFromSemantics,
              'imageSemanticLabel': $imageSemanticLabel,
              'fadeOutDuration': $fadeOutDuration,
              'fadeOutCurve': $fadeOutCurve,
              'fadeInDuration': $fadeInDuration,
              'fadeInCurve': $fadeInCurve,
              'width': $width,
              'height': $height,
              'fit': $fit,
              'color': $color,
              'colorBlendMode': $colorBlendMode,
              'placeholderColor': $placeholderColor,
              'placeholderColorBlendMode': $placeholderColorBlendMode,
              'placeholderFit': $placeholderFit,
              'filterQuality': $filterQuality,
              'placeholderFilterQuality': $placeholderFilterQuality,
              'alignment': $alignment,
              'repeat': $repeat,
              'matchTextDirection': $matchTextDirection,
              'placeholderCacheWidth': $placeholderCacheWidth,
              'placeholderCacheHeight': $placeholderCacheHeight,
              'imageCacheWidth': $imageCacheWidth,
              'imageCacheHeight': $imageCacheHeight,
            },
          ),
          builder: (args) => _i1.FadeInImage.memoryNetwork(
            key: args('key'),
            placeholder: args('placeholder'),
            placeholderErrorBuilder: args('placeholderErrorBuilder'),
            image: args('image'),
            imageErrorBuilder: args('imageErrorBuilder'),
            placeholderScale: args('placeholderScale'),
            imageScale: args('imageScale'),
            excludeFromSemantics: args('excludeFromSemantics'),
            imageSemanticLabel: args('imageSemanticLabel'),
            fadeOutDuration: args('fadeOutDuration'),
            fadeOutCurve: args('fadeOutCurve'),
            fadeInDuration: args('fadeInDuration'),
            fadeInCurve: args('fadeInCurve'),
            width: args('width'),
            height: args('height'),
            fit: args('fit'),
            color: args('color'),
            colorBlendMode: args('colorBlendMode'),
            placeholderColor: args('placeholderColor'),
            placeholderColorBlendMode: args('placeholderColorBlendMode'),
            placeholderFit: args('placeholderFit'),
            filterQuality: args('filterQuality'),
            placeholderFilterQuality: args('placeholderFilterQuality'),
            alignment: args('alignment'),
            repeat: args('repeat'),
            matchTextDirection: args('matchTextDirection'),
            placeholderCacheWidth: args('placeholderCacheWidth'),
            placeholderCacheHeight: args('placeholderCacheHeight'),
            imageCacheWidth: args('imageCacheWidth'),
            imageCacheHeight: args('imageCacheHeight'),
          ),
        );

  @Goto(_i1.FadeInImage.assetNetwork)
  FadeInImage.assetNetwork({
    _i2.Key? key,
    required String placeholder,
    _i1.ImageErrorWidgetBuilder? placeholderErrorBuilder,
    required String image,
    _i1.ImageErrorWidgetBuilder? imageErrorBuilder,
    _i6.AssetBundle? bundle,
    double? placeholderScale,
    double imageScale = 1.0,
    bool excludeFromSemantics = false,
    String? imageSemanticLabel,
    Duration fadeOutDuration = const Duration(milliseconds: 300),
    _i4.Curve fadeOutCurve = _i4.Curves.easeOut,
    Duration fadeInDuration = const Duration(milliseconds: 700),
    _i4.Curve fadeInCurve = _i4.Curves.easeIn,
    double? width,
    double? height,
    _i3.BoxFit? fit,
    ui.Color? color,
    ui.BlendMode? colorBlendMode,
    ui.Color? placeholderColor,
    ui.BlendMode? placeholderColorBlendMode,
    _i3.BoxFit? placeholderFit,
    ui.FilterQuality filterQuality = ui.FilterQuality.low,
    ui.FilterQuality? placeholderFilterQuality,
    _i3.AlignmentGeometry alignment = _i3.Alignment.center,
    _i3.ImageRepeat repeat = _i3.ImageRepeat.noRepeat,
    bool matchTextDirection = false,
    int? placeholderCacheWidth,
    int? placeholderCacheHeight,
    int? imageCacheWidth,
    int? imageCacheHeight,
    // Associate with key
    Stream<_i2.Key?>? $key,
    // Associate with placeholder
    Stream<String>? $placeholder,
    // Associate with placeholderErrorBuilder
    Stream<_i1.ImageErrorWidgetBuilder?>? $placeholderErrorBuilder,
    // Associate with image
    Stream<String>? $image,
    // Associate with imageErrorBuilder
    Stream<_i1.ImageErrorWidgetBuilder?>? $imageErrorBuilder,
    // Associate with bundle
    Stream<_i6.AssetBundle?>? $bundle,
    // Associate with placeholderScale
    Stream<double?>? $placeholderScale,
    // Associate with imageScale
    Stream<double>? $imageScale,
    // Associate with excludeFromSemantics
    Stream<bool>? $excludeFromSemantics,
    // Associate with imageSemanticLabel
    Stream<String?>? $imageSemanticLabel,
    // Associate with fadeOutDuration
    Stream<Duration>? $fadeOutDuration,
    // Associate with fadeOutCurve
    Stream<_i4.Curve>? $fadeOutCurve,
    // Associate with fadeInDuration
    Stream<Duration>? $fadeInDuration,
    // Associate with fadeInCurve
    Stream<_i4.Curve>? $fadeInCurve,
    // Associate with width
    Stream<double?>? $width,
    // Associate with height
    Stream<double?>? $height,
    // Associate with fit
    Stream<_i3.BoxFit?>? $fit,
    // Associate with color
    Stream<ui.Color?>? $color,
    // Associate with colorBlendMode
    Stream<ui.BlendMode?>? $colorBlendMode,
    // Associate with placeholderColor
    Stream<ui.Color?>? $placeholderColor,
    // Associate with placeholderColorBlendMode
    Stream<ui.BlendMode?>? $placeholderColorBlendMode,
    // Associate with placeholderFit
    Stream<_i3.BoxFit?>? $placeholderFit,
    // Associate with filterQuality
    Stream<ui.FilterQuality>? $filterQuality,
    // Associate with placeholderFilterQuality
    Stream<ui.FilterQuality?>? $placeholderFilterQuality,
    // Associate with alignment
    Stream<_i3.AlignmentGeometry>? $alignment,
    // Associate with repeat
    Stream<_i3.ImageRepeat>? $repeat,
    // Associate with matchTextDirection
    Stream<bool>? $matchTextDirection,
    // Associate with placeholderCacheWidth
    Stream<int?>? $placeholderCacheWidth,
    // Associate with placeholderCacheHeight
    Stream<int?>? $placeholderCacheHeight,
    // Associate with imageCacheWidth
    Stream<int?>? $imageCacheWidth,
    // Associate with imageCacheHeight
    Stream<int?>? $imageCacheHeight,
  }) : super(
          Argument(
            {
              'key': key,
              'placeholder': placeholder,
              'placeholderErrorBuilder': placeholderErrorBuilder,
              'image': image,
              'imageErrorBuilder': imageErrorBuilder,
              'bundle': bundle,
              'placeholderScale': placeholderScale,
              'imageScale': imageScale,
              'excludeFromSemantics': excludeFromSemantics,
              'imageSemanticLabel': imageSemanticLabel,
              'fadeOutDuration': fadeOutDuration,
              'fadeOutCurve': fadeOutCurve,
              'fadeInDuration': fadeInDuration,
              'fadeInCurve': fadeInCurve,
              'width': width,
              'height': height,
              'fit': fit,
              'color': color,
              'colorBlendMode': colorBlendMode,
              'placeholderColor': placeholderColor,
              'placeholderColorBlendMode': placeholderColorBlendMode,
              'placeholderFit': placeholderFit,
              'filterQuality': filterQuality,
              'placeholderFilterQuality': placeholderFilterQuality,
              'alignment': alignment,
              'repeat': repeat,
              'matchTextDirection': matchTextDirection,
              'placeholderCacheWidth': placeholderCacheWidth,
              'placeholderCacheHeight': placeholderCacheHeight,
              'imageCacheWidth': imageCacheWidth,
              'imageCacheHeight': imageCacheHeight,
            },
            stream: {
              'key': $key,
              'placeholder': $placeholder,
              'placeholderErrorBuilder': $placeholderErrorBuilder,
              'image': $image,
              'imageErrorBuilder': $imageErrorBuilder,
              'bundle': $bundle,
              'placeholderScale': $placeholderScale,
              'imageScale': $imageScale,
              'excludeFromSemantics': $excludeFromSemantics,
              'imageSemanticLabel': $imageSemanticLabel,
              'fadeOutDuration': $fadeOutDuration,
              'fadeOutCurve': $fadeOutCurve,
              'fadeInDuration': $fadeInDuration,
              'fadeInCurve': $fadeInCurve,
              'width': $width,
              'height': $height,
              'fit': $fit,
              'color': $color,
              'colorBlendMode': $colorBlendMode,
              'placeholderColor': $placeholderColor,
              'placeholderColorBlendMode': $placeholderColorBlendMode,
              'placeholderFit': $placeholderFit,
              'filterQuality': $filterQuality,
              'placeholderFilterQuality': $placeholderFilterQuality,
              'alignment': $alignment,
              'repeat': $repeat,
              'matchTextDirection': $matchTextDirection,
              'placeholderCacheWidth': $placeholderCacheWidth,
              'placeholderCacheHeight': $placeholderCacheHeight,
              'imageCacheWidth': $imageCacheWidth,
              'imageCacheHeight': $imageCacheHeight,
            },
          ),
          builder: (args) => _i1.FadeInImage.assetNetwork(
            key: args('key'),
            placeholder: args('placeholder'),
            placeholderErrorBuilder: args('placeholderErrorBuilder'),
            image: args('image'),
            imageErrorBuilder: args('imageErrorBuilder'),
            bundle: args('bundle'),
            placeholderScale: args('placeholderScale'),
            imageScale: args('imageScale'),
            excludeFromSemantics: args('excludeFromSemantics'),
            imageSemanticLabel: args('imageSemanticLabel'),
            fadeOutDuration: args('fadeOutDuration'),
            fadeOutCurve: args('fadeOutCurve'),
            fadeInDuration: args('fadeInDuration'),
            fadeInCurve: args('fadeInCurve'),
            width: args('width'),
            height: args('height'),
            fit: args('fit'),
            color: args('color'),
            colorBlendMode: args('colorBlendMode'),
            placeholderColor: args('placeholderColor'),
            placeholderColorBlendMode: args('placeholderColorBlendMode'),
            placeholderFit: args('placeholderFit'),
            filterQuality: args('filterQuality'),
            placeholderFilterQuality: args('placeholderFilterQuality'),
            alignment: args('alignment'),
            repeat: args('repeat'),
            matchTextDirection: args('matchTextDirection'),
            placeholderCacheWidth: args('placeholderCacheWidth'),
            placeholderCacheHeight: args('placeholderCacheHeight'),
            imageCacheWidth: args('imageCacheWidth'),
            imageCacheHeight: args('imageCacheHeight'),
          ),
        );
}
