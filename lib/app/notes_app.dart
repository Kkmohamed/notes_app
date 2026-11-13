import 'package:flutter/material.dart';
import 'package:notes_app/core/resources/routes_manager.dart';

class NotesApp extends StatelessWidget {
  const NotesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: RoutesManager.onGenerateRoute,
      routes: RoutesManager.routes,
    );
  }
}
