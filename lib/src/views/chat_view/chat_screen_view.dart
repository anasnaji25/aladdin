import 'package:aladdin/src/constants/app_colors.dart';
import 'package:aladdin/src/constants/app_font.dart';
import 'package:aladdin/src/constants/helpers.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ChatScreenView extends StatefulWidget {
  const ChatScreenView({super.key});

  @override
  State<ChatScreenView> createState() => _ChatScreenViewState();
}

class _ChatScreenViewState extends State<ChatScreenView> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      height: size.height,
      width: size.width,
      decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              stops: [0.2, 0.8],
              colors: [Colors.white, Color.fromARGB(255, 225, 226, 228)])),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          leadingWidth: 55,
          leading: Row(
            children: [
              InkWell(
                onTap: () {
                  Get.back();
                },
                child: Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Container(
                    height: 35,
                    width: 35,
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
                ),
              ),
            ],
          ),
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Smily Store",
                style: primaryFont.copyWith(
                    color: Colors.black87,
                    fontWeight: FontWeight.w600,
                    fontSize: 14),
              ),
              Text(
                "Active",
                style: primaryFont.copyWith(
                    color: Colors.black45,
                    fontWeight: FontWeight.w200,
                    fontSize: 11),
              ),
            ],
          ),
          actions: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 15),
                  child: Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                        color: Colors.green.withOpacity(0.5),
                        borderRadius: BorderRadius.circular(40)),
                    alignment: Alignment.center,
                    child: Text(
                      "SS",
                      style: primaryFont.copyWith(
                          color: Colors.green.withOpacity(0.7), fontSize: 12),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
        body: ListView(
          children: [
            Divider(),
            Padding(
              padding: const EdgeInsets.only(left: 15, right: 15),
              child: Row(
                children: [
                  Container(
                    height: 80,
                    width: 80,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(70),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                              blurRadius: 2,
                              color: Colors.grey.withOpacity(0.3)),
                        ]),
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Image.asset("assets/icons/scarf_PNG48.png"),
                    ),
                  ),
                  w10,
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Order: #1084028",
                        style: primaryFont.copyWith(
                            fontWeight: FontWeight.w600, fontSize: 14),
                      ),
                      Text(
                        "Red Cotton Scarf, 2ft, Dark Red",
                        style: primaryFont.copyWith(
                            fontWeight: FontWeight.w400,
                            fontSize: 13,
                            color: Colors.black45),
                      ),
                      Text(
                        "RM 11.00",
                        style: primaryFont.copyWith(
                            fontWeight: FontWeight.w400,
                            fontSize: 13,
                            color: Colors.amber),
                      )
                    ],
                  )
                ],
              ),
            ),
            Divider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Tuesday, 9:20 AM",
                  style:
                      primaryFont.copyWith(color: Colors.black45, fontSize: 12),
                ),
              ],
            ),
            h50,
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    width: size.width * 0.43,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                              blurRadius: 2,
                              color: Colors.grey.withOpacity(0.3))
                        ]),
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            """Dear customer, your
order has been shipped. 
Please see below for the
tracking number.""",
                            style: primaryFont.copyWith(
                                color: Colors.black54, fontSize: 12),
                          ),
                          h10,
                          Text(
                            "UH2983948935B",
                            style: primaryFont.copyWith(
                                color: primaryColor,
                                decoration: TextDecoration.underline,
                                fontWeight: FontWeight.w600),
                          ),
                          h10,
                          Text(
                            """Your parcel should arrive
between 10 - 20 days. 
If you have any\n
questions, please contact
us and we will get back to
you at our earliest. """,
                            style: primaryFont.copyWith(
                                color: Colors.black54, fontSize: 12),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
        bottomNavigationBar: Container(
           width: size.width,
          padding:
              EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
          decoration: const BoxDecoration(color: Colors.white),
          child: Padding(
            padding: const EdgeInsets.only(left: 15, right: 15,bottom: 10,top: 10),
            child: Row(
              children: [
                Icon(
                  Icons.add_circle,
                  color: Colors.grey[400],
                ),
                Expanded(
                  child: Container(
                  
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: TextField(
                        decoration: InputDecoration.collapsed(
                            hintText: "Type your message"),
                      ),
                    ),
                  ),
                ),
                Icon(
                  Icons.arrow_circle_up_sharp,
                  color: primaryColor,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
