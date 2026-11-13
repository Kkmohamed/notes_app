import 'package:flutter/material.dart';
import 'package:notes_app/views/not_found_route/screens/no_found_route_screen.dart';

import '../../views/on_boarding/screens/on_boarding_screen.dart';

class RoutesName {
  RoutesName._();

  static const String onBoardingScreen = '/';
}

class RoutesManager {
  static Route<dynamic>? onGenerateRoute(RouteSettings settings) {
    Widget body;
    switch (settings.name) {
      case RoutesName.onBoardingScreen:
        body = OnBoardingScreen();
      default:
        body = NoFoundRouteScreen();
    }
    return MaterialPageRoute(builder: (context) => body);
  }

  RoutesManager._();

  static Map<String, WidgetBuilder> routes = {
    RoutesName.onBoardingScreen: (context) => const OnBoardingScreen(),
  };
}
