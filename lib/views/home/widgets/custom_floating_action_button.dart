import 'package:flutter/material.dart';
import 'package:notes_app/core/resources/colors_manager.dart';
import 'package:notes_app/core/resources/size_managers.dart';

class CustomFloatingActionButton extends StatelessWidget {
  const CustomFloatingActionButton({super.key, required this.onPressed});
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        minimumSize: Size(WidthManager.w70, HeightManager.h70),
        backgroundColor: ColorsManager.kPrimaryColor,
        shape: CircleBorder(),
      ),
      onPressed: onPressed,
      child: Icon(
        Icons.add,
        color: ColorsManager.kWhiteColor,
        size: FontsManager.f28,
      ),
    );
  }
}
