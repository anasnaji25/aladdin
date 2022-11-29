import 'package:aladdin/src/constants/app_font.dart';
import 'package:aladdin/src/constants/helpers.dart';
import 'package:aladdin/src/models/home_product_models.dart';
import 'package:flutter/material.dart';

class ProjectDescription extends StatefulWidget {
  HomePorductmodel productmodel;
  ProjectDescription({super.key, required this.productmodel});

  @override
  State<ProjectDescription> createState() => _ProjectDescriptionState();
}

class _ProjectDescriptionState extends State<ProjectDescription> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Organic Demerara Sugar specialty:\n\nA luxury sweetener to tea & coffee\nGreat for cookies and cakes\nCan be sprinkled on top of pastries to add extra\ncrunchiness\nAromatic\nSmooth mild flavour with a touch of molasses flavour\nQuality Assurance:",
            style: primaryFont.copyWith(fontSize: 11, color: Colors.grey[600]),
          ),
          h15,
          Text(
            """HALAL, My Organic, GMP certified
No pesticides
No artificial additive or flavoring
No artificial coloring
No artificial preservative
No synthetic material""",
            style: primaryFont.copyWith(fontSize: 11, color: Colors.grey[600]),
          ),
        ],
      ),
    );
  }
}
