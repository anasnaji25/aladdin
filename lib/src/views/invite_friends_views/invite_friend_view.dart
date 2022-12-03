
import 'package:aladdin/src/constants/app_colors.dart';
import 'package:aladdin/src/constants/app_font.dart';
import 'package:aladdin/src/views/customer_support_views/customer_support_view.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class InviteFriendView extends StatefulWidget {
  const InviteFriendView({super.key});

  @override
  State<InviteFriendView> createState() => _InviteFriendViewState();
}

class _InviteFriendViewState extends State<InviteFriendView> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text("Invite Friends",
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
                 padding: const EdgeInsets.all(18.0),
                 child: Image(
                    image: AssetImage("assets/images/Group 944.png")),
               ),
               SizedBox(height: 20,),
               DottedBorder(
                strokeWidth: 1.5,
                dashPattern: [8,8],
                color: lightgrey,
                strokeCap: StrokeCap.butt,
                child: Container(
                  height: 55,
                  width: 250,
                  child: Center(
                    child: Text(
                      "SC23FF54",
                  style: primaryFont.copyWith(
          fontWeight: FontWeight.w500,
          letterSpacing: 3,
          fontSize: 35,
          color: darkGreenColor,),
                  )),
                  )),
                  SizedBox(height: 30,),
                  Text("Share your code with your friends and\n" "get exciting bonus points",
                  textAlign: TextAlign.center,
                   style: primaryFont.copyWith(
                   fontWeight: FontWeight.w500,
                   fontSize: 13,
                    color: lightgrey,),
                  ),
                  SizedBox(height: 30,),
                  Text("Or",
                  textAlign: TextAlign.center,
                   style: primaryFont.copyWith(
                   fontWeight: FontWeight.w500,
                   fontSize: 13,
                    color: lightgrey,),
                  ),
                  SizedBox(height: 30,),
                  Padding(
                    padding: const EdgeInsets.only(left: 20,right: 20),
                    child: InkWell(
                      onTap: (){
                         Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const CustomerSupportView()),
                    );
                      },
                      child: Container(
                        height: 55,
                        width: size.width,
                        child: Center(
                          child: Text("Share",
                      textAlign: TextAlign.center,
                       style: primaryFont.copyWith(
                       fontWeight: FontWeight.w500,
                       fontSize: 32,
                          color: Colors.white,),
                      ),
                        ),
                        decoration: BoxDecoration(
                          color: darkGreenColor,
                          borderRadius: BorderRadius.circular(5)
                        ),
                      ),
                    ),
                  ),
        ]),
      ),
    );
  }
}