
import 'package:aladdin/src/constants/app_colors.dart';
import 'package:aladdin/src/constants/app_font.dart';
import 'package:aladdin/src/controllers/address_controller.dart';
import 'package:aladdin/src/views/payment_method_views/payment_method_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

class AddressView extends StatefulWidget {
  const AddressView({super.key});

  @override
  State<AddressView> createState() => _AddressViewState();
}

class _AddressViewState extends State<AddressView> {

  final addressController = Get.find<AddressController>();

   bool isCheked = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    addressController.isActive(true);
  }

  @override
   Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: greywhite,
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(150.0),
        child: Container(
          color: Colors.white,
          child: Column(
            children: [
              AppBar(
                backgroundColor: Colors.white,
                elevation: 0,
                centerTitle: false,
                title: Text("Address",
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
                       ),
              ],

              ),
              Obx( () =>
                 Padding(
                  padding: const EdgeInsets.only(left: 20,right: 20,top: 20),
                  child: Container(
                    height: 55,
                    width: size.width,
                    child: Row(
                      children: [
                        InkWell(
                          onTap: (){
                            addressController.isActive(true);
                          },
                          child: Container(
                            height: 55,
                            width: 175.2,
                            child: Center(
                              child:Text("Billing Address",
                        textAlign: TextAlign.center,
                         style: primaryFont.copyWith(
                         fontWeight: FontWeight.w500,
                         fontSize: 17,
                            color: addressController.isActive.isTrue ? Colors.white : lightgrey,),
                        ), ),
                           decoration: BoxDecoration(
                            color: addressController.isActive.isTrue ? darkGreenColor : Colors.white,
                           // border: Border.all(color: greycolor),
                            borderRadius: BorderRadius.circular(35),
                          ),
                          ),
                        ),
                        InkWell(
                          onTap: (){
                            addressController.isActive(false);
                          },
                          child: Container(
                            height: 55,
                            width: 175.4,
                            child: Center(
                              child:Text("Shipping Address",
                        textAlign: TextAlign.center,
                         style: primaryFont.copyWith(
                         fontWeight: FontWeight.w500,
                         fontSize: 17,
                            color: addressController.isActive.isFalse ? Colors.white : lightgrey,),
                        ), ), 
                           decoration: BoxDecoration(
                            color: addressController.isActive.isFalse ? darkGreenColor : Colors.white,
                           // border: Border.all(color: greycolor),
                            borderRadius: BorderRadius.circular(35),
                          ),
                          ),
                        ),
                      ],
                    ),
                    decoration: BoxDecoration(
                      border: Border.all(color: greycolor),
                      borderRadius: BorderRadius.circular(35),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      body: Center(
        child: Obx(()=>
           ListView(
            //crossAxisAlignment: CrossAxisAlignment.start,
            shrinkWrap: true,
            children: [
                         Padding(
                           padding: const EdgeInsets.only(left: 25,top: 20),
                           child: Text("First name *",
                        textAlign: TextAlign.start,
                           style: primaryFont.copyWith(
                           //fontWeight: FontWeight.w500,
                           fontSize: 18,
                              color: greycolor),
                        ),
                         ),
                     Padding(
                                  padding: const EdgeInsets.only(right: 25,left: 25),
                                  child: Container(
                                    height: 45,
                                    width: size.width,
                                    child: TextFormField(
                                      // controller: emailController,
                                      cursorColor: greycolor,
                                      keyboardType: TextInputType.emailAddress,
                                      decoration: InputDecoration(
                                        filled: true,
                                        fillColor: Colors.white,
                                       focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5),
                            borderSide: BorderSide(color: greycolor,width: 1.5)
                          ),
                          enabledBorder:OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5),
                            borderSide: BorderSide(color: Color(0xff515C6F),width:0.9),
                          ), 
                          isDense: true,
                                        // hintText: "Billing email",
                                        // hintStyle: GoogleFonts.montserrat(
                                        //     //color: const Color(0xff517937),
                                        //     ),
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                           padding: const EdgeInsets.only(left: 25,top: 10),
                           child: Text("Last name *",
                        textAlign: TextAlign.start,
                           style: primaryFont.copyWith(
                           //fontWeight: FontWeight.w500,
                           fontSize: 18,
                              color: greycolor),
                        ),
                         ),
                     Padding(
                                  padding: const EdgeInsets.only(right: 25,left: 25),
                                  child: Container(
                                    height: 45,
                                    width: size.width,
                                    child: TextFormField(
                                      // controller: emailController,
                                      cursorColor: greycolor,
                                      keyboardType: TextInputType.emailAddress,
                                      decoration: InputDecoration(
                                        filled: true,
                                        fillColor: Colors.white,
                                       focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5),
                            borderSide: BorderSide(color: greycolor,width: 1.5)
                          ),
                          enabledBorder:OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5),
                            borderSide: BorderSide(color: Color(0xff515C6F),width:0.9),
                          ), 
                          isDense: true,
                                        // hintText: "Billing email",
                                        // hintStyle: GoogleFonts.montserrat(
                                        //     //color: const Color(0xff517937),
                                        //     ),
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                           padding: const EdgeInsets.only(left: 25,top: 10),
                           child: Text("Country / Region",
                        textAlign: TextAlign.start,
                           style: primaryFont.copyWith(
                           //fontWeight: FontWeight.w500,
                           fontSize: 18,
                              color: greycolor),
                        ),
                         ),
                     Padding(
                                  padding: const EdgeInsets.only(right: 25,left: 25),
                                  child: Container(
                                    height: 45,
                                    width: size.width,
                                    child: TextFormField(
                                      // controller: emailController,
                                      cursorColor: greycolor,
                                      keyboardType: TextInputType.emailAddress,
                                      decoration: InputDecoration(
                                        filled: true,
                                        fillColor: Colors.white,
                                       focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5),
                            borderSide: BorderSide(color: greycolor,width: 1.5)
                          ),
                          enabledBorder:OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5),
                            borderSide: BorderSide(color: Color(0xff515C6F),width:0.9),
                          ), 
                          isDense: true,
                                        // hintText: "Billing email",
                                        // hintStyle: GoogleFonts.montserrat(
                                        //     //color: const Color(0xff517937),
                                        //     ),
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                           padding: const EdgeInsets.only(left: 25,top: 10),
                           child: Text("Street address *",
                        textAlign: TextAlign.start,
                           style: primaryFont.copyWith(
                           //fontWeight: FontWeight.w500,
                           fontSize: 18,
                              color: greycolor),
                        ),
                         ),
                     Padding(
                                  padding: const EdgeInsets.only(right: 25,left: 25),
                                  child: Container(
                                    height: 45,
                                    width: size.width,
                                    child: TextFormField(
                                      // controller: emailController,
                                      cursorColor: greycolor,
                                      keyboardType: TextInputType.emailAddress,
                                      decoration: InputDecoration(
                                        filled: true,
                                        fillColor: Colors.white,
                                       focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5),
                            borderSide: BorderSide(color: greycolor,width: 1.5)
                          ),
                          enabledBorder:OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5),
                            borderSide: BorderSide(color: Color(0xff515C6F),width:0.9),
                          ), 
                          isDense: true,
                                        // hintText: "Billing email",
                                        // hintStyle: GoogleFonts.montserrat(
                                        //     //color: const Color(0xff517937),
                                        //     ),
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                           padding: const EdgeInsets.only(left: 25,top: 10),
                           child: Text("Town / City *",
                        textAlign: TextAlign.start,
                           style: primaryFont.copyWith(
                           //fontWeight: FontWeight.w500,
                           fontSize: 18,
                              color: greycolor),
                        ),
                         ),
                     Padding(
                                  padding: const EdgeInsets.only(right: 25,left: 25),
                                  child: Container(
                                    height: 45,
                                    width: size.width,
                                    child: TextFormField(
                                      // controller: emailController,
                                      cursorColor: greycolor,
                                      keyboardType: TextInputType.emailAddress,
                                      decoration: InputDecoration(
                                        filled: true,
                                        fillColor: Colors.white,
                                       focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5),
                            borderSide: BorderSide(color: greycolor,width: 1.5)
                          ),
                          enabledBorder:OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5),
                            borderSide: BorderSide(color: Color(0xff515C6F),width:0.9),
                          ), 
                          isDense: true,
                                        // hintText: "Billing email",
                                        // hintStyle: GoogleFonts.montserrat(
                                        //     //color: const Color(0xff517937),
                                        //     ),
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                           padding: const EdgeInsets.only(left: 25,top: 10),
                           child: Text("State / Country *",
                        textAlign: TextAlign.start,
                           style: primaryFont.copyWith(
                           //fontWeight: FontWeight.w500,
                           fontSize: 18,
                              color: greycolor),
                        ),
                         ),
                     Padding(
                                  padding: const EdgeInsets.only(right: 25,left: 25),
                                  child: Container(
                                    height: 45,
                                    width: size.width,
                                    child: TextFormField(
                                      // controller: emailController,
                                      cursorColor: greycolor,
                                      keyboardType: TextInputType.emailAddress,
                                      decoration: InputDecoration(
                                        filled: true,
                                        fillColor: Colors.white,
                                       focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5),
                            borderSide: BorderSide(color: greycolor,width: 1.5)
                          ),
                          enabledBorder:OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5),
                            borderSide: BorderSide(color: Color(0xff515C6F),width:0.9),
                          ), 
                          isDense: true,
                                        // hintText: "Billing email",
                                        // hintStyle: GoogleFonts.montserrat(
                                        //     //color: const Color(0xff517937),
                                        //     ),
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                           padding: const EdgeInsets.only(left: 25,top: 10),
                           child: Text("Postcode / Zip *",
                        textAlign: TextAlign.start,
                           style: primaryFont.copyWith(
                           //fontWeight: FontWeight.w500,
                           fontSize: 18,
                              color: greycolor),
                        ),
                         ),
                     Padding(
                                  padding: const EdgeInsets.only(right: 25,left: 25),
                                  child: Container(
                                    height: 45,
                                    width: size.width,
                                    child: TextFormField(
                                      // controller: emailController,
                                      cursorColor: greycolor,
                                      keyboardType: TextInputType.emailAddress,
                                      decoration: InputDecoration(
                                        filled: true,
                                        fillColor: Colors.white,
                                       focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5),
                            borderSide: BorderSide(color: greycolor,width: 1.5)
                          ),
                          enabledBorder:OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5),
                            borderSide: BorderSide(color: Color(0xff515C6F),width:0.9),
                          ), 
                          isDense: true,
                                        // hintText: "Billing email",
                                        // hintStyle: GoogleFonts.montserrat(
                                        //     //color: const Color(0xff517937),
                                        //     ),
                                      ),
                                    ),
                                  ),
                                ),
                                if(addressController.isActive.isTrue)
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                           padding: const EdgeInsets.only(left: 25,top: 10),
                           child: Text("Phone *",
                        textAlign: TextAlign.start,
                           style: primaryFont.copyWith(
                           //fontWeight: FontWeight.w500,
                           fontSize: 18,
                              color: greycolor),
                        ),
                         ),
                     Padding(
                                  padding: const EdgeInsets.only(right: 25,left: 25),
                                  child: Container(
                                    height: 45,
                                    width: size.width,
                                    child: TextFormField(
                                      // controller: emailController,
                                      cursorColor: greycolor,
                                      keyboardType: TextInputType.emailAddress,
                                      decoration: InputDecoration(
                                        filled: true,
                                        fillColor: Colors.white,
                                       focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5),
                            borderSide: BorderSide(color: greycolor,width: 1.5)
                          ),
                          enabledBorder:OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5),
                            borderSide: BorderSide(color: Color(0xff515C6F),width:0.9),
                          ), 
                          isDense: true,
                                        // hintText: "Billing email",
                                        // hintStyle: GoogleFonts.montserrat(
                                        //     //color: const Color(0xff517937),
                                        //     ),
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                           padding: const EdgeInsets.only(left: 25,top: 10),
                           child: Text("Email address *",
                        textAlign: TextAlign.start,
                           style: primaryFont.copyWith(
                           //fontWeight: FontWeight.w500,
                           fontSize: 18,
                              color: greycolor),
                        ),
                         ),
                     Padding(
                                  padding: const EdgeInsets.only(right: 25,left: 25),
                                  child: Container(
                                    height: 45,
                                    width: size.width,
                                    child: TextFormField(
                                      // controller: emailController,
                                      cursorColor: greycolor,
                                      keyboardType: TextInputType.emailAddress,
                                      decoration: InputDecoration(
                                        filled: true,
                                        fillColor: Colors.white,
                                       focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5),
                            borderSide: BorderSide(color: greycolor,width: 1.5)
                          ),
                          enabledBorder:OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5),
                            borderSide: BorderSide(color: Color(0xff515C6F),width:0.9),
                          ), 
                          isDense: true,
                                        // hintText: "Billing email",
                                        // hintStyle: GoogleFonts.montserrat(
                                        //     //color: const Color(0xff517937),
                                        //     ),
                                      ),
                                    ),
                                  ),
                                ),
                                  ],
                                ),
                                SizedBox(height: 10,),
                                Padding(
                                  padding: const EdgeInsets.only(left: 10),
                                  child: Row(
                                    children: [
                                       Checkbox(
                                        activeColor: Color(0xff517937),
                                        value: isCheked,
                                        onChanged: (value) {
                                          setState(() {
                                            isCheked = !isCheked;
                                          });
                                        }),
                                        Text("Subscribe me to email newsletter (optional)",
                        textAlign: TextAlign.start,
                           style: primaryFont.copyWith(
                           //fontWeight: FontWeight.w500,
                           fontSize: 13,
                              color: greycolor),
                        ),
                                    ],
                                  ),
                                ),
                                 SizedBox(height: 30,),
                    Padding(
                      padding: const EdgeInsets.only(left: 25,right: 25),
                      child: InkWell(
                        onTap: (){
                           Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const PaymentMethodView()),
                      );
                        },
                        child: Container(
                          height: 47,
                          width: size.width,
                          child: Center(
                            child: Text("Save Address",
                        textAlign: TextAlign.center,
                         style: primaryFont.copyWith(
                         //fontWeight: FontWeight.w500,
                         fontSize: 16,
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
            ],
          ),
        ),
      ),
      
    );
  }
}
