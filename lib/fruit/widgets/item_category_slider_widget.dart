import 'package:flutter/material.dart';

class ItemCategorySliderWidget extends StatelessWidget {
  const ItemCategorySliderWidget(
      {super.key, required this.text, required this.isSelected});

  final String text;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10),
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 6),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color:isSelected ?Color(0xf0ca7d00):Colors.white,
      ),
      height: 25,
      child: Text(
        text,
        style: isSelected
            ? TextStyle(color: Colors.white, fontSize: 16)
            : TextStyle(color: Colors.grey, fontSize: 16, letterSpacing: 1),
      ),
    );
  }
}
