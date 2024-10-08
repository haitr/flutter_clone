library rxflutterify_binding; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:io' as _i5;
import 'dart:typed_data' as _i7;
import 'dart:ui' as ui;

import 'package:flutter/animation.dart' as _i4;
import 'package:flutter/foundation.dart' as _i2;
import 'package:flutter/painting.dart' as _i3;
import 'package:flutter/services.dart' as _i6;
import 'package:flutter/widgets.dart' as _i1;

import '../wrapper.dart';

final class Image extends Wrapper {
  @Goto(_i1.Image.new)
  Image(
    $ $config, {
    _i2.Key? key,
    required _i3.ImageProvider image,
    _i1.ImageFrameBuilder? frameBuilder,
    _i1.ImageLoadingBuilder? loadingBuilder,
    _i1.ImageErrorWidgetBuilder? errorBuilder,
    String? semanticLabel,
    bool excludeFromSemantics = false,
    double? width,
    double? height,
    ui.Color? color,
    _i4.Animation<double>? opacity,
    ui.BlendMode? colorBlendMode,
    _i3.BoxFit? fit,
    _i3.AlignmentGeometry alignment = _i3.Alignment.center,
    _i3.ImageRepeat repeat = _i3.ImageRepeat.noRepeat,
    ui.Rect? centerSlice,
    bool matchTextDirection = false,
    bool gaplessPlayback = false,
    bool isAntiAlias = false,
    ui.FilterQuality filterQuality = ui.FilterQuality.medium,
  }) : super(
          Argument({
            #key: key,
            #image: image,
            #frameBuilder: frameBuilder,
            #loadingBuilder: loadingBuilder,
            #errorBuilder: errorBuilder,
            #semanticLabel: semanticLabel,
            #excludeFromSemantics: excludeFromSemantics,
            #width: width,
            #height: height,
            #color: color,
            #opacity: opacity,
            #colorBlendMode: colorBlendMode,
            #fit: fit,
            #alignment: alignment,
            #repeat: repeat,
            #centerSlice: centerSlice,
            #matchTextDirection: matchTextDirection,
            #gaplessPlayback: gaplessPlayback,
            #isAntiAlias: isAntiAlias,
            #filterQuality: filterQuality,
          }),
          builder: (args) => _i1.Image(
            key: args(#key),
            image: args(#image),
            frameBuilder: args(#frameBuilder),
            loadingBuilder: args(#loadingBuilder),
            errorBuilder: args(#errorBuilder),
            semanticLabel: args(#semanticLabel),
            excludeFromSemantics: args(#excludeFromSemantics),
            width: args(#width),
            height: args(#height),
            color: args(#color),
            opacity: args(#opacity),
            colorBlendMode: args(#colorBlendMode),
            fit: args(#fit),
            alignment: args(#alignment),
            repeat: args(#repeat),
            centerSlice: args(#centerSlice),
            matchTextDirection: args(#matchTextDirection),
            gaplessPlayback: args(#gaplessPlayback),
            isAntiAlias: args(#isAntiAlias),
            filterQuality: args(#filterQuality),
          ),
        );

  @Goto(_i1.Image.network)
  Image.network(
    $ $config,
    String src, {
    _i2.Key? key,
    double scale = 1.0,
    _i1.ImageFrameBuilder? frameBuilder,
    _i1.ImageLoadingBuilder? loadingBuilder,
    _i1.ImageErrorWidgetBuilder? errorBuilder,
    String? semanticLabel,
    bool excludeFromSemantics = false,
    double? width,
    double? height,
    ui.Color? color,
    _i4.Animation<double>? opacity,
    ui.BlendMode? colorBlendMode,
    _i3.BoxFit? fit,
    _i3.AlignmentGeometry alignment = _i3.Alignment.center,
    _i3.ImageRepeat repeat = _i3.ImageRepeat.noRepeat,
    ui.Rect? centerSlice,
    bool matchTextDirection = false,
    bool gaplessPlayback = false,
    ui.FilterQuality filterQuality = ui.FilterQuality.medium,
    bool isAntiAlias = false,
    Map<String, String>? headers,
    int? cacheWidth,
    int? cacheHeight,
  }) : super(
          Argument({
            #src: src,
            #key: key,
            #scale: scale,
            #frameBuilder: frameBuilder,
            #loadingBuilder: loadingBuilder,
            #errorBuilder: errorBuilder,
            #semanticLabel: semanticLabel,
            #excludeFromSemantics: excludeFromSemantics,
            #width: width,
            #height: height,
            #color: color,
            #opacity: opacity,
            #colorBlendMode: colorBlendMode,
            #fit: fit,
            #alignment: alignment,
            #repeat: repeat,
            #centerSlice: centerSlice,
            #matchTextDirection: matchTextDirection,
            #gaplessPlayback: gaplessPlayback,
            #filterQuality: filterQuality,
            #isAntiAlias: isAntiAlias,
            #headers: headers,
            #cacheWidth: cacheWidth,
            #cacheHeight: cacheHeight,
          }),
          builder: (args) => _i1.Image.network(
            args(#src),
            key: args(#key),
            scale: args(#scale),
            frameBuilder: args(#frameBuilder),
            loadingBuilder: args(#loadingBuilder),
            errorBuilder: args(#errorBuilder),
            semanticLabel: args(#semanticLabel),
            excludeFromSemantics: args(#excludeFromSemantics),
            width: args(#width),
            height: args(#height),
            color: args(#color),
            opacity: args(#opacity),
            colorBlendMode: args(#colorBlendMode),
            fit: args(#fit),
            alignment: args(#alignment),
            repeat: args(#repeat),
            centerSlice: args(#centerSlice),
            matchTextDirection: args(#matchTextDirection),
            gaplessPlayback: args(#gaplessPlayback),
            filterQuality: args(#filterQuality),
            isAntiAlias: args(#isAntiAlias),
            headers: args(#headers),
            cacheWidth: args(#cacheWidth),
            cacheHeight: args(#cacheHeight),
          ),
        );

  @Goto(_i1.Image.file)
  Image.file(
    $ $config,
    _i5.File file, {
    _i2.Key? key,
    double scale = 1.0,
    _i1.ImageFrameBuilder? frameBuilder,
    _i1.ImageErrorWidgetBuilder? errorBuilder,
    String? semanticLabel,
    bool excludeFromSemantics = false,
    double? width,
    double? height,
    ui.Color? color,
    _i4.Animation<double>? opacity,
    ui.BlendMode? colorBlendMode,
    _i3.BoxFit? fit,
    _i3.AlignmentGeometry alignment = _i3.Alignment.center,
    _i3.ImageRepeat repeat = _i3.ImageRepeat.noRepeat,
    ui.Rect? centerSlice,
    bool matchTextDirection = false,
    bool gaplessPlayback = false,
    bool isAntiAlias = false,
    ui.FilterQuality filterQuality = ui.FilterQuality.medium,
    int? cacheWidth,
    int? cacheHeight,
  }) : super(
          Argument({
            #file: file,
            #key: key,
            #scale: scale,
            #frameBuilder: frameBuilder,
            #errorBuilder: errorBuilder,
            #semanticLabel: semanticLabel,
            #excludeFromSemantics: excludeFromSemantics,
            #width: width,
            #height: height,
            #color: color,
            #opacity: opacity,
            #colorBlendMode: colorBlendMode,
            #fit: fit,
            #alignment: alignment,
            #repeat: repeat,
            #centerSlice: centerSlice,
            #matchTextDirection: matchTextDirection,
            #gaplessPlayback: gaplessPlayback,
            #isAntiAlias: isAntiAlias,
            #filterQuality: filterQuality,
            #cacheWidth: cacheWidth,
            #cacheHeight: cacheHeight,
          }),
          builder: (args) => _i1.Image.file(
            args(#file),
            key: args(#key),
            scale: args(#scale),
            frameBuilder: args(#frameBuilder),
            errorBuilder: args(#errorBuilder),
            semanticLabel: args(#semanticLabel),
            excludeFromSemantics: args(#excludeFromSemantics),
            width: args(#width),
            height: args(#height),
            color: args(#color),
            opacity: args(#opacity),
            colorBlendMode: args(#colorBlendMode),
            fit: args(#fit),
            alignment: args(#alignment),
            repeat: args(#repeat),
            centerSlice: args(#centerSlice),
            matchTextDirection: args(#matchTextDirection),
            gaplessPlayback: args(#gaplessPlayback),
            isAntiAlias: args(#isAntiAlias),
            filterQuality: args(#filterQuality),
            cacheWidth: args(#cacheWidth),
            cacheHeight: args(#cacheHeight),
          ),
        );

  @Goto(_i1.Image.asset)
  Image.asset(
    $ $config,
    String name, {
    _i2.Key? key,
    _i6.AssetBundle? bundle,
    _i1.ImageFrameBuilder? frameBuilder,
    _i1.ImageErrorWidgetBuilder? errorBuilder,
    String? semanticLabel,
    bool excludeFromSemantics = false,
    double? scale,
    double? width,
    double? height,
    ui.Color? color,
    _i4.Animation<double>? opacity,
    ui.BlendMode? colorBlendMode,
    _i3.BoxFit? fit,
    _i3.AlignmentGeometry alignment = _i3.Alignment.center,
    _i3.ImageRepeat repeat = _i3.ImageRepeat.noRepeat,
    ui.Rect? centerSlice,
    bool matchTextDirection = false,
    bool gaplessPlayback = false,
    bool isAntiAlias = false,
    String? package,
    ui.FilterQuality filterQuality = ui.FilterQuality.medium,
    int? cacheWidth,
    int? cacheHeight,
  }) : super(
          Argument({
            #name: name,
            #key: key,
            #bundle: bundle,
            #frameBuilder: frameBuilder,
            #errorBuilder: errorBuilder,
            #semanticLabel: semanticLabel,
            #excludeFromSemantics: excludeFromSemantics,
            #scale: scale,
            #width: width,
            #height: height,
            #color: color,
            #opacity: opacity,
            #colorBlendMode: colorBlendMode,
            #fit: fit,
            #alignment: alignment,
            #repeat: repeat,
            #centerSlice: centerSlice,
            #matchTextDirection: matchTextDirection,
            #gaplessPlayback: gaplessPlayback,
            #isAntiAlias: isAntiAlias,
            #package: package,
            #filterQuality: filterQuality,
            #cacheWidth: cacheWidth,
            #cacheHeight: cacheHeight,
          }),
          builder: (args) => _i1.Image.asset(
            args(#name),
            key: args(#key),
            bundle: args(#bundle),
            frameBuilder: args(#frameBuilder),
            errorBuilder: args(#errorBuilder),
            semanticLabel: args(#semanticLabel),
            excludeFromSemantics: args(#excludeFromSemantics),
            scale: args(#scale),
            width: args(#width),
            height: args(#height),
            color: args(#color),
            opacity: args(#opacity),
            colorBlendMode: args(#colorBlendMode),
            fit: args(#fit),
            alignment: args(#alignment),
            repeat: args(#repeat),
            centerSlice: args(#centerSlice),
            matchTextDirection: args(#matchTextDirection),
            gaplessPlayback: args(#gaplessPlayback),
            isAntiAlias: args(#isAntiAlias),
            package: args(#package),
            filterQuality: args(#filterQuality),
            cacheWidth: args(#cacheWidth),
            cacheHeight: args(#cacheHeight),
          ),
        );

  @Goto(_i1.Image.memory)
  Image.memory(
    $ $config,
    _i7.Uint8List bytes, {
    _i2.Key? key,
    double scale = 1.0,
    _i1.ImageFrameBuilder? frameBuilder,
    _i1.ImageErrorWidgetBuilder? errorBuilder,
    String? semanticLabel,
    bool excludeFromSemantics = false,
    double? width,
    double? height,
    ui.Color? color,
    _i4.Animation<double>? opacity,
    ui.BlendMode? colorBlendMode,
    _i3.BoxFit? fit,
    _i3.AlignmentGeometry alignment = _i3.Alignment.center,
    _i3.ImageRepeat repeat = _i3.ImageRepeat.noRepeat,
    ui.Rect? centerSlice,
    bool matchTextDirection = false,
    bool gaplessPlayback = false,
    bool isAntiAlias = false,
    ui.FilterQuality filterQuality = ui.FilterQuality.medium,
    int? cacheWidth,
    int? cacheHeight,
  }) : super(
          Argument({
            #bytes: bytes,
            #key: key,
            #scale: scale,
            #frameBuilder: frameBuilder,
            #errorBuilder: errorBuilder,
            #semanticLabel: semanticLabel,
            #excludeFromSemantics: excludeFromSemantics,
            #width: width,
            #height: height,
            #color: color,
            #opacity: opacity,
            #colorBlendMode: colorBlendMode,
            #fit: fit,
            #alignment: alignment,
            #repeat: repeat,
            #centerSlice: centerSlice,
            #matchTextDirection: matchTextDirection,
            #gaplessPlayback: gaplessPlayback,
            #isAntiAlias: isAntiAlias,
            #filterQuality: filterQuality,
            #cacheWidth: cacheWidth,
            #cacheHeight: cacheHeight,
          }),
          builder: (args) => _i1.Image.memory(
            args(#bytes),
            key: args(#key),
            scale: args(#scale),
            frameBuilder: args(#frameBuilder),
            errorBuilder: args(#errorBuilder),
            semanticLabel: args(#semanticLabel),
            excludeFromSemantics: args(#excludeFromSemantics),
            width: args(#width),
            height: args(#height),
            color: args(#color),
            opacity: args(#opacity),
            colorBlendMode: args(#colorBlendMode),
            fit: args(#fit),
            alignment: args(#alignment),
            repeat: args(#repeat),
            centerSlice: args(#centerSlice),
            matchTextDirection: args(#matchTextDirection),
            gaplessPlayback: args(#gaplessPlayback),
            isAntiAlias: args(#isAntiAlias),
            filterQuality: args(#filterQuality),
            cacheWidth: args(#cacheWidth),
            cacheHeight: args(#cacheHeight),
          ),
        );
}
