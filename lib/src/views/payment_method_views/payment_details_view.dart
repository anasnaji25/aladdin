import 'package:aladdin/src/constants/app_colors.dart';
import 'package:aladdin/src/constants/app_font.dart';
import 'package:aladdin/src/views/seller_support_tickets_views/seller_support_tickets_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class PaymentDetailView extends StatefulWidget {
  const PaymentDetailView({super.key});

  @override
  State<PaymentDetailView> createState() => _PaymentDetailViewState();
}

class _PaymentDetailViewState extends State<PaymentDetailView> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: greywhite,
      appBar: AppBar(
        backgroundColor: greywhite,
        elevation: 0,
        centerTitle: false,
        title: Text("Payment Method",
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
              padding: const EdgeInsets.only(left: 15,right: 15,top: 20),
              child: Container(
                height: 70,
                width: size.width,
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 15,right: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image(image: AssetImage("assets/images/Group 3.png")),
                        Icon(Icons.fork_right_rounded)
                      ],),
                  )),
                decoration: BoxDecoration(
                  color: Colors.white,
                  
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(left: 15,right: 15,top: 5),
              child: Container(
                height: 600,
                width: size.width,
                child: Center(
                  child: Column(
                  children: [
                   Padding(
                   padding: const EdgeInsets.only(left: 30,right: 30,top: 20),
                   child: Container(
                    height: 55,
                    width: size.width,
                    child: Center(
                      child: Text("Scan Card",
                      textAlign: TextAlign.center,
                       style: GoogleFonts.karla(
                       fontWeight: FontWeight.bold,
                       fontSize: 20,
                          color: lightgrey,),
                      ),),
                    decoration: BoxDecoration(
                      border: Border.all(color: lightgrey),
                      borderRadius: BorderRadius.circular(25),
                    ),
                   ),
                 ),
                 SizedBox(height: 10,),
                 Text("Or",
                      textAlign: TextAlign.center,
                       style: GoogleFonts.karla(
                       //fontWeight: FontWeight.bold,
                       fontSize: 15,
                          color: Colors.black,),
                      ),
                      SizedBox(height: 10,),
                      Padding(
                                padding: const EdgeInsets.only(right: 30,left: 30),
                                child: Container(
                                  height: 50,
                                  width: size.width,
                                  child: TextFormField(
                                     //controller:nameController,
                                    cursorColor: darkGreenColor,
                                     keyboardType: TextInputType.name,
                                        inputFormatters: [
                                          FilteringTextInputFormatter.allow(
                                              RegExp("[0-9]"))
                                        ],
                                    decoration: InputDecoration(
                                     focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                          borderSide: BorderSide(color: darkGreenColor,width: 1.5)
                        ),
                        enabledBorder:OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                          borderSide: BorderSide(color: shadow,width:0.9),
                        ), 
                        isDense: true,
                                      hintText: "CARD NUMBER",
                                      hintStyle: GoogleFonts.karla(
                                      fontWeight: FontWeight.bold,
                                      color: shadow
                                          //color: const Color(0xff517937),
                                          ),
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 30,left: 30,top: 20),
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
                          borderSide: BorderSide(color: shadow,width:0.9),
                        ), 
                        isDense: true,
                                      hintText: "CARDHOLDING NAME",
                                      hintStyle: 
                                      
                                    GoogleFonts.karla(
                                      fontWeight: FontWeight.bold,
                                      color: shadow
                                          //color: const Color(0xff517937),
                                          ),
                                    ),
                                  ),
                                ),
                              ),
                              Row(
                                children: [
                                  Padding(
                                padding: const EdgeInsets.only(right: 0,left: 30,top: 20),
                                child: Container(
                                  height: 50,
                                  width: 70,
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
                          borderSide: BorderSide(color: shadow,width:0.9),
                        ), 
                        isDense: true,
                                      hintText: "MM",
                                      hintStyle: 
                                      
                                    GoogleFonts.karla(
                                      fontWeight: FontWeight.bold,
                                      color: shadow
                                          //color: const Color(0xff517937),
                                          ),
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 0,left: 10,top: 20),
                                child: Container(
                                  height: 50,
                                  width: 100,
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
                          borderSide: BorderSide(color: shadow,width:0.9),
                        ), 
                        isDense: true,
                                      hintText: "YYYY",
                                      hintStyle: 
                                      
                                    GoogleFonts.karla(
                                      fontWeight: FontWeight.bold,
                                      color: shadow
                                          //color: const Color(0xff517937),
                                          ),
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 0,left: 23,top: 20),
                                child: Container(
                                  height: 50,
                                  width: 100,
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
                          borderSide: BorderSide(color: shadow,width:0.9),
                        ), 
                        isDense: true,
                                      hintText: "CVV",
                                      hintStyle: 
                                      
                                    GoogleFonts.karla(
                                      fontWeight: FontWeight.bold,
                                      color: shadow
                                          //color: const Color(0xff517937),
                                          ),
                                    ),
                                  ),
                                ),
                              ),
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 20,top: 20,bottom: 30),
                                child: Row(
                                  children: [
                                    Icon(Icons.arrow_right),
                                    Text("Save credit card information",
                      textAlign: TextAlign.center,
                       style: GoogleFonts.karla(
                       //fontWeight: FontWeight.bold,
                       fontSize: 15,
                          color: Colors.black,),
                      ),
                                  ],
                                ),
                              ),
                      Padding(
                    padding: const EdgeInsets.only(left: 30,right: 30,top: 20),
                    child: InkWell(
                      onTap: (){
                         Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const SellerSupportTicket()),
                    );
                      },
                      child: Container(
                        height: 55,
                        width: size.width,
                        child: Center(
                          child: Text("Done",
                      textAlign: TextAlign.center,
                       style: GoogleFonts.karla(
                       fontWeight: FontWeight.bold,
                       fontSize: 20,
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
                      Padding(
                   padding: const EdgeInsets.only(left: 30,right: 30,top: 20),
                   child: Container(
                    height: 55,
                    width: size.width,
                    child: Center(
                      child: Text("Back",
                      textAlign: TextAlign.center,
                       style: GoogleFonts.karla(
                       fontWeight: FontWeight.bold,
                       fontSize: 20,
                          color: lightgrey,),
                      ),),
                    decoration: BoxDecoration(
                      border: Border.all(color: lightgrey),
                      borderRadius: BorderRadius.circular(25),
                    ),
                   ),
                 ),
                ],),
                
                ),
                decoration: BoxDecoration(
                  color: Colors.white
                ),

              ),
            ),
            
            
          ])),
    );
  }
}