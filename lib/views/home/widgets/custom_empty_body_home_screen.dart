import 'package:flutter/material.dart';
import 'package:notes_app/core/resources/assets_manager.dart';
import 'package:notes_app/core/resources/const_values.dart';
import 'package:notes_app/core/resources/size_managers.dart';

class CustomEmptyBodyHomeScreen extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(AssetsManager.onBoardingPng, width: WidthManager.w286),
          SizedBox(height: HeightManager.h6),
          Text(
            textAlign: TextAlign.center,
            ConstValues.kCreateYourFirstNote,
            style: TextStyle(
              fontFamily: FontsManager.fontOtama,
              fontSize: FontsManager.f20,
            ),
          ),
          SizedBox(height: HeightManager.h55),
        ],
      ),
    );
  }
}
