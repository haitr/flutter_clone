library rxflutterify; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:flutter/foundation.dart' as _i2;
import 'package:flutter/widgets.dart' as _i1;

import '../wrapper.dart';

final class Router<T> extends Wrapper {
  @Goto(_i1.Router.new)
  Router({
    _i2.Key? key,
    _i1.RouteInformationProvider? routeInformationProvider,
    _i1.RouteInformationParser<T>? routeInformationParser,
    required _i1.RouterDelegate<T> routerDelegate,
    _i1.BackButtonDispatcher? backButtonDispatcher,
    String? restorationScopeId,
    // Associate with key
    Stream<_i2.Key?>? $key,
    // Associate with routeInformationProvider
    Stream<_i1.RouteInformationProvider?>? $routeInformationProvider,
    // Associate with routeInformationParser
    Stream<_i1.RouteInformationParser<T>?>? $routeInformationParser,
    // Associate with routerDelegate
    Stream<_i1.RouterDelegate<T>>? $routerDelegate,
    // Associate with backButtonDispatcher
    Stream<_i1.BackButtonDispatcher?>? $backButtonDispatcher,
    // Associate with restorationScopeId
    Stream<String?>? $restorationScopeId,
  }) : super(
          Argument(
            {
              'key': key,
              'routeInformationProvider': routeInformationProvider,
              'routeInformationParser': routeInformationParser,
              'routerDelegate': routerDelegate,
              'backButtonDispatcher': backButtonDispatcher,
              'restorationScopeId': restorationScopeId,
            },
            stream: {
              'key': $key,
              'routeInformationProvider': $routeInformationProvider,
              'routeInformationParser': $routeInformationParser,
              'routerDelegate': $routerDelegate,
              'backButtonDispatcher': $backButtonDispatcher,
              'restorationScopeId': $restorationScopeId,
            },
          ),
          builder: (args) => _i1.Router<T>(
            key: args('key'),
            routeInformationProvider: args('routeInformationProvider'),
            routeInformationParser: args('routeInformationParser'),
            routerDelegate: args('routerDelegate'),
            backButtonDispatcher: args('backButtonDispatcher'),
            restorationScopeId: args('restorationScopeId'),
          ),
        );

  @Goto(_i1.Router.withConfig)
  Router.withConfig({
    _i2.Key? key,
    required _i1.RouterConfig<T> config,
    String? restorationScopeId,
    // Associate with key
    Stream<_i2.Key?>? $key,
    // Associate with config
    Stream<_i1.RouterConfig<T>>? $config,
    // Associate with restorationScopeId
    Stream<String?>? $restorationScopeId,
  }) : super(
          Argument(
            {
              'key': key,
              'config': config,
              'restorationScopeId': restorationScopeId,
            },
            stream: {
              'key': $key,
              'config': $config,
              'restorationScopeId': $restorationScopeId,
            },
          ),
          builder: (args) => _i1.Router<T>.withConfig(
            key: args('key'),
            config: args('config'),
            restorationScopeId: args('restorationScopeId'),
          ),
        );
}

final class BackButtonListener extends Wrapper {
  @Goto(_i1.BackButtonListener.new)
  BackButtonListener({
    _i2.Key? key,
    required _i1.Widget child,
    required _i2.ValueGetter<Future<bool>> onBackButtonPressed,
    // Associate with key
    Stream<_i2.Key?>? $key,
    // Associate with child
    Stream<_i1.Widget>? $child,
    // Associate with onBackButtonPressed
    Stream<_i2.ValueGetter<Future<bool>>>? $onBackButtonPressed,
  }) : super(
          Argument(
            {
              'key': key,
              'child': child,
              'onBackButtonPressed': onBackButtonPressed,
            },
            stream: {
              'key': $key,
              'child': $child,
              'onBackButtonPressed': $onBackButtonPressed,
            },
          ),
          builder: (args) => _i1.BackButtonListener(
            key: args('key'),
            child: args('child'),
            onBackButtonPressed: args('onBackButtonPressed'),
          ),
        );
}
