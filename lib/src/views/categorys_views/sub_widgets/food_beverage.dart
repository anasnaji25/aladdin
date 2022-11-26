import 'package:aladdin/src/constants/app_font.dart';
import 'package:aladdin/src/constants/helpers.dart';
import 'package:aladdin/src/controllers/home_controller.dart';
import 'package:aladdin/src/views/product_view/product_list_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FoodAndBeveragesWidget extends StatefulWidget {
  const FoodAndBeveragesWidget({super.key});

  @override
  State<FoodAndBeveragesWidget> createState() => _FoodAndBeveragesWidgetState();
}

class _FoodAndBeveragesWidgetState extends State<FoodAndBeveragesWidget> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Column(
      children: [
        SizedBox(
          height: size.height * 0.2,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              "Food & Beverages",
              style: primaryFont.copyWith(color: Colors.black45, fontSize: 12),
            ),
          ],
        ),
        h5,
        Padding(
          padding: const EdgeInsets.only(right: 15),
          child: Container(
            decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(16),
                  bottomRight: Radius.circular(16),
                  topRight: Radius.circular(16),
                  topLeft: Radius.circular(16),
                )),
            child: Column(
              children: [
                InkWell(
                  onTap: () {
                    Get.to(ProductListView(
                      title: "Food & Beverages",
                      productList: Get.find<HomeController>().foodBeveragesList,
                    ));
                  },
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Text(
                              "Foods",
                              style: primaryFont.copyWith(
                                  color: Colors.black54, fontSize: 15),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 8),
                            child: Container(
                              height: 22,
                              width: 22,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Colors.grey.withOpacity(0.5)),
                              child: const Icon(
                                Icons.arrow_forward_ios,
                                size: 13,
                              ),
                            ),
                          )
                        ],
                      ),
                      Container(
                        height: 0.5,
                        color: Colors.grey.withOpacity(0.5),
                      )
                    ],
                  ),
                ),
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Text(
                            "Beverages",
                            style: primaryFont.copyWith(
                                color: Colors.black54, fontSize: 15),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 8),
                          child: Container(
                            height: 22,
                            width: 22,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.grey.withOpacity(0.5)),
                            child: const Icon(
                              Icons.arrow_forward_ios,
                              size: 13,
                            ),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
