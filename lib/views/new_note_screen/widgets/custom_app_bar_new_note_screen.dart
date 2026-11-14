import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:notes_app/core/resources/colors_manager.dart';
import 'package:notes_app/core/resources/const_values.dart';
import 'package:notes_app/core/resources/size_managers.dart';

class CustomAppBarNewNoteScreen extends StatelessWidget {
  const CustomAppBarNewNoteScreen({
    super.key,
    required this.onPressedBack,
    required this.onPressedAtMark,
  });

  final void Function()? onPressedBack;
  final void Function()? onPressedAtMark;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        ElevatedButton.icon(
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.zero,
            backgroundColor: Colors.transparent,
            shape: RoundedRectangleBorder(),
            elevation: 0,
          ),
          label: Text(
            ConstValues.kBack,
            style: TextStyle(
              fontFamily: FontsManager.fontOtama,
              fontSize: FontsManager.f20,
              color: ColorsManager.kPrimaryColor,
            ),
          ),
          onPressed: onPressedBack,
          icon: Icon(
            CupertinoIcons.back,
            color: ColorsManager.kPrimaryColor,
            size: FontsManager.f30,
          ),
        ),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.symmetric(
              horizontal: PaddingManager.p7,
              vertical: PaddingManager.p6,
            ),
            minimumSize: Size(WidthManager.w33, HeightManager.h33),
            backgroundColor: ColorsManager.kPrimaryColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(BorderRadiusManager.br10),
              ),
            ),
          ),
          onPressed: onPressedAtMark,
          child: Icon(
            CupertinoIcons.check_mark_circled,
            color: ColorsManager.kWhiteColor,
            size: FontsManager.f20,
          ),
        ),
      ],
    );
  }
}
