import 'dart:math';

import 'package:flutter/material.dart';

class DiceeExampleWidget extends StatefulWidget {
  const DiceeExampleWidget({super.key});

  @override
  State<DiceeExampleWidget> createState() => _DiceeExampleWidgetState();
}

class _DiceeExampleWidgetState extends State<DiceeExampleWidget> {
  int rightClick = 1;
  int leftClick = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      body: SafeArea(
          child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: GestureDetector(
                onTap: onPress,
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 7),
                  child: Image(image: AssetImage('images/dice$leftClick.png')),
                ),
              ),
            ),
            Expanded(
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    rightClick = Random().nextInt(6) + 1;
                  });
                },
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 7),
                  child: Image(image: AssetImage('images/dice$rightClick.png')),
                ),
              ),
            ),
          ],
        ),
      )),
    );
  }

  void onPress() {
    leftClick = Random().nextInt(6) + 1;
    setState(() {

    });

  }
}
