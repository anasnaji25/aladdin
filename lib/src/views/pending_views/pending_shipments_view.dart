import 'package:aladdin/src/constants/app_colors.dart';
import 'package:aladdin/src/constants/app_font.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

class PendingShipments extends StatefulWidget {
  const PendingShipments({super.key});

  @override
  State<PendingShipments> createState() => _PendingShipmentsState();
}

class _PendingShipmentsState extends State<PendingShipments> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: false,
        title: Text("Pending Shipments",
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
         padding: const EdgeInsets.only(left: 10,right: 10),
         child: ListView(
          shrinkWrap: true,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 10,bottom: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Image(height: 60,width: 60,image: AssetImage("assets/images/Group 335.png")),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Lotus Biscoff Spread Smooth 20",
          style: primaryFont.copyWith(
              fontWeight: FontWeight.w600,
              fontSize: 13,
              color: lightgrey,
          ),
          ),
          Text("Water Diry",
          style: primaryFont.copyWith(
              fontWeight: FontWeight.w300,
              fontSize: 11,
              color: lightgrey,
          ),
          ),
                    ],
                  ),
                  Row(
                    children: [
                      Column(
                        children: [
                          Image(height: 30,width: 30,
                            image: AssetImage("assets/images/Group 943.png")),
                            Text("Accept",
          style: primaryFont.copyWith(
              fontWeight: FontWeight.w300,
              fontSize: 5,
              color: lightgrey,
          ),
          ),
                        ],
                      ),
                      Column(
                        children: [
                          Image(height: 30,width: 30,
                            image: AssetImage("assets/images/Group 280.png")),
                            Text("Decline",
          style: primaryFont.copyWith(
              fontWeight: FontWeight.w300,
              fontSize: 5,
              color: lightgrey,
          ),
          ),
                        ],
                      )
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20,right: 20),
              child: Divider(
                thickness: 0.5,
              ),
            ),
             Padding(
                padding: const EdgeInsets.only(top: 10,bottom: 10),
                child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Image(height: 60,width: 60,image: AssetImage("assets/images/Group 336.png")),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Lotus Biscoff Spread Smooth 20",
          style: primaryFont.copyWith(
            fontWeight: FontWeight.w600,
            fontSize: 13,
            color: lightgrey,
          ),
          ),
          Text("Water Diry",
          style: primaryFont.copyWith(
            fontWeight: FontWeight.w300,
            fontSize: 11,
            color: lightgrey,
          ),
          ),
                    ],
                  ),
                  Row(
                    children: [
                      Column(
                        children: [
                          Image(height: 30,width: 30,
                            image: AssetImage("assets/images/Group 943.png")),
                            Text("Accept",
          style: primaryFont.copyWith(
            fontWeight: FontWeight.w300,
            fontSize: 5,
            color: lightgrey,
          ),
          ),
                        ],
                      ),
                      Column(
                        children: [
                          Image(height: 30,width: 30,
                            image: AssetImage("assets/images/Group 280.png")),
                            Text("Decline",
          style: primaryFont.copyWith(
            fontWeight: FontWeight.w300,
            fontSize: 5,
            color: lightgrey,
          ),
          ),
                        ],
                      )
                    ],
                  ),
                ],
            ),
              ),
            Padding(
              padding: const EdgeInsets.only(left: 20,right: 20),
              child: Divider(
                thickness: 0.5,
              ),),
               Padding(
                padding: const EdgeInsets.only(top: 10,bottom: 10),
                child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Image(height: 60,width: 60,image: AssetImage("assets/images/Group 337.png")),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Lotus Biscoff Spread Smooth 20",
          style: primaryFont.copyWith(
            fontWeight: FontWeight.w600,
            fontSize: 13,
            color: lightgrey,
          ),
          ),
          Text("Water Diry",
          style: primaryFont.copyWith(
            fontWeight: FontWeight.w300,
            fontSize: 11,
            color: lightgrey,
          ),
          ),
                    ],
                  ),
                  Row(
                    children: [
                      Column(
                        children: [
                          Image(height: 30,width: 30,
                            image: AssetImage("assets/images/Group 943.png")),
                            Text("Accept",
          style: primaryFont.copyWith(
            fontWeight: FontWeight.w300,
            fontSize: 5,
            color: lightgrey,
          ),
          ),
                        ],
                      ),
                      Column(
                        children: [
                          Image(height: 30,width: 30,
                            image: AssetImage("assets/images/Group 280.png")),
                            Text("Decline",
          style: primaryFont.copyWith(
            fontWeight: FontWeight.w300,
            fontSize: 5,
            color: lightgrey,
          ),
          ),
                        ],
                      )
                    ],
                  ),
                ],
            ),
              ),
            Padding(
              padding: const EdgeInsets.only(left: 20,right: 20),
              child: Divider(
                thickness: 0.5,
              ),),
               Padding(
                padding: const EdgeInsets.only(top: 10,bottom: 10),
                child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Image(height: 60,width: 60,image: AssetImage("assets/images/Group 338.png")),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Lotus Biscoff Spread Smooth 20",
          style: primaryFont.copyWith(
            fontWeight: FontWeight.w600,
            fontSize: 13,
            color: lightgrey,
          ),
          ),
          Text("Water Diry",
          style: primaryFont.copyWith(
            fontWeight: FontWeight.w300,
            fontSize: 11,
            color: lightgrey,
          ),
          ),
                    ],
                  ),
                  Row(
                    children: [
                      Column(
                        children: [
                          Image(height: 30,width: 30,
                            image: AssetImage("assets/images/Group 943.png")),
                            Text("Accept",
          style: primaryFont.copyWith(
            fontWeight: FontWeight.w300,
            fontSize: 5,
            color: lightgrey,
          ),
          ),
                        ],
                      ),
                      Column(
                        children: [
                          Image(height: 30,width: 30,
                            image: AssetImage("assets/images/Group 280.png")),
                            Text("Decline",
          style: primaryFont.copyWith(
            fontWeight: FontWeight.w300,
            fontSize: 5,
            color: lightgrey,
          ),
          ),
                        ],
                      )
                    ],
                  ),
                ],
            ),
              ),
            Padding(
              padding: const EdgeInsets.only(left: 20,right: 20),
              child: Divider(
                thickness: 0.5,
              ),),
               Padding(
                padding: const EdgeInsets.only(top: 10,bottom: 10),
                child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Image(height: 60,width: 60,image: AssetImage("assets/images/Group 339.png")),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Lotus Biscoff Spread Smooth 20",
          style: primaryFont.copyWith(
            fontWeight: FontWeight.w600,
            fontSize: 13,
            color: lightgrey,
          ),
          ),
          Text("Water Diry",
          style: primaryFont.copyWith(
            fontWeight: FontWeight.w300,
            fontSize: 11,
            color: lightgrey,
          ),
          ),
                    ],
                  ),
                  Row(
                    children: [
                      Column(
                        children: [
                          Image(height: 30,width: 30,
                            image: AssetImage("assets/images/Group 943.png")),
                            Text("Accept",
          style: primaryFont.copyWith(
            fontWeight: FontWeight.w300,
            fontSize: 5,
            color: lightgrey,
          ),
          ),
                        ],
                      ),
                      Column(
                        children: [
                          Image(height: 30,width: 30,
                            image: AssetImage("assets/images/Group 280.png")),
                            Text("Decline",
          style: primaryFont.copyWith(
            fontWeight: FontWeight.w300,
            fontSize: 5,
            color: lightgrey,
          ),
          ),
                        ],
                      )
                    ],
                  ),
                ],
            ),
              ),
            Padding(
              padding: const EdgeInsets.only(left: 20,right: 20),
              child: Divider(
                thickness: 0.5,
              ),),
               Padding(
                padding: const EdgeInsets.only(top: 10,bottom: 10),
                child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Image(height: 60,width: 60,image: AssetImage("assets/images/Group 340.png")),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Lotus Biscoff Spread Smooth 20",
          style: primaryFont.copyWith(
            fontWeight: FontWeight.w600,
            fontSize: 13,
            color: lightgrey,
          ),
          ),
          Text("Water Diry",
          style: primaryFont.copyWith(
            fontWeight: FontWeight.w300,
            fontSize: 11,
            color: lightgrey,
          ),
          ),
                    ],
                  ),
                  Row(
                    children: [
                      Column(
                        children: [
                          Image(height: 30,width: 30,
                            image: AssetImage("assets/images/Group 943.png")),
                            Text("Accept",
          style: primaryFont.copyWith(
            fontWeight: FontWeight.w300,
            fontSize: 5,
            color: lightgrey,
          ),
          ),
                        ],
                      ),
                      Column(
                        children: [
                          Image(height: 30,width: 30,
                            image: AssetImage("assets/images/Group 280.png")),
                            Text("Decline",
          style: primaryFont.copyWith(
            fontWeight: FontWeight.w300,
            fontSize: 5,
            color: lightgrey,
          ),
          ),
                        ],
                      )
                    ],
                  ),
                ],
            ),
              ),
            Padding(
              padding: const EdgeInsets.only(left: 20,right: 20),
              child: Divider(
                thickness: 0.5,
              ),),
               Padding(
                padding: const EdgeInsets.only(top: 10,bottom: 10),
                child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Image(height: 60,width: 60,image: AssetImage("assets/images/Group 341.png")),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Lotus Biscoff Spread Smooth 20",
          style: primaryFont.copyWith(
            fontWeight: FontWeight.w600,
            fontSize: 13,
            color: lightgrey,
          ),
          ),
          Text("Water Diry",
          style: primaryFont.copyWith(
            fontWeight: FontWeight.w300,
            fontSize: 11,
            color: lightgrey,
          ),
          ),
                    ],
                  ),
                  Row(
                    children: [
                      Column(
                        children: [
                          Image(height: 30,width: 30,
                            image: AssetImage("assets/images/Group 943.png")),
                            Text("Accept",
          style: primaryFont.copyWith(
            fontWeight: FontWeight.w300,
            fontSize: 5,
            color: lightgrey,
          ),
          ),
                        ],
                      ),
                      Column(
                        children: [
                          Image(height: 30,width: 30,
                            image: AssetImage("assets/images/Group 280.png")),
                            Text("Decline",
          style: primaryFont.copyWith(
            fontWeight: FontWeight.w300,
            fontSize: 5,
            color: lightgrey,
          ),
          ),
                        ],
                      )
                    ],
                  ),
                ],
            ),
              ),
            Padding(
              padding: const EdgeInsets.only(left: 20,right: 20),
              child: Divider(
                thickness: 0.5,
              ),),
               Padding(
                padding: const EdgeInsets.only(top: 10,bottom: 10),
                child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Image(height: 60,width: 60,
                    image: AssetImage("assets/images/Group 335.png")),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Lotus Biscoff Spread Smooth 20",
          style: primaryFont.copyWith(
            fontWeight: FontWeight.w600,
            fontSize: 13,
            color: lightgrey,
          ),
          ),
          Text("Water Diry",
          style: primaryFont.copyWith(
            fontWeight: FontWeight.w300,
            fontSize: 11,
            color: lightgrey,
          ),
          ),
                    ],
                  ),
                  Row(
                    children: [
                      Column(
                        children: [
                          Image(height: 30,width: 30,
                            image: AssetImage("assets/images/Group 943.png")),
                            Text("Accept",
          style: primaryFont.copyWith(
            fontWeight: FontWeight.w300,
            fontSize: 5,
            color: lightgrey,
          ),
          ),
                        ],
                      ),
                      Column(
                        children: [
                          Image(height: 30,width: 30,
                            image: AssetImage("assets/images/Group 280.png")),
                            Text("Decline",
          style: primaryFont.copyWith(
            fontWeight: FontWeight.w300,
            fontSize: 5,
            color: lightgrey,
          ),
          ),
                        ],
                      )
                    ],
                  ),
                ],
            ),
              ),
            Padding(
              padding: const EdgeInsets.only(left: 20,right: 20),
              child: Divider(
                thickness: 0.5,
              ),),
              
          ],
         ),
       ),
    );
  }
}