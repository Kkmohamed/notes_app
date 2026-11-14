import 'package:flutter/cupertino.dart';

import '../../core/resources/routes_manager.dart';

class OnBoardingController {
  void goToHomeScreen(BuildContext context) {
    Navigator.of(context).pushReplacementNamed(RoutesName.homeScreen);
  }
}
