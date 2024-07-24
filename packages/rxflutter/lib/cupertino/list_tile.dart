library rxflutter; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:async';
import 'dart:ui' as ui;

import 'package:flutter/cupertino.dart' as _i1;
import 'package:flutter/foundation.dart' as _i2;
import 'package:flutter/painting.dart' as _i4;
import 'package:flutter/widgets.dart' as _i3;

import '../wrapper.dart';

final class CupertinoListTileChevron extends Wrapper {
  @Goto(_i1.CupertinoListTileChevron.new)
  CupertinoListTileChevron({
    _i2.Key? key,
    // Associate with key
    Stream<_i2.Key?>? $key,
  }) : super(
          Argument(
            {'key': key},
            stream: {'key': $key},
          ),
          builder: (args) => _i1.CupertinoListTileChevron(key: args('key')),
        );
}

final class CupertinoListTile extends Wrapper {
  @Goto(_i1.CupertinoListTile.new)
  CupertinoListTile({
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
    // Associate with key
    Stream<_i2.Key?>? $key,
    // Associate with title
    Stream<_i3.Widget>? $title,
    // Associate with subtitle
    Stream<_i3.Widget?>? $subtitle,
    // Associate with additionalInfo
    Stream<_i3.Widget?>? $additionalInfo,
    // Associate with leading
    Stream<_i3.Widget?>? $leading,
    // Associate with trailing
    Stream<_i3.Widget?>? $trailing,
    // Associate with onTap
    Stream<FutureOr<void> Function()?>? $onTap,
    // Associate with backgroundColor
    Stream<ui.Color?>? $backgroundColor,
    // Associate with backgroundColorActivated
    Stream<ui.Color?>? $backgroundColorActivated,
    // Associate with padding
    Stream<_i4.EdgeInsetsGeometry?>? $padding,
    // Associate with leadingSize
    Stream<double>? $leadingSize,
    // Associate with leadingToTitle
    Stream<double>? $leadingToTitle,
  }) : super(
          Argument(
            {
              'key': key,
              'title': title,
              'subtitle': subtitle,
              'additionalInfo': additionalInfo,
              'leading': leading,
              'trailing': trailing,
              'onTap': onTap,
              'backgroundColor': backgroundColor,
              'backgroundColorActivated': backgroundColorActivated,
              'padding': padding,
              'leadingSize': leadingSize,
              'leadingToTitle': leadingToTitle,
            },
            stream: {
              'key': $key,
              'title': $title,
              'subtitle': $subtitle,
              'additionalInfo': $additionalInfo,
              'leading': $leading,
              'trailing': $trailing,
              'onTap': $onTap,
              'backgroundColor': $backgroundColor,
              'backgroundColorActivated': $backgroundColorActivated,
              'padding': $padding,
              'leadingSize': $leadingSize,
              'leadingToTitle': $leadingToTitle,
            },
          ),
          builder: (args) => _i1.CupertinoListTile(
            key: args('key'),
            title: args('title'),
            subtitle: args('subtitle'),
            additionalInfo: args('additionalInfo'),
            leading: args('leading'),
            trailing: args('trailing'),
            onTap: args('onTap'),
            backgroundColor: args('backgroundColor'),
            backgroundColorActivated: args('backgroundColorActivated'),
            padding: args('padding'),
            leadingSize: args('leadingSize'),
            leadingToTitle: args('leadingToTitle'),
          ),
        );

  @Goto(_i1.CupertinoListTile.notched)
  CupertinoListTile.notched({
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
    // Associate with key
    Stream<_i2.Key?>? $key,
    // Associate with title
    Stream<_i3.Widget>? $title,
    // Associate with subtitle
    Stream<_i3.Widget?>? $subtitle,
    // Associate with additionalInfo
    Stream<_i3.Widget?>? $additionalInfo,
    // Associate with leading
    Stream<_i3.Widget?>? $leading,
    // Associate with trailing
    Stream<_i3.Widget?>? $trailing,
    // Associate with onTap
    Stream<FutureOr<void> Function()?>? $onTap,
    // Associate with backgroundColor
    Stream<ui.Color?>? $backgroundColor,
    // Associate with backgroundColorActivated
    Stream<ui.Color?>? $backgroundColorActivated,
    // Associate with padding
    Stream<_i4.EdgeInsetsGeometry?>? $padding,
    // Associate with leadingSize
    Stream<double>? $leadingSize,
    // Associate with leadingToTitle
    Stream<double>? $leadingToTitle,
  }) : super(
          Argument(
            {
              'key': key,
              'title': title,
              'subtitle': subtitle,
              'additionalInfo': additionalInfo,
              'leading': leading,
              'trailing': trailing,
              'onTap': onTap,
              'backgroundColor': backgroundColor,
              'backgroundColorActivated': backgroundColorActivated,
              'padding': padding,
              'leadingSize': leadingSize,
              'leadingToTitle': leadingToTitle,
            },
            stream: {
              'key': $key,
              'title': $title,
              'subtitle': $subtitle,
              'additionalInfo': $additionalInfo,
              'leading': $leading,
              'trailing': $trailing,
              'onTap': $onTap,
              'backgroundColor': $backgroundColor,
              'backgroundColorActivated': $backgroundColorActivated,
              'padding': $padding,
              'leadingSize': $leadingSize,
              'leadingToTitle': $leadingToTitle,
            },
          ),
          builder: (args) => _i1.CupertinoListTile.notched(
            key: args('key'),
            title: args('title'),
            subtitle: args('subtitle'),
            additionalInfo: args('additionalInfo'),
            leading: args('leading'),
            trailing: args('trailing'),
            onTap: args('onTap'),
            backgroundColor: args('backgroundColor'),
            backgroundColorActivated: args('backgroundColorActivated'),
            padding: args('padding'),
            leadingSize: args('leadingSize'),
            leadingToTitle: args('leadingToTitle'),
          ),
        );
}

const double _kLeadingSize = 28.0;
const double _kLeadingToTitle = 16.0;
const double _kNotchedLeadingSize = 30.0;
const double _kNotchedLeadingToTitle = 12.0;
