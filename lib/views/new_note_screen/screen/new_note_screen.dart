import 'package:flutter/material.dart';
import 'package:notes_app/controller/new_note_screen/new_note_controller.dart';
import 'package:notes_app/core/resources/colors_manager.dart';
import 'package:notes_app/core/resources/const_values.dart';
import 'package:notes_app/core/resources/size_managers.dart';

import '../widgets/custom_app_bar_new_note_screen.dart';

class NewNoteScreen extends StatefulWidget {
  const NewNoteScreen({super.key});

  @override
  State<NewNoteScreen> createState() => _NewNoteScreenState();
}

class _NewNoteScreenState extends State<NewNoteScreen> {
  late NewNoteController _controller;

  @override
  void initState() {
    super.initState();
    _controller = NewNoteController(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(
            right: PaddingManager.p25,
            left: PaddingManager.p25,
            top: PaddingManager.p14,
          ),
          child: Column(
            children: [
              CustomAppBarNewNoteScreen(
                onPressedBack: () {
                  _controller.goBack();
                },
                onPressedAtMark: () {},
              ),
              Expanded(
                child: Form(
                  child: Column(
                    children: [
                      TextFormField(
                        maxLines: 1,
                        style: TextStyle(
                          color: ColorsManager.kBlackColor,
                          fontFamily: FontsManager.fontOtama,
                          fontSize: FontsManager.f48,
                        ),
                        decoration: InputDecoration(
                          hintText: ConstValues.kTitle,
                          hintStyle: TextStyle(
                            color: ColorsManager.kGrey2Color,
                            fontFamily: FontsManager.fontOtama,
                            fontSize: FontsManager.f48,
                          ),
                          border: InputBorder.none,
                        ),
                      ),
                      Expanded(
                        child: SingleChildScrollView(
                          child: TextFormField(
                            keyboardType: TextInputType.multiline,
                            maxLines: null,
                            style: TextStyle(
                              color: ColorsManager.kBlackColor,
                              fontFamily: FontsManager.fontOtama,
                              fontSize: FontsManager.f23,
                            ),
                            decoration: InputDecoration(
                              hintText: ConstValues.kTypeSomeThing,
                              hintStyle: TextStyle(
                                color: ColorsManager.kGrey2Color,
                                fontFamily: FontsManager.fontOtama,
                                fontSize: FontsManager.f23,
                              ),
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
