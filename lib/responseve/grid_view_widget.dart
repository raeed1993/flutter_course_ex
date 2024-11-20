import 'package:flutter/material.dart';

class GridViewWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Direct GridView Example',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Direct GridView'),
        ),
        body: GridView(
          padding: EdgeInsets.all(10),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3, // عدد الأعمدة
            crossAxisSpacing: 10, // المسافة بين الأعمدة
            mainAxisSpacing: 10, // المسافة بين الصفوف
          ),
          children: [
            Container(color: Colors.red, child: Center(child: Text("عنصر 1"))),
            Container(
                color: Colors.green, child: Center(child: Text("عنصر 2"))),
            Container(color: Colors.blue, child: Center(child: Text("عنصر 3"))),
            Container(
                color: Colors.orange, child: Center(child: Text("عنصر 4"))),
            Container(
                color: Colors.purple, child: Center(child: Text("عنصر 5"))),
            Container(color: Colors.teal, child: Center(child: Text("عنصر 6"))),
            Container(
                color: Colors.brown, child: Center(child: Text("عنصر 7"))),
            Container(
                color: Colors.yellow, child: Center(child: Text("عنصر 9"))),
            Container(
                color: Colors.yellow, child: Center(child: Text("عنصر 10"))),
            Container(
                color: Colors.yellow, child: Center(child: Text("عنصر 8"))),
            Container(
                color: Colors.yellow, child: Center(child: Text("عنصر 8"))),
            Container(
                color: Colors.teal,
                child: Center(
                    child: Image.network(
                        'https://argaamplus.s3.amazonaws.com/fe7e7e47-4e59-4e1b-9365-65c79afed077.png'))),
            Container(
                color: Colors.teal,
                child: Center(
                    child: Image.network(
                        'https://argaamplus.s3.amazonaws.com/fe7e7e47-4e59-4e1b-9365-65c79afed077.png'))),
          ],
        ),
      ),
    );
  }
}

class GridViewExtentWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('extent GridView'),
      ),
      body: GridView.extent(
        maxCrossAxisExtent: 120,
        // أقصى عرض لكل عنصر
        crossAxisSpacing: 10, // المسافة بين الأعمدة
        mainAxisSpacing: 10, // المسافة بين الصفوف
        padding: EdgeInsets.all(15),
        // المسافة حول الشبكة
        children: List.generate(10, (index) {
          return Container(
            color: Colors.blue[(index % 9 + 1) * 100],
            child: Center(
              child: Text(
                'card #$index',
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),
          );
        }),
      ),
    );
  }
}

class GridViewCountWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('GridView.count Example'),
      ),
      body: GridView.count(
        crossAxisCount:2,
        // عدد الأعمدة
        crossAxisSpacing: 10,
        // المسافة بين الأعمدة
        mainAxisSpacing: 10,
        // المسافة بين الصفوف
        padding: EdgeInsets.all(8),
        // المسافة حول الشبكة
        children: List.generate(6, (index) {
          // عدد العناصر
          return Container(
            color: Colors.teal[(index % 9 + 1) * 100],
            child: Center(
              child: Text(
                'عنصر #$index',
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),
          );
        }),
      ),
    );
  }
}

class GridViewBuilderWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('GridView.builder Example'),
      ),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, // عدد الأعمدة في الصفوف
          crossAxisSpacing: 1, // المسافة بين الأعمدة
          mainAxisSpacing: 25, // المسافة بين الصفوف
        ),
        itemCount: 30, // عدد العناصر
        itemBuilder: (BuildContext context, int index) {
          return Card(
            // color: Colors.teal[(index % 9 + 1) * 100],
            child: Center(
              child: Column(
                children: [
                  Image.network('https://argaamplus.s3.amazonaws.com/fe7e7e47-4e59-4e1b-9365-65c79afed077.png'),
                  Text(
                    'card #$index',
                    style: TextStyle( fontSize: 20),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
