import 'dart:math';

import 'package:flutter/material.dart';

class Dicee extends StatefulWidget {
  const Dicee({super.key});

  @override
  State<Dicee> createState() => _DiceeState();
}

class _DiceeState extends State<Dicee> {
  int rightNumber = 1;
  int leftNumber = 1;
  @override
  Widget build(BuildContext context) {
    print(Random().nextInt(6)+1);
    return  Scaffold(
      backgroundColor: Colors.teal,
      body: Center(
        child: Row(

          children: [
            Expanded(

              child: GestureDetector(
                onTap: (){
                  setState(() {
                    rightNumber = Random().nextInt(6)+1;
                  });
                },
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image(
                    image: AssetImage('assets/images/dice$rightNumber.png'),

                  ),
                ),
              ),
            ),
            Expanded(

              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image(image: AssetImage('assets/images/dice$leftNumber.png'),

                ),
              ),
            ),


          ],
        ),
      ),
    );
  }
}
