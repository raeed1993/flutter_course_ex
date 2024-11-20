import 'package:flutter/material.dart';

class AnimatedDrawer extends StatefulWidget {
  @override
  _AnimatedDrawerState createState() => _AnimatedDrawerState();
}

class _AnimatedDrawerState extends State<AnimatedDrawer> with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 500),
    );
  }

  void toggleDrawer() {
    _controller.isCompleted ? _controller.reverse() : _controller.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Custom Drawer with Animation"),
        leading: IconButton(
          icon: Icon(Icons.menu),
          onPressed: toggleDrawer,
        ),
      ),
      body: Stack(
        children: [
          FadeTransition(
            opacity: _controller,
            child: Container(
              color: Colors.blueGrey,
              width: MediaQuery.of(context).size.width * 0.7,
              child: ListView(
                children: <Widget>[
                  ListTile(title: Text("Item 1")),
                  ListTile(title: Text("Item 2")),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
