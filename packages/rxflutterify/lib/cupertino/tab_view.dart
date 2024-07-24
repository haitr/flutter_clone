library rxflutterify; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:flutter/cupertino.dart' as _i1;
import 'package:flutter/foundation.dart' as _i2;
import 'package:flutter/widgets.dart' as _i3;

import '../wrapper.dart';

final class CupertinoTabView extends Wrapper {
  @Goto(_i1.CupertinoTabView.new)
  CupertinoTabView(
    $ $config, {
    _i2.Key? key,
    _i3.WidgetBuilder? builder,
    _i3.GlobalKey<_i3.NavigatorState>? navigatorKey,
    String? defaultTitle,
    Map<String, _i3.WidgetBuilder>? routes,
    _i3.RouteFactory? onGenerateRoute,
    _i3.RouteFactory? onUnknownRoute,
    List<_i3.NavigatorObserver> navigatorObservers = const [],
    String? restorationScopeId,
  }) : super(
          Argument({
            #key: key,
            #builder: builder,
            #navigatorKey: navigatorKey,
            #defaultTitle: defaultTitle,
            #routes: routes,
            #onGenerateRoute: onGenerateRoute,
            #onUnknownRoute: onUnknownRoute,
            #navigatorObservers: navigatorObservers,
            #restorationScopeId: restorationScopeId,
          }),
          builder: (args) => _i1.CupertinoTabView(
            key: args(#key),
            builder: args(#builder),
            navigatorKey: args(#navigatorKey),
            defaultTitle: args(#defaultTitle),
            routes: args(#routes),
            onGenerateRoute: args(#onGenerateRoute),
            onUnknownRoute: args(#onUnknownRoute),
            navigatorObservers: args(#navigatorObservers),
            restorationScopeId: args(#restorationScopeId),
          ),
        );
}
