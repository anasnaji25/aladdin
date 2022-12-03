import 'package:aladdin/src/constants/app_colors.dart';
import 'package:aladdin/src/constants/app_font.dart';
import 'package:aladdin/src/constants/helpers.dart';
import 'package:aladdin/src/views/home_views/home_bottom_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OrderPlacedView extends StatefulWidget {
  const OrderPlacedView({super.key});

  @override
  State<OrderPlacedView> createState() => _OrderPlacedViewState();
}

class _OrderPlacedViewState extends State<OrderPlacedView> {
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
            actions: [
              Container(
                height: 45,
                width: 45,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    boxShadow: [
                      BoxShadow(
                          blurRadius: 2, color: Colors.grey.withOpacity(0.2))
                    ],
                    color: Colors.white),
                child: const Icon(
                  CupertinoIcons.xmark,
                  color: Colors.black54,
                ),
              )
            ],
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset("assets/icons/Group 943.png"),
                h20,
                Text(
                  "Order Placed!",
                  style: primaryFont.copyWith(
                      color: const Color.fromARGB(255, 131, 131, 131),
                      fontSize: 34,
                      fontWeight: FontWeight.w600),
                ),
                h20,
                Text(
                  "Your order was placed successfully. For more details,\ncheck All My Orders page under Profile tab",
                  textAlign: TextAlign.center,
                  style: primaryFont.copyWith(color: Colors.grey, fontSize: 12),
                ),
                h50,
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    InkWell(
                      onTap: () {
                         Get.offAll(()=> HomePageWithNavigation());
                      },
                      child: Container(
                        height: 65,
                        width: 200,
                        decoration: BoxDecoration(
                            color: primaryColor,
                            boxShadow: [
                              BoxShadow(
                                  blurRadius: 3,
                                  color: Colors.green.withOpacity(0.4))
                            ],
                            borderRadius: BorderRadius.circular(15)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            w5,
                            Text(
                              "My orders".toUpperCase(),
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
                    ),
                  ],
                ),
                h20
              ],
            ),
          )),
    );
  }
}
