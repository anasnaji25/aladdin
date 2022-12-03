import 'package:aladdin/src/constants/app_colors.dart';
import 'package:aladdin/src/constants/app_font.dart';
import 'package:aladdin/src/views/privacy_policy_views/privacy_policy_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

class NotificationSettingsView extends StatefulWidget {
  const NotificationSettingsView({super.key});

  @override
  State<NotificationSettingsView> createState() => _NotificationSettingsViewState();
}

class _NotificationSettingsViewState extends State<NotificationSettingsView> {

  bool isSwitched = false; 
  bool isSwitched1 = false; 
  bool isSwitched2 = false; 

  void toggleSwitch(bool value) {  
  
    if(isSwitched == false)  
    {  
      setState(() {  
        isSwitched = true; 
      });  
    }  
    else  
    {  
      setState(() {  
        isSwitched = false; 
      });  
    }  
  } 

  void toggleSwitch1(bool value) {  
  
    if(isSwitched1 == false)  
    {  
      setState(() {  
        isSwitched1 = true; 
      });  
    }  
    else  
    {  
      setState(() {  
        isSwitched1 = false; 
      });  
    }  
  }

  void toggleSwitch2(bool value) {  
  
    if(isSwitched2 == false)  
    {  
      setState(() {  
        isSwitched2 = true; 
      });  
    }  
    else  
    {  
      setState(() {  
        isSwitched2 = false; 
      });  
    }  
  }  

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: greywhite,
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(100.0),
        child: Container(
          color: Colors.white,
          child: Column(
            children: [
              AppBar(
                backgroundColor: Colors.white,
                elevation: 0,
                centerTitle: false,
                title: Text("Notification Settings",
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
                      
              ]
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20,right: 20,top: 10),
                child: Divider(
                  thickness: 0.5,
                  color: greycolor,
                ),
              )
             
            ],
          ),
        ),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(top: 20),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Orders",
                  style: primaryFont.copyWith(
                    fontWeight: FontWeight.w600,
                    fontSize: 20,
                    color: lightgrey,
                  ),
                  ),
                  Text("Get alerts when notifications comes in",
                  style: primaryFont.copyWith(
                    fontWeight: FontWeight.w300,
                    fontSize: 14,
                    color: lightgrey,
                  ),
                  ),
                    ],
                  ),
                  Switch(  
              onChanged: toggleSwitch,  
              value: isSwitched,  
              activeColor: Color(0xff0D8446),  
              activeTrackColor: Color.fromARGB(13, 20, 124, 63),  
              inactiveThumbColor: Color(0xff515C6F),  
              inactiveTrackColor: Color.fromARGB(255, 212, 213, 214),  
            )  
                ],
              ),
              SizedBox(height: 30,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Tone",
                  style: primaryFont.copyWith(
                    fontWeight: FontWeight.w600,
                    fontSize: 20,
                    color: lightgrey,
                  ),
                  ),
                  Text("Play Cha-Ching sound on new order",
                  style: primaryFont.copyWith(
                    fontWeight: FontWeight.w300,
                    fontSize: 14,
                    color: lightgrey,
                  ),
                  ),
                    ],
                  ),
                  Switch(  
              onChanged: toggleSwitch1,  
              value: isSwitched1,  
              activeColor: Color(0xff0D8446),  
              activeTrackColor: Color.fromARGB(13, 20, 124, 63),  
              inactiveThumbColor: Color(0xff515C6F),  
              inactiveTrackColor: Color.fromARGB(255, 212, 213, 214),  
            )  
                ],
              ),
              SizedBox(height: 30,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  //next page
                  InkWell(
                    onTap: (){
                       Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const PrivacyPolicyView()),
                    );
                    },
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Products Reviews",
                    style: primaryFont.copyWith(
                      fontWeight: FontWeight.w600,
                      fontSize: 20,
                      color: lightgrey,
                    ),
                    ),
                    Text("Get alerts for new product reviews",
                    style: primaryFont.copyWith(
                      fontWeight: FontWeight.w300,
                      fontSize: 14,
                      color: lightgrey,
                    ),
                    ),
                      ],
                    ),
                  ),
                  Switch(  
              onChanged: toggleSwitch2,  
              value: isSwitched2,  
              activeColor: Color(0xff0D8446),  
              activeTrackColor: Color.fromARGB(13, 20, 124, 63),  
              inactiveThumbColor: Color(0xff515C6F),  
              inactiveTrackColor: Color.fromARGB(255, 212, 213, 214),  
            )  
                ],
              ),
              
            ],),
        )),

    );
  }
}