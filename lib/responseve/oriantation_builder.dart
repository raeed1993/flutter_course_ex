import 'package:flutter/material.dart';

class OrientationBuilderTest extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(title: Text('OrientationBuilder Example')),
      body: OrientationBuilder(
          builder: (BuildContext context, Orientation orientation) {
          if (orientation == Orientation.portrait) {
            // Layout for portrait mode
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text('Portrait Mode', style: TextStyle(fontSize: 24)),
                SizedBox(height: 20),
                Container(
                  width: 200,
                  height: 100,
                  color: Colors.blue,
                  child: Center(child: Text('Blue Box')),
                ),
              ],
            );
          }
          else {
            // Layout for landscape mode
            return Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text('Landscape Mode', style: TextStyle(fontSize: 24)),
                SizedBox(width: 20),
                Container(
                  width: 100,
                  height: 200,
                  color: Colors.green,
                  child: Center(child: Text('Green Rectangle')),
                ),
              ],
            );
          }
        },
      ),
    );
  }
}
