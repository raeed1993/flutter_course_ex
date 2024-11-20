import 'package:flutter/material.dart';

class LayoutBuilderTest extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('LayoutBuilder')),
        body: Center(
          child: LayoutBuilder(
            builder: (BuildContext context, BoxConstraints constraints) {
              print(constraints.maxWidth);
              if (constraints.maxWidth > 500) {
                return Row(
                  children: [
                    Container(
                      color: Colors.blue,
                      width: 200,
                      height: 200,
                      child: Center(
                        child: Text(
                          'wide screen',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize:
                                  16 * MediaQuery.of(context).devicePixelRatio),
                        ),
                      ),
                    ),
                    Spacer(),
                    Container(
                      color: Colors.blue,
                      width: 200,
                      height: 200,
                      child: Center(
                        child: Text(
                          'wide screen',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize:
                                  16 * MediaQuery.of(context).devicePixelRatio),
                        ),
                      ),
                    ),
                  ],
                );
              }
              else {
                return Container(
                  color: Colors.green,
                  width: constraints.maxWidth,
                  height: 100,
                  child: Center(
                    child: Text(
                      'Narrow screen',
                      style: TextStyle(color: Colors.white,
                          fontSize:
                          16 * MediaQuery.of(context).devicePixelRatio),
                    ),
                  ),
                );
              }
            },
          ),
        ),
      ),
    );
  }
}
