import 'package:example_project/fundelmant/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_stars/flutter_rating_stars.dart';

class SubCategorySectionWidget extends StatelessWidget {
  SubCategorySectionWidget({super.key});

  List<Map> products = [
    {'isFavorite': true},
    {'isFavorite': true},
    {'isFavorite': true},
    {'isFavorite': true},
    {'isFavorite': true},
    {'isFavorite': true},
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 50,
          child: Text.rich(
            TextSpan(children: [
              TextSpan(
                  text: 'Organic Fruits  ',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      letterSpacing: .8)),
              TextSpan(
                  text: ' (20 % off)',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: primaryColor,
                    fontSize: 15,
                  )),
            ]),
          ),
        ),
        Container(
            height: 30,
            margin: EdgeInsets.only(top: 10),
            child: Text('pick up from organic farms')),
        Container(
          height: 200,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: products
                .map((e) => ProductImageWidget(
                      isFavorite: e['isFavorite'],
                    ))
                .toList(),
          ),
        ),
      ],
    );
  }
}

class ProductImageWidget extends StatefulWidget {
  ProductImageWidget({super.key, required this.isFavorite});

  bool isFavorite;

  @override
  State<ProductImageWidget> createState() => _ProductImageWidgetState();
}

class _ProductImageWidgetState extends State<ProductImageWidget> {
  double starsValue = 4;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 120,
          child: GestureDetector(
            onTap: () {
              setState(() {
                widget.isFavorite = !widget.isFavorite;
              });
            },
            child: Stack(
              children: [
                Positioned(
                    child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 10),
                  width: 90,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                          image: AssetImage('images/fruit1.png'),
                          fit: BoxFit.cover)),
                )),
                Positioned(
                    top: 2,
                    right: 0,
                    left: 50,
                    child: CircleAvatar(
                      backgroundColor: whitColor,
                      radius: 15,
                      child: IconButton(
                        icon: widget.isFavorite
                            ? Icon(
                                size: 15,
                                Icons.favorite,
                                color: Colors.red,
                              )
                            : Icon(
                                size: 15,
                                Icons.favorite_border,
                                color: Colors.red,
                              ),
                        onPressed: () {},
                      ),
                    ))
              ],
            ),
          ),
        ),
        RatingStars(
          value: starsValue,
          onValueChanged: (v) {
            //
            setState(() {
              starsValue = v;
            });
          },
          starBuilder: (index, color) => Icon(
            Icons.star,
            color: color,
          ),
          starCount: 5,
          starSize: 20,
          valueLabelColor: const Color(0xff9b9b9b),
          valueLabelTextStyle: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w400,
              fontStyle: FontStyle.normal,
              fontSize: 10.0),
          valueLabelRadius: 8,
          maxValue: 5,
          starSpacing: 1,
          maxValueVisibility: true,
          valueLabelVisibility: false,
          animationDuration: Duration(milliseconds: 1000),
          valueLabelMargin: const EdgeInsets.only(right: 2),
          starOffColor: const Color(0xffe7e8ea),
          starColor: Colors.orange,
        ),
        Text('Oranges',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 16),),
        Text.rich(
          TextSpan(
            children: [
              TextSpan(text: '\$ ',style: TextStyle(fontWeight: FontWeight.w600)),
              TextSpan(text: ' 330 Usd /kg',style: TextStyle(fontSize: 14))
            ]
          )
        ),

      ],
    );
  }
}
