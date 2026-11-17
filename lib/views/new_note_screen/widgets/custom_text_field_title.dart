import 'package:flutter/material.dart';
import 'package:notes_app/core/resources/colors_manager.dart';
import 'package:notes_app/core/resources/const_values.dart';
import 'package:notes_app/core/resources/size_managers.dart';

class CustomTextFieldTitle extends StatelessWidget {
  const CustomTextFieldTitle({super.key, required this.titleController});

  final TextEditingController titleController;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: titleController,
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
    );
  }
}
