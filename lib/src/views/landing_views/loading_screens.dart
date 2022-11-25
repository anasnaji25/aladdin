import 'package:aladdin/src/constants/app_colors.dart';
import 'package:aladdin/src/views/landing_views/welcome_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

class LoadingScreenView extends StatefulWidget {
  const LoadingScreenView({super.key});

  @override
  State<LoadingScreenView> createState() => _LoadingScreenViewState();
}

class _LoadingScreenViewState extends State<LoadingScreenView> {
  @override
  void initState() {
    super.initState();
    nextScreen();
  }

  nextScreen() async {
    await Future.delayed(const Duration(seconds: 2));
    Get.off(const WelcomeScreenView());
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
        child: LoadingAnimationWidget.prograssiveDots(
          color: Colors.white,
          size: 100,
        ),
      ),
    ));
  }
}
