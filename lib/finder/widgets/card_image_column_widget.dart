import 'package:flutter/material.dart';

import '../../fundelmant/constant.dart';

class CardImageColumnWidget extends StatelessWidget {
  const CardImageColumnWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0, horizontal: 8),
      child: Card(
        elevation: 3,
        child: Row(
          children: [
            Container(
                padding: EdgeInsets.all(8),
                width: 100,
                child: Image(
                    image: AssetImage('images/cooks/mixed-vegetables.png'))),
            SizedBox(
              width: 16,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Mung bean Salad',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: Row(
                    children: [
                      Icon(
                        Icons.check_circle_outline,
                        size: 16,
                        color: primaryColor,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        'Reduce Chronic Disease Risk',
                        style: TextStyle(color: primaryColor),
                      )
                    ],
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
