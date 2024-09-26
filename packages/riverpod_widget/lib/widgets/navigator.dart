library rxflutterify; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:ui' as ui;

import 'package:flutter/foundation.dart' as _i2;
import 'package:flutter/widgets.dart' as _i1;

import '../wrapper.dart';

final class HeroControllerScope extends Wrapper {
  @Goto(_i1.HeroControllerScope.new)
  HeroControllerScope(
    $ $config, {
    _i2.Key? key,
    required _i1.HeroController controller,
    required _i1.Widget child,
  }) : super(
          Argument({
            #key: key,
            #controller: controller,
            #child: child,
          }),
          builder: (args) => _i1.HeroControllerScope(
            key: args(#key),
            controller: args(#controller),
            child: args(#child),
          ),
        );

  @Goto(_i1.HeroControllerScope.none)
  HeroControllerScope.none(
    $ $config, {
    _i2.Key? key,
    required _i1.Widget child,
  }) : super(
          Argument({
            #key: key,
            #child: child,
          }),
          builder: (args) => _i1.HeroControllerScope.none(
            key: args(#key),
            child: args(#child),
          ),
        );
}

final class Navigator extends Wrapper {
  @Goto(_i1.Navigator.new)
  Navigator(
    $ $config, {
    _i2.Key? key,
    List<_i1.Page<dynamic>> pages = const [],
    _i1.PopPageCallback? onPopPage,
    String? initialRoute,
    _i1.RouteListFactory onGenerateInitialRoutes = _i1.Navigator.defaultGenerateInitialRoutes,
    _i1.RouteFactory? onGenerateRoute,
    _i1.RouteFactory? onUnknownRoute,
    _i1.TransitionDelegate<dynamic> transitionDelegate = const _i1.DefaultTransitionDelegate<dynamic>(),
    bool reportsRouteUpdateToEngine = false,
    ui.Clip clipBehavior = ui.Clip.hardEdge,
    List<_i1.NavigatorObserver> observers = const [],
    bool requestFocus = true,
    String? restorationScopeId,
    _i1.TraversalEdgeBehavior routeTraversalEdgeBehavior = _i1.kDefaultRouteTraversalEdgeBehavior,
    _i1.DidRemovePageCallback? onDidRemovePage,
  }) : super(
          Argument({
            #key: key,
            #pages: pages,
            #onPopPage: onPopPage,
            #initialRoute: initialRoute,
            #onGenerateInitialRoutes: onGenerateInitialRoutes,
            #onGenerateRoute: onGenerateRoute,
            #onUnknownRoute: onUnknownRoute,
            #transitionDelegate: transitionDelegate,
            #reportsRouteUpdateToEngine: reportsRouteUpdateToEngine,
            #clipBehavior: clipBehavior,
            #observers: observers,
            #requestFocus: requestFocus,
            #restorationScopeId: restorationScopeId,
            #routeTraversalEdgeBehavior: routeTraversalEdgeBehavior,
            #onDidRemovePage: onDidRemovePage,
          }),
          builder: (args) => _i1.Navigator(
            key: args(#key),
            pages: args(#pages),
            onPopPage: args(#onPopPage),
            initialRoute: args(#initialRoute),
            onGenerateInitialRoutes: args(#onGenerateInitialRoutes),
            onGenerateRoute: args(#onGenerateRoute),
            onUnknownRoute: args(#onUnknownRoute),
            transitionDelegate: args(#transitionDelegate),
            reportsRouteUpdateToEngine: args(#reportsRouteUpdateToEngine),
            clipBehavior: args(#clipBehavior),
            observers: args(#observers),
            requestFocus: args(#requestFocus),
            restorationScopeId: args(#restorationScopeId),
            routeTraversalEdgeBehavior: args(#routeTraversalEdgeBehavior),
            onDidRemovePage: args(#onDidRemovePage),
          ),
        );
}
