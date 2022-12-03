import 'package:aladdin/src/constants/app_colors.dart';
import 'package:aladdin/src/constants/app_font.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';


class LanguageView extends StatefulWidget {
  const LanguageView({super.key});

  @override
  State<LanguageView> createState() => _LanguageViewState();
}

class _LanguageViewState extends State<LanguageView> {
  @override
  Widget build(BuildContext context) {
     var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: false,
        title: Text("Language",
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
      body: Column(
        children: [
           Padding(
                    padding: const EdgeInsets.only(left: 25,right: 25,top: 20),
                    child: InkWell(
                      onTap: (){
                    //      Navigator.push(
                    //   context,
                    //   MaterialPageRoute(builder: (context) => const AddressView()),
                    // );
                      },
                      child: Container(
                        height: 50,
                        width: size.width,
                        child: Center(
                          child: Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Row(
                              children: [
                                Text("Select Language",
                     // textAlign: TextAlign.start,
                     textDirection: TextDirection.rtl,
                       style: primaryFont.copyWith(
                       fontWeight: FontWeight.w500,
                       fontSize: 21,
                                color: Colors.white,),
                      ),
                              ],
                            ),
                          ),
                        ),
                        decoration: BoxDecoration(
                          color: darkGreenColor,
                          borderRadius: BorderRadius.circular(2)
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 35,right: 35,top: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("English",
                         style: primaryFont.copyWith(
                         fontSize: 18,
                         color: lightgrey,
                       ),
                     ),
                        Container(
                        height: 20,
                         width: 20,
                        decoration: BoxDecoration(
                         //color: greycolor,
                          border: Border.all(color: greycolor),
                        borderRadius: BorderRadius.circular(10)
                         ),
                      ),
                      ],
                    ),
                  ),
                   Padding(
                     padding: const EdgeInsets.only(left: 25,right: 25),
                     child: Divider(
                      //color: lightgrey,
                     ),
                   ),
                   Padding(
                    padding: const EdgeInsets.only(left: 35,right: 35,top: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("اورادهو",
                         style: primaryFont.copyWith(
                         fontSize: 18,
                         color: lightgrey,
                       ),
                     ),
                        Container(
                        height: 20,
                         width: 20,
                        decoration: BoxDecoration(
                         //color: greycolor,
                          border: Border.all(color: greycolor),
                        borderRadius: BorderRadius.circular(10)
                         ),
                      ),
                      ],
                    ),
                  ),
                   Padding(
                     padding: const EdgeInsets.only(left: 25,right: 25),
                     child: Divider(
                      //color: lightgrey,
                     ),
                   ),
                   Padding(
                    padding: const EdgeInsets.only(left: 35,right: 35,top: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("മലയാളം",
                         style: primaryFont.copyWith(
                         fontSize: 18,
                         color: lightgrey,
                       ),
                     ),
                        Container(
                        height: 20,
                         width: 20,
                        decoration: BoxDecoration(
                         //color: greycolor,
                          border: Border.all(color: greycolor),
                        borderRadius: BorderRadius.circular(10)
                         ),
                      ),
                      ],
                    ),
                  ),
                   Padding(
                     padding: const EdgeInsets.only(left: 25,right: 25),
                     child: Divider(
                      //color: lightgrey,
                     ),
                   ),
                   Padding(
                    padding: const EdgeInsets.only(left: 35,right: 35,top: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("русский",
                         style: primaryFont.copyWith(
                         fontSize: 18,
                         color: lightgrey,
                       ),
                     ),
                        Container(
                        height: 20,
                         width: 20,
                        decoration: BoxDecoration(
                         //color: greycolor,
                          border: Border.all(color: greycolor),
                        borderRadius: BorderRadius.circular(10)
                         ),
                      ),
                      ],
                    ),
                  ),
                   Padding(
                     padding: const EdgeInsets.only(left: 25,right: 25),
                     child: Divider(
                      //color: lightgrey,
                     ),
                   ),
                   Padding(
                    padding: const EdgeInsets.only(left: 35,right: 35,top: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("ಕನ್ನಡ",
                         style: primaryFont.copyWith(
                         fontSize: 18,
                         color: lightgrey,
                       ),
                     ),
                        Container(
                        height: 20,
                         width: 20,
                        decoration: BoxDecoration(
                         //color: greycolor,
                          border: Border.all(color: greycolor),
                        borderRadius: BorderRadius.circular(10)
                         ),
                      ),
                      ],
                    ),
                  ),
                   Padding(
                     padding: const EdgeInsets.only(left: 25,right: 25),
                     child: Divider(
                      //color: lightgrey,
                     ),
                   ),
                   Padding(
                    padding: const EdgeInsets.only(left: 35,right: 35,top: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("हिन्दी",
                         style: primaryFont.copyWith(
                         fontSize: 18,
                         color: lightgrey,
                       ),
                     ),
                        Container(
                        height: 20,
                         width: 20,
                        decoration: BoxDecoration(
                         //color: greycolor,
                          border: Border.all(color: greycolor),
                        borderRadius: BorderRadius.circular(10)
                         ),
                      ),
                      ],
                    ),
                  ),
                   Padding(
                     padding: const EdgeInsets.only(left: 25,right: 25),
                     child: Divider(
                      //color: lightgrey,
                     ),
                   ),
                   Padding(
                    padding: const EdgeInsets.only(left: 35,right: 35,top: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("française",
                         style: primaryFont.copyWith(
                         fontSize: 18,
                         color: lightgrey,
                       ),
                     ),
                        Container(
                        height: 20,
                         width: 20,
                        decoration: BoxDecoration(
                         //color: greycolor,
                          border: Border.all(color: greycolor),
                        borderRadius: BorderRadius.circular(10)
                         ),
                      ),
                      ],
                    ),
                  ),
                   Padding(
                     padding: const EdgeInsets.only(left: 25,right: 25),
                     child: Divider(
                      //color: lightgrey,
                     ),
                   ),
                   Padding(
                    padding: const EdgeInsets.only(left: 35,right: 35,top: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("தமிழ்",
                         style: primaryFont.copyWith(
                         fontSize: 18,
                         color: lightgrey,
                       ),
                     ),
                        Container(
                        height: 20,
                         width: 20,
                        decoration: BoxDecoration(
                         //color: greycolor,
                          border: Border.all(color: greycolor),
                        borderRadius: BorderRadius.circular(10)
                         ),
                      ),
                      ],
                    ),
                  ),
                   Padding(
                     padding: const EdgeInsets.only(left: 25,right: 25),
                     child: Divider(
                      //color: lightgrey,
                     ),
                   ),
                   Padding(
                    padding: const EdgeInsets.only(left: 35,right: 35,top: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("ગુજરાતી",
                         style: primaryFont.copyWith(
                         fontSize: 18,
                         color: lightgrey,
                       ),
                     ),
                        Container(
                        height: 20,
                         width: 20,
                        decoration: BoxDecoration(
                         //color: greycolor,
                          border: Border.all(color: greycolor),
                        borderRadius: BorderRadius.circular(10)
                         ),
                      ),
                      ],
                    ),
                  ),
                   Padding(
                     padding: const EdgeInsets.only(left: 25,right: 25),
                     child: Divider(
                      //color: lightgrey,
                     ),
                   ),
                   Padding(
                    padding: const EdgeInsets.only(left: 35,right: 35,top: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("اورادهو",
                         style: primaryFont.copyWith(
                         fontSize: 18,
                         color: lightgrey,
                       ),
                     ),
                        Container(
                        height: 20,
                         width: 20,
                        decoration: BoxDecoration(
                         //color: greycolor,
                          border: Border.all(color: greycolor),
                        borderRadius: BorderRadius.circular(10)
                         ),
                      ),
                      ],
                    ),
                  ),
                   Padding(
                     padding: const EdgeInsets.only(left: 25,right: 25),
                     child: Divider(
                      //color: lightgrey,
                     ),
                   ),
        ],)

    );
  }
}