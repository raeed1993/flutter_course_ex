import 'package:example_project/fundelmant/constant.dart';
import 'package:flutter/material.dart';

class FinderAppBarWidget extends StatelessWidget {
  const FinderAppBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: primaryColor,
      leading: Icon(
        Icons.list_sharp,
        color: blackColor,
        size: 32,
      ),
      title: Text.rich(TextSpan(children: [
        TextSpan(
            text: 'Recipe ',
            style: TextStyle(
                letterSpacing: 1,
                fontWeight: FontWeight.w700,
                fontSize: 26,
                color: blackColor)),
        TextSpan(
            text: 'finder',
            style: TextStyle(
                fontWeight: FontWeight.w500,
                color: blackColor,
                letterSpacing: 1))
      ])),
      bottom: PreferredSize(
        preferredSize: Size.fromHeight(1),
        child: Container(
          height: 70,
          padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
          child: TextFormField(
            decoration: InputDecoration(
                fillColor: whitColor,
                filled: true,
                prefixIcon: Icon(Icons.search),
                labelText: 'Search',
                border: OutlineInputBorder(borderSide: BorderSide.none)),
          ),
        ),
      ),
    );
  }
}
