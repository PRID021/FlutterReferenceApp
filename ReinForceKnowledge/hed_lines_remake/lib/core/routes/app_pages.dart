import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hed_lines_remake/core/routes/scaffold_wrapper.dart';
import 'package:hed_lines_remake/core/routes/transition_route.dart';

import '../../features/app/presentation/app.dart';
import 'app_navigator_observer.dart';
import 'app_routes.dart';

class AppNavigator extends RouteObserver<PageRoute<dynamic>> {
  static GlobalKey<NavigatorState> navigatorKey = GlobalKey();
  Route<dynamic> getRoute(RouteSettings settings) {
    // ignore: unused_local_variable
    Map<String, dynamic>? arguments = _getArguments(settings);
    switch (settings.name) {
      case Routes.ROOT:
        return _buildRoute(
          settings,
          const App(),
        );
      default:
        return _buildRoute(
          settings,
          const App(),
        );
    }
  }

  _buildRoute(
    RouteSettings routeSettings,
    Widget builder,
  ) {
    return AppMaterialPageRoute(
      builder: (context) => ScaffoldWrapper(child: builder),
      settings: routeSettings,
    );
  }

  _getArguments(RouteSettings settings) {
    return settings.arguments;
  }

  static Future push<T>(
    String route, {
    Object? arguments,
  }) {
    return state.pushNamed(route, arguments: arguments);
  }

  static Future pushNamedAndRemoveUntil<T>(
    String route, {
    Object? arguments,
  }) {
    return state.pushNamedAndRemoveUntil(
      route,
      (route) => false,
      arguments: arguments,
    );
  }

  static Future replaceWith<T>(
    String route, {
    Map<String, dynamic>? arguments,
  }) {
    return state.pushReplacementNamed(route, arguments: arguments);
  }

  static void popUntil<T>(String route) {
    state.popUntil(ModalRoute.withName(route));
  }

  static void pop() {
    if (canPop) {
      state.pop();
    }
  }

  static bool get canPop => state.canPop();

  static String? currentRoute() => AppNavigatorObserver.currentRouteName;

  static BuildContext? get context => navigatorKey.currentContext;

  static NavigatorState get state => navigatorKey.currentState!;
}
