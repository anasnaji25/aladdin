import 'package:aladdin/src/constants/app_colors.dart';
import 'package:aladdin/src/constants/app_font.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class NotificationView extends StatefulWidget {
  const NotificationView({super.key});

  @override
  State<NotificationView> createState() => _NotificationViewState();
}

class _NotificationViewState extends State<NotificationView> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: false,
        title: Text("Notifications",
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
      body: Padding(
        padding: const EdgeInsets.only(left: 10,right: 15),
        child: ListView(
          shrinkWrap: true,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Image(image: AssetImage("assets/images/icon.png")),
                Padding(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      RichText(text: TextSpan(
                        text: "Smiley Store",
                        style: GoogleFonts.poppins(
                          fontSize: 15,
                          fontWeight: FontWeight.w600,
                          color: lightgrey,
                        ),
                        children: <TextSpan>[
                          TextSpan(
                             text: " marked your",
                        style: GoogleFonts.poppins(
                          fontSize: 15,
                          fontWeight: FontWeight.w300,
                          color: lightgrey,
                        ),
                          ),
                        ]
                      ),
                      ),
                      RichText(text: TextSpan(
                        text: "order",
                        style: GoogleFonts.poppins(
                          fontSize: 15,
                          fontWeight: FontWeight.w300,
                          color: lightgrey,
                        ),
                        children: <TextSpan>[
                          TextSpan(
                             text: " #1096754",
                        style: GoogleFonts.poppins(
                          fontSize: 15,
                          fontWeight: FontWeight.w600,
                          color: darkGreenColor,
                        ),
                          ),
                          TextSpan(
                             text: " as",
                        style: GoogleFonts.poppins(
                          fontSize: 15,
                          fontWeight: FontWeight.w300,
                          color: lightgrey,
                          
                        ),
                          ),
                          TextSpan(
                             text: " Shipped",
                        style: GoogleFonts.poppins(
                          fontSize: 15,
                          fontWeight: FontWeight.w600,
                          color: lightgrey,
                          
                        ),
                          ),
                        ]
                      ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 18),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text("9:20 AM",
        style: primaryFont.copyWith(
          fontWeight: FontWeight.w200,
          fontSize: 13,
          color: lightgrey,
        ),
        ),
        Container(
          height: 10,
          width: 10,
          decoration: BoxDecoration(
            color: Colors.red,
            borderRadius: BorderRadius.circular(5)
          ),
        ),
                    ],
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 80),
              child: Divider(
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Image(image: AssetImage("assets/images/icon s.png")),
                Padding(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      RichText(text: TextSpan(
                        text: "Smiley Store",
                        style: GoogleFonts.poppins(
                          fontSize: 15,
                          fontWeight: FontWeight.w600,
                          color: lightgrey,
                        ),
                        children: <TextSpan>[
                          TextSpan(
                             text: " marked your",
                        style: GoogleFonts.poppins(
                          fontSize: 15,
                          fontWeight: FontWeight.w300,
                          color: lightgrey,
                        ),
                          ),
                        ]
                      ),
                      ),
                      RichText(text: TextSpan(
                        text: "order",
                        style: GoogleFonts.poppins(
                          fontSize: 15,
                          fontWeight: FontWeight.w300,
                          color: lightgrey,
                        ),
                        children: <TextSpan>[
                          TextSpan(
                             text: " #1096754",
                        style: GoogleFonts.poppins(
                          fontSize: 15,
                          fontWeight: FontWeight.w600,
                          color: darkGreenColor,
                        ),
                          ),
                          TextSpan(
                             text: " as",
                        style: GoogleFonts.poppins(
                          fontSize: 15,
                          fontWeight: FontWeight.w300,
                          color: lightgrey,
                          
                        ),
                          ),
                          TextSpan(
                             text: " Shipped",
                        style: GoogleFonts.poppins(
                          fontSize: 15,
                          fontWeight: FontWeight.w600,
                          color: lightgrey,
                          
                        ),
                          ),
                        ]
                      ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 18),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text("yesterday",
        style: primaryFont.copyWith(
          fontWeight: FontWeight.w200,
          fontSize: 12,
          color: lightgrey,
        ),
        ),
        // Container(
        //   height: 10,
        //   width: 10,
        //   decoration: BoxDecoration(
        //     color: Colors.red,
        //     borderRadius: BorderRadius.circular(5)
        //   ),
        // ),
                    ],
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 80),
              child: Divider(
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Image(image: AssetImage("assets/images/ici.png")),
                Padding(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      RichText(text: TextSpan(
                        text: "Smiley Store",
                        style: GoogleFonts.poppins(
                          fontSize: 15,
                          fontWeight: FontWeight.w600,
                          color: lightgrey,
                        ),
                        children: <TextSpan>[
                          TextSpan(
                             text: " marked your",
                        style: GoogleFonts.poppins(
                          fontSize: 15,
                          fontWeight: FontWeight.w300,
                          color: lightgrey,
                        ),
                          ),
                        ]
                      ),
                      ),
                      RichText(text: TextSpan(
                        text: "order",
                        style: GoogleFonts.poppins(
                          fontSize: 15,
                          fontWeight: FontWeight.w300,
                          color: lightgrey,
                        ),
                        children: <TextSpan>[
                          TextSpan(
                             text: " #1096754",
                        style: GoogleFonts.poppins(
                          fontSize: 15,
                          fontWeight: FontWeight.w600,
                          color: darkGreenColor,
                        ),
                          ),
                          TextSpan(
                             text: " as",
                        style: GoogleFonts.poppins(
                          fontSize: 15,
                          fontWeight: FontWeight.w300,
                          color: lightgrey,
                          
                        ),
                          ),
                          TextSpan(
                             text: " Shipped",
                        style: GoogleFonts.poppins(
                          fontSize: 15,
                          fontWeight: FontWeight.w600,
                          color: lightgrey,
                          
                        ),
                          ),
                        ]
                      ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 18),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text("10 oct",
        style: primaryFont.copyWith(
          fontWeight: FontWeight.w200,
          fontSize: 13,
          color: lightgrey,
        ),
        ),
        // Container(
        //   height: 10,
        //   width: 10,
        //   decoration: BoxDecoration(
        //     color: Colors.red,
        //     borderRadius: BorderRadius.circular(5)
        //   ),
        // ),
                    ],
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 80),
              child: Divider(
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Image(image: AssetImage("assets/images/icon.png")),
                Padding(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      RichText(text: TextSpan(
                        text: "Smiley Store",
                        style: GoogleFonts.poppins(
                          fontSize: 15,
                          fontWeight: FontWeight.w600,
                          color: lightgrey,
                        ),
                        children: <TextSpan>[
                          TextSpan(
                             text: " marked your",
                        style: GoogleFonts.poppins(
                          fontSize: 15,
                          fontWeight: FontWeight.w300,
                          color: lightgrey,
                        ),
                          ),
                        ]
                      ),
                      ),
                      RichText(text: TextSpan(
                        text: "order",
                        style: GoogleFonts.poppins(
                          fontSize: 15,
                          fontWeight: FontWeight.w300,
                          color: lightgrey,
                        ),
                        children: <TextSpan>[
                          TextSpan(
                             text: " #1096754",
                        style: GoogleFonts.poppins(
                          fontSize: 15,
                          fontWeight: FontWeight.w600,
                          color: darkGreenColor,
                        ),
                          ),
                          TextSpan(
                             text: " as",
                        style: GoogleFonts.poppins(
                          fontSize: 15,
                          fontWeight: FontWeight.w300,
                          color: lightgrey,
                          
                        ),
                          ),
                          TextSpan(
                             text: " Shipped",
                        style: GoogleFonts.poppins(
                          fontSize: 15,
                          fontWeight: FontWeight.w600,
                          color: lightgrey,
                          
                        ),
                          ),
                        ]
                      ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 18),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text("9:20 AM",
        style: primaryFont.copyWith(
          fontWeight: FontWeight.w200,
          fontSize: 13,
          color: lightgrey,
        ),
        ),
        Container(
          height: 10,
          width: 10,
          decoration: BoxDecoration(
            color: Colors.red,
            borderRadius: BorderRadius.circular(5)
          ),
        ),
                    ],
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 80),
              child: Divider(
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Image(image: AssetImage("assets/images/icon s.png")),
                Padding(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      RichText(text: TextSpan(
                        text: "Smiley Store",
                        style: GoogleFonts.poppins(
                          fontSize: 15,
                          fontWeight: FontWeight.w600,
                          color: lightgrey,
                        ),
                        children: <TextSpan>[
                          TextSpan(
                             text: " marked your",
                        style: GoogleFonts.poppins(
                          fontSize: 15,
                          fontWeight: FontWeight.w300,
                          color: lightgrey,
                        ),
                          ),
                        ]
                      ),
                      ),
                      RichText(text: TextSpan(
                        text: "order",
                        style: GoogleFonts.poppins(
                          fontSize: 15,
                          fontWeight: FontWeight.w300,
                          color: lightgrey,
                        ),
                        children: <TextSpan>[
                          TextSpan(
                             text: " #1096754",
                        style: GoogleFonts.poppins(
                          fontSize: 15,
                          fontWeight: FontWeight.w600,
                          color: darkGreenColor,
                        ),
                          ),
                          TextSpan(
                             text: " as",
                        style: GoogleFonts.poppins(
                          fontSize: 15,
                          fontWeight: FontWeight.w300,
                          color: lightgrey,
                          
                        ),
                          ),
                          TextSpan(
                             text: " Shipped",
                        style: GoogleFonts.poppins(
                          fontSize: 15,
                          fontWeight: FontWeight.w600,
                          color: lightgrey,
                          
                        ),
                          ),
                        ]
                      ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 18),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text("20 nov",
        style: primaryFont.copyWith(
          fontWeight: FontWeight.w200,
          fontSize: 13,
          color: lightgrey,
        ),
        ),
        // Container(
        //   height: 10,
        //   width: 10,
        //   decoration: BoxDecoration(
        //     color: Colors.red,
        //     borderRadius: BorderRadius.circular(5)
        //   ),
        // ),
                    ],
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 80),
              child: Divider(
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Image(image: AssetImage("assets/images/ici.png")),
                Padding(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      RichText(text: TextSpan(
                        text: "Smiley Store",
                        style: GoogleFonts.poppins(
                          fontSize: 15,
                          fontWeight: FontWeight.w600,
                          color: lightgrey,
                        ),
                        children: <TextSpan>[
                          TextSpan(
                             text: " marked your",
                        style: GoogleFonts.poppins(
                          fontSize: 15,
                          fontWeight: FontWeight.w300,
                          color: lightgrey,
                        ),
                          ),
                        ]
                      ),
                      ),
                      RichText(text: TextSpan(
                        text: "order",
                        style: GoogleFonts.poppins(
                          fontSize: 15,
                          fontWeight: FontWeight.w300,
                          color: lightgrey,
                        ),
                        children: <TextSpan>[
                          TextSpan(
                             text: " #1096754",
                        style: GoogleFonts.poppins(
                          fontSize: 15,
                          fontWeight: FontWeight.w600,
                          color: darkGreenColor,
                        ),
                          ),
                          TextSpan(
                             text: " as",
                        style: GoogleFonts.poppins(
                          fontSize: 15,
                          fontWeight: FontWeight.w300,
                          color: lightgrey,
                          
                        ),
                          ),
                          TextSpan(
                             text: " Shipped",
                        style: GoogleFonts.poppins(
                          fontSize: 15,
                          fontWeight: FontWeight.w600,
                          color: lightgrey,
                          
                        ),
                          ),
                        ]
                      ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 18),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text("20 sep",
        style: primaryFont.copyWith(
          fontWeight: FontWeight.w200,
          fontSize: 13,
          color: lightgrey,
        ),
        ),
        // Container(
        //   height: 10,
        //   width: 10,
        //   decoration: BoxDecoration(
        //     color: Colors.red,
        //     borderRadius: BorderRadius.circular(5)
        //   ),
        // ),
                    ],
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 80),
              child: Divider(
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Image(image: AssetImage("assets/images/icon.png")),
                Padding(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      RichText(text: TextSpan(
                        text: "Smiley Store",
                        style: GoogleFonts.poppins(
                          fontSize: 15,
                          fontWeight: FontWeight.w600,
                          color: lightgrey,
                        ),
                        children: <TextSpan>[
                          TextSpan(
                             text: " marked your",
                        style: GoogleFonts.poppins(
                          fontSize: 15,
                          fontWeight: FontWeight.w300,
                          color: lightgrey,
                        ),
                          ),
                        ]
                      ),
                      ),
                      RichText(text: TextSpan(
                        text: "order",
                        style: GoogleFonts.poppins(
                          fontSize: 15,
                          fontWeight: FontWeight.w300,
                          color: lightgrey,
                        ),
                        children: <TextSpan>[
                          TextSpan(
                             text: " #1096754",
                        style: GoogleFonts.poppins(
                          fontSize: 15,
                          fontWeight: FontWeight.w600,
                          color: darkGreenColor,
                        ),
                          ),
                          TextSpan(
                             text: " as",
                        style: GoogleFonts.poppins(
                          fontSize: 15,
                          fontWeight: FontWeight.w300,
                          color: lightgrey,
                          
                        ),
                          ),
                          TextSpan(
                             text: " Shipped",
                        style: GoogleFonts.poppins(
                          fontSize: 15,
                          fontWeight: FontWeight.w600,
                          color: lightgrey,
                          
                        ),
                          ),
                        ]
                      ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 18),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text("9:20 AM",
        style: primaryFont.copyWith(
          fontWeight: FontWeight.w200,
          fontSize: 13,
          color: lightgrey,
        ),
        ),
        Container(
          height: 10,
          width: 10,
          decoration: BoxDecoration(
            color: Colors.red,
            borderRadius: BorderRadius.circular(5)
          ),
        ),
                    ],
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 80),
              child: Divider(
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Image(image: AssetImage("assets/images/ici.png")),
                Padding(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      RichText(text: TextSpan(
                        text: "Smiley Store",
                        style: GoogleFonts.poppins(
                          fontSize: 15,
                          fontWeight: FontWeight.w600,
                          color: lightgrey,
                        ),
                        children: <TextSpan>[
                          TextSpan(
                             text: " marked your",
                        style: GoogleFonts.poppins(
                          fontSize: 15,
                          fontWeight: FontWeight.w300,
                          color: lightgrey,
                        ),
                          ),
                        ]
                      ),
                      ),
                      RichText(text: TextSpan(
                        text: "order",
                        style: GoogleFonts.poppins(
                          fontSize: 15,
                          fontWeight: FontWeight.w300,
                          color: lightgrey,
                        ),
                        children: <TextSpan>[
                          TextSpan(
                             text: " #1096754",
                        style: GoogleFonts.poppins(
                          fontSize: 15,
                          fontWeight: FontWeight.w600,
                          color: darkGreenColor,
                        ),
                          ),
                          TextSpan(
                             text: " as",
                        style: GoogleFonts.poppins(
                          fontSize: 15,
                          fontWeight: FontWeight.w300,
                          color: lightgrey,
                          
                        ),
                          ),
                          TextSpan(
                             text: " Shipped",
                        style: GoogleFonts.poppins(
                          fontSize: 15,
                          fontWeight: FontWeight.w600,
                          color: lightgrey,
                          
                        ),
                          ),
                        ]
                      ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 18),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text("9:20 AM",
        style: primaryFont.copyWith(
          fontWeight: FontWeight.w200,
          fontSize: 13,
          color: lightgrey,
        ),
        ),
        // Container(
        //   height: 10,
        //   width: 10,
        //   decoration: BoxDecoration(
        //     color: Colors.red,
        //     borderRadius: BorderRadius.circular(5)
        //   ),
        // ),
                    ],
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 80),
              child: Divider(
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Image(image: AssetImage("assets/images/icon s.png")),
                Padding(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      RichText(text: TextSpan(
                        text: "Smiley Store",
                        style: GoogleFonts.poppins(
                          fontSize: 15,
                          fontWeight: FontWeight.w600,
                          color: lightgrey,
                        ),
                        children: <TextSpan>[
                          TextSpan(
                             text: " marked your",
                        style: GoogleFonts.poppins(
                          fontSize: 15,
                          fontWeight: FontWeight.w300,
                          color: lightgrey,
                        ),
                          ),
                        ]
                      ),
                      ),
                      RichText(text: TextSpan(
                        text: "order",
                        style: GoogleFonts.poppins(
                          fontSize: 15,
                          fontWeight: FontWeight.w300,
                          color: lightgrey,
                        ),
                        children: <TextSpan>[
                          TextSpan(
                             text: " #1096754",
                        style: GoogleFonts.poppins(
                          fontSize: 15,
                          fontWeight: FontWeight.w600,
                          color: darkGreenColor,
                        ),
                          ),
                          TextSpan(
                             text: " as",
                        style: GoogleFonts.poppins(
                          fontSize: 15,
                          fontWeight: FontWeight.w300,
                          color: lightgrey,
                          
                        ),
                          ),
                          TextSpan(
                             text: " Shipped",
                        style: GoogleFonts.poppins(
                          fontSize: 15,
                          fontWeight: FontWeight.w600,
                          color: lightgrey,
                          
                        ),
                          ),
                        ]
                      ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 18),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text("7 may",
        style: primaryFont.copyWith(
          fontWeight: FontWeight.w200,
          fontSize: 13,
          color: lightgrey,
        ),
        ),
        // Container(
        //   height: 10,
        //   width: 10,
        //   decoration: BoxDecoration(
        //     color: Colors.red,
        //     borderRadius: BorderRadius.circular(5)
        //   ),
        // ),
                    ],
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 80),
              child: Divider(
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Image(image: AssetImage("assets/images/icon.png")),
                Padding(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      RichText(text: TextSpan(
                        text: "Smiley Store",
                        style: GoogleFonts.poppins(
                          fontSize: 15,
                          fontWeight: FontWeight.w600,
                          color: lightgrey,
                        ),
                        children: <TextSpan>[
                          TextSpan(
                             text: " marked your",
                        style: GoogleFonts.poppins(
                          fontSize: 15,
                          fontWeight: FontWeight.w300,
                          color: lightgrey,
                        ),
                          ),
                        ]
                      ),
                      ),
                      RichText(text: TextSpan(
                        text: "order",
                        style: GoogleFonts.poppins(
                          fontSize: 15,
                          fontWeight: FontWeight.w300,
                          color: lightgrey,
                        ),
                        children: <TextSpan>[
                          TextSpan(
                             text: " #1096754",
                        style: GoogleFonts.poppins(
                          fontSize: 15,
                          fontWeight: FontWeight.w600,
                          color: darkGreenColor,
                        ),
                          ),
                          TextSpan(
                             text: " as",
                        style: GoogleFonts.poppins(
                          fontSize: 15,
                          fontWeight: FontWeight.w300,
                          color: lightgrey,
                          
                        ),
                          ),
                          TextSpan(
                             text: " Shipped",
                        style: GoogleFonts.poppins(
                          fontSize: 15,
                          fontWeight: FontWeight.w600,
                          color: lightgrey,
                          
                        ),
                          ),
                        ]
                      ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 18),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text("9:20 AM",
        style: primaryFont.copyWith(
          fontWeight: FontWeight.w200,
          fontSize: 13,
          color: lightgrey,
        ),
        ),
        Container(
          height: 10,
          width: 10,
          decoration: BoxDecoration(
            color: Colors.red,
            borderRadius: BorderRadius.circular(5)
          ),
        ),
                    ],
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 80),
              child: Divider(
              ),
            ),
        ]),
      ),
    );
  }
}