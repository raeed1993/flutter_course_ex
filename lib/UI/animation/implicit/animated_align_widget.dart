import 'package:flutter/material.dart';

class AnimatedAlignWidget extends StatelessWidget {
  const AnimatedAlignWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          body: AnimatedAlign(
            alignment: Alignment.bottomCenter,
            duration: Duration(seconds: 5),
            child: Container(
              width: 220,
              height: 110,
              color: Colors.red,
            ),

          ),
        ));
  }
}
