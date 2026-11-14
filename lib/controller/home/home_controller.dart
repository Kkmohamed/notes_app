import 'package:flutter/material.dart';
import 'package:notes_app/core/resources/routes_manager.dart';

class HomeController {
  BuildContext context;

  HomeController(this.context);

  void goToAddNewNoteScreen(BuildContext context) {
    Navigator.of(context).pushNamed(RoutesName.newNoteScreen);
  }
}
