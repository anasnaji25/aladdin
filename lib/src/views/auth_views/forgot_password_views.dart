import 'package:aladdin/src/constants/app_colors.dart';
import 'package:aladdin/src/constants/app_font.dart';
import 'package:aladdin/src/constants/helpers.dart';
import 'package:aladdin/src/views/auth_views/enter_otp_forgot_screen_view.dart';
import 'package:aladdin/src/views/auth_views/register_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ForgotPasswordView extends StatefulWidget {
  const ForgotPasswordView({super.key});

  @override
  State<ForgotPasswordView> createState() => _ForgotPasswordViewState();
}

class _ForgotPasswordViewState extends State<ForgotPasswordView> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: primaryColor,
      appBar: AppBar(
        backgroundColor: primaryColor,
        elevation: 0,
      ),
      body: Container(
        width: size.width,
        height: size.height,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            h30,
            Text(
              "Forgot Password",
              style: primaryFont.copyWith(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.w600),
            ),
            h15,
            Text(
              "Forgot password? Reset password in two quick steps.\nEmail or Phone. Reset password. or. Back.",
              style: primaryFont.copyWith(
                  color: Colors.white,
                  fontSize: 13,
                  fontWeight: FontWeight.w500),
            ),
            h50,
            Padding(
              padding: const EdgeInsets.only(left: 30, right: 30),
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
                    decoration:
                        InputDecoration.collapsed(hintText: "Email address"),
                  ),
                ),
              ),
            ),
            h30,
            Padding(
              padding: const EdgeInsets.only(left: 30, right: 30),
              child: InkWell(
                onTap: () {
                  Get.to(() => EnterOtpForgotPassView());
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
                    "Send",
                    style:
                        primaryFont.copyWith(color: Colors.white, fontSize: 17),
                  ),
                ),
              ),
            ),
            h40,
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Or",
                    style: primaryFont.copyWith(
                        color: Colors.white.withOpacity(0.9), fontSize: 15),
                  ),
                ],
              ),
            ),
            h25,
            Padding(
              padding: const EdgeInsets.only(left: 40, right: 40),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Image.asset("assets/icons/google.png"),
                  Image.asset("assets/icons/facebook.png"),
                  Image.asset("assets/icons/twitter.png"),
                ],
              ),
            ),
            h100,
            Text(
              "Didn't have an account?",
              style: primaryFont.copyWith(
                  color: Colors.white.withOpacity(0.8), fontSize: 14),
            ),
            h30,
            Padding(
              padding: const EdgeInsets.only(left: 35, right: 35),
              child: Container(
                height: 50,
                width: size.width,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(7),
                    border: Border.all(color: Colors.white)),
                alignment: Alignment.center,
                child: Text(
                  "Sign Up?",
                  style:
                      primaryFont.copyWith(color: Colors.white, fontSize: 17),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
