import 'package:flutter/material.dart';

class StackWidget extends StatelessWidget {
  const StackWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Positioned(
              top: 320,
                left: 20,
                child: Container(
              width: 100,
              height: 100,
              color: Colors.red,
            )),
            Positioned(
                top: 150,
                child: Container(
              width: 100,
              height: 100,
              color: Colors.blue,
            )),
            Positioned(
                top: 180,
                left: 18,
                child: Container(
              width: 50,
              height: 50,
              color: Colors.green,
            )),
          ],
        ),
      ),
    );
  }
}
