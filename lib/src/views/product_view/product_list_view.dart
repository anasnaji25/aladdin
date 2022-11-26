import 'package:aladdin/src/constants/app_colors.dart';
import 'package:aladdin/src/constants/app_font.dart';
import 'package:aladdin/src/constants/helpers.dart';
import 'package:aladdin/src/controllers/home_controller.dart';
import 'package:aladdin/src/models/home_product_models.dart';
import 'package:aladdin/src/views/product_view/product_details_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProductListView extends StatefulWidget {
  String title;
  List<HomePorductmodel> productList;
  ProductListView({super.key, required this.title, required this.productList});

  @override
  State<ProductListView> createState() => _ProductListViewState();
}

class _ProductListViewState extends State<ProductListView> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: backgroundColor,
      body: Container(
        height: size.height,
        width: size.width,
        child: SafeArea(
          child: Column(
            children: [
              Expanded(
                flex: 1,
                child: Column(
                  children: [
                    h30,
                    Padding(
                      padding: const EdgeInsets.only(left: 15, right: 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            widget.title,
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
                    h10,
                    Row(
                      children: [
                        Expanded(
                          flex: 3,
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Container(
                              height: 40,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(7),
                                  boxShadow: [
                                    BoxShadow(
                                        blurRadius: 2,
                                        color: Colors.grey.withOpacity(0.5))
                                  ]),
                              child: Padding(
                                padding:
                                    const EdgeInsets.only(left: 10, right: 10),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Sort by latest",
                                      style: primaryFont.copyWith(fontSize: 15),
                                    ),
                                    Icon(Icons.unfold_more)
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 2,
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Container(
                              height: 40,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(7),
                                  boxShadow: [
                                    BoxShadow(
                                        blurRadius: 2,
                                        color: Colors.grey.withOpacity(0.5))
                                  ]),
                              child: Padding(
                                padding:
                                    const EdgeInsets.only(left: 10, right: 10),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Show 16",
                                      style: primaryFont.copyWith(fontSize: 15),
                                    ),
                                    Icon(Icons.unfold_more)
                                  ],
                                ),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ), //headers end here

              Expanded(
                  flex: 4,
                  child: Container(
                    child: GridView.builder(
                        shrinkWrap: true,
                        itemCount: widget.productList.length,
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                                childAspectRatio: 0.8, crossAxisCount: 2),
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.only(
                                left: 15, right: 15, bottom: 15),
                            child: InkWell(
                              onTap: () {
                                Get.to(() => ProductDetailsView());
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
                                          widget.productList[index].image,
                                          fit: BoxFit.contain,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 10),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          h5,
                                          Padding(
                                            padding:
                                                const EdgeInsets.only(left: 3),
                                            child: Text(
                                              widget
                                                  .productList[index].subtitle,
                                              style: primaryFont.copyWith(
                                                  color: Colors.black54,
                                                  fontSize: 8),
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                const EdgeInsets.only(left: 3),
                                            child: Text(
                                              widget.productList[index].name,
                                              style: primaryFont.copyWith(
                                                  color: Colors.black,
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.w600),
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                const EdgeInsets.only(left: 3),
                                            child: Text(
                                              "RM ${widget.productList[index].price}",
                                              style: primaryFont.copyWith(
                                                  color: Colors.black54,
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.w600),
                                            ),
                                          ),
                                          h5,
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                right: 10),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Container(
                                                  height: 20,
                                                  width: 65,
                                                  decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              10),
                                                      color: Colors.green),
                                                  alignment: Alignment.center,
                                                  child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    children: [
                                                      const Icon(
                                                        Icons.shopping_cart,
                                                        color: Colors.white,
                                                        size: 8,
                                                      ),
                                                      Text(
                                                        "Add to cart",
                                                        style: primaryFont
                                                            .copyWith(
                                                                color: Colors
                                                                    .white,
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
                                                            BorderRadius
                                                                .circular(10),
                                                        color: secondaryColor),
                                                    alignment: Alignment.center,
                                                    child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
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
                                                          style: primaryFont
                                                              .copyWith(
                                                                  color: Colors
                                                                      .white,
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
                        }),
                  ))

              //end
            ],
          ),
        ),
      ),
    );
  }
}
