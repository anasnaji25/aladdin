import 'package:aladdin/src/constants/app_font.dart';
import 'package:aladdin/src/constants/helpers.dart';
import 'package:aladdin/src/controllers/home_controller.dart';
import 'package:aladdin/src/views/product_view/product_list_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LifeStyleWidget extends StatefulWidget {
  const LifeStyleWidget({super.key});

  @override
  State<LifeStyleWidget> createState() => _LifeStyleWidgetState();
}

class _LifeStyleWidgetState extends State<LifeStyleWidget> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Column(
      children: [
        SizedBox(
          height: size.height * 0.15,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              "Lifestyle",
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
                      title: "Lifestyle",
                      productList: Get.find<HomeController>().lifeStyleList,
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
                              "Home Applicances",
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
                            "Household",
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
                            "pets",
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
                            "Toys & games",
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
                            "Car Accessories",
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
                            "Books & Stationaries",
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
                            "Musical Instrument",
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
