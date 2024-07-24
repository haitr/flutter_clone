library rxflutter; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:ui' as ui;

import 'package:flutter/cupertino.dart' as _i1;
import 'package:flutter/foundation.dart' as _i2;
import 'package:flutter/widgets.dart' as _i3;

import '../wrapper.dart';

final class CupertinoTabScaffold extends Wrapper {
  @Goto(_i1.CupertinoTabScaffold.new)
  CupertinoTabScaffold({
    _i2.Key? key,
    required _i1.CupertinoTabBar tabBar,
    required _i3.IndexedWidgetBuilder tabBuilder,
    _i1.CupertinoTabController? controller,
    ui.Color? backgroundColor,
    bool resizeToAvoidBottomInset = true,
    String? restorationId,
    // Associate with key
    Stream<_i2.Key?>? $key,
    // Associate with tabBar
    Stream<_i1.CupertinoTabBar>? $tabBar,
    // Associate with tabBuilder
    Stream<_i3.IndexedWidgetBuilder>? $tabBuilder,
    // Associate with controller
    Stream<_i1.CupertinoTabController?>? $controller,
    // Associate with backgroundColor
    Stream<ui.Color?>? $backgroundColor,
    // Associate with resizeToAvoidBottomInset
    Stream<bool>? $resizeToAvoidBottomInset,
    // Associate with restorationId
    Stream<String?>? $restorationId,
  }) : super(
          Argument(
            {
              'key': key,
              'tabBar': tabBar,
              'tabBuilder': tabBuilder,
              'controller': controller,
              'backgroundColor': backgroundColor,
              'resizeToAvoidBottomInset': resizeToAvoidBottomInset,
              'restorationId': restorationId,
            },
            stream: {
              'key': $key,
              'tabBar': $tabBar,
              'tabBuilder': $tabBuilder,
              'controller': $controller,
              'backgroundColor': $backgroundColor,
              'resizeToAvoidBottomInset': $resizeToAvoidBottomInset,
              'restorationId': $restorationId,
            },
          ),
          builder: (args) => _i1.CupertinoTabScaffold(
            key: args('key'),
            tabBar: args('tabBar'),
            tabBuilder: args('tabBuilder'),
            controller: args('controller'),
            backgroundColor: args('backgroundColor'),
            resizeToAvoidBottomInset: args('resizeToAvoidBottomInset'),
            restorationId: args('restorationId'),
          ),
        );
}
