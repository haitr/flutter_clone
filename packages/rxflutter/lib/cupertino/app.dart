library rxflutter; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:ui' as ui;

import 'package:flutter/cupertino.dart' as _i1;
import 'package:flutter/foundation.dart' as _i2;
import 'package:flutter/widgets.dart' as _i3;

import '../wrapper.dart';

final class CupertinoApp extends Wrapper {
  @Goto(_i1.CupertinoApp.new)
  CupertinoApp({
    _i2.Key? key,
    _i3.GlobalKey<_i3.NavigatorState>? navigatorKey,
    _i3.Widget? home,
    _i1.CupertinoThemeData? theme,
    Map<String, _i3.Widget Function(_i3.BuildContext)> routes = const {},
    String? initialRoute,
    _i3.RouteFactory? onGenerateRoute,
    _i3.InitialRouteListFactory? onGenerateInitialRoutes,
    _i3.RouteFactory? onUnknownRoute,
    _i3.NotificationListenerCallback<_i3.NavigationNotification>? onNavigationNotification,
    List<_i3.NavigatorObserver> navigatorObservers = const [],
    _i3.TransitionBuilder? builder,
    String title = '',
    _i3.GenerateAppTitle? onGenerateTitle,
    ui.Color? color,
    ui.Locale? locale,
    Iterable<_i3.LocalizationsDelegate<dynamic>>? localizationsDelegates,
    _i3.LocaleListResolutionCallback? localeListResolutionCallback,
    _i3.LocaleResolutionCallback? localeResolutionCallback,
    Iterable<ui.Locale> supportedLocales = const [
      ui.Locale(
        'en',
        'US',
      )
    ],
    bool showPerformanceOverlay = false,
    bool checkerboardRasterCacheImages = false,
    bool checkerboardOffscreenLayers = false,
    bool showSemanticsDebugger = false,
    bool debugShowCheckedModeBanner = true,
    Map<_i3.ShortcutActivator, _i3.Intent>? shortcuts,
    Map<Type, _i3.Action<_i3.Intent>>? actions,
    String? restorationScopeId,
    _i3.ScrollBehavior? scrollBehavior,
    bool useInheritedMediaQuery = false,
    // Associate with key
    Stream<_i2.Key?>? $key,
    // Associate with navigatorKey
    Stream<_i3.GlobalKey<_i3.NavigatorState>?>? $navigatorKey,
    // Associate with home
    Stream<_i3.Widget?>? $home,
    // Associate with theme
    Stream<_i1.CupertinoThemeData?>? $theme,
    // Associate with routes
    Stream<Map<String, _i3.Widget Function(_i3.BuildContext)>>? $routes,
    // Associate with initialRoute
    Stream<String?>? $initialRoute,
    // Associate with onGenerateRoute
    Stream<_i3.RouteFactory?>? $onGenerateRoute,
    // Associate with onGenerateInitialRoutes
    Stream<_i3.InitialRouteListFactory?>? $onGenerateInitialRoutes,
    // Associate with onUnknownRoute
    Stream<_i3.RouteFactory?>? $onUnknownRoute,
    // Associate with onNavigationNotification
    Stream<_i3.NotificationListenerCallback<_i3.NavigationNotification>?>? $onNavigationNotification,
    // Associate with navigatorObservers
    Stream<List<_i3.NavigatorObserver>>? $navigatorObservers,
    // Associate with builder
    Stream<_i3.TransitionBuilder?>? $builder,
    // Associate with title
    Stream<String>? $title,
    // Associate with onGenerateTitle
    Stream<_i3.GenerateAppTitle?>? $onGenerateTitle,
    // Associate with color
    Stream<ui.Color?>? $color,
    // Associate with locale
    Stream<ui.Locale?>? $locale,
    // Associate with localizationsDelegates
    Stream<Iterable<_i3.LocalizationsDelegate<dynamic>>?>? $localizationsDelegates,
    // Associate with localeListResolutionCallback
    Stream<_i3.LocaleListResolutionCallback?>? $localeListResolutionCallback,
    // Associate with localeResolutionCallback
    Stream<_i3.LocaleResolutionCallback?>? $localeResolutionCallback,
    // Associate with supportedLocales
    Stream<Iterable<ui.Locale>>? $supportedLocales,
    // Associate with showPerformanceOverlay
    Stream<bool>? $showPerformanceOverlay,
    // Associate with checkerboardRasterCacheImages
    Stream<bool>? $checkerboardRasterCacheImages,
    // Associate with checkerboardOffscreenLayers
    Stream<bool>? $checkerboardOffscreenLayers,
    // Associate with showSemanticsDebugger
    Stream<bool>? $showSemanticsDebugger,
    // Associate with debugShowCheckedModeBanner
    Stream<bool>? $debugShowCheckedModeBanner,
    // Associate with shortcuts
    Stream<Map<_i3.ShortcutActivator, _i3.Intent>?>? $shortcuts,
    // Associate with actions
    Stream<Map<Type, _i3.Action<_i3.Intent>>?>? $actions,
    // Associate with restorationScopeId
    Stream<String?>? $restorationScopeId,
    // Associate with scrollBehavior
    Stream<_i3.ScrollBehavior?>? $scrollBehavior,
    // Associate with useInheritedMediaQuery
    Stream<bool>? $useInheritedMediaQuery,
  }) : super(
          Argument(
            {
              'key': key,
              'navigatorKey': navigatorKey,
              'home': home,
              'theme': theme,
              'routes': routes,
              'initialRoute': initialRoute,
              'onGenerateRoute': onGenerateRoute,
              'onGenerateInitialRoutes': onGenerateInitialRoutes,
              'onUnknownRoute': onUnknownRoute,
              'onNavigationNotification': onNavigationNotification,
              'navigatorObservers': navigatorObservers,
              'builder': builder,
              'title': title,
              'onGenerateTitle': onGenerateTitle,
              'color': color,
              'locale': locale,
              'localizationsDelegates': localizationsDelegates,
              'localeListResolutionCallback': localeListResolutionCallback,
              'localeResolutionCallback': localeResolutionCallback,
              'supportedLocales': supportedLocales,
              'showPerformanceOverlay': showPerformanceOverlay,
              'checkerboardRasterCacheImages': checkerboardRasterCacheImages,
              'checkerboardOffscreenLayers': checkerboardOffscreenLayers,
              'showSemanticsDebugger': showSemanticsDebugger,
              'debugShowCheckedModeBanner': debugShowCheckedModeBanner,
              'shortcuts': shortcuts,
              'actions': actions,
              'restorationScopeId': restorationScopeId,
              'scrollBehavior': scrollBehavior,
              'useInheritedMediaQuery': useInheritedMediaQuery,
            },
            stream: {
              'key': $key,
              'navigatorKey': $navigatorKey,
              'home': $home,
              'theme': $theme,
              'routes': $routes,
              'initialRoute': $initialRoute,
              'onGenerateRoute': $onGenerateRoute,
              'onGenerateInitialRoutes': $onGenerateInitialRoutes,
              'onUnknownRoute': $onUnknownRoute,
              'onNavigationNotification': $onNavigationNotification,
              'navigatorObservers': $navigatorObservers,
              'builder': $builder,
              'title': $title,
              'onGenerateTitle': $onGenerateTitle,
              'color': $color,
              'locale': $locale,
              'localizationsDelegates': $localizationsDelegates,
              'localeListResolutionCallback': $localeListResolutionCallback,
              'localeResolutionCallback': $localeResolutionCallback,
              'supportedLocales': $supportedLocales,
              'showPerformanceOverlay': $showPerformanceOverlay,
              'checkerboardRasterCacheImages': $checkerboardRasterCacheImages,
              'checkerboardOffscreenLayers': $checkerboardOffscreenLayers,
              'showSemanticsDebugger': $showSemanticsDebugger,
              'debugShowCheckedModeBanner': $debugShowCheckedModeBanner,
              'shortcuts': $shortcuts,
              'actions': $actions,
              'restorationScopeId': $restorationScopeId,
              'scrollBehavior': $scrollBehavior,
              'useInheritedMediaQuery': $useInheritedMediaQuery,
            },
          ),
          builder: (args) => _i1.CupertinoApp(
            key: args('key'),
            navigatorKey: args('navigatorKey'),
            home: args('home'),
            theme: args('theme'),
            routes: args('routes'),
            initialRoute: args('initialRoute'),
            onGenerateRoute: args('onGenerateRoute'),
            onGenerateInitialRoutes: args('onGenerateInitialRoutes'),
            onUnknownRoute: args('onUnknownRoute'),
            onNavigationNotification: args('onNavigationNotification'),
            navigatorObservers: args('navigatorObservers'),
            builder: args('builder'),
            title: args('title'),
            onGenerateTitle: args('onGenerateTitle'),
            color: args('color'),
            locale: args('locale'),
            localizationsDelegates: args('localizationsDelegates'),
            localeListResolutionCallback: args('localeListResolutionCallback'),
            localeResolutionCallback: args('localeResolutionCallback'),
            supportedLocales: args('supportedLocales'),
            showPerformanceOverlay: args('showPerformanceOverlay'),
            checkerboardRasterCacheImages: args('checkerboardRasterCacheImages'),
            checkerboardOffscreenLayers: args('checkerboardOffscreenLayers'),
            showSemanticsDebugger: args('showSemanticsDebugger'),
            debugShowCheckedModeBanner: args('debugShowCheckedModeBanner'),
            shortcuts: args('shortcuts'),
            actions: args('actions'),
            restorationScopeId: args('restorationScopeId'),
            scrollBehavior: args('scrollBehavior'),
            useInheritedMediaQuery: args('useInheritedMediaQuery'),
          ),
        );

  @Goto(_i1.CupertinoApp.router)
  CupertinoApp.router({
    _i2.Key? key,
    _i3.RouteInformationProvider? routeInformationProvider,
    _i3.RouteInformationParser<Object>? routeInformationParser,
    _i3.RouterDelegate<Object>? routerDelegate,
    _i3.BackButtonDispatcher? backButtonDispatcher,
    _i3.RouterConfig<Object>? routerConfig,
    _i1.CupertinoThemeData? theme,
    _i3.TransitionBuilder? builder,
    String title = '',
    _i3.GenerateAppTitle? onGenerateTitle,
    _i3.NotificationListenerCallback<_i3.NavigationNotification>? onNavigationNotification,
    ui.Color? color,
    ui.Locale? locale,
    Iterable<_i3.LocalizationsDelegate<dynamic>>? localizationsDelegates,
    _i3.LocaleListResolutionCallback? localeListResolutionCallback,
    _i3.LocaleResolutionCallback? localeResolutionCallback,
    Iterable<ui.Locale> supportedLocales = const [
      ui.Locale(
        'en',
        'US',
      )
    ],
    bool showPerformanceOverlay = false,
    bool checkerboardRasterCacheImages = false,
    bool checkerboardOffscreenLayers = false,
    bool showSemanticsDebugger = false,
    bool debugShowCheckedModeBanner = true,
    Map<_i3.ShortcutActivator, _i3.Intent>? shortcuts,
    Map<Type, _i3.Action<_i3.Intent>>? actions,
    String? restorationScopeId,
    _i3.ScrollBehavior? scrollBehavior,
    bool useInheritedMediaQuery = false,
    // Associate with key
    Stream<_i2.Key?>? $key,
    // Associate with routeInformationProvider
    Stream<_i3.RouteInformationProvider?>? $routeInformationProvider,
    // Associate with routeInformationParser
    Stream<_i3.RouteInformationParser<Object>?>? $routeInformationParser,
    // Associate with routerDelegate
    Stream<_i3.RouterDelegate<Object>?>? $routerDelegate,
    // Associate with backButtonDispatcher
    Stream<_i3.BackButtonDispatcher?>? $backButtonDispatcher,
    // Associate with routerConfig
    Stream<_i3.RouterConfig<Object>?>? $routerConfig,
    // Associate with theme
    Stream<_i1.CupertinoThemeData?>? $theme,
    // Associate with builder
    Stream<_i3.TransitionBuilder?>? $builder,
    // Associate with title
    Stream<String>? $title,
    // Associate with onGenerateTitle
    Stream<_i3.GenerateAppTitle?>? $onGenerateTitle,
    // Associate with onNavigationNotification
    Stream<_i3.NotificationListenerCallback<_i3.NavigationNotification>?>? $onNavigationNotification,
    // Associate with color
    Stream<ui.Color?>? $color,
    // Associate with locale
    Stream<ui.Locale?>? $locale,
    // Associate with localizationsDelegates
    Stream<Iterable<_i3.LocalizationsDelegate<dynamic>>?>? $localizationsDelegates,
    // Associate with localeListResolutionCallback
    Stream<_i3.LocaleListResolutionCallback?>? $localeListResolutionCallback,
    // Associate with localeResolutionCallback
    Stream<_i3.LocaleResolutionCallback?>? $localeResolutionCallback,
    // Associate with supportedLocales
    Stream<Iterable<ui.Locale>>? $supportedLocales,
    // Associate with showPerformanceOverlay
    Stream<bool>? $showPerformanceOverlay,
    // Associate with checkerboardRasterCacheImages
    Stream<bool>? $checkerboardRasterCacheImages,
    // Associate with checkerboardOffscreenLayers
    Stream<bool>? $checkerboardOffscreenLayers,
    // Associate with showSemanticsDebugger
    Stream<bool>? $showSemanticsDebugger,
    // Associate with debugShowCheckedModeBanner
    Stream<bool>? $debugShowCheckedModeBanner,
    // Associate with shortcuts
    Stream<Map<_i3.ShortcutActivator, _i3.Intent>?>? $shortcuts,
    // Associate with actions
    Stream<Map<Type, _i3.Action<_i3.Intent>>?>? $actions,
    // Associate with restorationScopeId
    Stream<String?>? $restorationScopeId,
    // Associate with scrollBehavior
    Stream<_i3.ScrollBehavior?>? $scrollBehavior,
    // Associate with useInheritedMediaQuery
    Stream<bool>? $useInheritedMediaQuery,
  }) : super(
          Argument(
            {
              'key': key,
              'routeInformationProvider': routeInformationProvider,
              'routeInformationParser': routeInformationParser,
              'routerDelegate': routerDelegate,
              'backButtonDispatcher': backButtonDispatcher,
              'routerConfig': routerConfig,
              'theme': theme,
              'builder': builder,
              'title': title,
              'onGenerateTitle': onGenerateTitle,
              'onNavigationNotification': onNavigationNotification,
              'color': color,
              'locale': locale,
              'localizationsDelegates': localizationsDelegates,
              'localeListResolutionCallback': localeListResolutionCallback,
              'localeResolutionCallback': localeResolutionCallback,
              'supportedLocales': supportedLocales,
              'showPerformanceOverlay': showPerformanceOverlay,
              'checkerboardRasterCacheImages': checkerboardRasterCacheImages,
              'checkerboardOffscreenLayers': checkerboardOffscreenLayers,
              'showSemanticsDebugger': showSemanticsDebugger,
              'debugShowCheckedModeBanner': debugShowCheckedModeBanner,
              'shortcuts': shortcuts,
              'actions': actions,
              'restorationScopeId': restorationScopeId,
              'scrollBehavior': scrollBehavior,
              'useInheritedMediaQuery': useInheritedMediaQuery,
            },
            stream: {
              'key': $key,
              'routeInformationProvider': $routeInformationProvider,
              'routeInformationParser': $routeInformationParser,
              'routerDelegate': $routerDelegate,
              'backButtonDispatcher': $backButtonDispatcher,
              'routerConfig': $routerConfig,
              'theme': $theme,
              'builder': $builder,
              'title': $title,
              'onGenerateTitle': $onGenerateTitle,
              'onNavigationNotification': $onNavigationNotification,
              'color': $color,
              'locale': $locale,
              'localizationsDelegates': $localizationsDelegates,
              'localeListResolutionCallback': $localeListResolutionCallback,
              'localeResolutionCallback': $localeResolutionCallback,
              'supportedLocales': $supportedLocales,
              'showPerformanceOverlay': $showPerformanceOverlay,
              'checkerboardRasterCacheImages': $checkerboardRasterCacheImages,
              'checkerboardOffscreenLayers': $checkerboardOffscreenLayers,
              'showSemanticsDebugger': $showSemanticsDebugger,
              'debugShowCheckedModeBanner': $debugShowCheckedModeBanner,
              'shortcuts': $shortcuts,
              'actions': $actions,
              'restorationScopeId': $restorationScopeId,
              'scrollBehavior': $scrollBehavior,
              'useInheritedMediaQuery': $useInheritedMediaQuery,
            },
          ),
          builder: (args) => _i1.CupertinoApp.router(
            key: args('key'),
            routeInformationProvider: args('routeInformationProvider'),
            routeInformationParser: args('routeInformationParser'),
            routerDelegate: args('routerDelegate'),
            backButtonDispatcher: args('backButtonDispatcher'),
            routerConfig: args('routerConfig'),
            theme: args('theme'),
            builder: args('builder'),
            title: args('title'),
            onGenerateTitle: args('onGenerateTitle'),
            onNavigationNotification: args('onNavigationNotification'),
            color: args('color'),
            locale: args('locale'),
            localizationsDelegates: args('localizationsDelegates'),
            localeListResolutionCallback: args('localeListResolutionCallback'),
            localeResolutionCallback: args('localeResolutionCallback'),
            supportedLocales: args('supportedLocales'),
            showPerformanceOverlay: args('showPerformanceOverlay'),
            checkerboardRasterCacheImages: args('checkerboardRasterCacheImages'),
            checkerboardOffscreenLayers: args('checkerboardOffscreenLayers'),
            showSemanticsDebugger: args('showSemanticsDebugger'),
            debugShowCheckedModeBanner: args('debugShowCheckedModeBanner'),
            shortcuts: args('shortcuts'),
            actions: args('actions'),
            restorationScopeId: args('restorationScopeId'),
            scrollBehavior: args('scrollBehavior'),
            useInheritedMediaQuery: args('useInheritedMediaQuery'),
          ),
        );
}
