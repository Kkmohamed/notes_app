import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:notes_app/core/resources/colors_manager.dart';
import 'package:notes_app/core/resources/const_values.dart';
import 'package:notes_app/core/resources/size_managers.dart';

class NewNoteController {
  BuildContext context;
  late TextEditingController titleController;
  late TextEditingController descController;

  Future<void> initController() async {
    titleController = TextEditingController();
    descController = TextEditingController();
  }

  Future<void> disposeController() async {
    titleController.dispose();
    descController.dispose();
  }

  NewNoteController(this.context) {
    initController();
  }

  void goBack() {
    Navigator.of(context).pop();
  }

  void onTapAtMarkIcon() {
    addNewNote();
  }

  void addNewNote() {
    if (titleController.text.trim().isEmpty ||
        descController.text.trim().isEmpty) {
      showAlertBottomSheet();
    } else {
      // add data to hive
      //close
    }
  }

  void checkRequiredData() {
    if (titleController.text.trim().isEmpty ||
        descController.text.trim().isEmpty) {
      showAlertBottomSheet();
    } else {
      // add data to hive
      //close
    }
  }

  void showAlertBottomSheet() {
    FocusManager.instance.primaryFocus?.unfocus();
    showModalBottomSheet(
      // isDismissible: false,
      backgroundColor: Colors.transparent,
      context: context,
      builder: (context) {
        return Container(
          padding: EdgeInsets.only(top: PaddingManager.p16),
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(BorderRadiusManager.br16),
              topRight: Radius.circular(BorderRadiusManager.br16),
            ),
            color: ColorsManager.kWhiteColor,
          ),
          margin: EdgeInsets.symmetric(horizontal: PaddingManager.p8),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Column(
                    children: [
                      Text(
                        ConstValues.kShouldAddTitleAndDesc,
                        style: TextStyle(
                          color: ColorsManager.kBlackColor,
                          fontSize: FontsManager.f16,
                          fontFamily: FontsManager.fontOtama,
                        ),
                      ),
                      SizedBox(height: HeightManager.h2),
                      Text(
                        ConstValues.kToSave,
                        style: TextStyle(
                          color: ColorsManager.kBlackColor,
                          fontSize: FontsManager.f12,
                          fontFamily: FontsManager.fontOtama,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(width: WidthManager.w41),
                  IconButton.filled(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: ColorsManager.kGrey2Color,
                    ),
                    onPressed: () {},
                    icon: Icon(Icons.close, color: ColorsManager.kWhiteColor),
                  ),
                  SizedBox(width: WidthManager.w16),
                ],
              ),
              SizedBox(height: HeightManager.h16),
              Divider(color: ColorsManager.kDividerColor, height: 0),
              SizedBox(height: HeightManager.h16),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(
                    child: Column(
                      children: [
                        Icon(
                          CupertinoIcons.check_mark_circled,
                          color: ColorsManager.kPrimaryColor,
                        ),
                        SizedBox(height: HeightManager.h8),

                        Text(
                          ConstValues.kOk,
                          style: TextStyle(
                            fontSize: FontsManager.f10,
                            fontWeight: FontWeight.w400,
                            fontFamily: FontsManager.fontOtama,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: WidthManager.w32),
                  InkWell(
                    child: Column(
                      children: [
                        Icon(CupertinoIcons.delete, color: Colors.red),
                        SizedBox(height: HeightManager.h8),
                        Text(
                          ConstValues.kDelete,
                          style: TextStyle(
                            fontSize: FontsManager.f10,
                            fontWeight: FontWeight.w400,
                            fontFamily: FontsManager.fontOtama,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: HeightManager.h33),
            ],
          ),
        );
      },
    );
  }
}
