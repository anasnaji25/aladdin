import 'package:aladdin/src/constants/app_colors.dart';
import 'package:aladdin/src/constants/app_font.dart';
import 'package:aladdin/src/constants/helpers.dart';
import 'package:aladdin/src/controllers/products_info_controller.dart';
import 'package:aladdin/src/models/home_product_models.dart';
import 'package:aladdin/src/widgets/product_info_widgets/product_description_view.dart';
import 'package:aladdin/src/widgets/product_info_widgets/product_enquiry_widgets.dart';
import 'package:aladdin/src/widgets/product_info_widgets/product_review_widgets.dart';
import 'package:aladdin/src/widgets/product_info_widgets/product_vendor_info.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../widgets/product_info_widgets/product_info_widget.dart';

class ProductDetailsView extends StatefulWidget {
  HomePorductmodel productmodel;
  ProductDetailsView({super.key, required this.productmodel});

  @override
  State<ProductDetailsView> createState() => _ProductDetailsViewState();
}

class _ProductDetailsViewState extends State<ProductDetailsView> {
  final productInfoController = Get.find<ProductInfoController>();
  @override
  void initState() {
    super.initState();
    productInfoController.detailsIndex(0);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(
        () => ListView(
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
                      widget.productmodel.name,
                      style: primaryFont.copyWith(
                          fontSize: 18, fontWeight: FontWeight.w600),
                    ),
                    Row(
                      children: [
                        Text(
                          "RM ${widget.productmodel.price}.00 - RM 209.00",
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
                                style:
                                    primaryFont.copyWith(color: Colors.white),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                InkWell(
                  onTap: () {
                    Get.back();
                  },
                  child: Container(
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
                  ),
                )
              ],
            ),
            Container(
                height: 200,
                alignment: Alignment.center,
                child: Image.asset(widget.productmodel.image)),
            Container(
              height: 30,
              child: ListView(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                children: [
                  w15,
                  Padding(
                    padding: const EdgeInsets.only(top: 3, bottom: 3),
                    child: productInfoController.detailsIndex.value == 0
                        ? InkWell(
                            onTap: () {
                              productInfoController.detailsIndex(0);
                            },
                            child: Container(
                              height: 30,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(20),
                                  boxShadow: [
                                    BoxShadow(
                                        blurRadius: 3,
                                        color: Colors.grey.withOpacity(0.5))
                                  ]),
                              child: Padding(
                                padding:
                                    const EdgeInsets.only(left: 15, right: 15),
                                child: Text(
                                  "Product",
                                  style: primaryFont.copyWith(
                                      color: Colors.green, fontSize: 13),
                                ),
                              ),
                            ),
                          )
                        : InkWell(
                            onTap: () {
                              productInfoController.detailsIndex(0);
                            },
                            child: Container(
                              height: 30,
                              alignment: Alignment.center,
                              child: Text(
                                "Product",
                                style: primaryFont.copyWith(
                                    fontSize: 13,
                                    color: Colors.grey.withOpacity(0.8)),
                              ),
                            ),
                          ),
                  ),
                  w15,
                  Padding(
                    padding: const EdgeInsets.only(top: 3, bottom: 3),
                    child: productInfoController.detailsIndex.value == 1
                        ? Container(
                            height: 30,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20),
                                boxShadow: [
                                  BoxShadow(
                                      blurRadius: 3,
                                      color: Colors.grey.withOpacity(0.5))
                                ]),
                            child: Padding(
                              padding:
                                  const EdgeInsets.only(left: 15, right: 15),
                              child: Text(
                                "Description",
                                style: primaryFont.copyWith(
                                    color: Colors.green, fontSize: 13),
                              ),
                            ),
                          )
                        : InkWell(
                            onTap: () {
                              productInfoController.detailsIndex(1);
                            },
                            child: Container(
                              height: 30,
                              alignment: Alignment.center,
                              child: Text(
                                "Description",
                                style: primaryFont.copyWith(
                                    fontSize: 13,
                                    color: Colors.grey.withOpacity(0.8)),
                              ),
                            ),
                          ),
                  ),
                  w15,
                  Padding(
                    padding: const EdgeInsets.only(top: 3, bottom: 3),
                    child: productInfoController.detailsIndex.value == 2
                        ? Container(
                            height: 30,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20),
                                boxShadow: [
                                  BoxShadow(
                                      blurRadius: 3,
                                      color: Colors.grey.withOpacity(0.5))
                                ]),
                            child: Padding(
                              padding:
                                  const EdgeInsets.only(left: 15, right: 15),
                              child: Text(
                                "Reviews",
                                style: primaryFont.copyWith(
                                    color: Colors.green, fontSize: 13),
                              ),
                            ),
                          )
                        : InkWell(
                            onTap: () {
                              productInfoController.detailsIndex(2);
                            },
                            child: Container(
                              height: 30,
                              alignment: Alignment.center,
                              child: Text(
                                "Reviews",
                                style: primaryFont.copyWith(
                                    fontSize: 13,
                                    color: Colors.grey.withOpacity(0.8)),
                              ),
                            ),
                          ),
                  ),
                  w15,
                  Padding(
                    padding: const EdgeInsets.only(top: 3, bottom: 3),
                    child: productInfoController.detailsIndex.value == 3
                        ? Container(
                            height: 30,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20),
                                boxShadow: [
                                  BoxShadow(
                                      blurRadius: 3,
                                      color: Colors.grey.withOpacity(0.5))
                                ]),
                            child: Padding(
                              padding:
                                  const EdgeInsets.only(left: 15, right: 15),
                              child: Text(
                                "vendor info",
                                style: primaryFont.copyWith(
                                    color: Colors.green, fontSize: 13),
                              ),
                            ),
                          )
                        : InkWell(
                            onTap: () {
                              productInfoController.detailsIndex(3);
                            },
                            child: Container(
                              height: 30,
                              alignment: Alignment.center,
                              child: Text(
                                "vendor info",
                                style: primaryFont.copyWith(
                                    fontSize: 13,
                                    color: Colors.grey.withOpacity(0.8)),
                              ),
                            ),
                          ),
                  ),
                  w15,
                  Padding(
                    padding: const EdgeInsets.only(top: 3, bottom: 3),
                    child: productInfoController.detailsIndex.value == 4
                        ? Container(
                            height: 30,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20),
                                boxShadow: [
                                  BoxShadow(
                                      blurRadius: 3,
                                      color: Colors.grey.withOpacity(0.5))
                                ]),
                            child: Padding(
                              padding:
                                  const EdgeInsets.only(left: 15, right: 15),
                              child: Text(
                                "Product Enquiry",
                                style: primaryFont.copyWith(
                                    color: Colors.green, fontSize: 13),
                              ),
                            ),
                          )
                        : InkWell(
                            onTap: () {
                              productInfoController.detailsIndex(4);
                            },
                            child: Container(
                              height: 30,
                              alignment: Alignment.center,
                              child: Text(
                                "Product Enquiry",
                                style: primaryFont.copyWith(
                                    fontSize: 13,
                                    color: Colors.grey.withOpacity(0.8)),
                              ),
                            ),
                          ),
                  ),
                  w20,
                ],
              ),
            ),
            h5,
            const Padding(
              padding: EdgeInsets.only(left: 5, right: 5),
              child: Divider(
                thickness: 1,
              ),
            ),
            if (productInfoController.detailsIndex.value == 0)
              ProductInfoWidget(
                productmodel: widget.productmodel,
              ),
            if (productInfoController.detailsIndex.value == 1)
              ProjectDescription(
                productmodel: widget.productmodel,
              ),
            if (productInfoController.detailsIndex.value == 3)
              ProductVendorInfo(),
            if (productInfoController.detailsIndex.value == 4)
              ProductEnquiry(
                productmodel: widget.productmodel,
              ),
            if (productInfoController.detailsIndex.value == 2)
              ProductReview(
                productmodel: widget.productmodel,
              ),
          ],
        ),
      ),
      bottomNavigationBar:
          Obx(() => productInfoController.detailsIndex.value != 0
              ? Container(
                  height: 5,
                )
              : Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Row(
                    children: [
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(right: 10),
                          child: Container(
                            height: 55,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                      blurRadius: 2,
                                      color: Colors.grey.withOpacity(0.4))
                                ],
                                borderRadius: BorderRadius.circular(30)),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                w5,
                                Text(
                                  "Share This".toUpperCase(),
                                  style: primaryFont.copyWith(
                                      color: Colors.grey,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600),
                                ),
                                w5,
                                Container(
                                  height: 40,
                                  width: 40,
                                  decoration: BoxDecoration(
                                      color: Colors.grey,
                                      borderRadius: BorderRadius.circular(30)),
                                  alignment: Alignment.center,
                                  child: const Icon(
                                    Icons.arrow_upward,
                                    color: Colors.white,
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Container(
                            height: 55,
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
                                  "Add to cart".toUpperCase(),
                                  style: primaryFont.copyWith(
                                      color: Colors.white,
                                      fontSize: 14,
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
                      )
                    ],
                  ),
                )),
    );
  }
}
