import 'package:aladdin/src/constants/app_colors.dart';
import 'package:aladdin/src/constants/app_font.dart';
import 'package:aladdin/src/constants/helpers.dart';
import 'package:aladdin/src/views/auth_views/new_password_screen_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:get/get.dart';

class EnterOtpForgotPassView extends StatefulWidget {
  const EnterOtpForgotPassView({super.key});

  @override
  State<EnterOtpForgotPassView> createState() => _EnterOtpForgotPassViewState();
}

class _EnterOtpForgotPassViewState extends State<EnterOtpForgotPassView> {
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
              "Enter Verification code",
              style: primaryFont.copyWith(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.w600),
            ),
            h15,
            Text(
              "OTP Verification verifies Email Address/Mobile\nNumber of users by sending OTP verification code\nduring registration",
              textAlign: TextAlign.center,
              style: primaryFont.copyWith(
                  color: Colors.white,
                  fontSize: 13,
                  fontWeight: FontWeight.w500),
            ),
            h40,
            Container(
              height: 45,
              child: OtpTextField(
                numberOfFields: 4,
                fieldWidth: 45,
                enabledBorderColor: Colors.white,
                focusedBorderColor: Colors.white,
                //set to true to show as box or false to show as dash
                showFieldAsBox: true,
                margin: EdgeInsets.only(left: 20, right: 20),

                filled: true,
                fillColor: Colors.white,
                //runs when a code is typed in
                onCodeChanged: (String code) {
                  //handle validation or checks here
                },
                //runs when every textfield is filled
                onSubmit: (String verificationCode) {
                 
                }, // end onSubmit
              ),
            ),
            h20,
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "if you didn't receive a code!",
                  style:
                      primaryFont.copyWith(color: Colors.white, fontSize: 12),
                ),
                InkWell(
                  onTap: () {},
                  child: Text(
                    " Resend",
                    style: primaryFont.copyWith(
                        color: secondaryColor, fontSize: 12),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(left: 30, right: 30,bottom: 70),
        child: InkWell(
          onTap: () {
            Get.to(() => NewPasswordScreenView());
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
              "Verify",
              style: primaryFont.copyWith(color: Colors.white, fontSize: 17),
            ),
          ),
        ),
      ),
    );
  }
}
