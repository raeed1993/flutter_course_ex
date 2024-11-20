import 'package:flutter/material.dart';

import '../../fundelmant/constant.dart';

class StartStackCookWidget extends StatelessWidget {
  const StartStackCookWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
            child: Container(
                child: Image.asset(
          'images/cooks/stack_image.png',
        ))),
        Positioned(
            top: 50,
            left: 37,
            child: Container(
              height: 32,
              width: 37,
              decoration: BoxDecoration(
                  color: blackColor.withOpacity(0.5),
                  borderRadius: BorderRadius.circular(10)),
              child: Icon(
                Icons.favorite_border,
                color: whitColor,
              ),
            )),
        Positioned(
            top: 48,
            right: 32,
            child: ElevatedButton(
                style: ButtonStyle(
                    backgroundColor: MaterialStateColor.resolveWith(
                        (states) => primaryColor)),
                onPressed: () {},
                child: Text(
                  'Start Cook',
                  style: TextStyle(fontWeight: FontWeight.w700, fontSize: 17),
                ))),
        Positioned(
            bottom: 83,
            left: 32,
            child: Text(
              'Weekly pick',
              style: TextStyle(
                  fontWeight: FontWeight.w600, color: whitColor, fontSize: 28),
            )),
        Positioned(
            bottom: 50,
            left: 32,
            child: Container(
              width: 200,
              child: Text(
                'This pumpkin cream soup will warm up the feintest of hearts.',
                style: TextStyle(color: whitColor),
              ),
            ))
      ],
    );
  }
}
