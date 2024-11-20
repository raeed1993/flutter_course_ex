import 'package:flutter/material.dart';
import 'package:sliver_tools/sliver_tools.dart';

class AnimatedSliverAppBarExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAnimatedPaintExtent(
            duration: Duration(milliseconds: 300),
            child: SliverAppBar(
              expandedHeight: 250.0,
              floating: true,
              pinned: true,
              flexibleSpace: FlexibleSpaceBar(
                title: Text("شريط متحرك"),
                background: Container(
                  color: Colors.blue,
                  child: Center(child: Text("صورة خلفية")),
                ),
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
                  (context, index) => ListTile(title: Text("عنصر $index")),
              childCount: 20,
            ),
          ),
        ],
      ),
    );
  }
}
