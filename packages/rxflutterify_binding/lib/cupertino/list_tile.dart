library rxflutterify_binding; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:async';
import 'dart:ui' as ui;

import 'package:flutter/cupertino.dart' as _i1;
import 'package:flutter/foundation.dart' as _i2;
import 'package:flutter/painting.dart' as _i4;
import 'package:flutter/widgets.dart' as _i3;

import '../wrapper.dart';

final class CupertinoListTileChevron extends Wrapper {
  @Goto(_i1.CupertinoListTileChevron.new)
  CupertinoListTileChevron(
    $ $config, {
    _i2.Key? key,
  }) : super(
          Argument({#key: key}),
          builder: (args) => _i1.CupertinoListTileChevron(key: args(#key)),
        );
}

final class CupertinoListTile extends Wrapper {
  @Goto(_i1.CupertinoListTile.new)
  CupertinoListTile(
    $ $config, {
    _i2.Key? key,
    required _i3.Widget title,
    _i3.Widget? subtitle,
    _i3.Widget? additionalInfo,
    _i3.Widget? leading,
    _i3.Widget? trailing,
    FutureOr<void> Function()? onTap,
    ui.Color? backgroundColor,
    ui.Color? backgroundColorActivated,
    _i4.EdgeInsetsGeometry? padding,
    double leadingSize = _kLeadingSize,
    double leadingToTitle = _kLeadingToTitle,
  }) : super(
          Argument({
            #key: key,
            #title: title,
            #subtitle: subtitle,
            #additionalInfo: additionalInfo,
            #leading: leading,
            #trailing: trailing,
            #onTap: onTap,
            #backgroundColor: backgroundColor,
            #backgroundColorActivated: backgroundColorActivated,
            #padding: padding,
            #leadingSize: leadingSize,
            #leadingToTitle: leadingToTitle,
          }),
          builder: (args) => _i1.CupertinoListTile(
            key: args(#key),
            title: args(#title),
            subtitle: args(#subtitle),
            additionalInfo: args(#additionalInfo),
            leading: args(#leading),
            trailing: args(#trailing),
            onTap: args(#onTap),
            backgroundColor: args(#backgroundColor),
            backgroundColorActivated: args(#backgroundColorActivated),
            padding: args(#padding),
            leadingSize: args(#leadingSize),
            leadingToTitle: args(#leadingToTitle),
          ),
        );

  @Goto(_i1.CupertinoListTile.notched)
  CupertinoListTile.notched(
    $ $config, {
    _i2.Key? key,
    required _i3.Widget title,
    _i3.Widget? subtitle,
    _i3.Widget? additionalInfo,
    _i3.Widget? leading,
    _i3.Widget? trailing,
    FutureOr<void> Function()? onTap,
    ui.Color? backgroundColor,
    ui.Color? backgroundColorActivated,
    _i4.EdgeInsetsGeometry? padding,
    double leadingSize = _kNotchedLeadingSize,
    double leadingToTitle = _kNotchedLeadingToTitle,
  }) : super(
          Argument({
            #key: key,
            #title: title,
            #subtitle: subtitle,
            #additionalInfo: additionalInfo,
            #leading: leading,
            #trailing: trailing,
            #onTap: onTap,
            #backgroundColor: backgroundColor,
            #backgroundColorActivated: backgroundColorActivated,
            #padding: padding,
            #leadingSize: leadingSize,
            #leadingToTitle: leadingToTitle,
          }),
          builder: (args) => _i1.CupertinoListTile.notched(
            key: args(#key),
            title: args(#title),
            subtitle: args(#subtitle),
            additionalInfo: args(#additionalInfo),
            leading: args(#leading),
            trailing: args(#trailing),
            onTap: args(#onTap),
            backgroundColor: args(#backgroundColor),
            backgroundColorActivated: args(#backgroundColorActivated),
            padding: args(#padding),
            leadingSize: args(#leadingSize),
            leadingToTitle: args(#leadingToTitle),
          ),
        );
}

const double _kLeadingSize = 28.0;
const double _kLeadingToTitle = 16.0;
const double _kNotchedLeadingSize = 30.0;
const double _kNotchedLeadingToTitle = 12.0;
