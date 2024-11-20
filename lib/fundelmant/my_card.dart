import 'package:flutter/material.dart';

import 'custom_card.dart';





class MyCard extends StatelessWidget {
  const MyCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 65,
                backgroundImage: AssetImage('images/cloud.png'),
              ),
              Container(
                margin: EdgeInsets.only(top: 20),
                child: Text(
                  'Mohamd Makiin',
                  style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'DancingScript',
                      fontSize: 35,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                margin: EdgeInsets.only(bottom: 10),
                child: Text(
                  'Flutter Developer',
                  style: TextStyle(
                      color: Colors.white.withOpacity(0.6),
                      fontWeight: FontWeight.bold,
                      letterSpacing: 3.9,
                      fontSize: 20),
                ),
              ),
              Container(
                width: 155,
                margin: EdgeInsets.only(bottom: 10),
                child: Divider(
                  height: 8,
                  color: Colors.white.withOpacity(0.5),
                ),
              ),









              CustomCardWidget(
                icon: CustomIcon(data: Icons.phone),
                text: Text(
                  '+90 534 773 95 76',
                  style: TextStyle(color: Colors.teal),
                ),
              ),
              CustomCardWidget(
                icon: CustomIcon(data: Icons.email),
                text: Text(
                  'raeed1993@gmail.com',
                  style: TextStyle(color: Colors.teal),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}










class CustomIcon extends StatelessWidget {
  const CustomIcon({super.key, required this.data});

  final IconData data;

  @override
  Widget build(BuildContext context) {
    return Icon(data, color: Colors.teal);
  }
}
