import 'package:flutter/material.dart';

class AnimatedOpacityWidget extends StatefulWidget {
  const AnimatedOpacityWidget({super.key});

  @override
  State<AnimatedOpacityWidget> createState() => _AnimatedOpacityWidgetState();
}

class _AnimatedOpacityWidgetState extends State<AnimatedOpacityWidget> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: AnimatedOpacity(
        opacity: 1,
        duration: Duration(seconds: 3),
        child: Container(
          width: 200,
          height: 100,
          color: Colors.red,
        ),
      ),
    ));
  }
}
