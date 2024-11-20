import 'package:flutter/material.dart';

class ConstrainedBoxTest extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        appBar: AppBar(
          title: Text('ConstrainedBox Example'),
        ),
        body: Center(
          child: ConstrainedBox(
            constraints: BoxConstraints(
              minWidth: 50,
              minHeight: 100,
              maxWidth: 200,
              maxHeight: 250,
            ),
            child: Container(
              color: Colors.blue,
              child: Text(
                'Iam A flutter Developer ',
                style: TextStyle(fontSize: 24, color: Colors.black),
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ),
      );
  }
}