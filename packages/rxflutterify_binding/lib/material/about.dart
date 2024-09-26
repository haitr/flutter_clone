library rxflutterify_binding; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:flutter/foundation.dart' as _i2;
import 'package:flutter/material.dart' as _i1;
import 'package:flutter/widgets.dart' as _i3;

import '../wrapper.dart';

final class LicensePage extends Wrapper {
  @Goto(_i1.LicensePage.new)
  LicensePage(
    $ $config, {
    _i2.Key? key,
    String? applicationName,
    String? applicationVersion,
    _i3.Widget? applicationIcon,
    String? applicationLegalese,
  }) : super(
          Argument({
            #key: key,
            #applicationName: applicationName,
            #applicationVersion: applicationVersion,
            #applicationIcon: applicationIcon,
            #applicationLegalese: applicationLegalese,
          }),
          builder: (args) => _i1.LicensePage(
            key: args(#key),
            applicationName: args(#applicationName),
            applicationVersion: args(#applicationVersion),
            applicationIcon: args(#applicationIcon),
            applicationLegalese: args(#applicationLegalese),
          ),
        );
}

final class AboutDialog extends Wrapper {
  @Goto(_i1.AboutDialog.new)
  AboutDialog(
    $ $config, {
    _i2.Key? key,
    String? applicationName,
    String? applicationVersion,
    _i3.Widget? applicationIcon,
    String? applicationLegalese,
    List<_i3.Widget>? children,
  }) : super(
          Argument({
            #key: key,
            #applicationName: applicationName,
            #applicationVersion: applicationVersion,
            #applicationIcon: applicationIcon,
            #applicationLegalese: applicationLegalese,
            #children: children,
          }),
          builder: (args) => _i1.AboutDialog(
            key: args(#key),
            applicationName: args(#applicationName),
            applicationVersion: args(#applicationVersion),
            applicationIcon: args(#applicationIcon),
            applicationLegalese: args(#applicationLegalese),
            children: args(#children),
          ),
        );
}

final class AboutListTile extends Wrapper {
  @Goto(_i1.AboutListTile.new)
  AboutListTile(
    $ $config, {
    _i2.Key? key,
    _i3.Widget? icon,
    _i3.Widget? child,
    String? applicationName,
    String? applicationVersion,
    _i3.Widget? applicationIcon,
    String? applicationLegalese,
    List<_i3.Widget>? aboutBoxChildren,
    bool? dense,
  }) : super(
          Argument({
            #key: key,
            #icon: icon,
            #child: child,
            #applicationName: applicationName,
            #applicationVersion: applicationVersion,
            #applicationIcon: applicationIcon,
            #applicationLegalese: applicationLegalese,
            #aboutBoxChildren: aboutBoxChildren,
            #dense: dense,
          }),
          builder: (args) => _i1.AboutListTile(
            key: args(#key),
            icon: args(#icon),
            child: args(#child),
            applicationName: args(#applicationName),
            applicationVersion: args(#applicationVersion),
            applicationIcon: args(#applicationIcon),
            applicationLegalese: args(#applicationLegalese),
            aboutBoxChildren: args(#aboutBoxChildren),
            dense: args(#dense),
          ),
        );
}
