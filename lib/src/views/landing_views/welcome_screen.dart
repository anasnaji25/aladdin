import 'package:aladdin/src/constants/app_colors.dart';
import 'package:aladdin/src/constants/app_font.dart';
import 'package:aladdin/src/constants/helpers.dart';
import 'package:aladdin/src/views/auth_views/login_view.dart';
import 'package:aladdin/src/views/auth_views/register_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class WelcomeScreenView extends StatefulWidget {
  const WelcomeScreenView({super.key});

  @override
  State<WelcomeScreenView> createState() => _WelcomeScreenViewState();
}

class _WelcomeScreenViewState extends State<WelcomeScreenView> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: primaryColor,
      body: Container(
        width: size.width,
        height: size.height,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 150,
            ),
            Image.asset(
              "assets/icons/logo_1.png",
              height: 130,
            ),
            h100,
            Text(
              "Welcome",
              style: primaryFont.copyWith(
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                  fontSize: 26),
            ),
            h15,
            Text(
              "Enjoy the worlds fastest and best network",
              style: primaryFont.copyWith(
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                  fontSize: 14),
            ),
            h30,
            Padding(
              padding: const EdgeInsets.only(left: 30, right: 30),
              child: InkWell(
                onTap: () {
                  Get.to(() => RegisterView());
                },
                child: Container(
                  height: 50,
                  width: size.width,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Colors.white),
                      color: secondaryColor),
                  alignment: Alignment.center,
                  child: Text(
                    "SIGN UP",
                    style:
                        primaryFont.copyWith(color: Colors.white, fontSize: 17),
                  ),
                ),
              ),
            ),
            h20,
            Padding(
              padding: const EdgeInsets.only(left: 30, right: 30),
              child: InkWell(
                onTap: () {
                  Get.to(() => LoginView());
                },
                child: Container(
                  height: 50,
                  width: size.width,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Colors.white),
                      color: Colors.white),
                  alignment: Alignment.center,
                  child: Text(
                    "LOGIN",
                    style: primaryFont.copyWith(
                        color: secondaryColor, fontSize: 17),
                  ),
                ),
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
              "Language",
              style: primaryFont.copyWith(
                  color: Colors.white.withOpacity(0.6), fontSize: 11),
            ),
            w5,
            Container(
              height: 30,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: const Color(0xff404040).withOpacity(0.3)),
              alignment: Alignment.center,
              child: Padding(
                padding: const EdgeInsets.only(right: 15, left: 15),
                child: Text(
                  "English",
                  style: primaryFont.copyWith(
                      color: Colors.white.withOpacity(0.9), fontSize: 13),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
