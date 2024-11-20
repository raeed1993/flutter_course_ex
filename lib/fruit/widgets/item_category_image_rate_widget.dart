import 'package:example_project/fundelmant/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_stars/flutter_rating_stars.dart';

class ItemCategoryImageRateWidget extends StatefulWidget {
  const ItemCategoryImageRateWidget({super.key});

  @override
  State<ItemCategoryImageRateWidget> createState() =>
      _ItemCategoryImageRateWidgetState();
}

class _ItemCategoryImageRateWidgetState
    extends State<ItemCategoryImageRateWidget> {
  double value = 3.5;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 140,
          width: 115,
          decoration: BoxDecoration(
            color: primaryColor,
            borderRadius: BorderRadius.circular(15),
            image: DecorationImage(
                image: AssetImage('images/dry1.png'),
                fit: BoxFit.cover
            ),
          ),
        ),
        RatingStars(
          value: value,
          onValueChanged: (v) {
            //
            setState(() {
              value = v;
            });
          },
          starBuilder: (index, color) => Icon(
            Icons.star,
            color: color,
          ),
          starCount: 5,
          starSize: 20,
          maxValue: 5,
          starSpacing: 4,
          maxValueVisibility: true,
          valueLabelVisibility: false,
          animationDuration: Duration(milliseconds: 1000),
          valueLabelPadding:
          const EdgeInsets.symmetric(vertical: 1, horizontal: 8),
          valueLabelMargin: const EdgeInsets.only(right: 8),
          starOffColor: const Color(0xffe7e8ea),
          starColor: Colors.orange,
        ),
      ],
    );
  }
}
