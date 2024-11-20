import 'package:flutter/material.dart';

class AnimatedContainerWidget extends StatefulWidget {
  const AnimatedContainerWidget({super.key});

  @override
  State<AnimatedContainerWidget> createState() =>
      _AnimatedContainerWidgetState();
}

class _AnimatedContainerWidgetState extends State<AnimatedContainerWidget> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: AnimatedContainer(
        duration: Duration(seconds: 5),
        curve: Curves.easeInCubic,
        width: 220,
        height: 150,
        color: Colors.red,
      ),
    ));
  }
}
