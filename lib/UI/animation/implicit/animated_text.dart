import 'package:flutter/material.dart';

class AnimatedTextWidget extends StatelessWidget {
  const AnimatedTextWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: AnimatedDefaultTextStyle(
        style: TextStyle(color: Colors.blue, fontSize: 50),
        duration: Duration(seconds: 1),
        child: Text('hello'),
      ),
    ));
  }
}
