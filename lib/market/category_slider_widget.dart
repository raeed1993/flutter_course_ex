import 'package:example_project/fundelmant/constant.dart';
import 'package:flutter/material.dart';

class CategorySliderWidget extends StatelessWidget {
  CategorySliderWidget({super.key});

  List<Map> categories = [
    {'name': 'Vegetables', 'isSelected': false},
    {'name': 'Fruit', 'isSelected': false},
    {'name': 'Dry', 'isSelected': true},
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 30,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: categories
            .map((e) => ItemCategorySliderWidget(
                  title: e['name'],
                  isSelected: e['isSelected'],
                ))
            .toList(),
      ),
    );
  }
}

class ItemCategorySliderWidget extends StatefulWidget {
  ItemCategorySliderWidget(
      {super.key, required this.title, required this.isSelected});

  final String title;
  bool isSelected;

  @override
  State<ItemCategorySliderWidget> createState() =>
      _ItemCategorySliderWidgetState();
}

class _ItemCategorySliderWidgetState extends State<ItemCategorySliderWidget> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: GestureDetector(
        onTap: () {

          setState(() {
            widget.isSelected = !widget.isSelected;
          });
        },
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 8),
          decoration: BoxDecoration(
              color: widget.isSelected ? orangeColor : Colors.transparent,
              borderRadius: BorderRadius.circular(10)),
          margin: EdgeInsets.symmetric(horizontal: 15),
          child: Text(
            widget.title,
            style: TextStyle(color: widget.isSelected ? whitColor : greyColor),
          ),
        ),
      ),
    );
  }
}
