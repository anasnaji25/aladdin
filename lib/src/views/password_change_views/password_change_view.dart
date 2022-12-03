import 'package:aladdin/src/constants/app_colors.dart';
import 'package:aladdin/src/constants/app_font.dart';
import 'package:aladdin/src/views/notification_settings_views/notification_settings_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

class PassWordChangeView extends StatefulWidget {
  const PassWordChangeView({super.key});

  @override
  State<PassWordChangeView> createState() => _PassWordChangeViewState();
}

class _PassWordChangeViewState extends State<PassWordChangeView> {

  bool _isHidden = true;
  bool _isHidden1 = true;
  bool _isHidden2 = true;

  void _togglePasswordView() {
    setState(() {
      _isHidden = !_isHidden;
    });
  }

  void _togglePasswordView1() {
    setState(() {
      _isHidden1 = !_isHidden1;
    });
  }

  void _togglePasswordView2() {
    setState(() {
      _isHidden2 = !_isHidden2;
    });
  }


  TextEditingController currentPasswordController = TextEditingController();
  TextEditingController newPasswordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();
  
  bool iscurrentPwd = true;
  bool isnewPwd = true;
  bool isconfirmPwd = true;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    currentPasswordController.addListener(validateCurrentPwd);
    newPasswordController.addListener(validateNewPwd);
    confirmPasswordController.addListener(validateConfirmPwd);
  }

  validateCurrentPwd (){
     if(currentPasswordController.text.length > 7){
         setState(() {
           iscurrentPwd = true;
         });
     }else{
         setState(() {
           iscurrentPwd = false;
         });
     }
  }

  validateNewPwd (){
    if(newPasswordController.text.length > 7){
         setState(() {
           isnewPwd = true;
         });
     }else{
         setState(() {
           isnewPwd = false;
         });
     }
  }

  validateConfirmPwd (){
    if(confirmPasswordController.text.length > 7){
         setState(() {
           isconfirmPwd = true;
         });
     }else{
         setState(() {
           isconfirmPwd = false;
         });
     }
  }


  @override
  Widget build(BuildContext context) {
   var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: false,
        title: Text("Password change",
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
        padding: const EdgeInsets.only(left: 20,right: 20,top: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
              Text("Current Password",
          style: primaryFont.copyWith(
            fontWeight: FontWeight.bold,
            fontSize: 23,
            color: lightgrey,
          ),
          ),
           Text("(leave blank to leave unchanged)",
          style: primaryFont.copyWith(
            fontWeight: FontWeight.bold,
            fontSize: 13,
            color: lightgrey,
          ),
          ),
          Padding(
                                  padding: const EdgeInsets.only(top: 10),
                                  child: Container(
                                    height: 50,
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
                            borderRadius: BorderRadius.circular(2),
                            borderSide: BorderSide(color: Color(0xff515C6F),width:0.9),
                          ), 
                          isDense: true,
                          suffixIcon: Icon(Icons.remove_red_eye)
                                        // hintText: "Billing email",
                                        // hintStyle: GoogleFonts.montserrat(
                                        //     //color: const Color(0xff517937),
                                        //     ),
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(height: 20,),
                                 Text("New Password",
          style: primaryFont.copyWith(
            fontWeight: FontWeight.bold,
            fontSize: 23,
            color: lightgrey,
          ),
          ),
           Text("(leave blank to leave unchanged)",
          style: primaryFont.copyWith(
            fontWeight: FontWeight.bold,
            fontSize: 13,
            color: lightgrey,
          ),
          ),
          Padding(
                                  padding: const EdgeInsets.only(top: 10),
                                  child: Container(
                                    height: 50,
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
                            borderRadius: BorderRadius.circular(2),
                            borderSide: BorderSide(color: Color(0xff515C6F),width:0.9),
                          ), 
                          isDense: true,
                          suffixIcon: Icon(Icons.remove_red_eye)
                                        // hintText: "Billing email",
                                        // hintStyle: GoogleFonts.montserrat(
                                        //     //color: const Color(0xff517937),
                                        //     ),
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(height: 20,),
                                 Text("Confirm New Password",
          style: primaryFont.copyWith(
            fontWeight: FontWeight.bold,
            fontSize: 23,
            color: lightgrey,
          ),
          ),
           
          Padding(
                                  padding: const EdgeInsets.only(top: 10),
                                  child: Container(
                                    height: 50,
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
                            borderRadius: BorderRadius.circular(2),
                            borderSide: BorderSide(color: Color(0xff515C6F),width:0.9),
                          ), 
                          isDense: true,
                          suffixIcon: Icon(Icons.remove_red_eye)
                                        // hintText: "Billing email",
                                        // hintStyle: GoogleFonts.montserrat(
                                        //     //color: const Color(0xff517937),
                                        //     ),
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(height: 80,),
                  Padding(
                    padding: const EdgeInsets.only(left: 15,right: 15),
                    child: InkWell(
                      onTap: (){
                         Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const NotificationSettingsView()),
                    );
                      },
                      child: Container(
                        height: 55,
                        width: size.width,
                        child: Center(
                          child: Text("Save Changes",
                      textAlign: TextAlign.center,
                       style: primaryFont.copyWith(
                       //fontWeight: FontWeight.w500,
                       fontSize: 28,
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
                   padding: const EdgeInsets.only(left: 15,right: 15),
                   child: Container(
                    height: 55,
                    width: size.width,
                    child: Center(
                      child: Text("Cancel",
                      textAlign: TextAlign.center,
                       style: primaryFont.copyWith(
                      // fontWeight: FontWeight.w500,
                       fontSize: 28,
                          color: lightgrey,),
                      ),),
                    decoration: BoxDecoration(
                      border: Border.all(color: lightgrey),
                      borderRadius: BorderRadius.circular(5),
                    ),
                   ),
                 ),
        ]),
      ),
      
      
    );
  }
}