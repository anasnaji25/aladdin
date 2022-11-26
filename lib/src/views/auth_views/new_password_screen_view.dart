import 'package:aladdin/src/constants/app_colors.dart';
import 'package:aladdin/src/constants/app_font.dart';
import 'package:aladdin/src/constants/helpers.dart';
import 'package:aladdin/src/views/landing_views/welcome_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:get/get.dart';

class NewPasswordScreenView extends StatefulWidget {
  const NewPasswordScreenView({super.key});

  @override
  State<NewPasswordScreenView> createState() => _NewPasswordScreenViewState();
}

class _NewPasswordScreenViewState extends State<NewPasswordScreenView> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: primaryColor,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: primaryColor,
      ),
      body: Container(
        width: size.width,
        height: size.height,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            h20,
            Text(
              "New Password",
              style: primaryFont.copyWith(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.w600),
            ),
            h15,
            Text(
              "A password reset is for when you forget your password.\nA password change is for when you remember\nthe old password,but you want a new one.",
              textAlign: TextAlign.center,
              style: primaryFont.copyWith(
                  color: Colors.white,
                  fontSize: 13,
                  fontWeight: FontWeight.w500),
            ),
            h40,
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Container(
                height: 55,
                width: size.width,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(7)),
                alignment: Alignment.centerLeft,
                child: const Padding(
                  padding: EdgeInsets.only(left: 10, right: 10),
                  child: TextField(
                    decoration: InputDecoration.collapsed(
                        hintText: "Enter New Password"),
                  ),
                ),
              ),
            ),
            h30,
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Container(
                height: 55,
                width: size.width,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(7)),
                alignment: Alignment.centerLeft,
                child: const Padding(
                  padding: EdgeInsets.only(left: 10, right: 10),
                  child: TextField(
                    decoration: InputDecoration.collapsed(hintText: "Confirm Password"),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(left: 30, right: 30, bottom: 70),
        child: InkWell(
          onTap: () {
            Get.offAll(() => WelcomeScreenView());
          },
          child: Container(
            height: 50,
            width: size.width,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: secondaryColor),
                color: secondaryColor),
            alignment: Alignment.center,
            child: Text(
              "Submit",
              style: primaryFont.copyWith(color: Colors.white, fontSize: 17),
            ),
          ),
        ),
      ),
    );
  }
}
