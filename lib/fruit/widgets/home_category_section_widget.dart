import 'package:flutter/material.dart';

import '../../fundelmant/constant.dart';
import 'item_category_image_rate_widget.dart';

class HomeSectionCategoryWidget extends StatelessWidget {
  const HomeSectionCategoryWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text.rich(TextSpan(children: [
          TextSpan(
              text: 'Organic Vegatebles ',
              style: TextStyle(
                  color: blackColor,
                  fontWeight: FontWeight.bold,
                  fontSize: 18)),
          TextSpan(
              text: ' (20% off)',
              style: TextStyle(
                  color: primaryColor,
                  fontWeight: FontWeight.bold,
                  fontSize: 16)),
        ])),
        Text('Pick up from organic farms'),
        SizedBox(
          height: 200,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              ItemCategoryImageRateWidget(),
              ItemCategoryImageRateWidget(),
              ItemCategoryImageRateWidget(),
              ItemCategoryImageRateWidget(),
              ItemCategoryImageRateWidget(),
              ItemCategoryImageRateWidget(),
            ],
          ),
        ),

      ],
    );
  }
}

