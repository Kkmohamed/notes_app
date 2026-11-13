import 'package:flutter/material.dart';

import '../../views/on_boarding/screens/on_boarding_screen.dart';

class RoutesName {
  RoutesName._();

  static const String onBoardingScreen = '/onBoardingScreen';
}

class RoutesManager {
  RoutesManager._();
  static Map<String, WidgetBuilder> routes = {
    RoutesName.onBoardingScreen: (context) => const OnBoardingScreen(),
  };
}
