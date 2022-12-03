import 'package:aladdin/src/constants/app_colors.dart';
import 'package:aladdin/src/constants/app_font.dart';
import 'package:aladdin/src/views/language_views/language_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class FrequencyAskedQuestion extends StatefulWidget {
  const FrequencyAskedQuestion({super.key});

  @override
  State<FrequencyAskedQuestion> createState() => _FrequencyAskedQuestionState();
}

class _FrequencyAskedQuestionState extends State<FrequencyAskedQuestion> {
  @override
  Widget build(BuildContext context) {
     var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: greywhite,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: false,
        title: Text("Frequently Asked Questions",
        style: primaryFont.copyWith(
          fontWeight: FontWeight.bold,
          fontSize: 21,
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
        padding: const EdgeInsets.only(left: 20,right: 20,top: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(Icons.star_border_outlined),
                SizedBox(width: 10,),
                Text("Popular Questions",
                style: GoogleFonts.openSans(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Color(0xff434343)
                ),
                ),
              ],
            ),
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.only(left: 35),
              child: Text("Do you ship your products to EU?",
                  style: GoogleFonts.openSans(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: Color(0xff434343)
                  ),
                  ),
            ),
                SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.only(left: 35),
              child: Text("What are the shipping options?",
                  style: GoogleFonts.openSans(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: Color(0xff434343)
                  ),
                  ),
            ),
                SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.only(left: 35),
              child: Text("What are the shipping options?",
                  style: GoogleFonts.openSans(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: Color(0xff434343)
                  ),
                  ),
            ),
                SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.only(left: 35),
              child: Text("What are the international taxes, duties,etc. that I have to pay?",
                  style: GoogleFonts.openSans(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: Color(0xff434343)
                  ),
                  ),
            ),
                SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.only(left: 35),
              child: Text("When will I receive my order?",
                  style: GoogleFonts.openSans(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: Color(0xff434343)
                  ),
                  ),
            ),
                SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.only(left: 35),
              child: Text("What do I do if I never received my order?",
                  style: GoogleFonts.openSans(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: Color(0xff434343)
                  ),
                  ),
            ),
            SizedBox(height: 20,),
            Row(
              children: [
                Icon(Icons.star_border_outlined),
                SizedBox(width: 10,),
                Text("Can't find an answer?",
                style: GoogleFonts.openSans(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Color(0xff434343)
                ),
                ),
              ],
            ),
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                InkWell(
                  onTap: (){
                      Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const LanguageView()),
                    );
                  },
                  child: Container(
                    height: 100,
                    width: 150,
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.mail),
                          Text("Email us",
                  style: GoogleFonts.openSans(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff434343)
                  ),
                  ),
                        ],)),
                    decoration: BoxDecoration(
                      color: Color(0xffF1F1F1),
                    ),
                  ),
                ),
                Container(
                  height: 100,
                  width: 150,
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.phone),
                        Text("Call us",
                style: GoogleFonts.openSans(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Color(0xff434343)
                ),
                ),
                      ],)),
                  decoration: BoxDecoration(
                    color: Color(0xffF1F1F1),
                  ),
                ),
              ],
            ),
          ]),
      ),
    );
  }
}