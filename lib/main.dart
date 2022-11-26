import 'package:aladdin/src/controllers/all_category_controller.dart';
import 'package:aladdin/src/controllers/home_controller.dart';
import 'package:aladdin/src/controllers/register_controller.dart';
import 'package:aladdin/src/views/landing_views/splash_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  Get.put(RegisterController());
  Get.put(HomeController());
  Get.put(AllCategoryController());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Aladdin',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SpashScreenView(),
    );
  }
}
