import 'package:aladdin/src/constants/app_colors.dart';
import 'package:aladdin/src/constants/app_font.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';


class PaymentPendingsView extends StatefulWidget {
  const PaymentPendingsView({super.key});

  @override
  State<PaymentPendingsView> createState() => _PaymentPendingsViewState();
}

class _PaymentPendingsViewState extends State<PaymentPendingsView> {
  @override
  Widget build(BuildContext context) {
     var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: false,
        title: Text("Payment Pendings",
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
      body: ListView(
        shrinkWrap: true,
        children: [
        Padding(
          padding: const EdgeInsets.only(top: 10,left: 20,right: 20),
          child: Container(
            height: 180,
            width: size.width,
            child: Column(
              children: [
                Container(
                  height: 100,
                  width: size.width,
                  child: Row(
                    //mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                    Image(height: 60,
                      image: AssetImage("assets/images/wtch.png")),
                      Padding(
                        padding: const EdgeInsets.only(left: 5),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Garmin Venu SQ GPS Smartwatch",
        style: primaryFont.copyWith(
          fontWeight: FontWeight.bold,
          fontSize: 15,
          color: lightgrey,
        ),
        ),
         Text("Watches | New York, USA",
        style: primaryFont.copyWith(
          //fontWeight: FontWeight.bold,
          fontSize: 9,
          color: lightgrey,
        ),
        ),
         Container(
          width: size.width * 0.7,
           child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
             children: [
               Text("Ordered on 24 Jun, 11:40",
        style: primaryFont.copyWith(
                //fontWeight: FontWeight.bold,
                fontSize: 9,
                color: lightgrey,
        ),
        ),
           Text("Order ID 224154",
        style: primaryFont.copyWith(
                //fontWeight: FontWeight.bold,
                fontSize: 9,
                color: lightgrey,
        ),
        ),
              
             ],
           ),
         ),
                          ],
                        ),
                      ),
                  ]),
                  decoration: BoxDecoration(
                    color: Color(0xffFFFFFF),
                  borderRadius: BorderRadius.circular(15),
                ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 15),
                  child: Row(
                   mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        //crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                           Text("payment",
        style: primaryFont.copyWith(
                  //fontWeight: FontWeight.bold,
                  fontSize: 12,
                  color: lightgrey,
        ),
        ),
        SizedBox(height: 5,),
                     Text("RM 30.30",
        style: primaryFont.copyWith(
                  fontWeight: FontWeight.bold,
                  fontSize: 10,
                  color: lightgrey,
        ),
        ),

                        ],
                      ),
                       Column(
                       // crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                           Text("Product Id",
        style: primaryFont.copyWith(
                  //fontWeight: FontWeight.bold,
                  fontSize: 12,
                  color: lightgrey,
        ),
        ),
        SizedBox(height: 5,),
                     Text("TST11412",
        style: primaryFont.copyWith(
                  fontWeight: FontWeight.bold,
                  fontSize: 10,
                  color: lightgrey,
        ),
        ),

                        ],
                      ),
                       Column(
                        //crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                           Text("Qty",
        style: primaryFont.copyWith(
                  //fontWeight: FontWeight.bold,
                  fontSize: 12,
                  color: lightgrey,
        ),
        ),
        SizedBox(height: 5,),
                     Text("1",
        style: primaryFont.copyWith(
                  fontWeight: FontWeight.bold,
                  fontSize: 10,
                  color: lightgrey,
        ),
        ),

                        ],
                      ),
                       Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                           Text("order status",
        style: primaryFont.copyWith(
                  //fontWeight: FontWeight.bold,
                  fontSize: 12,
                  color: lightgrey,
        ),
        ),
        SizedBox(height: 5,),
                     Text("Pending",
        style: primaryFont.copyWith(
                  fontWeight: FontWeight.bold,
                  fontSize: 10,
                  color: redcolor,
        ),
        ),

                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
            
            decoration: BoxDecoration(
              color: Color(0xffD1CBCB),
              borderRadius: BorderRadius.circular(15),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 10,left: 20,right: 20),
          child: Container(
            height: 180,
            width: size.width,
            child: Column(
              children: [
                Container(
                  height: 100,
                  width: size.width,
                  child: Row(
                    //mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                    Image(height: 60,
                      image: AssetImage("assets/images/wtch1.png")),
                      Padding(
                        padding: const EdgeInsets.only(left: 5),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("KETINY ARMSTRONG SERIES FASHIO",
        style: primaryFont.copyWith(
          fontWeight: FontWeight.bold,
          fontSize: 15,
          color: lightgrey,
        ),
        ),
         Text("Watches | New York, USA",
        style: primaryFont.copyWith(
          //fontWeight: FontWeight.bold,
          fontSize: 9,
          color: lightgrey,
        ),
        ),
         Container(
          width: size.width * 0.7,
           child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
             children: [
               Text("Ordered on 24 Jun, 11:40",
        style: primaryFont.copyWith(
                //fontWeight: FontWeight.bold,
                fontSize: 9,
                color: lightgrey,
        ),
        ),
           Text("Order ID 224154",
        style: primaryFont.copyWith(
                //fontWeight: FontWeight.bold,
                fontSize: 9,
                color: lightgrey,
        ),
        ),
              
             ],
           ),
         ),
                          ],
                        ),
                      ),
                  ]),
                  decoration: BoxDecoration(
                    color: Color(0xffFFFFFF),
                  borderRadius: BorderRadius.circular(15),
                ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 15),
                  child: Row(
                   mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        //crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                           Text("payment",
        style: primaryFont.copyWith(
                  //fontWeight: FontWeight.bold,
                  fontSize: 12,
                  color: lightgrey,
        ),
        ),
        SizedBox(height: 5,),
                     Text("RM 30.30",
        style: primaryFont.copyWith(
                  fontWeight: FontWeight.bold,
                  fontSize: 10,
                  color: lightgrey,
        ),
        ),

                        ],
                      ),
                       Column(
                       // crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                           Text("Product Id",
        style: primaryFont.copyWith(
                  //fontWeight: FontWeight.bold,
                  fontSize: 12,
                  color: lightgrey,
        ),
        ),
        SizedBox(height: 5,),
                     Text("TST11412",
        style: primaryFont.copyWith(
                  fontWeight: FontWeight.bold,
                  fontSize: 10,
                  color: lightgrey,
        ),
        ),

                        ],
                      ),
                       Column(
                        //crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                           Text("Qty",
        style: primaryFont.copyWith(
                  //fontWeight: FontWeight.bold,
                  fontSize: 12,
                  color: lightgrey,
        ),
        ),
        SizedBox(height: 5,),
                     Text("1",
        style: primaryFont.copyWith(
                  fontWeight: FontWeight.bold,
                  fontSize: 10,
                  color: lightgrey,
        ),
        ),

                        ],
                      ),
                       Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                           Text("order status",
        style: primaryFont.copyWith(
                  //fontWeight: FontWeight.bold,
                  fontSize: 12,
                  color: lightgrey,
        ),
        ),
        SizedBox(height: 5,),
                     Text("Pending",
        style: primaryFont.copyWith(
                  fontWeight: FontWeight.bold,
                  fontSize: 10,
                  color: redcolor,
        ),
        ),

                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
            
            decoration: BoxDecoration(
              color: Color(0xffD1CBCB),
              borderRadius: BorderRadius.circular(15),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 10,left: 20,right: 20),
          child: Container(
            height: 180,
            width: size.width,
            child: Column(
              children: [
                Container(
                  height: 100,
                  width: size.width,
                  child: Row(
                    //mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                    Image(height: 60,
                      image: AssetImage("assets/images/wtch2.png")),
                      Padding(
                        padding: const EdgeInsets.only(left: 5),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("KETINY QUEBEC SERIES FASHION L",
        style: primaryFont.copyWith(
          fontWeight: FontWeight.bold,
          fontSize: 15,
          color: lightgrey,
        ),
        ),
         Text("Watches | New York, USA",
        style: primaryFont.copyWith(
          //fontWeight: FontWeight.bold,
          fontSize: 9,
          color: lightgrey,
        ),
        ),
         Container(
          width: size.width * 0.7,
           child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
             children: [
               Text("Ordered on 24 Jun, 11:40",
        style: primaryFont.copyWith(
                //fontWeight: FontWeight.bold,
                fontSize: 9,
                color: lightgrey,
        ),
        ),
           Text("Order ID 224154",
        style: primaryFont.copyWith(
                //fontWeight: FontWeight.bold,
                fontSize: 9,
                color: lightgrey,
        ),
        ),
              
             ],
           ),
         ),
                          ],
                        ),
                      ),
                  ]),
                  decoration: BoxDecoration(
                    color: Color(0xffFFFFFF),
                  borderRadius: BorderRadius.circular(15),
                ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 15),
                  child: Row(
                   mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        //crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                           Text("payment",
        style: primaryFont.copyWith(
                  //fontWeight: FontWeight.bold,
                  fontSize: 12,
                  color: lightgrey,
        ),
        ),
        SizedBox(height: 5,),
                     Text("RM 30.30",
        style: primaryFont.copyWith(
                  fontWeight: FontWeight.bold,
                  fontSize: 10,
                  color: lightgrey,
        ),
        ),

                        ],
                      ),
                       Column(
                       // crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                           Text("Product Id",
        style: primaryFont.copyWith(
                  //fontWeight: FontWeight.bold,
                  fontSize: 12,
                  color: lightgrey,
        ),
        ),
        SizedBox(height: 5,),
                     Text("TST11412",
        style: primaryFont.copyWith(
                  fontWeight: FontWeight.bold,
                  fontSize: 10,
                  color: lightgrey,
        ),
        ),

                        ],
                      ),
                       Column(
                        //crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                           Text("Qty",
        style: primaryFont.copyWith(
                  //fontWeight: FontWeight.bold,
                  fontSize: 12,
                  color: lightgrey,
        ),
        ),
        SizedBox(height: 5,),
                     Text("1",
        style: primaryFont.copyWith(
                  fontWeight: FontWeight.bold,
                  fontSize: 10,
                  color: lightgrey,
        ),
        ),

                        ],
                      ),
                       Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                           Text("order status",
        style: primaryFont.copyWith(
                  //fontWeight: FontWeight.bold,
                  fontSize: 12,
                  color: lightgrey,
        ),
        ),
        SizedBox(height: 5,),
                     Text("Pending",
        style: primaryFont.copyWith(
                  fontWeight: FontWeight.bold,
                  fontSize: 10,
                  color: redcolor,
        ),
        ),

                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
            
            decoration: BoxDecoration(
              color: Color(0xffD1CBCB),
              borderRadius: BorderRadius.circular(15),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 10,left: 20,right: 20),
          child: Container(
            height: 180,
            width: size.width,
            child: Column(
              children: [
                Container(
                  height: 100,
                  width: size.width,
                  child: Row(
                    //mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                    Image(height: 60,
                      image: AssetImage("assets/images/wtch3.png")),
                      Padding(
                        padding: const EdgeInsets.only(left: 5),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("LOTUSMAN L857A.NNB WOMEN WATCH",
        style: primaryFont.copyWith(
          fontWeight: FontWeight.bold,
          fontSize: 15,
          color: lightgrey,
        ),
        ),
         Text("Watches | New York, USA",
        style: primaryFont.copyWith(
          //fontWeight: FontWeight.bold,
          fontSize: 9,
          color: lightgrey,
        ),
        ),
         Container(
          width: size.width * 0.7,
           child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
             children: [
               Text("Ordered on 24 Jun, 11:40",
        style: primaryFont.copyWith(
                //fontWeight: FontWeight.bold,
                fontSize: 9,
                color: lightgrey,
        ),
        ),
           Text("Order ID 224154",
        style: primaryFont.copyWith(
                //fontWeight: FontWeight.bold,
                fontSize: 9,
                color: lightgrey,
        ),
        ),
              
             ],
           ),
         ),
                          ],
                        ),
                      ),
                  ]),
                  decoration: BoxDecoration(
                    color: Color(0xffFFFFFF),
                  borderRadius: BorderRadius.circular(15),
                ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 15),
                  child: Row(
                   mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        //crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                           Text("payment",
        style: primaryFont.copyWith(
                  //fontWeight: FontWeight.bold,
                  fontSize: 12,
                  color: lightgrey,
        ),
        ),
        SizedBox(height: 5,),
                     Text("RM 30.30",
        style: primaryFont.copyWith(
                  fontWeight: FontWeight.bold,
                  fontSize: 10,
                  color: lightgrey,
        ),
        ),

                        ],
                      ),
                       Column(
                       // crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                           Text("Product Id",
        style: primaryFont.copyWith(
                  //fontWeight: FontWeight.bold,
                  fontSize: 12,
                  color: lightgrey,
        ),
        ),
        SizedBox(height: 5,),
                     Text("TST11412",
        style: primaryFont.copyWith(
                  fontWeight: FontWeight.bold,
                  fontSize: 10,
                  color: lightgrey,
        ),
        ),

                        ],
                      ),
                       Column(
                        //crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                           Text("Qty",
        style: primaryFont.copyWith(
                  //fontWeight: FontWeight.bold,
                  fontSize: 12,
                  color: lightgrey,
        ),
        ),
        SizedBox(height: 5,),
                     Text("1",
        style: primaryFont.copyWith(
                  fontWeight: FontWeight.bold,
                  fontSize: 10,
                  color: lightgrey,
        ),
        ),

                        ],
                      ),
                       Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                           Text("order status",
        style: primaryFont.copyWith(
                  //fontWeight: FontWeight.bold,
                  fontSize: 12,
                  color: lightgrey,
        ),
        ),
        SizedBox(height: 5,),
                     Text("Pending",
        style: primaryFont.copyWith(
                  fontWeight: FontWeight.bold,
                  fontSize: 10,
                  color: redcolor,
        ),
        ),

                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
            
            decoration: BoxDecoration(
              color: Color(0xffD1CBCB),
              borderRadius: BorderRadius.circular(15),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 10,left: 20,right: 20),
          child: Container(
            height: 180,
            width: size.width,
            child: Column(
              children: [
                Container(
                  height: 100,
                  width: size.width,
                  child: Row(
                    //mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                    Image(height: 60,
                      image: AssetImage("assets/images/wtch.png")),
                      Padding(
                        padding: const EdgeInsets.only(left: 5),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Garmin Venu SQ GPS Smartwatch",
        style: primaryFont.copyWith(
          fontWeight: FontWeight.bold,
          fontSize: 15,
          color: lightgrey,
        ),
        ),
         Text("Watches | New York, USA",
        style: primaryFont.copyWith(
          //fontWeight: FontWeight.bold,
          fontSize: 9,
          color: lightgrey,
        ),
        ),
         Container(
          width: size.width * 0.7,
           child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
             children: [
               Text("Ordered on 24 Jun, 11:40",
        style: primaryFont.copyWith(
                //fontWeight: FontWeight.bold,
                fontSize: 9,
                color: lightgrey,
        ),
        ),
           Text("Order ID 224154",
        style: primaryFont.copyWith(
                //fontWeight: FontWeight.bold,
                fontSize: 9,
                color: lightgrey,
        ),
        ),
              
             ],
           ),
         ),
                          ],
                        ),
                      ),
                  ]),
                  decoration: BoxDecoration(
                    color: Color(0xffFFFFFF),
                  borderRadius: BorderRadius.circular(15),
                ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 15),
                  child: Row(
                   mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        //crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                           Text("payment",
        style: primaryFont.copyWith(
                  //fontWeight: FontWeight.bold,
                  fontSize: 12,
                  color: lightgrey,
        ),
        ),
        SizedBox(height: 5,),
                     Text("RM 30.30",
        style: primaryFont.copyWith(
                  fontWeight: FontWeight.bold,
                  fontSize: 10,
                  color: lightgrey,
        ),
        ),

                        ],
                      ),
                       Column(
                       // crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                           Text("Product Id",
        style: primaryFont.copyWith(
                  //fontWeight: FontWeight.bold,
                  fontSize: 12,
                  color: lightgrey,
        ),
        ),
        SizedBox(height: 5,),
                     Text("TST11412",
        style: primaryFont.copyWith(
                  fontWeight: FontWeight.bold,
                  fontSize: 10,
                  color: lightgrey,
        ),
        ),

                        ],
                      ),
                       Column(
                        //crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                           Text("Qty",
        style: primaryFont.copyWith(
                  //fontWeight: FontWeight.bold,
                  fontSize: 12,
                  color: lightgrey,
        ),
        ),
        SizedBox(height: 5,),
                     Text("1",
        style: primaryFont.copyWith(
                  fontWeight: FontWeight.bold,
                  fontSize: 10,
                  color: lightgrey,
        ),
        ),

                        ],
                      ),
                       Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                           Text("order status",
        style: primaryFont.copyWith(
                  //fontWeight: FontWeight.bold,
                  fontSize: 12,
                  color: lightgrey,
        ),
        ),
        SizedBox(height: 5,),
                     Text("Pending",
        style: primaryFont.copyWith(
                  fontWeight: FontWeight.bold,
                  fontSize: 10,
                  color: redcolor,
        ),
        ),

                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
            
            decoration: BoxDecoration(
              color: Color(0xffD1CBCB),
              borderRadius: BorderRadius.circular(15),
            ),
          ),
        ),
      ]),
    );
  }
}