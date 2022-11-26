import 'package:aladdin/src/constants/app_font.dart';
import 'package:aladdin/src/constants/helpers.dart';
import 'package:aladdin/src/controllers/home_controller.dart';
import 'package:aladdin/src/views/product_view/product_list_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FashionWidget extends StatefulWidget {
  const FashionWidget({super.key});

  @override
  State<FashionWidget> createState() => _FashionWidgetState();
}

class _FashionWidgetState extends State<FashionWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        h5,
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              "Fashion",
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
                )),
            child: Column(
              children: [
                InkWell(
                  onTap: () {
                    Get.to(ProductListView(
                      title: "Prayer Sets & Mats",
                      productList:
                          Get.find<HomeController>().paryaerProductList,
                    ));
                  },
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "Prayer Sets & Mats",
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
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "Women's Wear",
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
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "Accessories",
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
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "Mens's Wear",
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
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "Unisex",
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
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "Kid's Wear",
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
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "Shoes",
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
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "Bags",
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
