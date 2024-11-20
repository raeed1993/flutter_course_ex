import 'package:flutter/material.dart';

class TweenAnimationBuilderWidget extends StatefulWidget {
  const TweenAnimationBuilderWidget({super.key});

  @override
  State<TweenAnimationBuilderWidget> createState() =>
      _TweenAnimationBuilderWidgetState();
}

class _TweenAnimationBuilderWidgetState
    extends State<TweenAnimationBuilderWidget> {
  double _begin = 50;
  double _end = 180;

  @override
  Widget build(BuildContext context) {
    print('build');
    return SafeArea(
        child: Scaffold(
      body: Column(
        children: [
          TweenAnimationBuilder(
            tween: Tween<double>(begin: _begin, end: _end),
            duration: Duration(seconds: 1),
            builder: (context, value, child) {
              print('Tween Builder');
              return Column(
                children: [
                  Container(
                    width: value,
                    height: value,
                    color: Colors.red,
                    child: child,
                  ),
                ],
              );
            },
            child: _getColumnContainer(),
          ),
          ElevatedButton(
              onPressed: () {
                _begin = _begin * 1.5;
                _end = _end * 1.5;
                setState(() {});
              },
              child: Text('tap'))
        ],
      ),
    ));
  }

  _getColumnContainer() {
    print('print _getColumnContainer');
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Text(
          'first Container',
          style: TextStyle(color: Colors.white, fontSize: 25),
        ),
        Text('second Container',
            style: TextStyle(color: Colors.white, fontSize: 25)),
        Text('third Container',
            style: TextStyle(color: Colors.white, fontSize: 25)),
      ],
    );
  }
}
