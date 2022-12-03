import 'package:aladdin/src/constants/app_colors.dart';
import 'package:aladdin/src/constants/app_font.dart';
import 'package:aladdin/src/constants/helpers.dart';
import 'package:aladdin/src/controllers/home_controller.dart';
import 'package:aladdin/src/views/product_view/product_details_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MessageListView extends StatefulWidget {
  const MessageListView({super.key});

  @override
  State<MessageListView> createState() => _MessageListViewState();
}

class _MessageListViewState extends State<MessageListView> {
  final homeController = Get.find<HomeController>();

  bool showResult = false;
  var textEditingController = TextEditingController();

  @override
  void initState() {
    super.initState();

    textEditingController.addListener(listenForShowing);
  }

  listenForShowing() {
    if (textEditingController.text.isNotEmpty) {
      setState(() {
        showResult = true;
      });
    } else {
      setState(() {
        showResult = false;
      });
    }
  }

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
              stops: [0.3, 0.7],
              colors: [Colors.white, Color.fromARGB(255, 225, 226, 228)])),
      child: Scaffold(
          backgroundColor: Colors.transparent,
          appBar: PreferredSize(
            preferredSize: const Size.fromHeight(150.0),
            child: Column(
              children: [
                AppBar(
                  elevation: 0,
                  backgroundColor: Colors.white,
                  leadingWidth: 10,
                  title: Text(
                    "Messages",
                    style: primaryFont.copyWith(
                        fontSize: 25,
                        fontWeight: FontWeight.w900,
                        color: Colors.black54),
                  ),
                  actions: [
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
                Padding(
                  padding: const EdgeInsets.only(left: 15, right: 15),
                  child: Container(
                    height: 55,
                    width: size.width,
                    decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.circular(20)),
                    alignment: Alignment.center,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 15),
                      child: TextField(
                        controller: textEditingController,
                        decoration: InputDecoration.collapsed(
                            hintStyle: primaryFont.copyWith(
                              color: Colors.grey[500],
                            ),
                            hintText: "Search Conversations"),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          body: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 15,right: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Container(
                          height: 65,
                          width: 65,
                          decoration: BoxDecoration(
                              color: Colors.green.withOpacity(0.5),
                              borderRadius: BorderRadius.circular(40)),
                          alignment: Alignment.center,
                          child: Text(
                            "SS",
                            style: primaryFont.copyWith(
                                color: Colors.green.withOpacity(0.7),
                                fontSize: 20),
                          ),
                        ),
                        w10,
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Smiley's Store",
                              style: primaryFont.copyWith(
                                  color: Colors.black,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w600),
                            ),
                            Text(
                              """Lorem ipsum dolor sit amet,
consectetur adipiscing elit, sed""",
                              style: primaryFont.copyWith(
                                  color: Colors.black45, fontSize: 12),
                            )
                          ],
                        )
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "9:23 AM",
                          style: primaryFont.copyWith(color: Colors.grey),
                        ),
                        h20,
                        Container(
                          height: 15,
                          width: 15,
                          decoration: BoxDecoration(
                              color: Colors.red,
                              borderRadius: BorderRadius.circular(20)),
                          alignment: Alignment.center,
                          child: Text(
                            "5",
                            style: primaryFont.copyWith(
                                color: Colors.white, fontSize: 11),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
              Divider(),
              Padding(
                padding: const EdgeInsets.only(left: 15,right: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Container(
                          height: 65,
                          width: 65,
                          decoration: BoxDecoration(
                              color: Colors.blue.withOpacity(0.5),
                              borderRadius: BorderRadius.circular(40)),
                          alignment: Alignment.center,
                          child: Text(
                            "BS",
                            style: primaryFont.copyWith(
                                color: Colors.blue.withOpacity(0.7),
                                fontSize: 20),
                          ),
                        ),
                        w10,
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Beauty Suppliers Store",
                              style: primaryFont.copyWith(
                                  color: Colors.black,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w600),
                            ),
                            Text(
                              """Lorem ipsum dolor sit amet,
consectetur adipiscing elit, sed""",
                              style: primaryFont.copyWith(
                                  color: Colors.black45, fontSize: 12),
                            )
                          ],
                        )
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "9:23 AM",
                          style: primaryFont.copyWith(color: Colors.grey),
                        ),
                        h20,
                        // Container(
                        //   height: 15,
                        //   width: 15,
                        //   decoration: BoxDecoration(
                        //       color: Colors.red,
                        //       borderRadius: BorderRadius.circular(20)),
                        //   alignment: Alignment.center,
                        //   child: Text(
                        //     "5",
                        //     style: primaryFont.copyWith(
                        //         color: Colors.white, fontSize: 11),
                        //   ),
                        // )
                      ],
                    )
                  ],
                ),
              ),
            ],
          )),
    );
  }
}
