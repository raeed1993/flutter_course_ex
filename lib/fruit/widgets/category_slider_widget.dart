import 'package:flutter/material.dart';

import 'item_category_slider_widget.dart';

class HomeCategoryBarWidget extends StatefulWidget {
  const HomeCategoryBarWidget({super.key});

  @override
  State<HomeCategoryBarWidget> createState() => _HomeCategoryBarWidgetState();
}

class _HomeCategoryBarWidgetState extends State<HomeCategoryBarWidget> {
  @override
  List<Map> categories = [
    {'name': 'Fruit', 'isSelected': true},
    {'name': 'Dry Fruits', 'isSelected': false},
    {'name': 'Vegetables', 'isSelected': false},
  ];

  Widget build(BuildContext context) {
    return Container(
        height: 30,
        margin: EdgeInsets.symmetric(horizontal: 30),
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: categories
              .map((e) =>
              GestureDetector(
                onTap: () {
                  setState(() {
                    categories.forEach((element) {
                      element['isSelected'] = false;
                    });
                    e['isSelected'] = !e['isSelected'];
                  });
                },
                child: ItemCategorySliderWidget(
                  text: e['name'],
                  isSelected: e['isSelected'],
                ),
              ))
              .toList(),
        ));
  }
}
