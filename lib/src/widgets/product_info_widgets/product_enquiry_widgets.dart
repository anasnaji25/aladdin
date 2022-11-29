import 'package:aladdin/src/constants/app_colors.dart';
import 'package:aladdin/src/constants/app_font.dart';
import 'package:aladdin/src/constants/helpers.dart';
import 'package:aladdin/src/models/home_product_models.dart';
import 'package:flutter/material.dart';

class ProductEnquiry extends StatefulWidget {
   HomePorductmodel productmodel;
   ProductEnquiry({super.key,required this.productmodel});

  @override
  State<ProductEnquiry> createState() => _ProductEnquiryState();
}

class _ProductEnquiryState extends State<ProductEnquiry> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.only(left: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Product Enquiry",
            style: primaryFont.copyWith(
                fontSize: 13,
                color: Colors.grey[700],
                fontWeight: FontWeight.w600),
          ),
          h15,
          Padding(
            padding: const EdgeInsets.only(right: 15),
            child: Container(
              height: 50,
              width: size.width,
              child: TextField(
                decoration: InputDecoration(
                    isDense: true,
                    hintText: "Your Name",
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
          ),
          h15,
          Padding(
            padding: const EdgeInsets.only(right: 15),
            child: Container(
              height: 50,
              width: size.width,
              child: TextField(
                decoration: InputDecoration(
                    isDense: true,
                    hintText: "Your Email",
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
          ),
          h15,
          Padding(
            padding: const EdgeInsets.only(right: 15),
            child: Container(
              height: 100,
              width: size.width,
              child: TextField(
                maxLines: 5,
                decoration: InputDecoration(
                    isDense: true,
                    hintText: "Details about your enquiry....",
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
          ),
          h15,
          Text(
            """Your personal data will be used to support your experience throughout\nthis website, to manage access to your account, and for other purposes described in our privacy policy""",
            style: primaryFont.copyWith(
              fontSize: 10,
            ),
          ),
          h25,
           Padding(
             padding: const EdgeInsets.only(right: 15),
             child: Container(
               height: 40,
               decoration: BoxDecoration(
                   borderRadius: BorderRadius.circular(10), color: primaryColor),
               alignment: Alignment.center,
               child: Text(
                 "Submit Enquiry",
                 style: primaryFont.copyWith(color: Colors.white),
               ),
             ),
           )

        ],
      ),
    );
  }
}
