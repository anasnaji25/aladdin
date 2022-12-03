
import 'package:aladdin/src/constants/app_colors.dart';
import 'package:aladdin/src/constants/app_font.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';


class EditProfileView extends StatefulWidget {
  const EditProfileView({super.key});

  @override
  State<EditProfileView> createState() => _EditProfileViewState();
}

class _EditProfileViewState extends State<EditProfileView> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: greywhite,
              body: SafeArea(
                child: ListView(
                  shrinkWrap: true,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 10,top: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          InkWell(
                  onTap: (){
                      Get.back();
                  },
                   child: Image(
                      image: AssetImage("assets/icons/Group 168.png")),
                 ),
                        ],
                      ),
                    ),
                    Center(
                      child: Stack(
                        children: [
                         Image(image: AssetImage("assets/images/photo.png")),
                         Padding(
                           padding: const EdgeInsets.only(left: 165,top: 155),
                           child: Container(
                            height: 45,
                            width: 45,
                            child: Center(child: Icon(Icons.camera_alt)),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(25)
                            ),
                           ),
                         ),
                         ]),
                    ),
                       Padding(
                           padding: const EdgeInsets.only(left: 25,top: 20),
                           child: Text("Name",
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
                                         hintText: "Jack sun",
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
                                         hintText: "aladdin1my@email.com",
                                        // hintStyle: GoogleFonts.montserrat(
                                        //     //color: const Color(0xff517937),
                                        //     ),
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                           padding: const EdgeInsets.only(left: 25,top: 10),
                           child: Text("Phone Number",
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
                                         hintText: "8976890981",
                                        // hintStyle: GoogleFonts.montserrat(
                                        //     //color: const Color(0xff517937),
                                        //     ),
                                      ),
                                    ),
                                  ),
                                ),
                                  SizedBox(height: 30,),
                  Padding(
                    padding: const EdgeInsets.only(left: 55,right: 55),
                    child: InkWell(
                      onTap: (){
                    //      Navigator.push(
                    //   context,
                    //   MaterialPageRoute(builder: (context) => const TrackYourOrder()),
                    // );
                      },
                      child: Container(
                        height: 50,
                        width: size.width,
                        child: Center(
                          child: Text("Update",
                      textAlign: TextAlign.center,
                       style: primaryFont.copyWith(
                       fontWeight: FontWeight.w600,
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
                 Padding(
                   padding: const EdgeInsets.only(left: 55,right: 55),
                   child: Container(
                    height: 50,
                    width: size.width,
                    child: Center(
                      child: Text("Cancel",
                      textAlign: TextAlign.center,
                       style: primaryFont.copyWith(
                       fontWeight: FontWeight.w600,
                       fontSize: 21,
                          color: lightgrey,),
                      ),),
                    decoration: BoxDecoration(
                      border: Border.all(color: lightgrey),
                      borderRadius: BorderRadius.circular(5),
                    ),
                   ),
                 ),
                  ],
                ),
              ),
    );
  }
}