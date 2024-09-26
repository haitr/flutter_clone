library rxflutterify; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:ui' as ui;

import 'package:flutter/foundation.dart' as _i2;
import 'package:flutter/painting.dart' as _i3;
import 'package:flutter/widgets.dart' as _i1;

import '../wrapper.dart';

final class Banner extends Wrapper {
  @Goto(_i1.Banner.new)
  Banner({
    _i2.Key? key,
    _i1.Widget? child,
    required String message,
    ui.TextDirection? textDirection,
    required _i1.BannerLocation location,
    ui.TextDirection? layoutDirection,
    ui.Color color = _kColor,
    _i3.TextStyle textStyle = _kTextStyle,
    // Associate with key
    Stream<_i2.Key?>? $key,
    // Associate with child
    Stream<_i1.Widget?>? $child,
    // Associate with message
    Stream<String>? $message,
    // Associate with textDirection
    Stream<ui.TextDirection?>? $textDirection,
    // Associate with location
    Stream<_i1.BannerLocation>? $location,
    // Associate with layoutDirection
    Stream<ui.TextDirection?>? $layoutDirection,
    // Associate with color
    Stream<ui.Color>? $color,
    // Associate with textStyle
    Stream<_i3.TextStyle>? $textStyle,
  }) : super(
          Argument(
            {
              'key': key,
              'child': child,
              'message': message,
              'textDirection': textDirection,
              'location': location,
              'layoutDirection': layoutDirection,
              'color': color,
              'textStyle': textStyle,
            },
            stream: {
              'key': $key,
              'child': $child,
              'message': $message,
              'textDirection': $textDirection,
              'location': $location,
              'layoutDirection': $layoutDirection,
              'color': $color,
              'textStyle': $textStyle,
            },
          ),
          builder: (args) => _i1.Banner(
            key: args('key'),
            child: args('child'),
            message: args('message'),
            textDirection: args('textDirection'),
            location: args('location'),
            layoutDirection: args('layoutDirection'),
            color: args('color'),
            textStyle: args('textStyle'),
          ),
        );
}

final class CheckedModeBanner extends Wrapper {
  @Goto(_i1.CheckedModeBanner.new)
  CheckedModeBanner({
    _i2.Key? key,
    required _i1.Widget child,
    // Associate with key
    Stream<_i2.Key?>? $key,
    // Associate with child
    Stream<_i1.Widget>? $child,
  }) : super(
          Argument(
            {
              'key': key,
              'child': child,
            },
            stream: {
              'key': $key,
              'child': $child,
            },
          ),
          builder: (args) => _i1.CheckedModeBanner(
            key: args('key'),
            child: args('child'),
          ),
        );
}

const ui.Color _kColor = ui.Color(0xA0B71C1C);
const _i3.TextStyle _kTextStyle = _i3.TextStyle(
  color: ui.Color(0xFFFFFFFF),
  fontSize: _kHeight * 0.85,
  fontWeight: ui.FontWeight.w900,
  height: 1.0,
);
const double _kHeight = 12.0;
