import 'package:aladdin/src/constants/app_colors.dart';
import 'package:aladdin/src/constants/app_font.dart';
import 'package:aladdin/src/constants/helpers.dart';
import 'package:flutter/material.dart';

class ProductDetailsView extends StatefulWidget {
  const ProductDetailsView({super.key});

  @override
  State<ProductDetailsView> createState() => _ProductDetailsViewState();
}

class _ProductDetailsViewState extends State<ProductDetailsView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          h30,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                width: 20,
              ),
              Column(
                children: [
                  Text(
                    "Calligraphy collection - 071",
                    style: primaryFont.copyWith(
                        fontSize: 18, fontWeight: FontWeight.w600),
                  ),
                  Row(
                    children: [
                      Text(
                        "RM 189.00 - RM 209.00",
                        style: primaryFont.copyWith(
                            color: Colors.black54, fontSize: 13),
                      ),
                      w5,
                      Container(
                        height: 20,
                        width: 50,
                        decoration: BoxDecoration(
                            color: secondaryColor,
                            borderRadius: BorderRadius.circular(20)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Icon(
                              Icons.star,
                              size: 15,
                              color: Colors.white,
                            ),
                            Text(
                              "4.9",
                              style: primaryFont.copyWith(color: Colors.white),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
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
          Container(
              height: 200,
              alignment: Alignment.center,
              child: Image.asset("assets/images/prayer_img (1).png")),


          
        ],
      ),
    );
  }
}
