import 'package:flutter/material.dart';

import '../fundelmant/constant.dart';
import '../fruit/widgets/home_app_bar_widget.dart';
import 'category_slider_widget.dart';
import 'sub_category_section_widget.dart';

class HomeMarketScreen extends StatelessWidget {
  const HomeMarketScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          HomeAppBarWidget(),
          Container(
              margin: EdgeInsets.symmetric(horizontal: 35),
              child: CategorySliderWidget()),
          Expanded(
            child: ListView(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15.0,vertical: 25),
                  child: SubCategorySectionWidget(),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15.0,vertical: 25),
                  child: SubCategorySectionWidget(),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15.0,vertical: 25),
                  child: SubCategorySectionWidget(),
                ),
              ],
            ),
          ),

        ],
      ),
    );
  }
}
