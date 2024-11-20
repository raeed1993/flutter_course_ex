import 'package:flutter/material.dart';

class VideoThumbnailApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Product Card'),
      ),
      body: AspectRatio(
        aspectRatio: 16/9,
        child: Container(
          decoration: BoxDecoration(
            color: Colors.black12,
            borderRadius: BorderRadius.circular(8),
            border: Border.all(color: Colors.black12, width: 1),
          ),
        ),
      ),
    );
  }
}
