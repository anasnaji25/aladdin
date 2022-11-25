import 'package:aladdin/src/constants/app_colors.dart';
import 'package:aladdin/src/constants/app_font.dart';
import 'package:aladdin/src/constants/helpers.dart';
import 'package:aladdin/src/views/auth_views/forgot_password_views.dart';
import 'package:aladdin/src/views/auth_views/register_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
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
              "LOGIN",
              style: primaryFont.copyWith(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.w600),
            ),
            h15,
            Text(
              "Welcome back! Sign in to your account.",
              style: primaryFont.copyWith(
                  color: Colors.white,
                  fontSize: 13,
                  fontWeight: FontWeight.w500),
            ),
            h50,
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
                        hintText: "Username or email address"),
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
                    decoration: InputDecoration.collapsed(hintText: "Password"),
                  ),
                ),
              ),
            ),
            h5,
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Checkbox(
                          fillColor: MaterialStateProperty.all(Colors.white),
                          focusColor: Colors.white,
                          checkColor: Colors.grey,
                          value: isChecked,
                          onChanged: (val) {
                            setState(() {
                              isChecked = val!;
                            });
                          }),
                      Text(
                        "Remember me",
                        style: primaryFont.copyWith(
                            color: Colors.white, fontSize: 12),
                      )
                    ],
                  ),
                  InkWell(
                    onTap: (){
                      Get.to(()=> ForgotPasswordView());
                    },
                    child: Text(
                      "Forgot Password",
                      style:
                          primaryFont.copyWith(color: Colors.white, fontSize: 11),
                    ),
                  )
                ],
              ),
            ),
            h100,
            Padding(
              padding: const EdgeInsets.only(left: 30, right: 30),
              child: Container(
                height: 50,
                width: size.width,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: secondaryColor),
                    color: secondaryColor),
                alignment: Alignment.center,
                child: Text(
                  "log in".toUpperCase(),
                  style:
                      primaryFont.copyWith(color: Colors.white, fontSize: 17),
                ),
              ),
            ),
            h40,
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 1,
                    width: 100,
                    color: Colors.white.withOpacity(0.9),
                  ),
                  w15,
                  Text(
                    "Or sign in with",
                    style: primaryFont.copyWith(
                        color: Colors.white.withOpacity(0.9), fontSize: 12),
                  ),
                  w15,
                  Container(
                    height: 1,
                    width: 100,
                    color: Colors.white.withOpacity(0.9),
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
            )
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(bottom: 30),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Didn't have an account?",
              style: primaryFont.copyWith(color: Colors.white, fontSize: 12),
            ),
            InkWell(
              onTap: () {
                Get.to(() => RegisterView());
              },
              child: Text(
                " Sign up here",
                style:
                    primaryFont.copyWith(color: secondaryColor, fontSize: 12),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
