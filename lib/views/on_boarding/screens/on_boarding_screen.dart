import 'package:flutter/material.dart';
import 'package:notes_app/core/resources/assets_manager.dart';
import 'package:notes_app/core/resources/colors_manager.dart';
import 'package:notes_app/core/resources/const_values.dart';
import 'package:notes_app/core/resources/size_managers.dart';

import '../widgets/custom_bottom_nav_bar_on_boarding_screen.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsManager.kWhiteColor,
      bottomNavigationBar: CustomBottomNavBarOnBoardingScreen(onPressed: () {}),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: PaddingManager.p30),
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: HeightManager.h125),
            Image.asset(AssetsManager.onBoardingPng, width: WidthManager.w282),
            SizedBox(height: HeightManager.h55),
            Text(
              textAlign: TextAlign.center,
              ConstValues.onBoardingTitle,
              style: TextStyle(
                fontFamily: FontsManager.fontOtama,
                fontSize: FontsManager.f48,
              ),
            ),
            SizedBox(height: HeightManager.h20),
            Text(
              textAlign: TextAlign.center,
              ConstValues.onBoardingDesc,
              style: TextStyle(
                fontFamily: FontsManager.fontOtama,
                color: ColorsManager.kGreyColor,
                fontSize: FontsManager.f16,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
