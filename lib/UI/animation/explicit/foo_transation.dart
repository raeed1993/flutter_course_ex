import 'package:flutter/material.dart';

class ScaleTransitionWidget extends StatefulWidget {
  const ScaleTransitionWidget({super.key});

  @override
  State<ScaleTransitionWidget> createState() => _ScaleTransitionWidgetState();
}

class _ScaleTransitionWidgetState extends State<ScaleTransitionWidget> {
  late Animation<AlignmentGeometry> _greenCircle ;
  late Animation<AlignmentGeometry> _redCircle;
  late AnimationController _animationController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // _greenCircle = Tween<AlignmentGeometry>(
    //     begin: Alignment.centerLeft,
    //     end: Alignment.centerRight).animate(parent);
    // _redCircle = Tween<AlignmentGeometry>(
    //     begin: Alignment.topCenter, end: Alignment.bottomCenter).animate(parent);
    // _animationController=AnimationController(vsync: null);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      body: Stack(
        children: [
          AlignTransition(
              alignment: _greenCircle,
              child: CircleAvatar(backgroundColor: Colors.green,
              )
          ),
          AlignTransition(alignment: _redCircle,
              child: CircleAvatar(backgroundColor: Colors.red,
              ))
        ],
      ),
    ));
  }
}
