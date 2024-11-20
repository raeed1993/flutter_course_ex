import 'package:flutter/material.dart';

import 'constant.dart';
import 'custome_text_field.dart';


class MyCardStatFul extends StatefulWidget {
  const MyCardStatFul({super.key});

  @override
  State<MyCardStatFul> createState() => _MyCardStatFulState();
}

class _MyCardStatFulState extends State<MyCardStatFul> {
  TextEditingController? _phoneController;
  TextEditingController? _emailController;
  bool _checkboxValue = false;
  int _dropDownValue = 1;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _phoneController = TextEditingController();
    _emailController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: tealColor,
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 65,
                backgroundImage: AssetImage('images/cloud.png'),
              ),
              Container(
                margin: EdgeInsets.only(top: 20),
                child: Text(
                  'Mohamd Makiin',
                  style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'DancingScript',
                      fontSize: 35,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                margin: EdgeInsets.only(bottom: 10),
                child: Text(
                  'Flutter Developer',
                  style: TextStyle(
                      color: Colors.white.withOpacity(0.6),
                      fontWeight: FontWeight.bold,
                      letterSpacing: 3.9,
                      fontSize: 20),
                ),
              ),
              Container(
                width: 155,
                margin: EdgeInsets.only(bottom: 10),
                child: Divider(
                  height: 8,
                  color: Colors.white.withOpacity(0.5),
                ),
              ),
              CustomTextFieldWidget(
                inputType: TextInputType.phone,
                icon: Icon(
                  Icons.phone,
                  color: tealColor,
                ),
                controller: _phoneController!,
              ),
              CustomTextFieldWidget(
                inputType: TextInputType.emailAddress,
                icon: Icon(
                  Icons.email,
                  color: tealColor,
                ),
                controller: _emailController!,
              ),
              GestureDetector(
                onTap: () {
                  print(_phoneController!.text);
                  print(_emailController!.text);
                },
                child: Container(
                  margin: EdgeInsets.symmetric(vertical: 10),
                  width: 100,
                  height: 50,
                  color: blueColor,
                  child: Center(child: Text('Submit')),
                ),
              ),
              Checkbox(
                  value: _checkboxValue,
                  onChanged: (value) {
                    setState(() {
                      _checkboxValue = value!;
                    });
                  }),
              DropdownButton(
                  value: _dropDownValue,
                  items: [
                    DropdownMenuItem(value: 1, child: Text('data1')),
                    DropdownMenuItem(value: 2, child: Text('data2')),
                    DropdownMenuItem(value: 3, child: Text('data3')),
                    DropdownMenuItem(value: 4, child: Text('data4')),
                    DropdownMenuItem(value: 5, child: Text('data5')),
                  ],
                  onChanged: (value) {
                    setState(() {});
                    _dropDownValue = value!;
                  }),
            ],
          ),
        ),
      ),
    );
  }
}
