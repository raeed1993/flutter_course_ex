import 'package:flutter/material.dart';

import 'constant.dart';

class CustomTextFieldWidget extends StatefulWidget {
  const CustomTextFieldWidget(
      {super.key,
      required this.controller,
      required this.icon,
      required this.inputType});

  final TextEditingController controller;
  final Widget icon;
  final TextInputType inputType;

  @override
  State<CustomTextFieldWidget> createState() => _CustomTextFieldWidgetState();
}

class _CustomTextFieldWidgetState extends State<CustomTextFieldWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      child: TextFormField(
        keyboardType: widget.inputType,
        controller: widget.controller,
        style: TextStyle(color: tealColor),
        decoration: InputDecoration(
            labelStyle: TextStyle(color: tealColor),
            prefixIcon: widget.icon,
            fillColor: Colors.white,
            filled: true,
            focusColor: Colors.white),
      ),
    );
  }
}
