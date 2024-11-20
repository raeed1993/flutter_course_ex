import 'package:example_project/fundelmant/constant.dart';
import 'package:flutter/material.dart';

import '../cook_navbar.dart';

class CookHomeScreen extends StatelessWidget {
  const CookHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: primaryColor,
        leading: SizedBox(
          height: 32,
          child: IconButton(
              icon: Icon(
                Icons.list,
                color: blackColor,
              ),
              onPressed: () {}),
        ),
        title: SizedBox(
          height: 32,
          child: Text.rich(TextSpan(children: [
            TextSpan(
                text: 'Recipe ',
                style: TextStyle(
                  color: blackColor,
                  fontWeight: FontWeight.w700,
                  fontSize: 26,
                  letterSpacing: 1,
                )),
            TextSpan(
                text: 'finder',
                style: TextStyle(
                  color: blackColor,
                  fontWeight: FontWeight.w500,
                  fontSize: 26,
                  letterSpacing: 1,
                )),
          ])),
        ),
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(70),
          child: Container(
            height: 70,
            padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 15),
            child: TextFormField(
              decoration: InputDecoration(
                  fillColor: whitColor,
                  filled: true,
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                      borderSide: BorderSide.none),
                  labelText: 'Search',
                  labelStyle: TextStyle(color: greyColor.withOpacity(0.6)),
                  prefixIcon: Icon(
                    Icons.search,
                    color: greyColor.withOpacity(0.6),
                  )),
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 65,
              padding: EdgeInsets.all(16),
              child: Text(
                'Healthy Recipes',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w700,
                  fontFamily: 'Urbanist',
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 16),
              height: 24,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'with features',
                    style: TextStyle(
                      color: primaryColor,
                      fontSize: 24,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  Text(
                    'See all',
                    style: TextStyle(
                        color: k9F9F9FColor,
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        letterSpacing: 1),
                  ),
                ],
              ),
            ),

            //list of stack

            Container(
              height: 235,
              padding: EdgeInsets.all(0),
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  SizedBox(
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
                  ),
                  SizedBox(
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
                  ),
                  SizedBox(
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
                  ),
                ],
              ),
            ),

            Container(
              height: 128,
              margin: EdgeInsets.all(16),
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('images/learn_cook.png'),
                      fit: BoxFit.cover),
                  borderRadius: BorderRadius.circular(16)),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 16),
              height: 24,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'with benefits',
                    style: TextStyle(
                      color: primaryColor,
                      fontSize: 24,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  Text(
                    'See all',
                    style: TextStyle(
                        color: k9F9F9FColor,
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        letterSpacing: 1),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: whitColor,
                  boxShadow: [
                    BoxShadow(
                        color: blackColor.withOpacity(0.1),
                        offset: Offset(0, 4),
                        blurRadius: 40,
                        spreadRadius: 0)
                  ]),
              child: ListTile(
                contentPadding: EdgeInsets.symmetric(horizontal: 8),
                leading: Container(
                  width: 90,
                  height: 72,
                  margin: EdgeInsets.all(0),
                  decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                        image:
                            AssetImage('images/cooks/mixed-vegetables.png'),
                        fit: BoxFit.cover,
                      )),
                ),
                title: Text(
                  'Mung bean Salad',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
                ),
                subtitle: Padding(
                  padding: const EdgeInsets.only(top: 6),
                  child: Row(
                    children: [
                      Icon(
                        Icons.check_circle_outline,
                        size: 12,
                        color: primaryColor,
                      ),
                      SizedBox(
                        width: 6,
                      ),
                      Text(
                        'Reduce Chronic Disease Risk',
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 14,
                            color: primaryColor),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    child: ListTile(
                      leading: Container(
                        height: 48,
                        width: 48,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.orange,
                            image: DecorationImage(
                              image: AssetImage('images/persons/img.png'),
                            )),
                      ),
                      title: Text(
                        'Richard Flynn',
                        style: TextStyle(
                            fontWeight: FontWeight.w600, fontSize: 16),
                      ),
                      trailing: Image(
                        height: 19,
                        image: AssetImage('images/chat.png'),
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 20),
                    width: 320,
                    child: Text(
                      'Loving this recipe! So many delicious recipes to choose from...',
                      style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w500,
                        letterSpacing: 0.5,
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 20),
                    width: 155,
                    child: Row(
                      children: [
                        Icon(
                          Icons.favorite_border,
                          color: Colors.red,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          '65',
                          style: TextStyle(
                              color: k9F9F9FColor,
                              fontSize: 12,
                              letterSpacing: 0.5,
                              fontWeight: FontWeight.w500),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          ' 1 month ago',
                          style: TextStyle(
                              color: k9F9F9FColor,
                              fontSize: 12,
                              letterSpacing: 0.5,
                              fontWeight: FontWeight.w500),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 56,)

            // SizedBox(
            //   height: 84,
            //   child: Stack(
            //     children: [
            //       Align(
            //         alignment: Alignment.bottomCenter,
            //         child: Container(
            //           padding: EdgeInsets.symmetric(horizontal: 16),
            //           height: 56,
            //           decoration: BoxDecoration(
            //             image: DecorationImage(
            //                 image: AssetImage('images/navigation.png'),
            //                 fit: BoxFit.fill),
            //           ),
            //         ),
            //       ),
            //       Positioned(
            //         right: 35,
            //         left: 35,
            //         top: 40,
            //         child: Row(
            //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //           children: [
            //             Icon(
            //               Icons.home_outlined,
            //               color: k9F9F9FColor,
            //             ),
            //             Icon(Icons.favorite_border, color: k9F9F9FColor),
            //             Icon(Icons.bookmark_border_sharp, color: k9F9F9FColor),
            //             Icon(Icons.person_outlined, color: k9F9F9FColor),
            //           ],
            //         ),
            //       ),
            //       Positioned(
            //         right: 50,
            //         left: 50,
            //         top: 0,
            //         child: CircleAvatar(
            //           backgroundColor: primaryColor,
            //           radius: 30,
            //           child: Icon(
            //             Icons.blur_circular,
            //             color: whitColor,
            //           ),
            //         ),
            //       )
            //     ],
            //   ),
            // ),
          ],
        ),
      ),
      bottomSheet: SizedBox(
        height: 56,
        child: Stack(
          children: [
            Container(
              color: Colors.transparent,
              child: CustomPaint(
                size: Size(400, 56),
                painter: CustomNavbarCustomPainter(),
              ),
            ),
            Positioned(
                child: Center(
              heightFactor: 0.01,
              child: FloatingActionButton(
                child: Icon(Icons.blur_circular),
                backgroundColor: primaryColor,
                onPressed: () {},
              ),
            )),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 16),
              height: 50,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(
                    Icons.home_outlined,
                    color: k9F9F9FColor,
                  ),
                  Icon(Icons.favorite_border, color: k9F9F9FColor),
                  Icon(Icons.bookmark_border_sharp, color: k9F9F9FColor),
                  Icon(Icons.person_outlined, color: k9F9F9FColor),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
