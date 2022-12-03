import 'package:aladdin/src/constants/app_colors.dart';
import 'package:aladdin/src/constants/app_font.dart';
import 'package:aladdin/src/constants/helpers.dart';
import 'package:aladdin/src/controllers/home_controller.dart';
import 'package:aladdin/src/views/product_view/product_details_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SearchView extends StatefulWidget {
  const SearchView({super.key});

  @override
  State<SearchView> createState() => _SearchViewState();
}

class _SearchViewState extends State<SearchView> {
  final homeController = Get.find<HomeController>();

  bool showResult = false;
  var textEditingController = TextEditingController();

  @override
  void initState() {
    super.initState();

    textEditingController.addListener(listenForShowing);
  }

  listenForShowing() {
    if (textEditingController.text.isNotEmpty) {
      setState(() {
        showResult = true;
      });
    }else{
      setState(() {
        showResult = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      height: size.height,
      width: size.width,
      decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              stops: [0.3, 0.7],
              colors: [Colors.white, Color.fromARGB(255, 225, 226, 228)])),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(150.0),
          child: Column(
            children: [
              AppBar(
                elevation: 0,
                backgroundColor: Colors.white,
               leadingWidth: 10,
                title: Text(
                  "Search",
                  style: primaryFont.copyWith(
                      fontSize: 25,
                      fontWeight: FontWeight.w900,
                      color: Colors.black54),
                ),
                actions: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                          height: 35,
                          width: 50,
                          child: Stack(
                            alignment: Alignment.center,
                            children: [
                              Positioned(
                                bottom: 5,
                                top: 0,
                                right: 0,
                                left: 0,
                                child: SizedBox(
                                  height: 23,
                                  width: 23,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Image.asset(
                                        "assets/icons/Messages.png",
                                        height: 20,
                                        fit: BoxFit.scaleDown,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Positioned(
                                bottom: 9,
                                left: 9,
                                child: Container(
                                  height: 13,
                                  width: 13,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      color: Colors.green),
                                  alignment: Alignment.center,
                                  child: Text(
                                    "5",
                                    style: primaryFont.copyWith(
                                        color: Colors.white, fontSize: 8),
                                  ),
                                ),
                              ),
                            ],
                          )),
                      Container(
                          height: 35,
                          width: 50,
                          child: Stack(
                            alignment: Alignment.center,
                            children: [
                              Positioned(
                                bottom: 5,
                                top: 0,
                                right: 0,
                                left: 0,
                                child: SizedBox(
                                  height: 23,
                                  width: 23,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Image.asset(
                                        "assets/icons/notifications.png",
                                        height: 21,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Positioned(
                                bottom: 9,
                                left: 9,
                                child: Container(
                                  height: 13,
                                  width: 13,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      color: Colors.green),
                                  alignment: Alignment.center,
                                  child: Text(
                                    "4",
                                    style: primaryFont.copyWith(
                                        color: Colors.white, fontSize: 8),
                                  ),
                                ),
                              ),
                            ],
                          )),
                    ],
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15, right: 15),
                child: Container(
                  height: 55,
                  width: size.width,
                  decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(20)),
                  alignment: Alignment.center,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: TextField(
                      controller: textEditingController,
                      decoration: InputDecoration.collapsed(
                          hintStyle: primaryFont.copyWith(
                            color: Colors.grey[500],
                          ),
                          hintText: "Search something"),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
        body: showResult
            ? GridView.builder(
                shrinkWrap: true,
                itemCount: homeController.productList.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    childAspectRatio: 0.8, crossAxisCount: 2),
                itemBuilder: (context, index) {
                  return Padding(
                    padding:
                        const EdgeInsets.only(left: 15, right: 15, bottom: 15),
                    child: InkWell(
                      onTap: () {
                        Get.to(() => ProductDetailsView(
                              productmodel: homeController.productList[index],
                            ));
                      },
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
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Container(
                                width: double.infinity,
                                height: 100,
                                child: Image.asset(
                                  homeController.productList[index].image,
                                  fit: BoxFit.contain,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  h5,
                                  Padding(
                                    padding: const EdgeInsets.only(left: 3),
                                    child: Text(
                                      homeController
                                          .productList[index].subtitle,
                                      style: primaryFont.copyWith(
                                          color: Colors.black54, fontSize: 8),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 3),
                                    child: Text(
                                      homeController.productList[index].name,
                                      style: primaryFont.copyWith(
                                          color: Colors.black,
                                          fontSize: 12,
                                          fontWeight: FontWeight.w600),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 3),
                                    child: Text(
                                      "RM ${homeController.productList[index].price}",
                                      style: primaryFont.copyWith(
                                          color: Colors.black54,
                                          fontSize: 12,
                                          fontWeight: FontWeight.w600),
                                    ),
                                  ),
                                  h5,
                                  Padding(
                                    padding: const EdgeInsets.only(right: 10),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Container(
                                          height: 20,
                                          width: 65,
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                              color: Colors.green),
                                          alignment: Alignment.center,
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              const Icon(
                                                Icons.shopping_cart,
                                                color: Colors.white,
                                                size: 8,
                                              ),
                                              Text(
                                                "Add to cart",
                                                style: primaryFont.copyWith(
                                                    color: Colors.white,
                                                    fontSize: 7),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Container(
                                            height: 20,
                                            width: 40,
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                                color: secondaryColor),
                                            alignment: Alignment.center,
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                const Icon(
                                                  Icons.star,
                                                  color: Colors.white,
                                                  size: 10,
                                                ),
                                                const SizedBox(
                                                  width: 2,
                                                ),
                                                Text(
                                                  "4.5",
                                                  style: primaryFont.copyWith(
                                                      color: Colors.white,
                                                      fontSize: 9),
                                                ),
                                              ],
                                            )),
                                        const Icon(
                                          Icons.favorite,
                                          size: 18,
                                          color: Colors.grey,
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                })
            : ListView(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 15, right: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "RECENTLY VIEWED",
                          style: primaryFont.copyWith(
                              color: Colors.black54, fontSize: 12),
                        ),
                        Text(
                          "CLEAR",
                          style: primaryFont.copyWith(
                              color: Colors.red, fontSize: 12),
                        ),
                      ],
                    ),
                  ),
                  h10,
                  Container(
                    height: 55,
                    child: ListView(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 10, top: 3, bottom: 3),
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                boxShadow: [
                                  BoxShadow(
                                      blurRadius: 2,
                                      color: Colors.grey.withOpacity(0.5))
                                ],
                                color: Colors.white),
                            child: Padding(
                              padding:
                                  const EdgeInsets.only(left: 10, right: 15),
                              child: Row(
                                children: [
                                  Container(
                                    height: 45,
                                    width: 45,
                                    child: Image.asset(
                                        "assets/icons/scarf_PNG48.png"),
                                  ),
                                  w10,
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Red Cotton Scarf",
                                        style: primaryFont.copyWith(
                                            color: Colors.black87,
                                            fontSize: 15),
                                      ),
                                      Text(
                                        "\$11.0",
                                        style: primaryFont.copyWith(
                                            color: Colors.black54,
                                            fontSize: 15),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 10, top: 3, bottom: 3, right: 10),
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                boxShadow: [
                                  BoxShadow(
                                      blurRadius: 2,
                                      color: Colors.grey.withOpacity(0.5))
                                ],
                                color: Colors.white),
                            child: Padding(
                              padding:
                                  const EdgeInsets.only(left: 10, right: 15),
                              child: Row(
                                children: [
                                  Container(
                                    height: 45,
                                    width: 45,
                                    child: Image.asset(
                                        "assets/icons/backpack_PNG6354.png"),
                                  ),
                                  w10,
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Bottle Green Backpack",
                                        style: primaryFont.copyWith(
                                            color: Colors.black87,
                                            fontSize: 15),
                                      ),
                                      Text(
                                        "\$20.58",
                                        style: primaryFont.copyWith(
                                            color: Colors.black54,
                                            fontSize: 15),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  h30,
                  Padding(
                    padding: const EdgeInsets.only(left: 15, right: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "RECOMMENDED",
                          style: primaryFont.copyWith(
                              color: Colors.black54, fontSize: 12),
                        ),
                        Text(
                          "REFRESH",
                          style: primaryFont.copyWith(
                              color: Color.fromARGB(255, 243, 183, 3),
                              fontSize: 12,
                              fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                  ),
                  h10,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        height: 35,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                        ),
                        alignment: Alignment.center,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 15, right: 15),
                          child: Text(
                            "Denim jeans",
                            style: primaryFont.copyWith(
                                color: Colors.black54, fontSize: 10),
                          ),
                        ),
                      ),
                      Container(
                        height: 35,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                        ),
                        alignment: Alignment.center,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 15, right: 15),
                          child: Text(
                            "Mini Skirt",
                            style: primaryFont.copyWith(
                                color: Colors.black54, fontSize: 10),
                          ),
                        ),
                      ),
                      Container(
                        height: 35,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                        ),
                        alignment: Alignment.center,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 15, right: 15),
                          child: Text(
                            "Jacket",
                            style: primaryFont.copyWith(
                                color: Colors.black54, fontSize: 10),
                          ),
                        ),
                      ),
                      Container(
                        height: 35,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                        ),
                        alignment: Alignment.center,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 15, right: 15),
                          child: Text(
                            "Accessories",
                            style: primaryFont.copyWith(
                                color: Colors.black54, fontSize: 10),
                          ),
                        ),
                      ),
                    ],
                  ),
                  h10,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        height: 35,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                        ),
                        alignment: Alignment.center,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 15, right: 15),
                          child: Text(
                            "Sports Accessories",
                            style: primaryFont.copyWith(
                                color: Colors.black54, fontSize: 10),
                          ),
                        ),
                      ),
                      Container(
                        height: 35,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                        ),
                        alignment: Alignment.center,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 15, right: 15),
                          child: Text(
                            "Yoga Pants",
                            style: primaryFont.copyWith(
                                color: Colors.black54, fontSize: 10),
                          ),
                        ),
                      ),
                      Container(
                        height: 35,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                        ),
                        alignment: Alignment.center,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 15, right: 15),
                          child: Text(
                            "Eye Shadow",
                            style: primaryFont.copyWith(
                                color: Colors.black54, fontSize: 10),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
      ),
    );
  }
}
