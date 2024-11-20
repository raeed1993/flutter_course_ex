import 'package:flutter/material.dart';

class ParallaxSliverAppBarUI extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 500.0,
            pinned: true,

            flexibleSpace: FlexibleSpaceBar(
              title: Text("page title",style: TextStyle(color: Colors.white),),
              background: Image.network(
                'https://www.w3schools.com/w3css/img_lights.jpg',
                fit: BoxFit.cover,
              ),
              centerTitle: true,
              expandedTitleScale: 1,
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
                  (context, index) => ListTile(title: Text("item $index")),
              childCount: 50,
            ),
          ),
        ],
      ),
    );
  }
}
