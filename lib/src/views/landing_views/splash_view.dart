import 'package:aladdin/src/constants/app_colors.dart';
import 'package:aladdin/src/views/landing_views/loading_screens.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SpashScreenView extends StatefulWidget {
  const SpashScreenView({super.key});

  @override
  State<SpashScreenView> createState() => _SpashScreenViewState();
}

class _SpashScreenViewState extends State<SpashScreenView> {
  @override
  void initState() {
    super.initState();
    nextScreen();
  }

  nextScreen() async {
    await Future.delayed(const Duration(seconds: 2));
    Get.off(const LoadingScreenView());
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        height: size.height,
        width: size.width,
        decoration: const BoxDecoration(color: primaryColor),
        alignment: Alignment.center,
        child: Center(
          child: Image.asset("assets/icons/logo_1.png"),
        ),
      ),
    );
  }
}
