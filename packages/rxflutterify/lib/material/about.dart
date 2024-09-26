library rxflutterify; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:flutter/foundation.dart' as _i2;
import 'package:flutter/material.dart' as _i1;
import 'package:flutter/widgets.dart' as _i3;

import '../wrapper.dart';

final class LicensePage extends Wrapper {
  @Goto(_i1.LicensePage.new)
  LicensePage({
    _i2.Key? key,
    String? applicationName,
    String? applicationVersion,
    _i3.Widget? applicationIcon,
    String? applicationLegalese,
    // Associate with key
    Stream<_i2.Key?>? $key,
    // Associate with applicationName
    Stream<String?>? $applicationName,
    // Associate with applicationVersion
    Stream<String?>? $applicationVersion,
    // Associate with applicationIcon
    Stream<_i3.Widget?>? $applicationIcon,
    // Associate with applicationLegalese
    Stream<String?>? $applicationLegalese,
  }) : super(
          Argument(
            {
              'key': key,
              'applicationName': applicationName,
              'applicationVersion': applicationVersion,
              'applicationIcon': applicationIcon,
              'applicationLegalese': applicationLegalese,
            },
            stream: {
              'key': $key,
              'applicationName': $applicationName,
              'applicationVersion': $applicationVersion,
              'applicationIcon': $applicationIcon,
              'applicationLegalese': $applicationLegalese,
            },
          ),
          builder: (args) => _i1.LicensePage(
            key: args('key'),
            applicationName: args('applicationName'),
            applicationVersion: args('applicationVersion'),
            applicationIcon: args('applicationIcon'),
            applicationLegalese: args('applicationLegalese'),
          ),
        );
}

final class AboutDialog extends Wrapper {
  @Goto(_i1.AboutDialog.new)
  AboutDialog({
    _i2.Key? key,
    String? applicationName,
    String? applicationVersion,
    _i3.Widget? applicationIcon,
    String? applicationLegalese,
    List<_i3.Widget>? children,
    // Associate with key
    Stream<_i2.Key?>? $key,
    // Associate with applicationName
    Stream<String?>? $applicationName,
    // Associate with applicationVersion
    Stream<String?>? $applicationVersion,
    // Associate with applicationIcon
    Stream<_i3.Widget?>? $applicationIcon,
    // Associate with applicationLegalese
    Stream<String?>? $applicationLegalese,
    // Associate with children
    Stream<List<_i3.Widget>?>? $children,
  }) : super(
          Argument(
            {
              'key': key,
              'applicationName': applicationName,
              'applicationVersion': applicationVersion,
              'applicationIcon': applicationIcon,
              'applicationLegalese': applicationLegalese,
              'children': children,
            },
            stream: {
              'key': $key,
              'applicationName': $applicationName,
              'applicationVersion': $applicationVersion,
              'applicationIcon': $applicationIcon,
              'applicationLegalese': $applicationLegalese,
              'children': $children,
            },
          ),
          builder: (args) => _i1.AboutDialog(
            key: args('key'),
            applicationName: args('applicationName'),
            applicationVersion: args('applicationVersion'),
            applicationIcon: args('applicationIcon'),
            applicationLegalese: args('applicationLegalese'),
            children: args('children'),
          ),
        );
}

final class AboutListTile extends Wrapper {
  @Goto(_i1.AboutListTile.new)
  AboutListTile({
    _i2.Key? key,
    _i3.Widget? icon,
    _i3.Widget? child,
    String? applicationName,
    String? applicationVersion,
    _i3.Widget? applicationIcon,
    String? applicationLegalese,
    List<_i3.Widget>? aboutBoxChildren,
    bool? dense,
    // Associate with key
    Stream<_i2.Key?>? $key,
    // Associate with icon
    Stream<_i3.Widget?>? $icon,
    // Associate with child
    Stream<_i3.Widget?>? $child,
    // Associate with applicationName
    Stream<String?>? $applicationName,
    // Associate with applicationVersion
    Stream<String?>? $applicationVersion,
    // Associate with applicationIcon
    Stream<_i3.Widget?>? $applicationIcon,
    // Associate with applicationLegalese
    Stream<String?>? $applicationLegalese,
    // Associate with aboutBoxChildren
    Stream<List<_i3.Widget>?>? $aboutBoxChildren,
    // Associate with dense
    Stream<bool?>? $dense,
  }) : super(
          Argument(
            {
              'key': key,
              'icon': icon,
              'child': child,
              'applicationName': applicationName,
              'applicationVersion': applicationVersion,
              'applicationIcon': applicationIcon,
              'applicationLegalese': applicationLegalese,
              'aboutBoxChildren': aboutBoxChildren,
              'dense': dense,
            },
            stream: {
              'key': $key,
              'icon': $icon,
              'child': $child,
              'applicationName': $applicationName,
              'applicationVersion': $applicationVersion,
              'applicationIcon': $applicationIcon,
              'applicationLegalese': $applicationLegalese,
              'aboutBoxChildren': $aboutBoxChildren,
              'dense': $dense,
            },
          ),
          builder: (args) => _i1.AboutListTile(
            key: args('key'),
            icon: args('icon'),
            child: args('child'),
            applicationName: args('applicationName'),
            applicationVersion: args('applicationVersion'),
            applicationIcon: args('applicationIcon'),
            applicationLegalese: args('applicationLegalese'),
            aboutBoxChildren: args('aboutBoxChildren'),
            dense: args('dense'),
          ),
        );
}
