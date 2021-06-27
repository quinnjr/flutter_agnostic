import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AgnosticApp extends StatelessWidget {
  /// The [MaterialApp] or [CupertinoApp] returned by the build function.
  late final Widget _widget;

  AgnosticApp(
      {Key? key,
      GlobalKey<NavigatorState>? navigatorKey,
      Widget? home,
      GlobalKey<ScaffoldMessengerState>? scaffoldMessengerKey,
      ThemeData? materialTheme,
      ThemeData? darkMaterialTheme,
      ThemeData? highContrastMaterialTheme,
      ThemeData? highContrastDarkMaterialTheme,
      ThemeMode? materialThemeMode,
      CupertinoThemeData? cupertinoTheme,
      Map<String, Widget Function(BuildContext)> routes =
          const <String, WidgetBuilder>{},
      String? initialRoute,
      RouteFactory? onGenerateRoute,
      InitialRouteListFactory? onGenerateInitialRoutes,
      RouteFactory? onUnknownRoute,
      List<NavigatorObserver> navigatorObservers = const <NavigatorObserver>[],
      TransitionBuilder? builder,
      String title = '',
      GenerateAppTitle? onGenerateTitle,
      Color? color,
      Locale? locale,
      Iterable<LocalizationsDelegate<dynamic>>? localizationsDelegates,
      LocaleListResolutionCallback? localeListResolutionCallback,
      LocaleResolutionCallback? localeResolutionCallback,
      Iterable<Locale> supportedLocales = const <Locale>[Locale('en', 'US')],
      bool showPerformanceOverlay = false,
      bool checkerboardRasterCacheImages = false,
      bool checkerboardOffscreenLayers = false,
      bool showSemanticsDebugger = false,
      bool debugShowCheckedModeBanner = true,
      bool debugShowMaterialGrid = false,
      Map<LogicalKeySet, Intent>? shortcuts,
      Map<Type, Action<Intent>>? actions,
      String? restorationScopeId,
      ScrollBehavior? scrollBehavior})
      : super(key: key) {
    if (Platform.isAndroid) {
      _widget = MaterialApp(
          key: key,
          navigatorKey: navigatorKey,
          home: home,
          theme: materialTheme,
          darkTheme: darkMaterialTheme,
          highContrastTheme: highContrastMaterialTheme,
          highContrastDarkTheme: highContrastDarkMaterialTheme,
          routes: routes,
          initialRoute: initialRoute,
          onGenerateRoute: onGenerateRoute,
          onGenerateInitialRoutes: onGenerateInitialRoutes,
          onUnknownRoute: onUnknownRoute,
          navigatorObservers: navigatorObservers,
          builder: builder,
          title: title,
          onGenerateTitle: onGenerateTitle,
          color: color,
          locale: locale,
          localizationsDelegates: localizationsDelegates,
          localeListResolutionCallback: localeListResolutionCallback,
          localeResolutionCallback: localeResolutionCallback,
          supportedLocales: supportedLocales,
          showPerformanceOverlay: showPerformanceOverlay,
          checkerboardRasterCacheImages: checkerboardRasterCacheImages,
          checkerboardOffscreenLayers: checkerboardOffscreenLayers,
          showSemanticsDebugger: showSemanticsDebugger,
          debugShowCheckedModeBanner: debugShowCheckedModeBanner,
          debugShowMaterialGrid: debugShowMaterialGrid,
          shortcuts: shortcuts,
          actions: actions,
          restorationScopeId: restorationScopeId,
          scrollBehavior: scrollBehavior);
    } else if (Platform.isIOS) {
      _widget = CupertinoApp(
          key: key,
          navigatorKey: navigatorKey,
          home: home,
          theme: cupertinoTheme,
          routes: routes,
          initialRoute: initialRoute,
          onGenerateRoute: onGenerateRoute,
          onGenerateInitialRoutes: onGenerateInitialRoutes,
          onUnknownRoute: onUnknownRoute,
          navigatorObservers: navigatorObservers,
          builder: builder,
          title: title,
          onGenerateTitle: onGenerateTitle,
          color: color,
          locale: locale,
          localizationsDelegates: localizationsDelegates,
          localeListResolutionCallback: localeListResolutionCallback,
          localeResolutionCallback: localeResolutionCallback,
          supportedLocales: supportedLocales,
          showPerformanceOverlay: showPerformanceOverlay,
          checkerboardOffscreenLayers: checkerboardOffscreenLayers,
          checkerboardRasterCacheImages: checkerboardRasterCacheImages,
          showSemanticsDebugger: showSemanticsDebugger,
          debugShowCheckedModeBanner: debugShowCheckedModeBanner,
          shortcuts: shortcuts,
          actions: actions,
          restorationScopeId: restorationScopeId,
          scrollBehavior: scrollBehavior);
    } else {
      throw Exception(
          'flutter_agnostic is currently only intended for phone applicaitons');
    }
  }

  AgnosticApp.router(
      {Key? key,
      GlobalKey<NavigatorState>? navigatorKey,
      Widget? home,
      GlobalKey<ScaffoldMessengerState>? scaffoldMessengerKey,
      ThemeData? materialTheme,
      ThemeData? darkMaterialTheme,
      ThemeData? highContrastMaterialTheme,
      ThemeData? highContrastDarkMaterialTheme,
      ThemeMode? materialThemeMode,
      CupertinoThemeData? cupertinoTheme,
      Map<String, Widget Function(BuildContext)> routes =
          const <String, WidgetBuilder>{},
      String? initialRoute,
      RouteFactory? onGenerateRoute,
      InitialRouteListFactory? onGenerateInitialRoutes,
      RouteFactory? onUnknownRoute,
      List<NavigatorObserver> navigatorObservers = const <NavigatorObserver>[],
      TransitionBuilder? builder,
      String title = '',
      GenerateAppTitle? onGenerateTitle,
      Color? color,
      Locale? locale,
      Iterable<LocalizationsDelegate<dynamic>>? localizationsDelegates,
      LocaleListResolutionCallback? localeListResolutionCallback,
      LocaleResolutionCallback? localeResolutionCallback,
      Iterable<Locale> supportedLocales = const <Locale>[Locale('en', 'US')],
      bool showPerformanceOverlay = false,
      bool checkerboardRasterCacheImages = false,
      bool checkerboardOffscreenLayers = false,
      bool showSemanticsDebugger = false,
      bool debugShowCheckedModeBanner = true,
      bool debugShowMaterialGrid = false,
      Map<LogicalKeySet, Intent>? shortcuts,
      Map<Type, Action<Intent>>? actions,
      String? restorationScopeId,
      ScrollBehavior? scrollBehavior,
      required RouteInformationParser<Object> routeInformationParser,
      required RouterDelegate<Object> routerDelegate,
      RouteInformationProvider? routeInformationProvider,
      BackButtonDispatcher? backButtonDispatcher})
      : super(key: key) {
    if (Platform.isAndroid) {
      _widget = MaterialApp.router(
          key: key,
          scaffoldMessengerKey: scaffoldMessengerKey,
          backButtonDispatcher: backButtonDispatcher,
          builder: builder,
          title: title,
          onGenerateTitle: onGenerateTitle,
          color: color,
          theme: materialTheme,
          darkTheme: darkMaterialTheme,
          highContrastTheme: highContrastMaterialTheme,
          highContrastDarkTheme: highContrastDarkMaterialTheme,
          themeMode: materialThemeMode,
          locale: locale,
          localizationsDelegates: localizationsDelegates,
          localeListResolutionCallback: localeListResolutionCallback,
          localeResolutionCallback: localeResolutionCallback,
          supportedLocales: supportedLocales,
          debugShowMaterialGrid: debugShowMaterialGrid,
          debugShowCheckedModeBanner: debugShowCheckedModeBanner,
          shortcuts: shortcuts,
          actions: actions,
          restorationScopeId: restorationScopeId,
          scrollBehavior: scrollBehavior,
          routeInformationParser: routeInformationParser,
          routerDelegate: routerDelegate,
          routeInformationProvider: routeInformationProvider);
    } else if (Platform.isIOS) {
      _widget = CupertinoApp.router(
          backButtonDispatcher: backButtonDispatcher,
          theme: cupertinoTheme,
          builder: builder,
          title: title,
          onGenerateTitle: onGenerateTitle,
          color: color,
          locale: locale,
          localizationsDelegates: localizationsDelegates,
          localeListResolutionCallback: localeListResolutionCallback,
          localeResolutionCallback: localeResolutionCallback,
          supportedLocales: supportedLocales,
          showPerformanceOverlay: showPerformanceOverlay,
          checkerboardOffscreenLayers: checkerboardOffscreenLayers,
          checkerboardRasterCacheImages: checkerboardRasterCacheImages,
          showSemanticsDebugger: showSemanticsDebugger,
          debugShowCheckedModeBanner: debugShowCheckedModeBanner,
          shortcuts: shortcuts,
          actions: actions,
          restorationScopeId: restorationScopeId,
          scrollBehavior: scrollBehavior,
          routeInformationParser: routeInformationParser,
          routerDelegate: routerDelegate,
          routeInformationProvider: routeInformationProvider);
    } else {
      throw Exception(
          'flutter_agnostic is currently only intended for phone applicaitons');
    }
  }

  @override
  Widget build(BuildContext context) {
    return _widget;
  }
}
