import 'package:aladdin/src/constants/app_colors.dart';
import 'package:aladdin/src/constants/app_font.dart';
import 'package:aladdin/src/constants/helpers.dart';
import 'package:aladdin/src/models/home_product_models.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProductInfoWidget extends StatefulWidget {
   HomePorductmodel productmodel;
   ProductInfoWidget({super.key,required this.productmodel});

  @override
  State<ProductInfoWidget> createState() => _ProductInfoWidgetState();
}

class _ProductInfoWidgetState extends State<ProductInfoWidget> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.only(left: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            widget.productmodel.subtitle,
            style: primaryFont.copyWith(color: Colors.grey.withOpacity(0.7)),
          ),
          h5,
          Text(
            widget.productmodel.name,
            style: primaryFont.copyWith(
                fontWeight: FontWeight.w600, color: Colors.grey[600]),
          ),
          h5,
          RichText(
              text: TextSpan(
                  text: "Availability: ",
                  style: primaryFont.copyWith(
                      fontSize: 12, color: Colors.grey[500]),
                  children: [
                TextSpan(
                  text: "50 in stock",
                  style: primaryFont.copyWith(
                      fontSize: 12, color: Colors.green[500]),
                )
              ])),
          h5,
          const Padding(
            padding: EdgeInsets.only(right: 5),
            child: Divider(
              thickness: 0.8,
            ),
          ),
          Text(
            "Store: THE SAJADAH KL",
            style: primaryFont.copyWith(
                fontWeight: FontWeight.w600,
                color: Colors.grey[600],
                fontSize: 13),
          ),
          h5,
          Row(
            children: [
              const Icon(
                Icons.favorite,
                size: 12,
              ),
              w5,
              Text(
                "Browse wishlist",
                style:
                    primaryFont.copyWith(color: Colors.grey[500], fontSize: 11),
              )
            ],
          ),
          h15,
          Text(
            "Premium Makkah Rug patterns prayer mat\n110*70cm | 8mm\nFringe: Cream/Gold\n\nExclusive box packaging",
            style: primaryFont.copyWith(fontSize: 11, color: Colors.grey[600]),
          ),
          Text(
            "RM ${widget.productmodel.price}",
            style: primaryFont.copyWith(color: Colors.grey[700], fontSize: 40),
          ),
          h10,
          Row(
            children: [
              Expanded(
                flex: 3,
                child: Container(
                  height: 50,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                            blurRadius: 2, color: Colors.grey.withOpacity(0.5))
                      ],
                      borderRadius: BorderRadius.circular(30)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        "01",
                        style: primaryFont.copyWith(
                          fontWeight: FontWeight.w600,
                          color: Colors.black54,
                          fontSize: 24,
                        ),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                              height: 15,
                              alignment: Alignment.center,
                              child: const Icon(
                                Icons.arrow_drop_up,
                                size: 27,
                              )),
                          const Icon(
                            Icons.arrow_drop_down,
                            size: 27,
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 5,
                child: Padding(
                  padding: const EdgeInsets.only(left: 15, right: 15),
                  child: InkWell(
                    onTap: () {
                      _showGetSupport(size);
                    },
                    child: Container(
                      height: 50,
                      decoration: BoxDecoration(
                        color: Colors.grey.withOpacity(0.2),
                        borderRadius: BorderRadius.circular(30),
                      ),
                      alignment: Alignment.center,
                      child: Text(
                        "Get Support",
                        style: primaryFont.copyWith(
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          h15,
          Padding(
            padding: const EdgeInsets.only(left: 5),
            child: InkWell(
              onTap: () {
                _showReportPopup(size);
              },
              child: Container(
                child: Row(
                  children: [
                    const Icon(
                      Icons.warning,
                      size: 12,
                    ),
                    w5,
                    Text(
                      "Report Abuse",
                      style: primaryFont.copyWith(
                          color: Colors.grey[500], fontSize: 11),
                    )
                  ],
                ),
              ),
            ),
          ),
          h15,
          const Padding(
            padding: EdgeInsets.only(right: 5),
            child: Divider(
              thickness: 0.8,
            ),
          ),
        ],
      ),
    );
  }

  Future<void> _showGetSupport(var size) async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          contentPadding: const EdgeInsets.all(15),
          scrollable: false,
          content: SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Hi, aladdin1.my"),
                    InkWell(
                        onTap: () {
                          Get.back();
                        },
                        child: Icon(CupertinoIcons.xmark_circle))
                  ],
                ),
                Text(
                  "Create s new support topic",
                  style: primaryFont.copyWith(fontWeight: FontWeight.w600),
                ),
                h5,
                const Divider(
                  thickness: 1.5,
                ),
                h10,
                Text(
                  "Subject :",
                  style: primaryFont.copyWith(
                      fontSize: 15, color: Colors.grey[600]),
                ),
                h5,
                Container(
                  height: 50,
                  width: size.width,
                  child: TextField(
                    decoration: InputDecoration(
                        isDense: true,
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: const BorderSide(
                              color: Colors.grey,
                            )),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: const BorderSide(
                              color: Colors.grey,
                            ))),
                  ),
                ),
                h10,
                Text(
                  "Message :",
                  style: primaryFont.copyWith(
                      fontSize: 15, color: Colors.grey[600]),
                ),
                h5,
                Container(
                  height: 80,
                  width: size.width,
                  child: TextField(
                    maxLines: 2,
                    decoration: InputDecoration(
                        isDense: true,
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: const BorderSide(
                              color: Colors.grey,
                            )),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: const BorderSide(
                              color: Colors.grey,
                            ))),
                  ),
                ),
                h25,
                InkWell(
                  onTap: () {
                    Get.back();
                  },
                  child: Container(
                    height: 40,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: primaryColor),
                    alignment: Alignment.center,
                    child: Text(
                      "Submit",
                      style: primaryFont.copyWith(color: Colors.white),
                    ),
                  ),
                )
              ],
            ),
          ),
        );
      },
    );
  }

  //report popup
  Future<void> _showReportPopup(var size) async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          contentPadding: const EdgeInsets.all(15),
          scrollable: false,
          content: SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Report Abuse",
                      style: primaryFont.copyWith(fontWeight: FontWeight.w600),
                    ),
                    InkWell(
                        onTap: () {
                          Get.back();
                        },
                        child: const Icon(CupertinoIcons.xmark_circle))
                  ],
                ),
                h5,
                const Divider(
                  thickness: 1.5,
                ),
                h10,
                Text(
                  "Why are you reporting this?",
                  style: primaryFont.copyWith(
                      fontSize: 13, color: Colors.grey[600]),
                ),
                h15,
                Padding(
                  padding: const EdgeInsets.only(bottom: 7),
                  child: Row(
                    children: [
                      Container(
                        height: 15,
                        width: 15,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(color: Colors.black)),
                      ),
                      w10,
                      Text(
                        "This content is spam",
                        style: primaryFont.copyWith(
                            fontSize: 12,
                            color: Colors.black,
                            fontWeight: FontWeight.w500),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 7),
                  child: Row(
                    children: [
                      Container(
                        height: 15,
                        width: 15,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(color: Colors.black)),
                      ),
                      w10,
                      Text(
                        "This content should marked as adult",
                        style: primaryFont.copyWith(
                            fontSize: 12,
                            color: Colors.black,
                            fontWeight: FontWeight.w500),
                      )
                    ],
                  ),
                ),
                 Padding(
                  padding: const EdgeInsets.only(bottom: 7),
                  child: Row(
                    children: [
                      Container(
                        height: 15,
                        width: 15,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(color: Colors.black)),
                      ),
                      w10,
                      Text(
                        "This content is abusive",
                        style: primaryFont.copyWith(
                            fontSize: 12,
                            color: Colors.black,
                            fontWeight: FontWeight.w500),
                      )
                    ],
                  ),
                ),
                 Padding(
                  padding: const EdgeInsets.only(bottom: 7),
                  child: Row(
                    children: [
                      Container(
                        height: 15,
                        width: 15,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(color: Colors.black)),
                      ),
                      w10,
                      Text(
                        "This content is violent",
                        style: primaryFont.copyWith(
                            fontSize: 12,
                            color: Colors.black,
                            fontWeight: FontWeight.w500),
                      )
                    ],
                  ),
                ),
                 Padding(
                  padding: const EdgeInsets.only(bottom: 7),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 15,
                        width: 15,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(color: Colors.black)),
                      ),
                      w10,
                      Text(
                        "This content suggests the author might\nbe risk of hurtinh themselves",
                        style: primaryFont.copyWith(
                            fontSize: 12,
                            color: Colors.black,
                            fontWeight: FontWeight.w500),
                      )
                    ],
                  ),
                ),
                 Padding(
                  padding: const EdgeInsets.only(bottom: 7),
                  child: Row(
                    children: [
                      Container(
                        height: 15,
                        width: 15,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(color: Colors.black)),
                      ),
                      w10,
                      Text(
                        "This content infringes upon my copyright",
                        style: primaryFont.copyWith(
                            fontSize: 12,
                            color: Colors.black,
                            fontWeight: FontWeight.w500),
                      )
                    ],
                  ),
                ),
                 Padding(
                  padding: const EdgeInsets.only(bottom: 7),
                  child: Row(
                    children: [
                      Container(
                        height: 15,
                        width: 15,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(color: Colors.black)),
                      ),
                      w10,
                      Text(
                        "This content contains my private information",
                        style: primaryFont.copyWith(
                            fontSize: 12,
                            color: Colors.black,
                            fontWeight: FontWeight.w500),
                      )
                    ],
                  ),
                ),
                 Padding(
                  padding: const EdgeInsets.only(bottom: 7),
                  child: Row(
                    children: [
                      Container(
                        height: 15,
                        width: 15,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(color: Colors.black)),
                      ),
                      w10,
                      Text(
                        "Other",
                        style: primaryFont.copyWith(
                            fontSize: 12,
                            color: Colors.black,
                            fontWeight: FontWeight.w500),
                      )
                    ],
                  ),
                ),
                h20,
                Text(
                  "Description",
                  style: primaryFont.copyWith(
                      fontSize: 15,
                      color: Colors.black,
                      fontWeight: FontWeight.w600),
                ),
                h5,
                Container(
                  height: 80,
                  width: size.width,
                  child: TextField(
                    maxLines: 2,
                    decoration: InputDecoration(
                        isDense: true,
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: const BorderSide(
                              color: Colors.grey,
                            )),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: const BorderSide(
                              color: Colors.grey,
                            ))),
                  ),
                ),
                h25,
                InkWell(
                  onTap: () {
                    Get.back();
                  },
                  child: Container(
                    height: 40,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: primaryColor),
                    alignment: Alignment.center,
                    child: Text(
                      "Report Abuse",
                      style: primaryFont.copyWith(color: Colors.white),
                    ),
                  ),
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
