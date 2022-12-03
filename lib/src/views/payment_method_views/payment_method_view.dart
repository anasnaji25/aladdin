import 'package:aladdin/src/constants/app_colors.dart';
import 'package:aladdin/src/constants/app_font.dart';
import 'package:aladdin/src/views/payment_method_views/payment_details_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../address_views/address_view.dart';

class PaymentMethodView extends StatefulWidget {
  const PaymentMethodView({super.key});

  @override
  State<PaymentMethodView> createState() => _PaymentMethodViewState();
}

class _PaymentMethodViewState extends State<PaymentMethodView> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: false,
        title: Text("Payment Method",
        style: primaryFont.copyWith(
          fontWeight: FontWeight.bold,
          fontSize: 28,
          color: lightgrey,
        ),
        
        ),
        titleSpacing: -35,
        actions: [
               Padding(
                 padding: const EdgeInsets.only(right: 10),
                 child: InkWell(
                  onTap: (){
                    Get.back();
                  },
                   child: Image(
                    image: AssetImage("assets/icons/Group 168.png")),
                 ),
               )
      ]
      ),
      body: Center(
        child: Column(
          children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20,right: 20,top: 20),
                    child: Container(
                      height: 200,
                      width: size.width,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Container(
                                height: 32,
                                width: 37,
                                color: Colors.amber,
                                child: Icon(Icons.delete,color: Colors.white,),
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 30,top: 20),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Image(image: AssetImage("assets/images/Group 3.png")),
                                SizedBox(height: 20,
                                ),
                                RichText(text: TextSpan(
                                  text: "**** **** ****  ",
                                  style: GoogleFonts.karla(color: greycolor,fontSize: 16),
                                  children: <TextSpan>[
                                    TextSpan(
                                      text: "0819",
                                      style: GoogleFonts.karla(color: greycolor,fontSize: 20),
                                    ),
                                  ],
                                ),
                                ),
                                SizedBox(height: 20,
                                ),
                                Text("Expires 10-19",
                                style: GoogleFonts.karla(color: greycolor,fontSize: 12),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                      decoration: BoxDecoration(
                     borderRadius: BorderRadius.circular(3.0),
                     color: Colors.white,
                      boxShadow: [
                       BoxShadow(
                       color: shadow,
                       blurRadius: 8.5,
                       spreadRadius: 8.5,
                       offset: Offset(0, 10),
                     ),
               ],
    ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20,right: 20,top: 20),
                    child: Container(
                      height: 200,
                      width: size.width,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Container(
                                height: 32,
                                width: 37,
                                color: Colors.amber,
                                child: Icon(Icons.delete,color: Colors.white,),
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 30,top: 20),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Image(image: AssetImage("assets/images/Mastercard.png")),
                                SizedBox(height: 20,
                                ),
                                RichText(text: TextSpan(
                                  text: "**** **** ****  ",
                                  style: GoogleFonts.karla(color: greycolor,fontSize: 16),
                                  children: <TextSpan>[
                                    TextSpan(
                                      text: "8765",
                                      style: GoogleFonts.karla(color: greycolor,fontSize: 20),
                                    ),
                                  ],
                                ),
                                ),
                                SizedBox(height: 20,
                                ),
                                Text("Added 15-02-2017",
                                style: GoogleFonts.karla(color: greycolor,fontSize: 12),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                      decoration: BoxDecoration(
                     borderRadius: BorderRadius.circular(3.0),
                     color: Colors.white,
                      boxShadow: [
                       BoxShadow(
                       color: shadow,
                       blurRadius: 8.5,
                       spreadRadius: 8.5,
                       offset: Offset(0, 10),
                     ),
               ],
    ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 25,right: 25,top: 130),
                    child: InkWell(
                      onTap: (){
                         Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const PaymentDetailView()),
                    );
                      },
                      child: Container(
                        height: 55,
                        width: size.width,
                        child: Center(
                          child: Text("Add Payment Method",
                      textAlign: TextAlign.center,
                       style: GoogleFonts.karla(
                       fontWeight: FontWeight.bold,
                       fontSize: 16,
                          color: Colors.white,),
                      ),
                        ),
                        decoration: BoxDecoration(
                          color: darkGreenColor,
                          borderRadius: BorderRadius.circular(35)
                        ),
                      ),
                    ),
                  ),
        ]),
      ),
    );
  }
}