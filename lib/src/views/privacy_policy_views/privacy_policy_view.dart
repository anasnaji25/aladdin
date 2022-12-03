import 'package:aladdin/src/constants/app_colors.dart';
import 'package:aladdin/src/constants/app_font.dart';
import 'package:aladdin/src/views/frequency_asked_questions_views/frequency_asked_question_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

class PrivacyPolicyView extends StatefulWidget {
  const PrivacyPolicyView({super.key});

  @override
  State<PrivacyPolicyView> createState() => _PrivacyPolicyViewState();
}

class _PrivacyPolicyViewState extends State<PrivacyPolicyView> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: false,
        title: Text("Privacy Policy",
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
        padding: const EdgeInsets.only(left: 20,right: 20,top: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
               Text("Terms Of Service",
                    style: primaryFont.copyWith(
                      fontWeight: FontWeight.w600,
                      fontSize: 21,
                      color: lightgrey,
                    ),
                    ),
                    SizedBox(height: 5,),
                    Text(
                      "The main difference here is that a Privacy\n" "Policy is required by law if you collect or use\n" "any personal information from your users, e.g. email addresses, first and last names etc. while a Terms & Conditions agreement sets forth terms, conditions, requirements, and clauses relating to the use of your website or mobile/desktop app, e.g. copyright protection, account terminations in cases of abuses, and so on.",
                    style: primaryFont.copyWith(
                     // fontWeight: FontWeight.w600,
                      fontSize: 16,
                      color: lightgrey,
                    ),
                    ),
                    SizedBox(height: 15,),
                    Text(
                      "Depending on your website or mobile/desktop app, you'll need either a Privacy Policy agreement and a Terms and Conditions (T&C) agreement, or both.",
                    style: primaryFont.copyWith(
                     // fontWeight: FontWeight.w600,
                      fontSize: 16,
                      color: lightgrey,
                    ),
                    ),
                    SizedBox(height: 15,),
                    Text(
                      "Each of these two legal agreements serves different purposes for both you (the company operating the website/mobile app) and your users.",
                    style: primaryFont.copyWith(
                     // fontWeight: FontWeight.w600,
                      fontSize: 16,
                      color: lightgrey,
                    ),
                    ),
                    SizedBox(height: 15,),
                    Text(
                      "This article will break down the differences further so you know which to use and when.",
                    style: primaryFont.copyWith(
                     // fontWeight: FontWeight.w600,
                      fontSize: 16,
                      color: lightgrey,
                    ),
                    ),
                    SizedBox(height: 20,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        InkWell(
                          onTap: (){
                             Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const FrequencyAskedQuestion()),
                        );
                          },
                          child: Container(
                            height: 45,
                            width: 150,
                            child: Center(
                              child: Text("I Accept",
                          textAlign: TextAlign.center,
                           style: primaryFont.copyWith(
                           fontWeight: FontWeight.w500,
                           fontSize: 20,
                              color: Colors.white,),
                          ),
                            ),
                            decoration: BoxDecoration(
                              color: Color(0xff5CB85C),
                              borderRadius: BorderRadius.circular(2)
                            ),
                          ),
                        ),
                        Container(
                    height: 45,
                    width: 150,
                    child: Center(
                      child: Text("I Decline",
                      textAlign: TextAlign.center,
                       style: primaryFont.copyWith(
                       fontWeight: FontWeight.w500,
                       fontSize: 20,
                          color: lightgrey,),
                      ),),
                    decoration: BoxDecoration(
                      border: Border.all(color: lightgrey),
                      borderRadius: BorderRadius.circular(2),
                    ),
                   ),
                      ],
                    ),
        ]),
      ),
    );
  }
}