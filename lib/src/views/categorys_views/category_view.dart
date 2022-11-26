import 'package:aladdin/src/constants/app_colors.dart';
import 'package:aladdin/src/constants/app_font.dart';
import 'package:aladdin/src/constants/helpers.dart';
import 'package:aladdin/src/controllers/all_category_controller.dart';
import 'package:aladdin/src/views/categorys_views/sub_widgets/fashion_widgets.dart';
import 'package:aladdin/src/views/categorys_views/sub_widgets/food_beverage.dart';
import 'package:aladdin/src/views/categorys_views/sub_widgets/health_beauty_widgets.dart';
import 'package:aladdin/src/views/categorys_views/sub_widgets/life_style_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class ALLCategoryViews extends StatefulWidget {
  const ALLCategoryViews({super.key});

  @override
  State<ALLCategoryViews> createState() => _ALLCategoryViewsState();
}

class _ALLCategoryViewsState extends State<ALLCategoryViews> {
  final allCaregoryController = Get.find<AllCategoryController>();

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: backgroundColor,
      body: Container(
        height: size.height,
        width: size.width,
        child: SafeArea(
          child: SingleChildScrollView(
            child: Obx(
              () => Column(
                children: [
                  h30,
                  Padding(
                    padding: const EdgeInsets.only(left: 15, right: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "All Categories",
                          style: primaryFont.copyWith(
                              fontSize: 26,
                              fontWeight: FontWeight.w600,
                              color: Colors.black54),
                        ),
                        Container(
                          height: 45,
                          width: 45,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              boxShadow: [
                                BoxShadow(
                                    blurRadius: 2,
                                    color: Colors.grey.withOpacity(0.2))
                              ],
                              color: Colors.white),
                          child: const Icon(
                            Icons.arrow_back,
                            color: Colors.black54,
                          ),
                        )
                      ],
                    ),
                  ),
                  Row(
                    children: [
                      Expanded(
                        flex: 2,
                        child: Container(
                          height: size.height * 0.8,
                          child: Column(
                            children: [
                              h20,
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      GestureDetector(
                                        onTap: () {
                                          allCaregoryController
                                              .categoryindex(0);
                                        },
                                        child: Container(
                                          height: 60,
                                          child: Stack(
                                            children: [
                                              if (allCaregoryController
                                                      .categoryindex.value ==
                                                  0)
                                                Positioned(
                                                  top: 10,
                                                  child: Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            left: 40),
                                                    child: Container(
                                                      height: 40,
                                                      color: Colors.white
                                                          .withOpacity(0.8),
                                                      width: 200,
                                                    ),
                                                  ),
                                                ),
                                              Positioned(
                                                top: -10,
                                                child: SvgPicture.asset(
                                                  "assets/icons/svgicons/fashion.svg",
                                                  height: 95,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 25),
                                        child: Text(
                                          "Fashion",
                                          style: primaryFont.copyWith(
                                              color: Colors.black54,
                                              fontSize: 13),
                                        ),
                                      ),
                                    ],
                                  ),
                                  h15,
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      GestureDetector(
                                        onTap: () {
                                          allCaregoryController
                                              .categoryindex(1);
                                        },
                                        child: Container(
                                          height: 60,
                                          child: Stack(
                                            children: [
                                              if (allCaregoryController
                                                      .categoryindex.value ==
                                                  1)
                                                Positioned(
                                                  top: 10,
                                                  child: Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            left: 40),
                                                    child: Container(
                                                      height: 50,
                                                      color: Colors.white
                                                          .withOpacity(0.8),
                                                      width: 200,
                                                    ),
                                                  ),
                                                ),
                                              Positioned(
                                                top: -10,
                                                child: SvgPicture.asset(
                                                  "assets/icons/svgicons/health_beauty.svg",
                                                  height: 95,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 25),
                                        child: Text(
                                          "Health & Beauty",
                                          style: primaryFont.copyWith(
                                              color: Colors.black54,
                                              fontSize: 13),
                                        ),
                                      ),
                                    ],
                                  ),
                                  h15,
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      GestureDetector(
                                        onTap: () {
                                          allCaregoryController
                                              .categoryindex(2);
                                        },
                                        child: Container(
                                          height: 60,
                                          child: Stack(
                                            children: [
                                              if (allCaregoryController
                                                      .categoryindex.value ==
                                                  2)
                                                Positioned(
                                                  top: 10,
                                                  child: Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            left: 40),
                                                    child: Container(
                                                      height: 50,
                                                      color: Colors.white
                                                          .withOpacity(0.8),
                                                      width: 200,
                                                    ),
                                                  ),
                                                ),
                                              Positioned(
                                                top: -10,
                                                child: SvgPicture.asset(
                                                  "assets/icons/svgicons/food_beverage.svg",
                                                  height: 95,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 25),
                                        child: Text(
                                          "Food & Beverages",
                                          style: primaryFont.copyWith(
                                              color: Colors.black54,
                                              fontSize: 13),
                                        ),
                                      ),
                                    ],
                                  ),
                                  h15,
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      GestureDetector(
                                        onTap: () {
                                          allCaregoryController
                                              .categoryindex(3);
                                        },
                                        child: Container(
                                          height: 64,
                                          child: Stack(
                                            children: [
                                              if (allCaregoryController
                                                      .categoryindex.value ==
                                                  3)
                                                Positioned(
                                                  top: 10,
                                                  child: Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            left: 40),
                                                    child: Container(
                                                      height: 50,
                                                      color: Colors.white
                                                          .withOpacity(0.8),
                                                      width: 200,
                                                    ),
                                                  ),
                                                ),
                                              Positioned(
                                                top: -10,
                                                child: SvgPicture.asset(
                                                  "assets/icons/svgicons/lyfstyle.svg",
                                                  height: 95,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 25),
                                        child: Text(
                                          "Lifestyle",
                                          style: primaryFont.copyWith(
                                              color: Colors.black54,
                                              fontSize: 13),
                                        ),
                                      ),
                                    ],
                                  ),
                                  h15,
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      GestureDetector(
                                        onTap: () {
                                          allCaregoryController
                                              .categoryindex(4);
                                        },
                                        child: Container(
                                          height: 60,
                                          child: Stack(
                                            children: [
                                              if (allCaregoryController
                                                      .categoryindex.value ==
                                                  4)
                                                Positioned(
                                                  top: 10,
                                                  child: Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            left: 40),
                                                    child: Container(
                                                      height: 50,
                                                      color: Colors.white
                                                          .withOpacity(0.8),
                                                      width: 200,
                                                    ),
                                                  ),
                                                ),
                                              Positioned(
                                                top: -10,
                                                child: SvgPicture.asset(
                                                  "assets/icons/svgicons/new_arrivals.svg",
                                                  height: 95,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 25),
                                        child: Text(
                                          "New Arrivals",
                                          style: primaryFont.copyWith(
                                              color: Colors.black54,
                                              fontSize: 13),
                                        ),
                                      ),
                                    ],
                                  ),
                                  h15,
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      GestureDetector(
                                        onTap: () {
                                          allCaregoryController
                                              .categoryindex(5);
                                        },
                                        child: Container(
                                          height: 60,
                                          child: Stack(
                                            children: [
                                              if (allCaregoryController
                                                      .categoryindex.value ==
                                                  5)
                                                Positioned(
                                                  top: 10,
                                                  child: Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            left: 40),
                                                    child: Container(
                                                      height: 50,
                                                      color: Colors.white
                                                          .withOpacity(0.8),
                                                      width: 200,
                                                    ),
                                                  ),
                                                ),
                                              Positioned(
                                                top: -10,
                                                child: SvgPicture.asset(
                                                  "assets/icons/svgicons/best_selling.svg",
                                                  height: 95,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 25),
                                        child: Text(
                                          "Best Selling",
                                          style: primaryFont.copyWith(
                                              color: Colors.black54,
                                              fontSize: 13),
                                        ),
                                      ),
                                    ],
                                  ),
                                  h15,
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      GestureDetector(
                                        onTap: () {
                                          allCaregoryController
                                              .categoryindex(6);
                                        },
                                        child: Container(
                                          height: 60,
                                          child: Stack(
                                            children: [
                                              if (allCaregoryController
                                                      .categoryindex.value ==
                                                  6)
                                                Positioned(
                                                  top: 10,
                                                  child: Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            left: 40),
                                                    child: Container(
                                                      height: 50,
                                                      color: Colors.white
                                                          .withOpacity(0.8),
                                                      width: 200,
                                                    ),
                                                  ),
                                                ),
                                              Positioned(
                                                top: -10,
                                                child: SvgPicture.asset(
                                                  "assets/icons/svgicons/celebrity.svg",
                                                  height: 95,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 25),
                                        child: Text(
                                          "Celebrity",
                                          style: primaryFont.copyWith(
                                              color: Colors.black54,
                                              fontSize: 13),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 3,
                        child: Container(
                            height: size.height * 0.8,
                            child: Column(
                              children: [
                                if (allCaregoryController.categoryindex.value ==
                                    0)
                                  FashionWidget(),
                                if (allCaregoryController.categoryindex.value ==
                                    1)
                                  HealthBeautyWidget(),
                                if (allCaregoryController.categoryindex.value ==
                                    2)
                                  FoodAndBeveragesWidget(),
                                if (allCaregoryController.categoryindex.value ==
                                    3)
                                  LifeStyleWidget(),
                              ],
                            )),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
