import 'package:flutter/material.dart';
import 'package:notes_app/core/resources/assets_manager.dart';
import 'package:notes_app/core/resources/colors_manager.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Padding(
        padding: EdgeInsets.only(bottom: 50),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            minimumSize: Size(75, 75),
            backgroundColor: ColorsManager.kPrimaryColor,
            shape: CircleBorder(),
          ),
          onPressed: () {},
          child: Icon(
            Icons.arrow_forward_ios_outlined,
            color: ColorsManager.kWhiteColor,
            size: 15,
          ),
        ),
      ),
      body: Container(
        width: double.infinity,
        child: Column(
          children: [
            SizedBox(height: 125),
            Image.asset(AssetsManager.onBoardingPng, width: 282),
          ],
        ),
      ),
    );
  }
}
