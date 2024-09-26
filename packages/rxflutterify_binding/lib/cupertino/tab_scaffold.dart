library rxflutterify_binding; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:ui' as ui;

import 'package:flutter/cupertino.dart' as _i1;
import 'package:flutter/foundation.dart' as _i2;
import 'package:flutter/widgets.dart' as _i3;

import '../wrapper.dart';

final class CupertinoTabScaffold extends Wrapper {
  @Goto(_i1.CupertinoTabScaffold.new)
  CupertinoTabScaffold(
    $ $config, {
    _i2.Key? key,
    required _i1.CupertinoTabBar tabBar,
    required _i3.IndexedWidgetBuilder tabBuilder,
    _i1.CupertinoTabController? controller,
    ui.Color? backgroundColor,
    bool resizeToAvoidBottomInset = true,
    String? restorationId,
  }) : super(
          Argument({
            #key: key,
            #tabBar: tabBar,
            #tabBuilder: tabBuilder,
            #controller: controller,
            #backgroundColor: backgroundColor,
            #resizeToAvoidBottomInset: resizeToAvoidBottomInset,
            #restorationId: restorationId,
          }),
          builder: (args) => _i1.CupertinoTabScaffold(
            key: args(#key),
            tabBar: args(#tabBar),
            tabBuilder: args(#tabBuilder),
            controller: args(#controller),
            backgroundColor: args(#backgroundColor),
            resizeToAvoidBottomInset: args(#resizeToAvoidBottomInset),
            restorationId: args(#restorationId),
          ),
        );
}
