import 'package:flutter/material.dart';

import 'widgets/category_slider_widget.dart';
import 'widgets/home_app_bar_widget.dart';
import 'widgets/home_category_section_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          HomeAppBarWidget(),
          HomeCategoryBarWidget(),
          HomeSectionCategoryWidget(),
        ],
      ),
    );
  }
}
