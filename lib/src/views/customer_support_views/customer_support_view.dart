import 'package:aladdin/src/constants/app_colors.dart';
import 'package:aladdin/src/constants/app_font.dart';
import 'package:aladdin/src/views/rate_our_app_views/rate_our_app_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';


class CustomerSupportView extends StatefulWidget {
  const CustomerSupportView({super.key});

  @override
  State<CustomerSupportView> createState() => _CustomerSupportViewState();
}

class _CustomerSupportViewState extends State<CustomerSupportView> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: false,
        title: Text("Customer Support",
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
      body:Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 40),
              child: Image(
                      image: AssetImage("assets/images/Group 372.png")),
            ),
            SizedBox(height: 20,),
            Padding(
                                padding: const EdgeInsets.only(right: 25,left: 25),
                                child: Container(
                                  height: 50,
                                  width: size.width,
                                  child: TextFormField(
                                     //controller:nameController,
                                    cursorColor: darkGreenColor,
                                     keyboardType: TextInputType.name,
                                        inputFormatters: [
                                          FilteringTextInputFormatter.allow(
                                              RegExp("[a-z A-Z]"))
                                        ],
                                    decoration: InputDecoration(
                                     focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                          borderSide: BorderSide(color: darkGreenColor,width: 1.5)
                        ),
                        enabledBorder:OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                          borderSide: BorderSide(color: Color(0xff515C6F),width:0.9),
                        ), 
                        isDense: true,
                                      hintText: "Enter name",
                                      hintStyle: GoogleFonts.montserrat(
                                          //color: const Color(0xff517937),
                                          ),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(height: 10,),
              Padding(
                                padding: const EdgeInsets.only(right: 25,left: 25),
                                child: Container(
                                  height: 50,
                                  width: size.width,
                                  child: TextFormField(
                                    // controller: emailController,
                                    cursorColor: darkGreenColor,
                                    keyboardType: TextInputType.emailAddress,
                                    decoration: InputDecoration(
                                     focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                          borderSide: BorderSide(color: darkGreenColor,width: 1.5)
                        ),
                        enabledBorder:OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                          borderSide: BorderSide(color: Color(0xff515C6F),width:0.9),
                        ), 
                        isDense: true,
                                      hintText: "Email ID",
                                      hintStyle: GoogleFonts.montserrat(
                                          //color: const Color(0xff517937),
                                          ),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(height: 10,),
              Padding(
                                padding: const EdgeInsets.only(right: 25,left: 25),
                                child: Container(
                                  height: 100,
                                  width: size.width,
                                  child: TextFormField(
                                    maxLines: 500,
                                    // controller: messageController,
                                    cursorColor: darkGreenColor,
                                    decoration: InputDecoration(
                                     focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                          borderSide: BorderSide(color: darkGreenColor,width: 1.5)
                        ),
                        enabledBorder:OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                          borderSide: BorderSide(color: Color(0xff515C6F),width:0.9),
                        ), 
                        isDense: true,
                                      hintText: "Message",
                                      hintStyle: GoogleFonts.montserrat(
                                          //color: const Color(0xff517937),
                                          ),
                                    ),
                                  ),
                                ),
                              ),
                               SizedBox(height: 30,),
                  Padding(
                    padding: const EdgeInsets.only(left: 25,right: 25),
                    child: InkWell(
                      onTap: (){
                         Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const RateOurApp()),
                    );
                      },
                      child: Container(
                        height: 55,
                        width: size.width,
                        child: Center(
                          child: Text("submit",
                      textAlign: TextAlign.center,
                       style: primaryFont.copyWith(
                       fontWeight: FontWeight.w500,
                       fontSize: 21,
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
                  SizedBox(height: 20,),
                  Text("Or",
                  textAlign: TextAlign.center,
                   style: primaryFont.copyWith(
                   fontWeight: FontWeight.w500,
                   fontSize: 13,
                    color: lightgrey,),
                  ),
                  SizedBox(height: 20,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image(image: AssetImage("assets/images/email.png")),
                      SizedBox(width: 40,),
                      Image(image: AssetImage("assets/images/phone.png")),
                    ],),
          ],
          )),
    );
  }
}