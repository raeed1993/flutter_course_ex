import 'package:flutter/material.dart';

class LocalKeyWidget extends StatelessWidget {
  LocalKeyWidget({super.key});

  List<Widget> widgets = [
    Text('one', style: TextStyle(fontSize: 20), key: ValueKey(1),),
    Text('two', style: TextStyle(fontSize: 20), key: ValueKey(2)),
    Text('three', style: TextStyle(fontSize: 20), key: ValueKey(3)),
    Text('four', style: TextStyle(fontSize: 20), key: UniqueKey()),
    Container(
        key: ValueKey(10),
        child: Text('four', style: TextStyle(fontSize: 20),
            key: ValueKey(3))),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: widgets.map((e) {
            if (e.key == ValueKey(1)) {
              return Container(child: e, color: Colors.red);
            }
            return Container(
              child: e,
            );
          }).toList(),
        ),
      ),
    );
  }
}
