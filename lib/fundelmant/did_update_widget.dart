import 'dart:math';

import 'package:flutter/material.dart';

class MyAppDidUpdateWidget extends StatelessWidget {
  const MyAppDidUpdateWidget({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DidUpdateWidgetLifecycle(),
    );
  }
}

class DidUpdateWidgetLifecycle extends StatefulWidget {
  @override
  _DidUpdateWidgetLifecycleState createState() =>
      _DidUpdateWidgetLifecycleState();
}

class _DidUpdateWidgetLifecycleState extends State<DidUpdateWidgetLifecycle> {
  String _data = "Initial Data";

  void _updateData() {
    setState(() {
      var random = Random();
      int randomNumber = random.nextInt(100);
      _data = "Updated Data" + randomNumber.toString();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Parent Widget'),
      ),
      body: Column(
        children: [
          ChildWidget(data: _data),
          ElevatedButton(
            onPressed: _updateData,
            child: Text('Update Data'),
          ),
        ],
      ),
    );
  }
}





class ChildWidget extends StatefulWidget {
  final String data;

  ChildWidget({required this.data});

  @override
  _ChildWidgetState createState() => _ChildWidgetState();
}



class _ChildWidgetState extends State<ChildWidget> {

  @override
  void didUpdateWidget(covariant ChildWidget oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.data != oldWidget.data) {
      print('Data has changed from ${oldWidget.data} to ${widget.data}');
      print('didUpdateWidget');
    }
  }


  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Current Data: ${widget.data}'),
    );
  }
}
