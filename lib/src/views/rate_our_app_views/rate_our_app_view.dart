import 'package:aladdin/src/constants/app_colors.dart';
import 'package:aladdin/src/constants/app_font.dart';
import 'package:aladdin/src/views/track_your_order_views/track_your_order_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';


class RateOurApp extends StatefulWidget {
  const RateOurApp({super.key});

  @override
  State<RateOurApp> createState() => _RateOurAppState();
}

class _RateOurAppState extends State<RateOurApp> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: false,
        title: Text("Rate Our App",
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
                      image: AssetImage("assets/images/Group 454.png")),
            ),
            SizedBox(height: 20,),
            RatingBar.builder(
                                       initialRating: 0,
                                       minRating: 0,
                                       itemSize: 40,
                                       glow: true,
                                       direction: Axis.horizontal,
                                       allowHalfRating: false,
                                       itemCount: 5,
                                       itemPadding: EdgeInsets.symmetric(horizontal: 2.0),
                                       itemBuilder: (context, _) => Icon(
                                       Icons.star_border_outlined,
                                       color: Colors.amber,
                                          ),
                                          
                                       onRatingUpdate: (rating) {
                                        //ratingController.productRating(product_id:widget.productData.id.toString(),rating:rating.toString());
                                       print(rating);
                                            },
                                         ),
                                         SizedBox(height: 10,),
                                         Text("Tap a Star to Rate",
                      textAlign: TextAlign.center,
                       style: primaryFont.copyWith(
                       fontWeight: FontWeight.w500,
                       fontSize: 13,
                          color: lightgrey,),
                      ),
                              SizedBox(height: 15,),
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
                                      hintText: "Title",
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
                                      hintText: "Review (Optional)",
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
                      MaterialPageRoute(builder: (context) => const TrackYourOrder()),
                    );
                      },
                      child: Container(
                        height: 55,
                        width: size.width,
                        child: Center(
                          child: Text("Send",
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
                 Padding(
                   padding: const EdgeInsets.only(left: 25,right: 25),
                   child: Container(
                    height: 55,
                    width: size.width,
                    child: Center(
                      child: Text("Cancel",
                      textAlign: TextAlign.center,
                       style: primaryFont.copyWith(
                       fontWeight: FontWeight.w500,
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
          )),
    );
  }
}