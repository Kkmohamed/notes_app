import 'package:flutter/material.dart';
import 'package:notes_app/controller/new_note_screen/new_note_controller.dart';
import 'package:notes_app/core/resources/size_managers.dart';

import '../widgets/custom_app_bar_new_note_screen.dart';
import '../widgets/custom_text_field_desc_note.dart';
import '../widgets/custom_text_field_title.dart';

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
  void dispose() {
    _controller.disposeController();
    super.dispose();
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
                onPressedAtMark: () {
                  _controller.onTapAtMarkIcon();
                },
              ),
              Expanded(
                child: Column(
                  children: [
                    CustomTextFieldTitle(
                      titleController: _controller.titleController,
                    ),
                    Expanded(
                      child: SingleChildScrollView(
                        child: CustomTextFieldDescNote(
                          descController: _controller.descController,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
