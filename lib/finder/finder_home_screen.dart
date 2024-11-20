import 'package:example_project/fundelmant/constant.dart';
import 'package:example_project/finder/widgets/row_title_section_widget.dart';
import 'package:flutter/material.dart';

import 'widgets/card_image_column_widget.dart';
import 'widgets/finder_app_bar_widget.dart';
import 'widgets/item_list_product_widget.dart';
import 'widgets/stack_start_cook.dart';

class FinderHomScreen extends StatelessWidget {
  const FinderHomScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(120), child: FinderAppBarWidget()),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 16.0, vertical: 16),
              child: Text(
                'Healthy Recipes',
                style: TextStyle(fontWeight: FontWeight.w700, fontSize: 24),
              ),
            ),
            RowTitleSectionWidget(title: 'with features'),
            Container(
              height: 250,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  ItemListProductWidget(),
                  ItemListProductWidget(),
                  ItemListProductWidget(),
                  ItemListProductWidget(),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              height: 128,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('images/finder/ad.png'),
                      fit: BoxFit.cover),
                  borderRadius: BorderRadius.circular(20)),
            ),
            RowTitleSectionWidget(title: 'with benefits'),
            CardImageColumnWidget(),
            CardImageColumnWidget(),
            CardImageColumnWidget(),
            CardImageColumnWidget(),
            StartStackCookWidget(),
          ],
        ),
      ),

    );
  }
}
