import 'package:flutter/material.dart';
import 'package:notes_app/controller/home/home_controller.dart';
import 'package:notes_app/core/resources/colors_manager.dart';
import 'package:notes_app/core/resources/const_values.dart';
import 'package:notes_app/core/resources/size_managers.dart';

import '../widgets/custom_empty_body_home_screen.dart';
import '../widgets/custom_floating_action_button.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late HomeController _controller;

  @override
  void initState() {
    super.initState();
    _controller = HomeController(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: CustomFloatingActionButton(
        onPressed: () {
          _controller.goToAddNewNoteScreen(context);
        },
      ),
      appBar: AppBar(
        title: Text(
          ConstValues.kNote,
          style: TextStyle(
            fontFamily: FontsManager.fontOtama,
            fontSize: FontsManager.f30,
          ),
        ),
        backgroundColor: ColorsManager.kWhiteColor,
      ),
      body: CustomEmptyBodyHomeScreen(),
    );
  }
}
