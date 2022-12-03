import 'package:aladdin/src/constants/app_colors.dart';
import 'package:aladdin/src/constants/app_font.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';


class FinishedOrders extends StatefulWidget {
  const FinishedOrders({super.key});

  @override
  State<FinishedOrders> createState() => _FinishedOrdersState();
}

class _FinishedOrdersState extends State<FinishedOrders> {

  bool ischecked = true;

  @override
  Widget build(BuildContext context) {
     var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: false,
        title: Text("Finished Orders",
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
            padding: const EdgeInsets.only(top: 20,left: 20,right: 20),
            child: Container(
              height: 110,
              width: size.width,
              child: Row(children: [
                Image(
                  height: 100,
                  width: 100,
                  image: AssetImage("assets/images/fo.png")),
                  Padding(
                    padding: const EdgeInsets.only(top:10,bottom:10,right:5),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            SizedBox(
                              height: 5,
                              width: 20,
                              child: Checkbox(
                                activeColor: Color(0xff3F7DFC),
                                value: ischecked, 
                                onChanged: (Value){
                                  ischecked=!ischecked;
                              }),
                            ),
                            SizedBox(width: 5,),
                            Text("Bags, Purse & Wallet",
                            style: primaryFont.copyWith(
                            //fontWeight: FontWeight.bold,
                            fontSize: 13,
                            color: lightgrey,
                           ),
                         ),
                          ],
                        ),
                        Text("Ty Fashion (3-Braided Premium",
                            style: primaryFont.copyWith(
                            fontWeight: FontWeight.bold,
                            fontSize: 13,
                            color: lightgrey,
                           ),
                         ),
                         Text("RM 56.98",
                            style: primaryFont.copyWith(
                            fontWeight: FontWeight.bold,
                            fontSize: 13,
                            color: darkGreenColor,
                           ),
                         ),
                         Container(
                          width: size.width * 0.6,
                           child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                             children: [
                               Text("Qty : 01",
                                  style: primaryFont.copyWith(
                                  //fontWeight: FontWeight.bold,
                                  fontSize: 13,
                                  color: lightgrey,
                                 ),
                               ),
                               Text("Order Complete",
                              style: primaryFont.copyWith(
                              fontWeight: FontWeight.bold,
                              fontSize: 13,
                              color: darkGreenColor,
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
                color: Colors.white,
               boxShadow: [
                       BoxShadow(
                       color: shadow,
                       blurRadius: 5.1,
                       spreadRadius: 2.2,
                       offset: Offset(0, 4),
                     ),
        ]),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20,left: 20,right: 20),
            child: Container(
              height: 110,
              width: size.width,
              child: Row(children: [
                Image(
                  height: 100,
                  width: 100,
                  image: AssetImage("assets/images/fo1.png")),
                  Padding(
                    padding: const EdgeInsets.only(top:10,bottom:10,right:5),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            SizedBox(
                              height: 5,
                              width: 20,
                              child: Checkbox(
                                activeColor: Color(0xff3F7DFC),
                                value: ischecked, 
                                onChanged: (Value){
                                  ischecked=!ischecked;
                              }),
                            ),
                            SizedBox(width: 5,),
                            Text("Bags, Purse & Wallet",
                            style: primaryFont.copyWith(
                            //fontWeight: FontWeight.bold,
                            fontSize: 13,
                            color: lightgrey,
                           ),
                         ),
                          ],
                        ),
                        Text("Ty Fashion (3-Braided Premium",
                            style: primaryFont.copyWith(
                            fontWeight: FontWeight.bold,
                            fontSize: 13,
                            color: lightgrey,
                           ),
                         ),
                         Text("RM 56.98",
                            style: primaryFont.copyWith(
                            fontWeight: FontWeight.bold,
                            fontSize: 13,
                            color: darkGreenColor,
                           ),
                         ),
                         Container(
                          width: size.width * 0.6,
                           child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                             children: [
                               Text("Qty : 01",
                                  style: primaryFont.copyWith(
                                  //fontWeight: FontWeight.bold,
                                  fontSize: 13,
                                  color: lightgrey,
                                 ),
                               ),
                               Text("Order Complete",
                              style: primaryFont.copyWith(
                              fontWeight: FontWeight.bold,
                              fontSize: 13,
                              color: darkGreenColor,
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
                color: Colors.white,
               boxShadow: [
                       BoxShadow(
                       color: shadow,
                       blurRadius: 5.1,
                       spreadRadius: 2.2,
                       offset: Offset(0, 4),
                     ),
        ]),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20,left: 20,right: 20),
            child: Container(
              height: 110,
              width: size.width,
              child: Row(children: [
                Image(
                  height: 100,
                  width: 100,
                  image: AssetImage("assets/images/fo2.png")),
                  Padding(
                    padding: const EdgeInsets.only(top:10,bottom:10,right:5),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            SizedBox(
                              height: 5,
                              width: 20,
                              child: Checkbox(
                                activeColor: Color(0xff3F7DFC),
                                value: ischecked, 
                                onChanged: (Value){
                                  ischecked=!ischecked;
                              }),
                            ),
                            SizedBox(width: 5,),
                            Text("Bags, Purse & Wallet",
                            style: primaryFont.copyWith(
                            //fontWeight: FontWeight.bold,
                            fontSize: 13,
                            color: lightgrey,
                           ),
                         ),
                          ],
                        ),
                        Text("Ty Fashion (3-Braided Premium",
                            style: primaryFont.copyWith(
                            fontWeight: FontWeight.bold,
                            fontSize: 13,
                            color: lightgrey,
                           ),
                         ),
                         Text("RM 56.98",
                            style: primaryFont.copyWith(
                            fontWeight: FontWeight.bold,
                            fontSize: 13,
                            color: darkGreenColor,
                           ),
                         ),
                         Container(
                          width: size.width * 0.6,
                           child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                             children: [
                               Text("Qty : 01",
                                  style: primaryFont.copyWith(
                                  //fontWeight: FontWeight.bold,
                                  fontSize: 13,
                                  color: lightgrey,
                                 ),
                               ),
                               Text("Order Complete",
                              style: primaryFont.copyWith(
                              fontWeight: FontWeight.bold,
                              fontSize: 13,
                              color: darkGreenColor,
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
                color: Colors.white,
               boxShadow: [
                       BoxShadow(
                       color: shadow,
                       blurRadius: 5.1,
                       spreadRadius: 2.2,
                       offset: Offset(0, 4),
                     ),
        ]),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20,left: 20,right: 20),
            child: Container(
              height: 110,
              width: size.width,
              child: Row(children: [
                Image(
                  height: 100,
                  width: 100,
                  image: AssetImage("assets/images/fo7.png")),
                  Padding(
                    padding: const EdgeInsets.only(top:10,bottom:10,right:5),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            SizedBox(
                              height: 5,
                              width: 20,
                              child: Checkbox(
                                activeColor: Color(0xff3F7DFC),
                                value: ischecked, 
                                onChanged: (Value){
                                  ischecked=!ischecked;
                              }),
                            ),
                            SizedBox(width: 5,),
                            Text("Bags, Purse & Wallet",
                            style: primaryFont.copyWith(
                            //fontWeight: FontWeight.bold,
                            fontSize: 13,
                            color: lightgrey,
                           ),
                         ),
                          ],
                        ),
                        Text("Ty Fashion (3-Braided Premium",
                            style: primaryFont.copyWith(
                            fontWeight: FontWeight.bold,
                            fontSize: 13,
                            color: lightgrey,
                           ),
                         ),
                         Text("RM 56.98",
                            style: primaryFont.copyWith(
                            fontWeight: FontWeight.bold,
                            fontSize: 13,
                            color: darkGreenColor,
                           ),
                         ),
                         Container(
                          width: size.width * 0.6,
                           child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                             children: [
                               Text("Qty : 01",
                                  style: primaryFont.copyWith(
                                  //fontWeight: FontWeight.bold,
                                  fontSize: 13,
                                  color: lightgrey,
                                 ),
                               ),
                               Text("Order Complete",
                              style: primaryFont.copyWith(
                              fontWeight: FontWeight.bold,
                              fontSize: 13,
                              color: darkGreenColor,
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
                color: Colors.white,
               boxShadow: [
                       BoxShadow(
                       color: shadow,
                       blurRadius: 5.1,
                       spreadRadius: 2.2,
                       offset: Offset(0, 4),
                     ),
        ]),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20,left: 20,right: 20),
            child: Container(
              height: 110,
              width: size.width,
              child: Row(children: [
                Image(
                  height: 100,
                  width: 100,
                  image: AssetImage("assets/images/fo5.png")),
                  Padding(
                    padding: const EdgeInsets.only(top:10,bottom:10,right:5),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            SizedBox(
                              height: 5,
                              width: 20,
                              child: Checkbox(
                                activeColor: Color(0xff3F7DFC),
                                value: ischecked, 
                                onChanged: (Value){
                                  ischecked=!ischecked;
                              }),
                            ),
                            SizedBox(width: 5,),
                            Text("Bags, Purse & Wallet",
                            style: primaryFont.copyWith(
                            //fontWeight: FontWeight.bold,
                            fontSize: 13,
                            color: lightgrey,
                           ),
                         ),
                          ],
                        ),
                        Text("Ty Fashion (3-Braided Premium",
                            style: primaryFont.copyWith(
                            fontWeight: FontWeight.bold,
                            fontSize: 13,
                            color: lightgrey,
                           ),
                         ),
                         Text("RM 56.98",
                            style: primaryFont.copyWith(
                            fontWeight: FontWeight.bold,
                            fontSize: 13,
                            color: darkGreenColor,
                           ),
                         ),
                         Container(
                          width: size.width * 0.6,
                           child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                             children: [
                               Text("Qty : 01",
                                  style: primaryFont.copyWith(
                                  //fontWeight: FontWeight.bold,
                                  fontSize: 13,
                                  color: lightgrey,
                                 ),
                               ),
                               Text("Order Complete",
                              style: primaryFont.copyWith(
                              fontWeight: FontWeight.bold,
                              fontSize: 13,
                              color: darkGreenColor,
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
                color: Colors.white,
               boxShadow: [
                       BoxShadow(
                       color: shadow,
                       blurRadius: 5.1,
                       spreadRadius: 2.2,
                       offset: Offset(0, 4),
                     ),
        ]),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20,left: 20,right: 20),
            child: Container(
              height: 110,
              width: size.width,
              child: Row(children: [
                Image(
                  height: 100,
                  width: 100,
                  image: AssetImage("assets/images/fo3.png")),
                  Padding(
                    padding: const EdgeInsets.only(top:10,bottom:10,right:5),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            SizedBox(
                              height: 5,
                              width: 20,
                              child: Checkbox(
                                activeColor: Color(0xff3F7DFC),
                                value: ischecked, 
                                onChanged: (Value){
                                  ischecked=!ischecked;
                              }),
                            ),
                            SizedBox(width: 5,),
                            Text("Bags, Purse & Wallet",
                            style: primaryFont.copyWith(
                            //fontWeight: FontWeight.bold,
                            fontSize: 13,
                            color: lightgrey,
                           ),
                         ),
                          ],
                        ),
                        Text("Ty Fashion (3-Braided Premium",
                            style: primaryFont.copyWith(
                            fontWeight: FontWeight.bold,
                            fontSize: 13,
                            color: lightgrey,
                           ),
                         ),
                         Text("RM 56.98",
                            style: primaryFont.copyWith(
                            fontWeight: FontWeight.bold,
                            fontSize: 13,
                            color: darkGreenColor,
                           ),
                         ),
                         Container(
                          width: size.width * 0.6,
                           child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                             children: [
                               Text("Qty : 01",
                                  style: primaryFont.copyWith(
                                  //fontWeight: FontWeight.bold,
                                  fontSize: 13,
                                  color: lightgrey,
                                 ),
                               ),
                               Text("Order Complete",
                              style: primaryFont.copyWith(
                              fontWeight: FontWeight.bold,
                              fontSize: 13,
                              color: darkGreenColor,
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
                color: Colors.white,
               boxShadow: [
                       BoxShadow(
                       color: shadow,
                       blurRadius: 5.1,
                       spreadRadius: 2.2,
                       offset: Offset(0, 4),
                     ),
        ]),
            ),
          ),
        ],
      ),
    );
  }
}