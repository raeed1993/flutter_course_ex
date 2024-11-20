import 'package:flutter/material.dart';



class TabBarScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: AppBar(
          title: Text("TabBar Example"),
          bottom: TabBar(
            tabs: [
              Tab(icon: Icon(Icons.home)),
              Tab(icon: Icon(Icons.business)),
              Tab(icon: Icon(Icons.school)),
              Tab(icon: Icon(Icons.school)),
              Tab(icon: Icon(Icons.add_alert_sharp)),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Center(child: Container(
              width: 100,
              height: 100,
              color: Colors.green,
            )),
            Center(child: Text("Business")),
            Center(child: Text("School")),
            Center(child: Text("Schoola")),
            Center(child: Text("add_alert_sharp")),
            Center(child: Text("asdasdads")),
          ],
        ),
      ),
    );
  }
}
