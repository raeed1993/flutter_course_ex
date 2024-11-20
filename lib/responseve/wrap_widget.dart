
import 'package:flutter/material.dart';

class WrapTest extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
        appBar: AppBar(
          title: Text('Wrap Example'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SizedBox(
            height: 50,
            width: 50,
            child: Wrap(
              spacing: 8.0, // المسافة بين العناصر أفقياً
              runSpacing: 8.0, // المسافة بين الأسطر
              children: List.generate(10, (index) {
                return Container(
                  width: 100,
                  height: 80,
                  color: Colors.teal[(index % 9 + 1) * 100],
                  child: Center(
                    child: Text(
                      'عنصر #$index',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                );
              }),
            ),
          ),
        ),
      );
  }
}