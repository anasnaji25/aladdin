import 'package:aladdin/src/constants/app_colors.dart';
import 'package:aladdin/src/constants/app_font.dart';
import 'package:aladdin/src/views/password_change_views/password_change_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class SellerSupportTicket extends StatefulWidget {
  const SellerSupportTicket({super.key});

  @override
  State<SellerSupportTicket> createState() => _SellerSupportTicketState();
}

class _SellerSupportTicketState extends State<SellerSupportTicket> {
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
                title: Text("Seller Support Tickets",
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
              
              Padding(
                padding: const EdgeInsets.only(left: 15,right: 15,top: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      height: 40,
                      width: 110,
                      child:  Center(
                        child: Text("All Tickets",
                        style: primaryFont.copyWith(
                          color: lightgrey,
                          fontSize: 14
                        ),
                        ),),
                      decoration: BoxDecoration(
                        border: Border.all(color: greycolor),
                        borderRadius: BorderRadius.circular(25)
                      ),
                    ),
                    Container(
                      height: 40,
                      width: 110,
                      child: Center(
                        child: Text("Open Tickets",
                        style: primaryFont.copyWith(
                          color: lightgrey,
                          fontSize: 14
                        ),
                        ),),
                      decoration: BoxDecoration(
                        border: Border.all(color: greycolor),
                        borderRadius: BorderRadius.circular(25)
                      ),
                    ),
                    Container(
                      height: 40,
                      width: 110,
                      child: Center(
                        child: Text("Closed Tickets",
                        style: primaryFont.copyWith(
                          color: lightgrey,
                          fontSize: 14
                        ),
                        ),),
                      decoration: BoxDecoration(
                        border: Border.all(color: greycolor),
                        borderRadius: BorderRadius.circular(25)
                      ),
                    ),
                  ],
                ),
              ),
              
            ],
          ),
        ),
      ),
      body: Center(
        child: 
        Padding(
          padding: const EdgeInsets.only(top: 60),
          child: Column(
            children: [
             Image(height: 300,
              image: AssetImage("assets/images/download.png"),),
              SizedBox(height: 30,),
              InkWell(
                onTap: (){
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const PassWordChangeView()),);
                },
                child: Text("No tickets found!",
                          style: primaryFont.copyWith(
                            color: lightgrey,
                            fontSize: 23
                          ),
                          ),
              ),
            ],
          ),
        )
      ),

    );
  }
}