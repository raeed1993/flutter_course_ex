import 'package:flutter/material.dart';

class SwipeProgressIndicatorExample extends StatefulWidget {
  @override
  _SwipeProgressIndicatorExampleState createState() => _SwipeProgressIndicatorExampleState();
}

class _SwipeProgressIndicatorExampleState extends State<SwipeProgressIndicatorExample> {
  bool _isSwiping = false;

  void _onHorizontalDragStart(DragStartDetails details) {
    setState(() {
      _isSwiping = true;
    });
  }

  void _onHorizontalDragEnd(DragEndDetails details) {
    setState(() {
      _isSwiping = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Swipe to Show Indicator'),
      ),
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          return GestureDetector(
            onHorizontalDragStart: _onHorizontalDragStart,
            onHorizontalDragEnd: _onHorizontalDragEnd,
            child: ListTile(
              title: Text('Item $index'),
              trailing: _isSwiping ? CircularProgressIndicator() : null,
            ),
          );
        },
      ),
    );
  }
}
