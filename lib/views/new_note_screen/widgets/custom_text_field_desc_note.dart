import 'package:flutter/material.dart';
import 'package:notes_app/core/resources/colors_manager.dart';
import 'package:notes_app/core/resources/const_values.dart';
import 'package:notes_app/core/resources/size_managers.dart';

class CustomTextFieldDescNote extends StatelessWidget {
  const CustomTextFieldDescNote({super.key, required this.descController});

  final TextEditingController descController;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: descController,
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
    );
  }
}
