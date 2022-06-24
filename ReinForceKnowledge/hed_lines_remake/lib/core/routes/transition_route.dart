import 'package:flutter/material.dart';
import 'package:hed_lines_remake/core/routes/app_routes.dart';

import '../../configs/constants.dart';
import 'app_pages.dart';

class AppMaterialPageRoute<T> extends MaterialPageRoute<T> {
  AppMaterialPageRoute({
    required WidgetBuilder builder,
    required RouteSettings settings,
  }) : super(builder: builder, settings: settings);

  @override
  Duration get transitionDuration => const Duration(
        milliseconds: DELAY_250_MS,
      );

  @override
  @protected
  bool get hasScopedWillPopCallback {
    return [Routes.ROOT].contains(AppNavigator.currentRoute());
  }

  @override
  Widget buildTransitions(BuildContext context, Animation<double> animation, Animation<double> secondaryAnimation, Widget child) {
    final PageTransitionsTheme theme = Theme.of(context).pageTransitionsTheme;
    return theme.buildTransitions<T>(
      this,
      context,
      animation,
      secondaryAnimation,
      child,
    );
  }
}
