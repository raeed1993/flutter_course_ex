import 'package:flutter/material.dart';

import '../../fundelmant/constant.dart';

class RowTitleSectionWidget extends StatelessWidget {
  const RowTitleSectionWidget({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title ,
            style: TextStyle(
                color: primaryColor, fontSize: 18, fontWeight: FontWeight.w600),
          ),
          Text(
            'See all',
            style: TextStyle(
                fontWeight: FontWeight.w500,
                color: k9F9F9FColor,
                letterSpacing: 1,
                fontSize: 14),
          ),
        ],
      ),
    );
  }
}
