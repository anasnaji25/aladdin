import 'package:aladdin/src/constants/app_font.dart';
import 'package:aladdin/src/constants/helpers.dart';
import 'package:flutter/material.dart';

class ProductVendorInfo extends StatefulWidget {
  const ProductVendorInfo({super.key});

  @override
  State<ProductVendorInfo> createState() => _ProductVendorInfoState();
}

class _ProductVendorInfoState extends State<ProductVendorInfo> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Vendor Information",
            style: primaryFont.copyWith(fontSize: 12, color: Colors.grey[700],fontWeight: FontWeight.w600),
          ),
          h15,
          Text(
            """Store Name: 888 Official Store
Vendor: 888 Official Store
No ratings found yet!""",
            style: primaryFont.copyWith(fontSize: 11, color: Colors.grey[600]),
          ),
        ],
      ),
    );
  }
}
