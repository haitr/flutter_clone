library rxflutterify; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:ui' as ui;

import 'package:flutter/foundation.dart' as _i2;
import 'package:flutter/painting.dart' as _i3;
import 'package:flutter/widgets.dart' as _i1;

import '../wrapper.dart';

final class WidgetsApp extends Wrapper {
  @Goto(_i1.WidgetsApp.new)
  WidgetsApp(
    $ $config, {
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
    bool showSemanticsDebugger = false,
    bool debugShowWidgetInspector = false,
    bool debugShowCheckedModeBanner = true,
    _i1.InspectorSelectButtonBuilder? inspectorSelectButtonBuilder,
    Map<_i1.ShortcutActivator, _i1.Intent>? shortcuts,
    Map<Type, _i1.Action<_i1.Intent>>? actions,
    String? restorationScopeId,
    bool useInheritedMediaQuery = false,
  }) : super(
          Argument({
            #key: key,
            #navigatorKey: navigatorKey,
            #onGenerateRoute: onGenerateRoute,
            #onGenerateInitialRoutes: onGenerateInitialRoutes,
            #onUnknownRoute: onUnknownRoute,
            #onNavigationNotification: onNavigationNotification,
            #navigatorObservers: navigatorObservers,
            #initialRoute: initialRoute,
            #pageRouteBuilder: pageRouteBuilder,
            #home: home,
            #routes: routes,
            #builder: builder,
            #title: title,
            #onGenerateTitle: onGenerateTitle,
            #textStyle: textStyle,
            #color: color,
            #locale: locale,
            #localizationsDelegates: localizationsDelegates,
            #localeListResolutionCallback: localeListResolutionCallback,
            #localeResolutionCallback: localeResolutionCallback,
            #supportedLocales: supportedLocales,
            #showPerformanceOverlay: showPerformanceOverlay,
            #showSemanticsDebugger: showSemanticsDebugger,
            #debugShowWidgetInspector: debugShowWidgetInspector,
            #debugShowCheckedModeBanner: debugShowCheckedModeBanner,
            #inspectorSelectButtonBuilder: inspectorSelectButtonBuilder,
            #shortcuts: shortcuts,
            #actions: actions,
            #restorationScopeId: restorationScopeId,
            #useInheritedMediaQuery: useInheritedMediaQuery,
          }),
          builder: (args) => _i1.WidgetsApp(
            key: args(#key),
            navigatorKey: args(#navigatorKey),
            onGenerateRoute: args(#onGenerateRoute),
            onGenerateInitialRoutes: args(#onGenerateInitialRoutes),
            onUnknownRoute: args(#onUnknownRoute),
            onNavigationNotification: args(#onNavigationNotification),
            navigatorObservers: args(#navigatorObservers),
            initialRoute: args(#initialRoute),
            pageRouteBuilder: args(#pageRouteBuilder),
            home: args(#home),
            routes: args(#routes),
            builder: args(#builder),
            title: args(#title),
            onGenerateTitle: args(#onGenerateTitle),
            textStyle: args(#textStyle),
            color: args(#color),
            locale: args(#locale),
            localizationsDelegates: args(#localizationsDelegates),
            localeListResolutionCallback: args(#localeListResolutionCallback),
            localeResolutionCallback: args(#localeResolutionCallback),
            supportedLocales: args(#supportedLocales),
            showPerformanceOverlay: args(#showPerformanceOverlay),
            showSemanticsDebugger: args(#showSemanticsDebugger),
            debugShowWidgetInspector: args(#debugShowWidgetInspector),
            debugShowCheckedModeBanner: args(#debugShowCheckedModeBanner),
            inspectorSelectButtonBuilder: args(#inspectorSelectButtonBuilder),
            shortcuts: args(#shortcuts),
            actions: args(#actions),
            restorationScopeId: args(#restorationScopeId),
            useInheritedMediaQuery: args(#useInheritedMediaQuery),
          ),
        );

  @Goto(_i1.WidgetsApp.router)
  WidgetsApp.router(
    $ $config, {
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
    bool showSemanticsDebugger = false,
    bool debugShowWidgetInspector = false,
    bool debugShowCheckedModeBanner = true,
    _i1.InspectorSelectButtonBuilder? inspectorSelectButtonBuilder,
    Map<_i1.ShortcutActivator, _i1.Intent>? shortcuts,
    Map<Type, _i1.Action<_i1.Intent>>? actions,
    String? restorationScopeId,
    bool useInheritedMediaQuery = false,
  }) : super(
          Argument({
            #key: key,
            #routeInformationProvider: routeInformationProvider,
            #routeInformationParser: routeInformationParser,
            #routerDelegate: routerDelegate,
            #routerConfig: routerConfig,
            #backButtonDispatcher: backButtonDispatcher,
            #builder: builder,
            #title: title,
            #onGenerateTitle: onGenerateTitle,
            #onNavigationNotification: onNavigationNotification,
            #textStyle: textStyle,
            #color: color,
            #locale: locale,
            #localizationsDelegates: localizationsDelegates,
            #localeListResolutionCallback: localeListResolutionCallback,
            #localeResolutionCallback: localeResolutionCallback,
            #supportedLocales: supportedLocales,
            #showPerformanceOverlay: showPerformanceOverlay,
            #showSemanticsDebugger: showSemanticsDebugger,
            #debugShowWidgetInspector: debugShowWidgetInspector,
            #debugShowCheckedModeBanner: debugShowCheckedModeBanner,
            #inspectorSelectButtonBuilder: inspectorSelectButtonBuilder,
            #shortcuts: shortcuts,
            #actions: actions,
            #restorationScopeId: restorationScopeId,
            #useInheritedMediaQuery: useInheritedMediaQuery,
          }),
          builder: (args) => _i1.WidgetsApp.router(
            key: args(#key),
            routeInformationProvider: args(#routeInformationProvider),
            routeInformationParser: args(#routeInformationParser),
            routerDelegate: args(#routerDelegate),
            routerConfig: args(#routerConfig),
            backButtonDispatcher: args(#backButtonDispatcher),
            builder: args(#builder),
            title: args(#title),
            onGenerateTitle: args(#onGenerateTitle),
            onNavigationNotification: args(#onNavigationNotification),
            textStyle: args(#textStyle),
            color: args(#color),
            locale: args(#locale),
            localizationsDelegates: args(#localizationsDelegates),
            localeListResolutionCallback: args(#localeListResolutionCallback),
            localeResolutionCallback: args(#localeResolutionCallback),
            supportedLocales: args(#supportedLocales),
            showPerformanceOverlay: args(#showPerformanceOverlay),
            showSemanticsDebugger: args(#showSemanticsDebugger),
            debugShowWidgetInspector: args(#debugShowWidgetInspector),
            debugShowCheckedModeBanner: args(#debugShowCheckedModeBanner),
            inspectorSelectButtonBuilder: args(#inspectorSelectButtonBuilder),
            shortcuts: args(#shortcuts),
            actions: args(#actions),
            restorationScopeId: args(#restorationScopeId),
            useInheritedMediaQuery: args(#useInheritedMediaQuery),
          ),
        );
}
