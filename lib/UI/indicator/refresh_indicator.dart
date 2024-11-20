import 'package:flutter/material.dart';

class PullToRefreshUI extends StatefulWidget {
  @override
  _PullToRefreshUIState createState() => _PullToRefreshUIState();
}

class _PullToRefreshUIState extends State<PullToRefreshUI> {
  List<String> items = List.generate(10, (index) => 'Item $index');



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pull to Refresh '),
      ),
      body: RefreshIndicator(
        onRefresh: () async {
          await Future.delayed(Duration(seconds: 2));

          setState(() {
            items.add('Item ${items.length}');
          });
        },
        child: ListView.builder(
          itemCount: items.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(items[index]),
            );
          },
        ),
      ),
    );
  }
}
