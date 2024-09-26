library rxflutterify_binding; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:ui' as ui;

import 'package:flutter/foundation.dart' as _i2;
import 'package:flutter/painting.dart' as _i3;
import 'package:flutter/widgets.dart' as _i1;

import '../wrapper.dart';

final class DefaultTextHeightBehavior extends Wrapper {
  @Goto(_i1.DefaultTextHeightBehavior.new)
  DefaultTextHeightBehavior(
    $ $config, {
    _i2.Key? key,
    required ui.TextHeightBehavior textHeightBehavior,
    required _i1.Widget child,
  }) : super(
          Argument({
            #key: key,
            #textHeightBehavior: textHeightBehavior,
            #child: child,
          }),
          builder: (args) => _i1.DefaultTextHeightBehavior(
            key: args(#key),
            textHeightBehavior: args(#textHeightBehavior),
            child: args(#child),
          ),
        );
}

final class Text extends Wrapper {
  @Goto(_i1.Text.new)
  Text(
    $ $config,
    String data, {
    _i2.Key? key,
    _i3.TextStyle? style,
    _i3.StrutStyle? strutStyle,
    ui.TextAlign? textAlign,
    ui.TextDirection? textDirection,
    ui.Locale? locale,
    bool? softWrap,
    _i3.TextOverflow? overflow,
    double? textScaleFactor,
    _i3.TextScaler? textScaler,
    int? maxLines,
    String? semanticsLabel,
    _i3.TextWidthBasis? textWidthBasis,
    ui.TextHeightBehavior? textHeightBehavior,
    ui.Color? selectionColor,
  }) : super(
          Argument({
            #data: data,
            #key: key,
            #style: style,
            #strutStyle: strutStyle,
            #textAlign: textAlign,
            #textDirection: textDirection,
            #locale: locale,
            #softWrap: softWrap,
            #overflow: overflow,
            #textScaleFactor: textScaleFactor,
            #textScaler: textScaler,
            #maxLines: maxLines,
            #semanticsLabel: semanticsLabel,
            #textWidthBasis: textWidthBasis,
            #textHeightBehavior: textHeightBehavior,
            #selectionColor: selectionColor,
          }),
          builder: (args) => _i1.Text(
            args(#data),
            key: args(#key),
            style: args(#style),
            strutStyle: args(#strutStyle),
            textAlign: args(#textAlign),
            textDirection: args(#textDirection),
            locale: args(#locale),
            softWrap: args(#softWrap),
            overflow: args(#overflow),
            textScaleFactor: args(#textScaleFactor),
            textScaler: args(#textScaler),
            maxLines: args(#maxLines),
            semanticsLabel: args(#semanticsLabel),
            textWidthBasis: args(#textWidthBasis),
            textHeightBehavior: args(#textHeightBehavior),
            selectionColor: args(#selectionColor),
          ),
        );

  @Goto(_i1.Text.rich)
  Text.rich(
    $ $config,
    _i3.InlineSpan textSpan, {
    _i2.Key? key,
    _i3.TextStyle? style,
    _i3.StrutStyle? strutStyle,
    ui.TextAlign? textAlign,
    ui.TextDirection? textDirection,
    ui.Locale? locale,
    bool? softWrap,
    _i3.TextOverflow? overflow,
    double? textScaleFactor,
    _i3.TextScaler? textScaler,
    int? maxLines,
    String? semanticsLabel,
    _i3.TextWidthBasis? textWidthBasis,
    ui.TextHeightBehavior? textHeightBehavior,
    ui.Color? selectionColor,
  }) : super(
          Argument({
            #textSpan: textSpan,
            #key: key,
            #style: style,
            #strutStyle: strutStyle,
            #textAlign: textAlign,
            #textDirection: textDirection,
            #locale: locale,
            #softWrap: softWrap,
            #overflow: overflow,
            #textScaleFactor: textScaleFactor,
            #textScaler: textScaler,
            #maxLines: maxLines,
            #semanticsLabel: semanticsLabel,
            #textWidthBasis: textWidthBasis,
            #textHeightBehavior: textHeightBehavior,
            #selectionColor: selectionColor,
          }),
          builder: (args) => _i1.Text.rich(
            args(#textSpan),
            key: args(#key),
            style: args(#style),
            strutStyle: args(#strutStyle),
            textAlign: args(#textAlign),
            textDirection: args(#textDirection),
            locale: args(#locale),
            softWrap: args(#softWrap),
            overflow: args(#overflow),
            textScaleFactor: args(#textScaleFactor),
            textScaler: args(#textScaler),
            maxLines: args(#maxLines),
            semanticsLabel: args(#semanticsLabel),
            textWidthBasis: args(#textWidthBasis),
            textHeightBehavior: args(#textHeightBehavior),
            selectionColor: args(#selectionColor),
          ),
        );
}

final class DefaultTextStyle extends Wrapper {
  @Goto(_i1.DefaultTextStyle.new)
  DefaultTextStyle(
    $ $config, {
    _i2.Key? key,
    required _i3.TextStyle style,
    ui.TextAlign? textAlign,
    bool softWrap = true,
    _i3.TextOverflow overflow = _i3.TextOverflow.clip,
    int? maxLines,
    _i3.TextWidthBasis textWidthBasis = _i3.TextWidthBasis.parent,
    ui.TextHeightBehavior? textHeightBehavior,
    required _i1.Widget child,
  }) : super(
          Argument({
            #key: key,
            #style: style,
            #textAlign: textAlign,
            #softWrap: softWrap,
            #overflow: overflow,
            #maxLines: maxLines,
            #textWidthBasis: textWidthBasis,
            #textHeightBehavior: textHeightBehavior,
            #child: child,
          }),
          builder: (args) => _i1.DefaultTextStyle(
            key: args(#key),
            style: args(#style),
            textAlign: args(#textAlign),
            softWrap: args(#softWrap),
            overflow: args(#overflow),
            maxLines: args(#maxLines),
            textWidthBasis: args(#textWidthBasis),
            textHeightBehavior: args(#textHeightBehavior),
            child: args(#child),
          ),
        );

  @Goto(_i1.DefaultTextStyle.fallback)
  DefaultTextStyle.fallback(
    $ $config, {
    _i2.Key? key,
  }) : super(
          Argument({#key: key}),
          builder: (args) => _i1.DefaultTextStyle.fallback(key: args(#key)),
        );
}
