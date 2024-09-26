library rxflutterify_binding; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:flutter/foundation.dart' as _i2;
import 'package:flutter/widgets.dart' as _i1;

import '../wrapper.dart';

final class Router<T> extends Wrapper {
  @Goto(_i1.Router.new)
  Router(
    $ $config, {
    _i2.Key? key,
    _i1.RouteInformationProvider? routeInformationProvider,
    _i1.RouteInformationParser<T>? routeInformationParser,
    required _i1.RouterDelegate<T> routerDelegate,
    _i1.BackButtonDispatcher? backButtonDispatcher,
    String? restorationScopeId,
  }) : super(
          Argument({
            #key: key,
            #routeInformationProvider: routeInformationProvider,
            #routeInformationParser: routeInformationParser,
            #routerDelegate: routerDelegate,
            #backButtonDispatcher: backButtonDispatcher,
            #restorationScopeId: restorationScopeId,
          }),
          builder: (args) => _i1.Router<T>(
            key: args(#key),
            routeInformationProvider: args(#routeInformationProvider),
            routeInformationParser: args(#routeInformationParser),
            routerDelegate: args(#routerDelegate),
            backButtonDispatcher: args(#backButtonDispatcher),
            restorationScopeId: args(#restorationScopeId),
          ),
        );

  @Goto(_i1.Router.withConfig)
  Router.withConfig(
    $ $config, {
    _i2.Key? key,
    required _i1.RouterConfig<T> config,
    String? restorationScopeId,
  }) : super(
          Argument({
            #key: key,
            #config: config,
            #restorationScopeId: restorationScopeId,
          }),
          builder: (args) => _i1.Router<T>.withConfig(
            key: args(#key),
            config: args(#config),
            restorationScopeId: args(#restorationScopeId),
          ),
        );
}

final class BackButtonListener extends Wrapper {
  @Goto(_i1.BackButtonListener.new)
  BackButtonListener(
    $ $config, {
    _i2.Key? key,
    required _i1.Widget child,
    required _i2.ValueGetter<Future<bool>> onBackButtonPressed,
  }) : super(
          Argument({
            #key: key,
            #child: child,
            #onBackButtonPressed: onBackButtonPressed,
          }),
          builder: (args) => _i1.BackButtonListener(
            key: args(#key),
            child: args(#child),
            onBackButtonPressed: args(#onBackButtonPressed),
          ),
        );
}
