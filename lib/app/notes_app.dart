import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:notes_app/core/resources/const_values.dart';
import 'package:notes_app/core/resources/routes_manager.dart';

class NotesApp extends StatelessWidget {
  const NotesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(
        ConstValues.figmaWidthDesign,
        ConstValues.figmaHeightDesign,
      ),
      minTextAdapt: true,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        onGenerateRoute: RoutesManager.onGenerateRoute,
        routes: RoutesManager.routes,
      ),
    );
  }
}
