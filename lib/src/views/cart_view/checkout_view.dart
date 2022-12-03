import 'package:aladdin/src/constants/app_colors.dart';
import 'package:aladdin/src/constants/app_font.dart';
import 'package:aladdin/src/constants/helpers.dart';
import 'package:aladdin/src/views/cart_view/order_placed_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CheckOutView extends StatefulWidget {
  const CheckOutView({super.key});

  @override
  State<CheckOutView> createState() => _CheckOutViewState();
}

class _CheckOutViewState extends State<CheckOutView> {
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
            "Checkout",
            style: primaryFont.copyWith(
                fontSize: 25,
                fontWeight: FontWeight.w900,
                color: Colors.black54),
          ),
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
                Icons.arrow_back,
                color: Colors.black54,
              ),
            )
          ],
        ),
        body: ListView(
          children: [
            Divider(),
            h5,
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Shipping address".toUpperCase(),
                    style: primaryFont.copyWith(
                        color: Colors.black45.withOpacity(0.2),
                        fontSize: 12,
                        fontWeight: FontWeight.w600),
                  ),
                  h5,
                  Text(
                    "John Doe".toUpperCase(),
                    style: primaryFont.copyWith(
                        color: Colors.black54,
                        fontSize: 12,
                        fontWeight: FontWeight.w600),
                  ),
                  Text(
                    "No 123, Sub Street,\nMAin Street,\nCity Name,Chennai,\nCountry"
                        .toUpperCase(),
                    style: primaryFont.copyWith(
                        color: const Color.fromARGB(115, 61, 61, 61),
                        fontSize: 12,
                        fontWeight: FontWeight.w600),
                  ),
                ],
              ),
            ),
            Divider(),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Text(
                "Payment Method".toUpperCase(),
                style: primaryFont.copyWith(
                    color: Colors.black45.withOpacity(0.2),
                    fontSize: 12,
                    fontWeight: FontWeight.w600),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 10),
              child: Row(
                children: [
                  Image.asset(
                    "assets/icons/master_card.jpg",
                    height: 20,
                    fit: BoxFit.fitHeight,
                  ),
                  w10,
                  Text(
                    "Master Card ending **0065",
                    style: primaryFont.copyWith(
                        color: Colors.black, fontWeight: FontWeight.w600),
                  )
                ],
              ),
            ),
            Divider(),
            h15,
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Text(
                "Items".toUpperCase(),
                style: primaryFont.copyWith(
                    color: Colors.black45.withOpacity(0.2),
                    fontSize: 12,
                    fontWeight: FontWeight.w600),
              ),
            ),
            h15,
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
                      h5,
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "RM 49.99",
                            style: primaryFont.copyWith(
                                color: const Color.fromARGB(255, 236, 179, 7)),
                          ),
                          w50,
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
                      ),
                      h5,
                    ],
                  )
                ],
              ),
            ),
            Divider(),
            h15,
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: GestureDetector(
                onTap: () {
                  _showMyDialog();
                },
                child: Row(
                  children: [
                    Row(
                      children: [
                        Image.asset("assets/icons/tag.png"),
                        w10,
                        Text(
                          "Add Promo Code",
                          style: primaryFont.copyWith(
                              color: primaryColor,
                              fontSize: 14,
                              fontWeight: FontWeight.w600),
                        )
                      ],
                    )
                  ],
                ),
              ),
            )
          ],
        ),
        bottomNavigationBar: Container(
          height: 90,
          width: size.width,
          color: Colors.white,
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
                        Get.to(() => OrderPlacedView());
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
                              "Place order".toUpperCase(),
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

  Future<void> _showMyDialog() async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          content: SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Coupon code",
                      style: primaryFont.copyWith(color: Colors.black45),
                    ),
                    InkWell(
                        onTap: () {
                          Get.back();
                        },
                        child: const Icon(CupertinoIcons.xmark_circle))
                  ],
                ),
                h10,
                Image.asset("assets/icons/gift-card.png")
              ],
            ),
          ),
          actions: <Widget>[
            InkWell(
              onTap: () {
                Get.back();
              },
              child: Container(
                height: 50,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.amber,
                    borderRadius: BorderRadius.circular(10)),
                alignment: Alignment.center,
                child: Text(
                  "Apply".toUpperCase(),
                  style: primaryFont.copyWith(color: Colors.white),
                ),
              ),
            )
          ],
        );
      },
    );
  }
}
