import 'package:flutter/material.dart';

class TweenAnimationWidget extends StatelessWidget {
  const TweenAnimationWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Center(
        child: TweenAnimationBuilder(
          tween: IntTween(begin: 5, end: 10),
          duration: Duration(seconds: 5),
          builder: (context, value, child) {
            return Text(
              '${value}',
              style: TextStyle(fontSize: 50),
            );
          },
        ),
      ),
    ));
  }
}
