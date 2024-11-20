import 'package:example_project/fundelmant/constant.dart';
import 'package:flutter/material.dart';

class ItemListProductWidget extends StatelessWidget {
  const ItemListProductWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 200,
      child: Stack(
        children: [
          Positioned(
            top: 38,
            right: 20,
            left: 20,
            child: Container(
              height: 185,
              decoration: BoxDecoration(
                  color: whitColor,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(70),
                    topRight: Radius.circular(70),
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20),
                  ),
                  boxShadow: [
                    BoxShadow(
                        color: blackColor.withOpacity(0.25),
                        offset: Offset(0, 4),
                        blurRadius: 10,
                        spreadRadius: 0),
                  ]),
              child: Padding(
                padding: const EdgeInsets.all(8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      'Keto Salad',
                      style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 18),
                    ),
                    Row(
                      mainAxisAlignment:
                      MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Beans & fruits',
                          style: TextStyle(
                              color: k9F9F9FColor,
                              fontWeight: FontWeight.w500,
                              fontSize: 14),
                        ),
                        Container(
                          height: 16,
                          width: 30,
                          decoration: BoxDecoration(
                              color: primaryColor,
                              borderRadius:
                              BorderRadius.circular(8)),
                          child: Row(
                            mainAxisAlignment:
                            MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.star,
                                size: 11,
                                color: whitColor,
                              ),
                              Text(
                                '4.9',
                                style: TextStyle(
                                    color: whitColor,
                                    fontSize: 8,
                                    fontWeight:
                                    FontWeight.w600),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
              top: -45,
              right: -48,
              child: Image(
                height: 280,
                fit: BoxFit.fitHeight,
                image: AssetImage('images/keto.png'),
              ))
        ],
      ),
    );

  }
}
