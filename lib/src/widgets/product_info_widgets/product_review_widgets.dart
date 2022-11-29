import 'package:aladdin/src/constants/app_colors.dart';
import 'package:aladdin/src/constants/app_font.dart';
import 'package:aladdin/src/constants/helpers.dart';
import 'package:aladdin/src/models/home_product_models.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class ProductReview extends StatefulWidget {
   HomePorductmodel productmodel;
 ProductReview({super.key,required this.productmodel});

  @override
  State<ProductReview> createState() => _ProductReviewState();
}

class _ProductReviewState extends State<ProductReview> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.only(left: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Be the first to review “${widget.productmodel.name}”",
            style: primaryFont.copyWith(
                fontSize: 13,
                color: Colors.grey[700],
                fontWeight: FontWeight.w600),
          ),
          h15,
          Row(
            children: [
              SizedBox(
                height: 30,
                width: 30,
                child: Checkbox(
                  value: isChecked,
                  activeColor: primaryColor,
                  onChanged: (value) {
                    setState(() {
                      isChecked = value!;
                    });
                  },
                ),
              ),
              w10,
              Text(
                "Subscribe me to email newsletter",
                style: primaryFont.copyWith(
                    color: const Color.fromARGB(255, 196, 195, 195)),
              )
            ],
          ),
          h15,
          Row(
            children: [
              Text(
                "Your Rating",
                style:
                    primaryFont.copyWith(fontSize: 13, color: Colors.black54),
              ),
              w10,
              RatingBar.builder(
                initialRating: 0,
                minRating: 1,
                direction: Axis.horizontal,
                allowHalfRating: false,
                itemSize: 20,
                itemCount: 5,
                itemPadding: const EdgeInsets.symmetric(horizontal: 4.0),
                itemBuilder: (context, _) => const Icon(
                  Icons.star,
                  color: Colors.amber,
                ),
                onRatingUpdate: (rating) {
                  print(rating);
                },
              )
            ],
          ),
          h10,
          Text(
            "Your Reviews",
            style: primaryFont.copyWith(fontSize: 13, color: Colors.black54),
          ),
          h10,
          Padding(
            padding: const EdgeInsets.only(right: 15),
            child: Container(
              height: 100,
              width: size.width,
              child: TextField(
                maxLines: 5,
                decoration: InputDecoration(
                    isDense: true,
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(
                          color: Colors.grey,
                        )),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(
                          color: Colors.grey,
                        ))),
              ),
            ),
          ),
          h15,
          Row(
            children: [
              Text(
                "Choose pictures\n(maxsize: 2000 kb,\nmax files:2)",
                style:
                    primaryFont.copyWith(color: Colors.black54, fontSize: 12),
              ),
              w20,
              Container(
                height: 35,
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 224, 224, 224),
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                        color: const Color.fromARGB(255, 66, 66, 66))),
                alignment: Alignment.center,
                child: Padding(
                  padding: const EdgeInsets.only(left: 18, right: 18),
                  child: Text(
                    "Choose Files",
                    style: primaryFont.copyWith(
                        fontSize: 13,
                        color: const Color.fromARGB(255, 66, 66, 66)),
                  ),
                ),
              ),
              w15,
              Text(
                "No file chosen",
                style:
                    primaryFont.copyWith(fontSize: 11, color: Colors.grey[400]),
              )
            ],
          ),
          h25,
          Padding(
            padding: const EdgeInsets.only(right: 15),
            child: Container(
              height: 40,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10), color: primaryColor),
              alignment: Alignment.center,
              child: Text(
                "Add Reviews",
                style: primaryFont.copyWith(color: Colors.white),
              ),
            ),
          ),
          h20,
          const Padding(
            padding: EdgeInsets.only(right: 10),
            child: Divider(
              thickness: 1,
            ),
          ),
          h10,
          Text(
            "Based on 0 reviews",
            style: primaryFont.copyWith(
                fontSize: 13,
                color: Colors.black54,
                fontWeight: FontWeight.w600),
          ),
          h10,
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "0.0\nOverall",
                textAlign: TextAlign.center,
                style: primaryFont.copyWith(
                    color: Colors.grey[700], fontWeight: FontWeight.w500),
              ),
              w10,
              Column(
                children: [
                  Row(
                    children: [
                      RatingBar.builder(
                        initialRating: 5,
                        minRating: 1,
                        direction: Axis.horizontal,
                        allowHalfRating: false,
                        ignoreGestures: true,
                        itemSize: 15,
                        itemCount: 5,
                        itemPadding:
                            const EdgeInsets.symmetric(horizontal: 0.0),
                        itemBuilder: (context, _) => const Icon(
                          Icons.star,
                          color: Colors.amber,
                        ),
                        onRatingUpdate: (rating) {
                          print(rating);
                        },
                      ),
                      w10,
                      Container(
                        height: 5,
                        width: size.width * 0.4,
                        decoration: BoxDecoration(
                          color: Colors.grey[200],
                          borderRadius: BorderRadius.circular(2),
                        ),
                      ),
                      w5,
                      Text(
                        "0",
                        style: primaryFont.copyWith(color: Colors.black),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      RatingBar.builder(
                        initialRating: 4,
                        minRating: 1,
                        direction: Axis.horizontal,
                        allowHalfRating: false,
                        ignoreGestures: true,
                        itemSize: 15,
                        itemCount: 5,
                        itemPadding:
                            const EdgeInsets.symmetric(horizontal: 0.0),
                        itemBuilder: (context, _) => const Icon(
                          Icons.star,
                          color: Colors.amber,
                        ),
                        onRatingUpdate: (rating) {
                          print(rating);
                        },
                      ),
                      w10,
                      Container(
                        height: 5,
                        width: size.width * 0.4,
                        decoration: BoxDecoration(
                          color: Colors.grey[200],
                          borderRadius: BorderRadius.circular(2),
                        ),
                      ),
                      w5,
                      Text(
                        "0",
                        style: primaryFont.copyWith(color: Colors.black),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      RatingBar.builder(
                        initialRating: 3,
                        minRating: 1,
                        direction: Axis.horizontal,
                        allowHalfRating: false,
                        ignoreGestures: true,
                        itemSize: 15,
                        itemCount: 5,
                        itemPadding:
                            const EdgeInsets.symmetric(horizontal: 0.0),
                        itemBuilder: (context, _) => const Icon(
                          Icons.star,
                          color: Colors.amber,
                        ),
                        onRatingUpdate: (rating) {
                          print(rating);
                        },
                      ),
                      w10,
                      Container(
                        height: 5,
                        width: size.width * 0.4,
                        decoration: BoxDecoration(
                          color: Colors.grey[200],
                          borderRadius: BorderRadius.circular(2),
                        ),
                      ),
                      w5,
                      Text(
                        "0",
                        style: primaryFont.copyWith(color: Colors.black),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      RatingBar.builder(
                        initialRating: 2,
                        minRating: 1,
                        direction: Axis.horizontal,
                        allowHalfRating: false,
                        ignoreGestures: true,
                        itemSize: 15,
                        itemCount: 5,
                        itemPadding:
                            const EdgeInsets.symmetric(horizontal: 0.0),
                        itemBuilder: (context, _) => const Icon(
                          Icons.star,
                          color: Colors.amber,
                        ),
                        onRatingUpdate: (rating) {
                          print(rating);
                        },
                      ),
                      w10,
                      Container(
                        height: 5,
                        width: size.width * 0.4,
                        decoration: BoxDecoration(
                          color: Colors.grey[200],
                          borderRadius: BorderRadius.circular(2),
                        ),
                      ),
                      w5,
                      Text(
                        "0",
                        style: primaryFont.copyWith(color: Colors.black),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      RatingBar.builder(
                        initialRating: 1,
                        minRating: 1,
                        direction: Axis.horizontal,
                        allowHalfRating: false,
                        ignoreGestures: true,
                        itemSize: 15,
                        itemCount: 5,
                        itemPadding:
                            const EdgeInsets.symmetric(horizontal: 0.0),
                        itemBuilder: (context, _) => const Icon(
                          Icons.star,
                          color: Colors.amber,
                        ),
                        onRatingUpdate: (rating) {
                          print(rating);
                        },
                      ),
                      w10,
                      Container(
                        height: 5,
                        width: size.width * 0.4,
                        decoration: BoxDecoration(
                          color: Colors.grey[200],
                          borderRadius: BorderRadius.circular(2),
                        ),
                      ),
                      w5,
                      Text(
                        "0",
                        style: primaryFont.copyWith(color: Colors.black),
                      )
                    ],
                  ),
                ],
              ),
            ],
          ),
          h20,
          const Padding(
            padding: EdgeInsets.only(right: 10),
            child: Divider(
              thickness: 1,
            ),
          ),
          h10,
          Text(
            "Customer reviews",
            style: primaryFont.copyWith(
                fontSize: 13,
                color: Colors.black54,
                fontWeight: FontWeight.w600),
          ),
          Text(
            "Based on 0 reviews",
            style: primaryFont.copyWith(
                fontSize: 11,
                color: Colors.black54,
                fontWeight: FontWeight.w300),
          ),
          h10,
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 30,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: const Color.fromARGB(255, 209, 208, 208)),
                alignment: Alignment.center,
                child: Padding(
                  padding: const EdgeInsets.only(left: 10, right: 10),
                  child: Text(
                    "0.00",
                    style: primaryFont.copyWith(fontSize: 13),
                  ),
                ),
              ),
              w10,
              Column(
                children: [
                  Row(
                    children: [
                      RatingBar.builder(
                        initialRating: 5,
                        minRating: 1,
                        direction: Axis.horizontal,
                        allowHalfRating: false,
                        ignoreGestures: true,
                        itemSize: 15,
                        itemCount: 5,
                        itemPadding:
                            const EdgeInsets.symmetric(horizontal: 0.0),
                        itemBuilder: (context, _) => const Icon(
                          Icons.star,
                          color: Colors.amber,
                        ),
                        onRatingUpdate: (rating) {
                          print(rating);
                        },
                      ),
                      w10,
                      Container(
                        height: 5,
                        width: size.width * 0.4,
                        decoration: BoxDecoration(
                          color: Colors.grey[200],
                          borderRadius: BorderRadius.circular(2),
                        ),
                      ),
                      w5,
                      Text(
                        "0",
                        style: primaryFont.copyWith(color: Colors.black),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      RatingBar.builder(
                        initialRating: 4,
                        minRating: 1,
                        direction: Axis.horizontal,
                        allowHalfRating: false,
                        ignoreGestures: true,
                        itemSize: 15,
                        itemCount: 5,
                        itemPadding:
                            const EdgeInsets.symmetric(horizontal: 0.0),
                        itemBuilder: (context, _) => const Icon(
                          Icons.star,
                          color: Colors.amber,
                        ),
                        onRatingUpdate: (rating) {
                          print(rating);
                        },
                      ),
                      w10,
                      Container(
                        height: 5,
                        width: size.width * 0.4,
                        decoration: BoxDecoration(
                          color: Colors.grey[200],
                          borderRadius: BorderRadius.circular(2),
                        ),
                      ),
                      w5,
                      Text(
                        "0",
                        style: primaryFont.copyWith(color: Colors.black),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      RatingBar.builder(
                        initialRating: 3,
                        minRating: 1,
                        direction: Axis.horizontal,
                        allowHalfRating: false,
                        ignoreGestures: true,
                        itemSize: 15,
                        itemCount: 5,
                        itemPadding:
                            const EdgeInsets.symmetric(horizontal: 0.0),
                        itemBuilder: (context, _) => const Icon(
                          Icons.star,
                          color: Colors.amber,
                        ),
                        onRatingUpdate: (rating) {
                          print(rating);
                        },
                      ),
                      w10,
                      Container(
                        height: 5,
                        width: size.width * 0.4,
                        decoration: BoxDecoration(
                          color: Colors.grey[200],
                          borderRadius: BorderRadius.circular(2),
                        ),
                      ),
                      w5,
                      Text(
                        "0",
                        style: primaryFont.copyWith(color: Colors.black),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      RatingBar.builder(
                        initialRating: 2,
                        minRating: 1,
                        direction: Axis.horizontal,
                        allowHalfRating: false,
                        ignoreGestures: true,
                        itemSize: 15,
                        itemCount: 5,
                        itemPadding:
                            const EdgeInsets.symmetric(horizontal: 0.0),
                        itemBuilder: (context, _) => const Icon(
                          Icons.star,
                          color: Colors.amber,
                        ),
                        onRatingUpdate: (rating) {
                          print(rating);
                        },
                      ),
                      w10,
                      Container(
                        height: 5,
                        width: size.width * 0.4,
                        decoration: BoxDecoration(
                          color: Colors.grey[200],
                          borderRadius: BorderRadius.circular(2),
                        ),
                      ),
                      w5,
                      Text(
                        "0",
                        style: primaryFont.copyWith(color: Colors.black),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      RatingBar.builder(
                        initialRating: 1,
                        minRating: 1,
                        direction: Axis.horizontal,
                        allowHalfRating: false,
                        ignoreGestures: true,
                        itemSize: 15,
                        itemCount: 5,
                        itemPadding:
                            const EdgeInsets.symmetric(horizontal: 0.0),
                        itemBuilder: (context, _) => const Icon(
                          Icons.star,
                          color: Colors.amber,
                        ),
                        onRatingUpdate: (rating) {
                          print(rating);
                        },
                      ),
                      w10,
                      Container(
                        height: 5,
                        width: size.width * 0.4,
                        decoration: BoxDecoration(
                          color: Colors.grey[200],
                          borderRadius: BorderRadius.circular(2),
                        ),
                      ),
                      w5,
                      Text(
                        "0",
                        style: primaryFont.copyWith(color: Colors.black),
                      )
                    ],
                  ),
                ],
              ),
            ],
          ),
          h15,
          const Divider(
            thickness: 1,
          ),
          h10,
          Row(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(right: 4),
                  child: Container(
                    height: 35,
                    decoration: BoxDecoration(
                        color: Colors.grey[300],
                        borderRadius: BorderRadius.circular(8)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Icon(
                          Icons.camera_alt,
                          size: 17,
                        ),
                        w5,
                        Text(
                          "With Image(0)",
                          style: primaryFont.copyWith(
                              fontSize: 10, color: Colors.black),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(left: 4, right: 4),
                  child: Container(
                    height: 35,
                    decoration: BoxDecoration(
                        color: Colors.grey[300],
                        borderRadius: BorderRadius.circular(8)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Icon(
                          Icons.workspace_premium,
                          size: 17,
                        ),
                        w5,
                        Text(
                          "Verified(0)",
                          style: primaryFont.copyWith(
                              fontSize: 10, color: Colors.black),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(right: 15, left: 4),
                  child: Container(
                    height: 35,
                    decoration: BoxDecoration(
                        color: Colors.grey[300],
                        borderRadius: BorderRadius.circular(8)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "All stars(0)",
                          style: primaryFont.copyWith(
                              fontSize: 10, color: Colors.black),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
          h50
        ],
      ),
    );
  }
}
