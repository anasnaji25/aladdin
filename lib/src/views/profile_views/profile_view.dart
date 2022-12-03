
import 'package:aladdin/src/constants/app_colors.dart';
import 'package:aladdin/src/constants/app_font.dart';
import 'package:aladdin/src/views/customer_support_views/customer_support_view.dart';
import 'package:aladdin/src/views/invite_friends_views/invite_friend_view.dart';
import 'package:aladdin/src/views/more_views/more_view.dart';
import 'package:aladdin/src/views/notification_settings_views/notifications_view.dart';
import 'package:aladdin/src/views/oders_views/all_my_orders_view.dart';
import 'package:aladdin/src/views/oders_views/finished_orders_view.dart';
import 'package:aladdin/src/views/pending_views/pending_payments_view.dart';
import 'package:aladdin/src/views/pending_views/pending_shipments_view.dart';
import 'package:aladdin/src/views/profile_views/edit_profile_view.dart';
import 'package:aladdin/src/views/rate_our_app_views/rate_our_app_view.dart';
import 'package:aladdin/src/views/track_your_order_views/track_your_order_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';


class ProfileView extends StatefulWidget {
  const ProfileView({super.key});

  @override
  State<ProfileView> createState() => _ProfileViewState();
}

class _ProfileViewState extends State<ProfileView> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: greywhite,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 30,right: 30,top: 30),
          child: Column(
            children: [
              Row(
                children: [
                  InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => MoreView()));
                    },
                    child: Image(
                      height: 120,
                      width: 120,
                      image: AssetImage("assets/images/photo.png")),
                  ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          InkWell(
                             onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => NotificationView()));
                    },
                            child: Text("Jack Sun",
                                                  textAlign: TextAlign.center,
                                                   style: primaryFont.copyWith(
                                                   fontWeight: FontWeight.bold,
                                                   fontSize: 30,
                              color: Color(0xff515C6F),),
                                                  ),
                          ),
                        Text("aladdin1my@email.com",
                        textAlign: TextAlign.center,
                         style: primaryFont.copyWith(
                         fontWeight: FontWeight.bold,
                         fontSize: 15,
                            color: Color(0xff515C6F),),
                        ),
                        SizedBox(height: 5,),
                          InkWell(
                             onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => EditProfileView()));
                    },
                            child: Container(
                              height: 25,
                              width: 100,
                              child: Center(child: Text("EDIT PROFILE",
                                                  textAlign: TextAlign.center,
                                                   style: primaryFont.copyWith(
                                                   fontWeight: FontWeight.bold,
                                                   fontSize: 11,
                              color: Color(0xff515C6F),),
                                                  ),),
                              decoration: BoxDecoration(
                                border: Border.all(color: greycolor),
                                borderRadius: BorderRadius.circular(15)
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                ],
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
                                Navigator.push(context, MaterialPageRoute(builder: (context)=> AllMyOrders()));
                              },
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      Image(image: AssetImage("assets/icons/all order.png")),
                                      SizedBox(width: 10,),
                                       Text("All My Orders",
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
                                Navigator.push(context, MaterialPageRoute(builder: (context)=> PendingShipments()));
                              },
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      Image(image: AssetImage("assets/icons/pending shipments.png")),
                                      SizedBox(width: 10,),
                                       Text("Pending Shipments",
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
                                Navigator.push(context, MaterialPageRoute(builder: (context)=> PaymentPendingsView()));
                              },
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      Image(image: AssetImage("assets/icons/pending payment.png")),
                                      SizedBox(width: 10,),
                                       Text("Pending Payments",
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
                                Navigator.push(context, MaterialPageRoute(builder: (context)=> FinishedOrders()));
                              },
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      Image(image: AssetImage("assets/icons/finished.png")),
                                      SizedBox(width: 10,),
                                       Text("Finished Orders",
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
                                Navigator.push(context, MaterialPageRoute(builder: (context)=> InviteFriendView()));
                              },
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      Image(image: AssetImage("assets/icons/invite.png")),
                                      SizedBox(width: 10,),
                                       Text("Invite Friends",
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
                                Navigator.push(context, MaterialPageRoute(builder: (context)=> CustomerSupportView()));
                              },
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      Image(image: AssetImage("assets/icons/support.png")),
                                      SizedBox(width: 10,),
                                       Text("Customer Supports",
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
                                Navigator.push(context, MaterialPageRoute(builder: (context)=> RateOurApp()));
                              },
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      Image(image: AssetImage("assets/icons/rate.png")),
                                      SizedBox(width: 10,),
                                       Text("Rate Our App",
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
                                Navigator.push(context, MaterialPageRoute(builder: (context)=> TrackYourOrder()));
                              },
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      Image(image: AssetImage("assets/icons/location.png")),
                                      SizedBox(width: 10,),
                                       Text("Track Your Orders",
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
            ]),
        ),
      ),
    );
  }
}