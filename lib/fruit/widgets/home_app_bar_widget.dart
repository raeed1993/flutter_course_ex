import 'package:flutter/material.dart';

import '../../fundelmant/constant.dart';

class HomeAppBarWidget extends StatefulWidget {
  const HomeAppBarWidget({super.key});

  @override
  State<HomeAppBarWidget> createState() => _HomeAppBarWidgetState();
}

class _HomeAppBarWidgetState extends State<HomeAppBarWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      height: 165,
      child: Stack(
        children: [
          Positioned(
            child: SizedBox(
              height: 140,
              child: AppBar(
                backgroundColor: primaryColor,
                title: Text.rich(TextSpan(children: [
                  TextSpan(
                      text: 'F',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 28)),
                  TextSpan(
                    text: 'ruit Market',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 22,
                        letterSpacing: 1),
                  )
                ])),
                actions: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(Icons.notifications),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
              top: 105,
              right: 15,
              left: 15,
              child: Container(
                decoration: BoxDecoration(
                    boxShadow: [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 10, // softens the shadow
                    offset: Offset(0, 4), // the offset of the shadow
                  ),
                ]
                ),
                child: TextFormField(
                  decoration: InputDecoration(
                    fillColor: whitColor,
                    filled: true,
                    labelText: 'search',
                    labelStyle: TextStyle(color: greyColor.withOpacity(0.5)),
                    prefixIcon:
                        Icon(Icons.search, color: greyColor.withOpacity(0.5)),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
              )
          ),
          // Positioned(
          //     top: 115,
          //     left: 0,
          //     right: 0,
          //     child: Container(
          //       height: 40,
          //       decoration: BoxDecoration(
          //         boxShadow: [
          //           BoxShadow(
          //             color: Colors.black12,
          //             blurRadius: 10, // softens the shadow
          //             offset: Offset(0, 4), // the offset of the shadow
          //           ),
          //         ],
          //       ),
          //       padding: EdgeInsets.symmetric(horizontal: 10),
          //       child: TextFormField(
          //         decoration: InputDecoration(
          //           labelStyle:
          //           TextStyle(color: Colors.grey.withOpacity(0.5)),
          //           labelText: 'Search',
          //           border: OutlineInputBorder(
          //             borderRadius: BorderRadius.circular(8),
          //             borderSide:
          //            v // Remove the default border
          //           ),
          //           prefixIcon: Icon(
          //             Icons.search,
          //             color: Colors.grey.withOpacity(0.5),
          //           ),
          //           fillColor: Colors.white,
          //           filled: true,
          //         ),
          //       ),
          //     ))
        ],
      ),
    );
  }
}
