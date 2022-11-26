import 'package:aladdin/src/constants/app_colors.dart';
import 'package:aladdin/src/constants/app_font.dart';
import 'package:aladdin/src/constants/helpers.dart';
import 'package:aladdin/src/controllers/register_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void modalBottomSheetSelectLanguage(size, context) {
  final authController = Get.find<RegisterController>();
  showModalBottomSheet(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(30.0),
    ),
    backgroundColor: Colors.white,
    context: context,
    isScrollControlled: true,
    // Also default
    builder: (context) {
      return SizedBox(
          height: 200,
          child: Padding(
            padding: const EdgeInsets.fromLTRB(5, 15, 5, 5),
            child: Obx(
              () => Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 10, left: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: 15,
                        ),
                        Text(
                          "Select language",
                          style: primaryFont.copyWith(fontSize: 12),
                        ),
                        GestureDetector(
                          onTap: (){
                            Get.back();
                          },
                          child: const Icon(
                            CupertinoIcons.xmark_circle_fill,
                            color: Colors.black,
                          ),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 40, left: 40),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                          onTap: () {
                            authController.languageIndex(0);
                            authController.selectedLanguage("English");
                          },
                          child: Column(
                            children: [
                              Container(
                                height: 50,
                                width: 50,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50),
                                  color: authController.languageIndex.value == 0
                                      ? primaryColor
                                      : const Color(0xffF7F2F2),
                                ),
                                alignment: Alignment.center,
                                child: Text(
                                  "E",
                                  style: primaryFont.copyWith(
                                      color:
                                          authController.languageIndex.value ==
                                                  0
                                              ? Colors.white
                                              : primaryColor,
                                      fontSize: 26),
                                ),
                              ),
                              h5,
                              Text(
                                "English",
                                style: primaryFont.copyWith(
                                    color: primaryColor,
                                    fontWeight: FontWeight.w600),
                              )
                            ],
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            authController.languageIndex(1);
                            authController.selectedLanguage("Urdu");
                          },
                          child: Column(
                            children: [
                              Container(
                                height: 50,
                                width: 50,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50),
                                  color: authController.languageIndex.value == 1
                                      ? primaryColor
                                      : const Color(0xffF7F2F2),
                                ),
                                alignment: Alignment.center,
                                child: Text(
                                  "اے",
                                  style: primaryFont.copyWith(
                                      color:
                                          authController.languageIndex.value ==
                                                  1
                                              ? Colors.white
                                              : primaryColor,
                                      fontSize: 26),
                                ),
                              ),
                              h5,
                              Text(
                                "Urdu",
                                style: primaryFont.copyWith(
                                    color: primaryColor,
                                    fontWeight: FontWeight.w600),
                              )
                            ],
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            authController.languageIndex(2);
                            authController.selectedLanguage("Arabic");
                          },
                          child: Column(
                            children: [
                              Container(
                                height: 50,
                                width: 50,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50),
                                  color: authController.languageIndex.value == 2
                                      ? primaryColor
                                      : Color(0xffF7F2F2),
                                ),
                                alignment: Alignment.center,
                                child: Text(
                                  "أأ",
                                  style: primaryFont.copyWith(
                                      color:
                                          authController.languageIndex.value ==
                                                  2
                                              ? Colors.white
                                              : primaryColor,
                                      fontSize: 26),
                                ),
                              ),
                              h5,
                              Text(
                                "Arabic",
                                style: primaryFont.copyWith(
                                    color: primaryColor,
                                    fontWeight: FontWeight.w600),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ));
    },
  );
}
