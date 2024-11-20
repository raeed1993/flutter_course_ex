import 'package:flutter/material.dart';

class SpacerTest extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text(' Spacer')),
        body: Center(
          child: Column(
            children: [
              Spacer(),
              ElevatedButton(onPressed: () {}, child: Text('button 1')),
              Spacer(),
              ElevatedButton(onPressed: () {}, child: Text('button 2')),
              Spacer(),
              ElevatedButton(onPressed: () {}, child: Text('button 3')),
              Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}