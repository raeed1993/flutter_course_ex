import 'package:flutter/material.dart';

class BusinessCard extends StatelessWidget {
  const BusinessCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(),
            CircleAvatar(
              backgroundImage: AssetImage('assets/images/cloud.png'),
              radius: 50,
            ),
            Text(
              'Mohamad Raeed Ghouma',
              style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'QwitcherGrypen',
                  fontSize: 45,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 2),
            ),
            Text(
              'Flutter Developer',
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 2.5),
            ),
            SizedBox(
              width: 200,
              child: Divider(
                color: Colors.white,
              ),
            ),
            Container(
                margin: EdgeInsets.only(top: 5),
                width: 280,
                height: 50,
                child: Card(
                  color: Colors.white,
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0, right: 50),
                        child: Icon(
                          Icons.phone,
                          color: Colors.teal,
                        ),
                      ),
                      Text(
                        '+905347739576',
                        style: TextStyle(
                            color: Colors.teal,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 2),
                      ),

                    ],
                  ),
                )),
            Container(
                margin: EdgeInsets.only(top: 5),
                width: 280,
                height: 50,
                child: Card(
                  color: Colors.white,
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0, right: 50),
                        child: Icon(
                          Icons.email,
                          color: Colors.teal,
                        ),
                      ),
                      Text(
                        'raeed1993@gmail.com',
                        style: TextStyle(
                            color: Colors.teal,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 0.5),
                      ),
                    ],
                  ),
                )),
            // Container(
            //   width: 280,
            //   child: TextFormField(
            //     decoration: InputDecoration(
            //       filled: true,
            //       fillColor: Colors.white,
            //       focusColor:Colors.white ,
            //
            //       prefixIcon: Container(
            //           margin: EdgeInsets.only(left: 10,right: 50),
            //           child: Icon(Icons.phone))
            //     ),
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
