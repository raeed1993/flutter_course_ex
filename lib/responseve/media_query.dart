import 'package:flutter/material.dart';

class MediaQueryTest extends StatelessWidget {
  const MediaQueryTest({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var widthS = MediaQuery.sizeOf(context).width;
    var heightS = MediaQuery.sizeOf(context).height;

    var orientation =MediaQuery.orientationOf(context);
    if(orientation == Orientation.portrait){
      print('portrait');
    }
var pexil= MediaQuery.of(context).devicePixelRatio;
    var padding = MediaQuery.of(context).padding;
    // Orientation.landscape;
    // Orientation.portrait;
    print(padding);
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin:padding,
              color: Colors.red, width: widthS * 0.5,
              height: heightS/2),
          Container(
              color: Colors.blue,
              width: MediaQuery.of(context).size.width,
              height: 100),
          Container(
              color: Colors.green,
              width: MediaQuery.of(context).size.width,
              height: 100),
          Text(
            'Flutter',
            style: TextStyle(
                fontSize: 16 * MediaQuery.of(context).devicePixelRatio),
          ),
        ],
      ),
    );
  }
}
