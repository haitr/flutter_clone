library rxflutterify; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:ui' as ui;

import 'package:flutter/foundation.dart' as _i2;
import 'package:flutter/material.dart' as _i1;
import 'package:flutter/painting.dart' as _i3;
import 'package:flutter/widgets.dart' as _i4;

import '../wrapper.dart';

final class UserAccountsDrawerHeader extends Wrapper {
  @Goto(_i1.UserAccountsDrawerHeader.new)
  UserAccountsDrawerHeader(
    $ $config, {
    _i2.Key? key,
    _i3.Decoration? decoration,
    _i3.EdgeInsetsGeometry? margin = const _i3.EdgeInsets.only(bottom: 8.0),
    _i4.Widget? currentAccountPicture,
    List<_i4.Widget>? otherAccountsPictures,
    ui.Size currentAccountPictureSize = const ui.Size.square(72.0),
    ui.Size otherAccountsPicturesSize = const ui.Size.square(40.0),
    required _i4.Widget? accountName,
    required _i4.Widget? accountEmail,
    ui.VoidCallback? onDetailsPressed,
    ui.Color arrowColor = _i1.Colors.white,
  }) : super(
          Argument({
            #key: key,
            #decoration: decoration,
            #margin: margin,
            #currentAccountPicture: currentAccountPicture,
            #otherAccountsPictures: otherAccountsPictures,
            #currentAccountPictureSize: currentAccountPictureSize,
            #otherAccountsPicturesSize: otherAccountsPicturesSize,
            #accountName: accountName,
            #accountEmail: accountEmail,
            #onDetailsPressed: onDetailsPressed,
            #arrowColor: arrowColor,
          }),
          builder: (args) => _i1.UserAccountsDrawerHeader(
            key: args(#key),
            decoration: args(#decoration),
            margin: args(#margin),
            currentAccountPicture: args(#currentAccountPicture),
            otherAccountsPictures: args(#otherAccountsPictures),
            currentAccountPictureSize: args(#currentAccountPictureSize),
            otherAccountsPicturesSize: args(#otherAccountsPicturesSize),
            accountName: args(#accountName),
            accountEmail: args(#accountEmail),
            onDetailsPressed: args(#onDetailsPressed),
            arrowColor: args(#arrowColor),
          ),
        );
}
