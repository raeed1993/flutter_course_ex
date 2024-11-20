import 'package:flutter/material.dart';

class CustomCardWidget extends StatelessWidget {
  CustomCardWidget({super.key, required this.icon, required this.text});

  final Widget icon;
  final Text text;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      width: 300,
      child: Card(
        color: Colors.white,
        child: Row(
          children: [
            Container(
                margin: EdgeInsets.only(left: 10, right: 25), child: icon),
            text
          ],
        ),
      ),
    );
  }
}
