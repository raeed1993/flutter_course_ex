import 'package:flutter/material.dart';

import 'custom_card.dart';

class NewWidget extends StatefulWidget {
  const NewWidget({super.key});

  @override
  State<NewWidget> createState() => _NewWidgetState();
}

class _NewWidgetState extends State<NewWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children:[
          ListTile(
            leading: CircleAvatar(
              radius: 20,
              backgroundImage: AssetImage('images/cloud.png'),
            ),

            title:Text(
              'raeed1993@gmail.com',
              style: TextStyle(color: Colors.teal),
            ),
            subtitle: Text(
              'raeed1993@gmail.com',
              style: TextStyle(color: Colors.teal),
            ),
          ),

        ],
      ),
    );
  }
}
