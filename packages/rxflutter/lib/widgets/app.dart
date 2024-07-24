library rxflutter; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:ui' as ui;

import 'package:flutter/foundation.dart' as _i2;
import 'package:flutter/painting.dart' as _i3;
import 'package:flutter/widgets.dart' as _i1;

import '../wrapper.dart';

final class WidgetsApp extends Wrapper {
  @Goto(_i1.WidgetsApp.new)
  WidgetsApp({
    _i2.Key? key,
    _i1.GlobalKey<_i1.NavigatorState>? navigatorKey,
    _i1.RouteFactory? onGenerateRoute,
    _i1.InitialRouteListFactory? onGenerateInitialRoutes,
    _i1.RouteFactory? onUnknownRoute,
    _i1.NotificationListenerCallback<_i1.NavigationNotification>? onNavigationNotification,
    List<_i1.NavigatorObserver> navigatorObservers = const [],
    String? initialRoute,
    _i1.PageRouteFactory? pageRouteBuilder,
    _i1.Widget? home,
    Map<String, _i1.WidgetBuilder> routes = const {},
    _i1.TransitionBuilder? builder,
    String title = '',
    _i1.GenerateAppTitle? onGenerateTitle,
    _i3.TextStyle? textStyle,
    required ui.Color color,
    ui.Locale? locale,
    Iterable<_i1.LocalizationsDelegate<dynamic>>? localizationsDelegates,
    _i1.LocaleListResolutionCallback? localeListResolutionCallback,
    _i1.LocaleResolutionCallback? localeResolutionCallback,
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
    bool debugShowWidgetInspector = false,
    bool debugShowCheckedModeBanner = true,
    _i1.InspectorSelectButtonBuilder? inspectorSelectButtonBuilder,
    Map<_i1.ShortcutActivator, _i1.Intent>? shortcuts,
    Map<Type, _i1.Action<_i1.Intent>>? actions,
    String? restorationScopeId,
    bool useInheritedMediaQuery = false,
    // Associate with key
    Stream<_i2.Key?>? $key,
    // Associate with navigatorKey
    Stream<_i1.GlobalKey<_i1.NavigatorState>?>? $navigatorKey,
    // Associate with onGenerateRoute
    Stream<_i1.RouteFactory?>? $onGenerateRoute,
    // Associate with onGenerateInitialRoutes
    Stream<_i1.InitialRouteListFactory?>? $onGenerateInitialRoutes,
    // Associate with onUnknownRoute
    Stream<_i1.RouteFactory?>? $onUnknownRoute,
    // Associate with onNavigationNotification
    Stream<_i1.NotificationListenerCallback<_i1.NavigationNotification>?>? $onNavigationNotification,
    // Associate with navigatorObservers
    Stream<List<_i1.NavigatorObserver>>? $navigatorObservers,
    // Associate with initialRoute
    Stream<String?>? $initialRoute,
    // Associate with pageRouteBuilder
    Stream<_i1.PageRouteFactory?>? $pageRouteBuilder,
    // Associate with home
    Stream<_i1.Widget?>? $home,
    // Associate with routes
    Stream<Map<String, _i1.WidgetBuilder>>? $routes,
    // Associate with builder
    Stream<_i1.TransitionBuilder?>? $builder,
    // Associate with title
    Stream<String>? $title,
    // Associate with onGenerateTitle
    Stream<_i1.GenerateAppTitle?>? $onGenerateTitle,
    // Associate with textStyle
    Stream<_i3.TextStyle?>? $textStyle,
    // Associate with color
    Stream<ui.Color>? $color,
    // Associate with locale
    Stream<ui.Locale?>? $locale,
    // Associate with localizationsDelegates
    Stream<Iterable<_i1.LocalizationsDelegate<dynamic>>?>? $localizationsDelegates,
    // Associate with localeListResolutionCallback
    Stream<_i1.LocaleListResolutionCallback?>? $localeListResolutionCallback,
    // Associate with localeResolutionCallback
    Stream<_i1.LocaleResolutionCallback?>? $localeResolutionCallback,
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
    // Associate with debugShowWidgetInspector
    Stream<bool>? $debugShowWidgetInspector,
    // Associate with debugShowCheckedModeBanner
    Stream<bool>? $debugShowCheckedModeBanner,
    // Associate with inspectorSelectButtonBuilder
    Stream<_i1.InspectorSelectButtonBuilder?>? $inspectorSelectButtonBuilder,
    // Associate with shortcuts
    Stream<Map<_i1.ShortcutActivator, _i1.Intent>?>? $shortcuts,
    // Associate with actions
    Stream<Map<Type, _i1.Action<_i1.Intent>>?>? $actions,
    // Associate with restorationScopeId
    Stream<String?>? $restorationScopeId,
    // Associate with useInheritedMediaQuery
    Stream<bool>? $useInheritedMediaQuery,
  }) : super(
          Argument(
            {
              'key': key,
              'navigatorKey': navigatorKey,
              'onGenerateRoute': onGenerateRoute,
              'onGenerateInitialRoutes': onGenerateInitialRoutes,
              'onUnknownRoute': onUnknownRoute,
              'onNavigationNotification': onNavigationNotification,
              'navigatorObservers': navigatorObservers,
              'initialRoute': initialRoute,
              'pageRouteBuilder': pageRouteBuilder,
              'home': home,
              'routes': routes,
              'builder': builder,
              'title': title,
              'onGenerateTitle': onGenerateTitle,
              'textStyle': textStyle,
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
              'debugShowWidgetInspector': debugShowWidgetInspector,
              'debugShowCheckedModeBanner': debugShowCheckedModeBanner,
              'inspectorSelectButtonBuilder': inspectorSelectButtonBuilder,
              'shortcuts': shortcuts,
              'actions': actions,
              'restorationScopeId': restorationScopeId,
              'useInheritedMediaQuery': useInheritedMediaQuery,
            },
            stream: {
              'key': $key,
              'navigatorKey': $navigatorKey,
              'onGenerateRoute': $onGenerateRoute,
              'onGenerateInitialRoutes': $onGenerateInitialRoutes,
              'onUnknownRoute': $onUnknownRoute,
              'onNavigationNotification': $onNavigationNotification,
              'navigatorObservers': $navigatorObservers,
              'initialRoute': $initialRoute,
              'pageRouteBuilder': $pageRouteBuilder,
              'home': $home,
              'routes': $routes,
              'builder': $builder,
              'title': $title,
              'onGenerateTitle': $onGenerateTitle,
              'textStyle': $textStyle,
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
              'debugShowWidgetInspector': $debugShowWidgetInspector,
              'debugShowCheckedModeBanner': $debugShowCheckedModeBanner,
              'inspectorSelectButtonBuilder': $inspectorSelectButtonBuilder,
              'shortcuts': $shortcuts,
              'actions': $actions,
              'restorationScopeId': $restorationScopeId,
              'useInheritedMediaQuery': $useInheritedMediaQuery,
            },
          ),
          builder: (args) => _i1.WidgetsApp(
            key: args('key'),
            navigatorKey: args('navigatorKey'),
            onGenerateRoute: args('onGenerateRoute'),
            onGenerateInitialRoutes: args('onGenerateInitialRoutes'),
            onUnknownRoute: args('onUnknownRoute'),
            onNavigationNotification: args('onNavigationNotification'),
            navigatorObservers: args('navigatorObservers'),
            initialRoute: args('initialRoute'),
            pageRouteBuilder: args('pageRouteBuilder'),
            home: args('home'),
            routes: args('routes'),
            builder: args('builder'),
            title: args('title'),
            onGenerateTitle: args('onGenerateTitle'),
            textStyle: args('textStyle'),
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
            debugShowWidgetInspector: args('debugShowWidgetInspector'),
            debugShowCheckedModeBanner: args('debugShowCheckedModeBanner'),
            inspectorSelectButtonBuilder: args('inspectorSelectButtonBuilder'),
            shortcuts: args('shortcuts'),
            actions: args('actions'),
            restorationScopeId: args('restorationScopeId'),
            useInheritedMediaQuery: args('useInheritedMediaQuery'),
          ),
        );

  @Goto(_i1.WidgetsApp.router)
  WidgetsApp.router({
    _i2.Key? key,
    _i1.RouteInformationProvider? routeInformationProvider,
    _i1.RouteInformationParser<Object>? routeInformationParser,
    _i1.RouterDelegate<Object>? routerDelegate,
    _i1.RouterConfig<Object>? routerConfig,
    _i1.BackButtonDispatcher? backButtonDispatcher,
    _i1.TransitionBuilder? builder,
    String title = '',
    _i1.GenerateAppTitle? onGenerateTitle,
    _i1.NotificationListenerCallback<_i1.NavigationNotification>? onNavigationNotification,
    _i3.TextStyle? textStyle,
    required ui.Color color,
    ui.Locale? locale,
    Iterable<_i1.LocalizationsDelegate<dynamic>>? localizationsDelegates,
    _i1.LocaleListResolutionCallback? localeListResolutionCallback,
    _i1.LocaleResolutionCallback? localeResolutionCallback,
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
    bool debugShowWidgetInspector = false,
    bool debugShowCheckedModeBanner = true,
    _i1.InspectorSelectButtonBuilder? inspectorSelectButtonBuilder,
    Map<_i1.ShortcutActivator, _i1.Intent>? shortcuts,
    Map<Type, _i1.Action<_i1.Intent>>? actions,
    String? restorationScopeId,
    bool useInheritedMediaQuery = false,
    // Associate with key
    Stream<_i2.Key?>? $key,
    // Associate with routeInformationProvider
    Stream<_i1.RouteInformationProvider?>? $routeInformationProvider,
    // Associate with routeInformationParser
    Stream<_i1.RouteInformationParser<Object>?>? $routeInformationParser,
    // Associate with routerDelegate
    Stream<_i1.RouterDelegate<Object>?>? $routerDelegate,
    // Associate with routerConfig
    Stream<_i1.RouterConfig<Object>?>? $routerConfig,
    // Associate with backButtonDispatcher
    Stream<_i1.BackButtonDispatcher?>? $backButtonDispatcher,
    // Associate with builder
    Stream<_i1.TransitionBuilder?>? $builder,
    // Associate with title
    Stream<String>? $title,
    // Associate with onGenerateTitle
    Stream<_i1.GenerateAppTitle?>? $onGenerateTitle,
    // Associate with onNavigationNotification
    Stream<_i1.NotificationListenerCallback<_i1.NavigationNotification>?>? $onNavigationNotification,
    // Associate with textStyle
    Stream<_i3.TextStyle?>? $textStyle,
    // Associate with color
    Stream<ui.Color>? $color,
    // Associate with locale
    Stream<ui.Locale?>? $locale,
    // Associate with localizationsDelegates
    Stream<Iterable<_i1.LocalizationsDelegate<dynamic>>?>? $localizationsDelegates,
    // Associate with localeListResolutionCallback
    Stream<_i1.LocaleListResolutionCallback?>? $localeListResolutionCallback,
    // Associate with localeResolutionCallback
    Stream<_i1.LocaleResolutionCallback?>? $localeResolutionCallback,
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
    // Associate with debugShowWidgetInspector
    Stream<bool>? $debugShowWidgetInspector,
    // Associate with debugShowCheckedModeBanner
    Stream<bool>? $debugShowCheckedModeBanner,
    // Associate with inspectorSelectButtonBuilder
    Stream<_i1.InspectorSelectButtonBuilder?>? $inspectorSelectButtonBuilder,
    // Associate with shortcuts
    Stream<Map<_i1.ShortcutActivator, _i1.Intent>?>? $shortcuts,
    // Associate with actions
    Stream<Map<Type, _i1.Action<_i1.Intent>>?>? $actions,
    // Associate with restorationScopeId
    Stream<String?>? $restorationScopeId,
    // Associate with useInheritedMediaQuery
    Stream<bool>? $useInheritedMediaQuery,
  }) : super(
          Argument(
            {
              'key': key,
              'routeInformationProvider': routeInformationProvider,
              'routeInformationParser': routeInformationParser,
              'routerDelegate': routerDelegate,
              'routerConfig': routerConfig,
              'backButtonDispatcher': backButtonDispatcher,
              'builder': builder,
              'title': title,
              'onGenerateTitle': onGenerateTitle,
              'onNavigationNotification': onNavigationNotification,
              'textStyle': textStyle,
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
              'debugShowWidgetInspector': debugShowWidgetInspector,
              'debugShowCheckedModeBanner': debugShowCheckedModeBanner,
              'inspectorSelectButtonBuilder': inspectorSelectButtonBuilder,
              'shortcuts': shortcuts,
              'actions': actions,
              'restorationScopeId': restorationScopeId,
              'useInheritedMediaQuery': useInheritedMediaQuery,
            },
            stream: {
              'key': $key,
              'routeInformationProvider': $routeInformationProvider,
              'routeInformationParser': $routeInformationParser,
              'routerDelegate': $routerDelegate,
              'routerConfig': $routerConfig,
              'backButtonDispatcher': $backButtonDispatcher,
              'builder': $builder,
              'title': $title,
              'onGenerateTitle': $onGenerateTitle,
              'onNavigationNotification': $onNavigationNotification,
              'textStyle': $textStyle,
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
              'debugShowWidgetInspector': $debugShowWidgetInspector,
              'debugShowCheckedModeBanner': $debugShowCheckedModeBanner,
              'inspectorSelectButtonBuilder': $inspectorSelectButtonBuilder,
              'shortcuts': $shortcuts,
              'actions': $actions,
              'restorationScopeId': $restorationScopeId,
              'useInheritedMediaQuery': $useInheritedMediaQuery,
            },
          ),
          builder: (args) => _i1.WidgetsApp.router(
            key: args('key'),
            routeInformationProvider: args('routeInformationProvider'),
            routeInformationParser: args('routeInformationParser'),
            routerDelegate: args('routerDelegate'),
            routerConfig: args('routerConfig'),
            backButtonDispatcher: args('backButtonDispatcher'),
            builder: args('builder'),
            title: args('title'),
            onGenerateTitle: args('onGenerateTitle'),
            onNavigationNotification: args('onNavigationNotification'),
            textStyle: args('textStyle'),
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
            debugShowWidgetInspector: args('debugShowWidgetInspector'),
            debugShowCheckedModeBanner: args('debugShowCheckedModeBanner'),
            inspectorSelectButtonBuilder: args('inspectorSelectButtonBuilder'),
            shortcuts: args('shortcuts'),
            actions: args('actions'),
            restorationScopeId: args('restorationScopeId'),
            useInheritedMediaQuery: args('useInheritedMediaQuery'),
          ),
        );
}
