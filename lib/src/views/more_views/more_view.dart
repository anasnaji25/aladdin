
import 'package:aladdin/src/constants/app_colors.dart';
import 'package:aladdin/src/constants/app_font.dart';
import 'package:aladdin/src/views/address_views/address_view.dart';
import 'package:aladdin/src/views/frequency_asked_questions_views/frequency_asked_question_view.dart';
import 'package:aladdin/src/views/language_views/language_view.dart';
import 'package:aladdin/src/views/notification_settings_views/notification_settings_view.dart';
import 'package:aladdin/src/views/password_change_views/password_change_view.dart';
import 'package:aladdin/src/views/payment_method_views/payment_method_view.dart';
import 'package:aladdin/src/views/privacy_policy_views/privacy_policy_view.dart';
import 'package:aladdin/src/views/seller_support_tickets_views/seller_support_tickets_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';


class MoreView extends StatefulWidget {
  const MoreView({super.key});

  @override
  State<MoreView> createState() => _MoreViewState();
}

class _MoreViewState extends State<MoreView> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: greywhite,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 30,right: 30,top: 40),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
             Text("More",
                        textAlign: TextAlign.center,
                         style: primaryFont.copyWith(
                         fontWeight: FontWeight.bold,
                         fontSize: 30,
                            color: Color(0xff515C6F),),
                        ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Container(
                  height: 200,
                  width:size.width,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 18,left: 20,right: 20,bottom: 18),
                    child: Column(
                      children: [
                            InkWell(
                              onTap: (){
                                Navigator.push(context, MaterialPageRoute(builder: (context)=> AddressView()));
                              },
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      Image(image: AssetImage("assets/icons/shipping.png")),
                                      SizedBox(width: 14,),
                                       Text("Address",
                                                      textAlign: TextAlign.center,
                                                       style: primaryFont.copyWith(
                                                      // fontWeight: FontWeight.bold,
                                                       fontSize: 16,
                                color: Color(0xff515C6F),),
                                                      ),
                                    ],
                                  ),
                                  Image(image: AssetImage("assets/icons/arrow.png")),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 30,top: 5),
                              child: Divider(
                                color: shadow,
                              ),
                            ),
                            InkWell(
                              onTap: (){
                                Navigator.push(context, MaterialPageRoute(builder: (context)=> PaymentMethodView()));
                              },
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      Image(image: AssetImage("assets/icons/payment.png")),
                                      SizedBox(width: 10,),
                                       Text("Payment Method",
                                                      textAlign: TextAlign.center,
                                                       style: primaryFont.copyWith(
                                                      // fontWeight: FontWeight.bold,
                                                       fontSize: 16,
                                color: Color(0xff515C6F),),
                                                      ),
                                    ],
                                  ),
                                  Image(image: AssetImage("assets/icons/arrow.png")),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 30,top: 5),
                              child: Divider(
                                color: shadow,
                              ),
                            ),
                            InkWell(
                              onTap: (){
                                Navigator.push(context, MaterialPageRoute(builder: (context)=> SellerSupportTicket()));
                              },
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      Image(image: AssetImage("assets/icons/seller.png")),
                                      SizedBox(width: 7,),
                                       Text("Seller Support Tickets",
                                                      textAlign: TextAlign.center,
                                                       style: primaryFont.copyWith(
                                                      // fontWeight: FontWeight.bold,
                                                       fontSize: 16,
                                color: Color(0xff515C6F),),
                                                      ),
                                    ],
                                  ),
                                  Image(image: AssetImage("assets/icons/arrow.png")),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 30,top: 5),
                              child: Divider(
                                color: shadow,
                              ),
                            ),
                            InkWell(
                              onTap: (){
                                Navigator.push(context, MaterialPageRoute(builder: (context)=> PassWordChangeView()));
                              },
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      Image(image: AssetImage("assets/icons/password.png")),
                                      SizedBox(width: 10,),
                                       Text("password",
                                                      textAlign: TextAlign.center,
                                                       style: primaryFont.copyWith(
                                                      // fontWeight: FontWeight.bold,
                                                       fontSize: 16,
                                color: Color(0xff515C6F),),
                                                      ),
                                    ],
                                  ),
                                  Image(image: AssetImage("assets/icons/arrow.png")),
                                ],
                              ),
                            ),
                           
                    ]),
                  ),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [BoxShadow(
                      color: Color(0xffE7EAF0),
                      blurRadius: 8,
                      spreadRadius: 4,
                      offset: Offset(0, 10),
                      )]
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 40),
                child: Container(
                  height: 200,
                  width:size.width,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 18,left: 20,right: 20,bottom: 18),
                    child: Column(
                      children: [
                            InkWell(
                              onTap: (){
                                Navigator.push(context, MaterialPageRoute(builder: (context)=> NotificationSettingsView()));
                              },
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      Image(image: AssetImage("assets/icons/notification.png")),
                                      SizedBox(width: 12,),
                                       Text("Notification Settings",
                                                      textAlign: TextAlign.center,
                                                       style: primaryFont.copyWith(
                                                      // fontWeight: FontWeight.bold,
                                                       fontSize: 16,
                                color: Color(0xff515C6F),),
                                                      ),
                                    ],
                                  ),
                                  Image(image: AssetImage("assets/icons/arrow.png")),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 30,top: 5),
                              child: Divider(
                                color: shadow,
                              ),
                            ),
                            InkWell(
                              onTap: (){
                                Navigator.push(context, MaterialPageRoute(builder: (context)=> PrivacyPolicyView()));
                              },
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      Image(image: AssetImage("assets/icons/privacy.png")),
                                      SizedBox(width: 10,),
                                       Text("Privacy Policy",
                                                      textAlign: TextAlign.center,
                                                       style: primaryFont.copyWith(
                                                      // fontWeight: FontWeight.bold,
                                                       fontSize: 16,
                                color: Color(0xff515C6F),),
                                                      ),
                                    ],
                                  ),
                                  Image(image: AssetImage("assets/icons/arrow.png")),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 30,top: 5),
                              child: Divider(
                                color: shadow,
                              ),
                            ),
                            InkWell(
                              onTap: (){
                                Navigator.push(context, MaterialPageRoute(builder: (context)=> FrequencyAskedQuestion()));
                              },
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      Image(image: AssetImage("assets/icons/questions.png")),
                                      SizedBox(width: 9,),
                                       Text("Frequency asked Question",
                                                      textAlign: TextAlign.center,
                                                       style: primaryFont.copyWith(
                                                      // fontWeight: FontWeight.bold,
                                                       fontSize: 16,
                                color: Color(0xff515C6F),),
                                                      ),
                                    ],
                                  ),
                                  Image(image: AssetImage("assets/icons/arrow.png")),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 30,top: 5),
                              child: Divider(
                                color: shadow,
                              ),
                            ),
                            InkWell(
                              onTap: (){
                                Navigator.push(context, MaterialPageRoute(builder: (context)=> LanguageView()));
                              },
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      Image(image: AssetImage("assets/icons/language.png")),
                                      SizedBox(width: 10,),
                                       Text("Language",
                                                      textAlign: TextAlign.center,
                                                       style: primaryFont.copyWith(
                                                      // fontWeight: FontWeight.bold,
                                                       fontSize: 16,
                                color: Color(0xff515C6F),),
                                                      ),
                                    ],
                                  ),
                                  Image(image: AssetImage("assets/icons/arrow.png")),
                                ],
                              ),
                            ),
                           
                    ]),
                  ),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [BoxShadow(
                      color: Color(0xffE7EAF0),
                      blurRadius: 8,
                      spreadRadius: 4,
                      offset: Offset(0, 10),
                      )]
                  ),
                ),
              ),
              //
               SizedBox(height: 50,),
                 Center(
                   child: Container(
                    height: 45,
                    width: 160,
                    child: Center(
                      child: Text("LOG OUT",
                      textAlign: TextAlign.center,
                       style: primaryFont.copyWith(
                       fontWeight: FontWeight.bold,
                       fontSize: 18,
                          color: darkGreenColor,),
                      ),),
                    decoration: BoxDecoration(
                      border: Border.all(color: darkGreenColor),
                      borderRadius: BorderRadius.circular(35),
                    ),
                   ),
                 ),
            ]),
        ),
      ),
    );
  }
}