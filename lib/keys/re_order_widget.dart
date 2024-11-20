import 'package:flutter/material.dart';

class ColorList extends StatelessWidget {
  final List<Color> colors = [Colors.red, Colors.green, Colors.blue];

  @override
  Widget build(BuildContext context) {
    return Row(
      children: colors.map((color) => Container(
        // key: ValueKey(color),   // مفتاح فريد لكل لون
        color: color,
        width: 50,
        height: 50,
      )).toList(),
    );
  }
}