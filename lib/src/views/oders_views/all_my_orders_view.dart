import 'package:aladdin/src/constants/app_colors.dart';
import 'package:aladdin/src/constants/app_font.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class AllMyOrders extends StatefulWidget {
  const AllMyOrders({super.key});

  @override
  State<AllMyOrders> createState() => _AllMyOrdersState();
}

class _AllMyOrdersState extends State<AllMyOrders> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: greywhite,
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(140.0),
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
              Padding(
                padding: const EdgeInsets.only(left: 20,right: 20,top: 20),
                child: SizedBox(
                  height: 50,
                  width: size.width,
                  child: TextFormField(
                    // onChanged: (val){
                    //        searchController.searchProduct(search:val);
                    // },
                    decoration: InputDecoration(
                      isDense: true,
                      filled: true,
                      fillColor: Color(0xffFFFFFF),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      hintText: "Search product",
                      contentPadding: EdgeInsets.only(top: 5),
                      prefixIcon: Icon(Icons.search,size: 30,),
                      hintStyle: GoogleFonts.poppins(
                        color: greycolor,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
              ),
          ]),
        ),
      ),
      body: ListView(
        shrinkWrap: true,
        children: [
        Padding(
          padding: const EdgeInsets.only(top: 10,left: 20,right: 20),
          child: Container(
            height: 100,
            width: size.width,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Order#: 999012",
                      style: primaryFont.copyWith(
                        fontWeight: FontWeight.w600,
                        fontSize: 17,
                        color: lightgrey,
                      ),
                      ),
                      Text("20-May-2022, 3:00 PM",
                      style: primaryFont.copyWith(
                        fontWeight: FontWeight.w300,
                        fontSize: 15,
                        color: lightgrey,
                      ),
                      ),
                      ],
                    ),
                    Column(
                      children: [
                        Image(
                          height: 60,
                          width: 60,
                          image: AssetImage("assets/images/img.png")),
                      ],
                    ),
                  ]),
                   Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children: [
                       Text("Estimated Delivery on 20 May",
                          style: primaryFont.copyWith(
                            fontWeight: FontWeight.w300,
                            fontSize: 14,
                            color: darkGreenColor,
                          ),
                          ),
                          Row(
                            children: [
                              Text("Rating",
                              style: primaryFont.copyWith(
                                fontWeight: FontWeight.w300,
                                fontSize: 14,
                                color: lightgrey,
                              ),
                              ),
                              Icon(Icons.star_border_outlined,size: 15,color: Colors.amber,),
                              Icon(Icons.star_border_outlined,size: 15,color: Colors.amber,),
                              Icon(Icons.star_border_outlined,size: 15,color: Colors.amber,),
                              Icon(Icons.star_border_outlined,size: 15,color: Colors.amber,),
                              Icon(Icons.star_border_outlined,size: 15,color: Colors.amber,),
                            ],
                          ),
                     ],
                   ),
                ],
              ),
            ),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(topLeft: Radius.circular(15),topRight: Radius.circular(15)),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 2,left: 20,right: 20),
          child: Container(
            height: 100,
            width: size.width,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Order#: 999012",
                      style: primaryFont.copyWith(
                        fontWeight: FontWeight.w600,
                        fontSize: 17,
                        color: lightgrey,
                      ),
                      ),
                      Text("20-May-2022, 3:00 PM",
                      style: primaryFont.copyWith(
                        fontWeight: FontWeight.w300,
                        fontSize: 15,
                        color: lightgrey,
                      ),
                      ),
                      ],
                    ),
                    Column(
                      children: [
                        Image(
                          height: 60,
                          width: 60,
                          image: AssetImage("assets/images/img1.png")),
                      ],
                    ),
                  ]),
                   Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children: [
                       Text("Estimated Delivery on 20 May",
                          style: primaryFont.copyWith(
                            fontWeight: FontWeight.w300,
                            fontSize: 14,
                            color: darkGreenColor,
                          ),
                          ),
                          Row(
                            children: [
                              Text("Rating",
                              style: primaryFont.copyWith(
                                fontWeight: FontWeight.w300,
                                fontSize: 14,
                                color: lightgrey,
                              ),
                              ),
                              Icon(Icons.star_border_outlined,size: 15,color: Colors.amber,),
                              Icon(Icons.star_border_outlined,size: 15,color: Colors.amber,),
                              Icon(Icons.star_border_outlined,size: 15,color: Colors.amber,),
                              Icon(Icons.star_border_outlined,size: 15,color: Colors.amber,),
                              Icon(Icons.star_border_outlined,size: 15,color: Colors.amber,),
                            ],
                          ),
                     ],
                   ),
                ],
              ),
            ),
            decoration: BoxDecoration(
              color: Colors.white,
              
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 2,left: 20,right: 20),
          child: Container(
            height: 100,
            width: size.width,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Order#: 999012",
                      style: primaryFont.copyWith(
                        fontWeight: FontWeight.w600,
                        fontSize: 17,
                        color: lightgrey,
                      ),
                      ),
                      Text("20-May-2022, 3:00 PM",
                      style: primaryFont.copyWith(
                        fontWeight: FontWeight.w300,
                        fontSize: 15,
                        color: lightgrey,
                      ),
                      ),
                      ],
                    ),
                    Column(
                      children: [
                        Image(
                          height: 60,
                          width: 60,
                          image: AssetImage("assets/images/img2.png")),
                      ],
                    ),
                  ]),
                   Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children: [
                       Text("Estimated Delivery on 20 May",
                          style: primaryFont.copyWith(
                            fontWeight: FontWeight.w300,
                            fontSize: 14,
                            color: redcolor,
                          ),
                          ),
                          Row(
                            children: [
                              Text("Rating",
                              style: primaryFont.copyWith(
                                fontWeight: FontWeight.w300,
                                fontSize: 14,
                                color: lightgrey,
                              ),
                              ),
                              Icon(Icons.star_border_outlined,size: 15,color: Colors.amber,),
                              Icon(Icons.star_border_outlined,size: 15,color: Colors.amber,),
                              Icon(Icons.star_border_outlined,size: 15,color: Colors.amber,),
                              Icon(Icons.star_border_outlined,size: 15,color: Colors.amber,),
                              Icon(Icons.star_border_outlined,size: 15,color: Colors.amber,),
                            ],
                          ),
                     ],
                   ),
                ],
              ),
            ),
            decoration: BoxDecoration(
              color: Colors.white,
              
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 2,left: 20,right: 20),
          child: Container(
            height: 100,
            width: size.width,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Order#: 999012",
                      style: primaryFont.copyWith(
                        fontWeight: FontWeight.w600,
                        fontSize: 17,
                        color: lightgrey,
                      ),
                      ),
                      Text("20-May-2022, 3:00 PM",
                      style: primaryFont.copyWith(
                        fontWeight: FontWeight.w300,
                        fontSize: 15,
                        color: lightgrey,
                      ),
                      ),
                      ],
                    ),
                    Column(
                      children: [
                        Image(
                          height: 60,
                          width: 60,
                          image: AssetImage("assets/images/img3.png")),
                      ],
                    ),
                  ]),
                   Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children: [
                       Text("Estimated Delivery on 20 May",
                          style: primaryFont.copyWith(
                            fontWeight: FontWeight.w300,
                            fontSize: 14,
                            color: redcolor,
                          ),
                          ),
                          Row(
                            children: [
                              Text("Rating",
                              style: primaryFont.copyWith(
                                fontWeight: FontWeight.w300,
                                fontSize: 14,
                                color: lightgrey,
                              ),
                              ),
                              Icon(Icons.star_border_outlined,size: 15,color: Colors.amber,),
                              Icon(Icons.star_border_outlined,size: 15,color: Colors.amber,),
                              Icon(Icons.star_border_outlined,size: 15,color: Colors.amber,),
                              Icon(Icons.star_border_outlined,size: 15,color: Colors.amber,),
                              Icon(Icons.star_border_outlined,size: 15,color: Colors.amber,),
                            ],
                          ),
                     ],
                   ),
                ],
              ),
            ),
            decoration: BoxDecoration(
              color: Colors.white,
              
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 2,left: 20,right: 20),
          child: Container(
            height: 100,
            width: size.width,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Order#: 999012",
                      style: primaryFont.copyWith(
                        fontWeight: FontWeight.w600,
                        fontSize: 17,
                        color: lightgrey,
                      ),
                      ),
                      Text("20-May-2022, 3:00 PM",
                      style: primaryFont.copyWith(
                        fontWeight: FontWeight.w300,
                        fontSize: 15,
                        color: lightgrey,
                      ),
                      ),
                      ],
                    ),
                    Column(
                      children: [
                        Image(
                          height: 60,
                          width: 60,
                          image: AssetImage("assets/images/img4.png")),
                      ],
                    ),
                  ]),
                   Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children: [
                       Text("Estimated Delivery on 20 May",
                          style: primaryFont.copyWith(
                            fontWeight: FontWeight.w300,
                            fontSize: 14,
                            color: darkGreenColor,
                          ),
                          ),
                          Row(
                            children: [
                              Text("Rating",
                              style: primaryFont.copyWith(
                                fontWeight: FontWeight.w300,
                                fontSize: 14,
                                color: lightgrey,
                              ),
                              ),
                              Icon(Icons.star_border_outlined,size: 15,color: Colors.amber,),
                              Icon(Icons.star_border_outlined,size: 15,color: Colors.amber,),
                              Icon(Icons.star_border_outlined,size: 15,color: Colors.amber,),
                              Icon(Icons.star_border_outlined,size: 15,color: Colors.amber,),
                              Icon(Icons.star_border_outlined,size: 15,color: Colors.amber,),
                            ],
                          ),
                     ],
                   ),
                ],
              ),
            ),
            decoration: BoxDecoration(
              color: Colors.white,
              
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 2,left: 20,right: 20),
          child: Container(
            height: 100,
            width: size.width,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Order#: 999012",
                      style: primaryFont.copyWith(
                        fontWeight: FontWeight.w600,
                        fontSize: 17,
                        color: lightgrey,
                      ),
                      ),
                      Text("20-May-2022, 3:00 PM",
                      style: primaryFont.copyWith(
                        fontWeight: FontWeight.w300,
                        fontSize: 15,
                        color: lightgrey,
                      ),
                      ),
                      ],
                    ),
                    Column(
                      children: [
                        Image(
                          height: 60,
                          width: 60,
                          image: AssetImage("assets/images/wtch.png")),
                      ],
                    ),
                  ]),
                   Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children: [
                       Text("Estimated Delivery on 20 May",
                          style: primaryFont.copyWith(
                            fontWeight: FontWeight.w300,
                            fontSize: 14,
                            color: redcolor,
                          ),
                          ),
                          Row(
                            children: [
                              Text("Rating",
                              style: primaryFont.copyWith(
                                fontWeight: FontWeight.w300,
                                fontSize: 14,
                                color: lightgrey,
                              ),
                              ),
                              Icon(Icons.star_border_outlined,size: 15,color: Colors.amber,),
                              Icon(Icons.star_border_outlined,size: 15,color: Colors.amber,),
                              Icon(Icons.star_border_outlined,size: 15,color: Colors.amber,),
                              Icon(Icons.star_border_outlined,size: 15,color: Colors.amber,),
                              Icon(Icons.star_border_outlined,size: 15,color: Colors.amber,),
                            ],
                          ),
                     ],
                   ),
                ],
              ),
            ),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(15),bottomRight: Radius.circular(15)),
            ),
          ),
        ),
      ]),
    );
  }
}