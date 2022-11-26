import 'package:aladdin/src/constants/app_colors.dart';
import 'package:aladdin/src/constants/app_font.dart';
import 'package:aladdin/src/constants/helpers.dart';
import 'package:aladdin/src/controllers/home_controller.dart';
import 'package:aladdin/src/views/categorys_views/category_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final homeController = Get.find<HomeController>();
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: backgroundColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              h30,
              Padding(
                padding: const EdgeInsets.only(left: 15),
                child: Row(
                  children: [
                    Text(
                      "Categories",
                      style: primaryFont.copyWith(
                          fontSize: 25,
                          fontWeight: FontWeight.w900,
                          color: Colors.black54),
                    )
                  ],
                ),
              ),
              h20,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                      height: 125,
                      child: Stack(
                        children: [
                          SvgPicture.asset(
                            "assets/icons/svgicons/fashion.svg",
                            height: 97,
                            width: 97,
                            fit: BoxFit.cover,
                          ),
                          Positioned(
                            bottom: 24,
                            left: 25,
                            child: Text(
                              "Fashion",
                              style: primaryFont.copyWith(
                                fontSize: 13,
                              ),
                            ),
                          )
                        ],
                      )),
                  Container(
                      height: 125,
                      child: Stack(
                        children: [
                        SvgPicture.asset(
                            "assets/icons/svgicons/health_beauty.svg",
                            height: 97,
                            width: 97,
                            fit: BoxFit.cover,
                          ),
                          Positioned(
                            bottom: 4,
                            left: 25,
                            child: Text(
                              "Health\nBeauty",
                              textAlign: TextAlign.center,
                              style: primaryFont.copyWith(
                                fontSize: 13,
                              ),
                            ),
                          )
                        ],
                      )),
                  Container(
                      height: 125,
                      child: Stack(
                        children: [
                            SvgPicture.asset(
                            "assets/icons/svgicons/food_beverage.svg",
                            height: 97,
                            width: 97,
                            fit: BoxFit.cover,
                          ),
                          Positioned(
                            bottom: 4,
                            left: 15,
                            child: Text(
                              "Food\nBeverages",
                              textAlign: TextAlign.center,
                              style: primaryFont.copyWith(
                                fontSize: 13,
                              ),
                            ),
                          )
                        ],
                      )),
                  InkWell(
                    onTap: () {
                      Get.to(() => ALLCategoryViews());
                    },
                    child: Container(
                        height: 125,
                        child: Stack(
                          children: [
                            Image.asset(
                              "assets/icons/Group 933.png",
                              height: 93,
                              width: 93,
                              fit: BoxFit.cover,
                            ),
                            Positioned(
                              bottom: 24,
                              left: 25,
                              child: Text(
                                "See All",
                                textAlign: TextAlign.center,
                                style: primaryFont.copyWith(
                                  fontSize: 13,
                                ),
                              ),
                            )
                          ],
                        )),
                  ),
                ],
              ),
              h15,
              Padding(
                padding: const EdgeInsets.only(left: 15),
                child: Row(
                  children: [
                    Text(
                      "Latest",
                      style: primaryFont.copyWith(
                          fontSize: 25,
                          fontWeight: FontWeight.w900,
                          color: Colors.black54),
                    ),
                  ],
                ),
              ),
              h10,
              Container(
                height: 170,
                width: size.width,
                child: ListView(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 15, right: 10),
                      child: Container(
                        height: 189,
                        width: size.width * 0.75,
                        // color: Colors.red.withOpacity(0.4),
                        child: Image.asset(
                          "assets/icons/Group 944.png",
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10, right: 15),
                      child: Container(
                        height: 189,
                        width: size.width * 0.75,
                        // color: Colors.red.withOpacity(0.4),
                        child: Image.asset(
                          "assets/icons/Group 944-1.png",
                          fit: BoxFit.fill,
                        ),
                      ),
                    )
                  ],
                ),
              ),
              h20,
              Padding(
                padding: const EdgeInsets.only(left: 7, right: 7),
                child: GridView.builder(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: homeController.productList.length,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                            childAspectRatio: 0.7, crossAxisCount: 4),
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.only(
                            left: 6, right: 6, bottom: 15),
                        child: Container(
                          height: 200,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: [
                                BoxShadow(
                                    blurRadius: 2,
                                    color: Colors.grey.withOpacity(0.1))
                              ],
                              color: Colors.white),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                height: 60,
                                width: double.infinity,
                                child: Image.asset(
                                    homeController.productList[index].image),
                              ),
                              h5,
                              Padding(
                                padding: const EdgeInsets.only(left: 3),
                                child: Text(
                                  homeController.productList[index].name,
                                  style: primaryFont.copyWith(
                                      color: Colors.black54, fontSize: 8),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 3),
                                child: Text(
                                  "RM ${homeController.productList[index].price}",
                                  style: primaryFont.copyWith(
                                      color: Colors.black,
                                      fontSize: 9,
                                      fontWeight: FontWeight.w600),
                                ),
                              ),
                              h5,
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Container(
                                    height: 13,
                                    width: 38,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(3),
                                        color: Colors.green),
                                    alignment: Alignment.center,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        const Icon(
                                          Icons.shopping_cart,
                                          color: Colors.white,
                                          size: 6,
                                        ),
                                        Text(
                                          "Add to cart",
                                          style: primaryFont.copyWith(
                                              color: Colors.white, fontSize: 4),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                      height: 12,
                                      width: 20,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          color: secondaryColor),
                                      alignment: Alignment.center,
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Icon(
                                            Icons.star,
                                            color: Colors.white,
                                            size: 5,
                                          ),
                                          SizedBox(
                                            width: 2,
                                          ),
                                          Text(
                                            "4.5",
                                            style: primaryFont.copyWith(
                                                color: Colors.white,
                                                fontSize: 4),
                                          ),
                                        ],
                                      )),
                                  const Icon(
                                    Icons.favorite,
                                    size: 10,
                                    color: Colors.grey,
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      );
                    }),
              )
            ],
          ),
        ),
      ),
    );
  }
}
