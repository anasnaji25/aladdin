import 'package:aladdin/src/constants/app_colors.dart';
import 'package:aladdin/src/constants/app_font.dart';
import 'package:aladdin/src/constants/helpers.dart';
import 'package:aladdin/src/views/cart_view/checkout_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CartView extends StatefulWidget {
  const CartView({super.key});

  @override
  State<CartView> createState() => _CartViewState();
}

class _CartViewState extends State<CartView> {
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
              stops: [0.1, 0.9],
              colors: [Colors.white, Color.fromARGB(255, 225, 226, 228)])),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          leadingWidth: 10,
          title: Text(
            "Cart",
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
                              crossAxisAlignment: CrossAxisAlignment.center,
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
                              crossAxisAlignment: CrossAxisAlignment.center,
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
        body: ListView(
          children: [
            Divider(),
            Container(
              height: 100,
              width: size.width,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  w20,
                  Container(
                    height: 80,
                    width: 80,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(70),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                              blurRadius: 2,
                              color: Colors.grey.withOpacity(0.3)),
                        ]),
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child:
                          Image.asset("assets/icons/women_shoes_PNG7464.png"),
                    ),
                  ),
                  w15,
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Faux Sued Ankle Boots",
                        style: primaryFont.copyWith(
                            color: Colors.black,
                            fontSize: 14,
                            fontWeight: FontWeight.w600),
                      ),
                      Text(
                        "7, Hot Pink",
                        style: primaryFont.copyWith(
                            color: Colors.black45,
                            fontSize: 13,
                            fontWeight: FontWeight.w400),
                      ),
                      h10,
                      Text(
                        "RM 49.99",
                        style: primaryFont.copyWith(
                            color: const Color.fromARGB(255, 236, 179, 7)),
                      ),
                      h5,
                      Row(
                        children: [
                          const Icon(
                            Icons.remove_circle_rounded,
                            color: Colors.grey,
                          ),
                          w10,
                          Text(
                            "1",
                            style: primaryFont.copyWith(),
                          ),
                          w10,
                          const Icon(
                            Icons.add_circle_rounded,
                            color: Colors.grey,
                          ),
                        ],
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
        bottomNavigationBar: Container(
          height: 90,
          width: size.width,
          child: Column(
            children: [
              Divider(),
              h5,
              Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "TOTAL",
                          style: primaryFont.copyWith(
                              color: Colors.grey[400], fontSize: 10),
                        ),
                        Text(
                          "RM 131.56",
                          style: primaryFont.copyWith(
                              color: Colors.black,
                              fontSize: 18,
                              fontWeight: FontWeight.w600),
                        ),
                        Text(
                          "Free Domestic Shipping",
                          style: primaryFont.copyWith(
                              color: Colors.grey[400], fontSize: 10),
                        ),
                      ],
                    ),
                    InkWell(
                      onTap: () {
                        Get.to(() => const CheckOutView());
                      },
                      child: Container(
                        height: 45,
                        decoration: BoxDecoration(
                            color: primaryColor,
                            boxShadow: [
                              BoxShadow(
                                  blurRadius: 3,
                                  color: Colors.green.withOpacity(0.4))
                            ],
                            borderRadius: BorderRadius.circular(30)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            w5,
                            Text(
                              "Checkout".toUpperCase(),
                              style: primaryFont.copyWith(
                                  color: Colors.white,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w600),
                            ),
                            w5,
                            Container(
                              height: 40,
                              width: 40,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(30)),
                              alignment: Alignment.center,
                              child: const Icon(
                                Icons.arrow_forward_ios_rounded,
                                color: primaryColor,
                              ),
                            ),
                            w5,
                          ],
                        ),
                      ),
                    )
                  ]),
            ],
          ),
        ),
      ),
    );
  }
}
