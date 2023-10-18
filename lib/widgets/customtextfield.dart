import 'package:flutter/material.dart';

class CustomTextfieldWidget extends StatelessWidget {
  final String hinttext;
  final Icon leadingIcon;

  CustomTextfieldWidget({required this.hinttext, required this.leadingIcon});

  @override
  Widget build(BuildContext context) {
    var ph = MediaQuery.of(context).size.height;
    var pw = MediaQuery.of(context).size.width;
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          border: Border.all(width: 0.2),
          color: Colors.white54),
      child: TextField(
        autocorrect: false,
        decoration: InputDecoration(
            border: InputBorder.none,
            hintText: hinttext,
            prefixIcon: leadingIcon),
      ),
      height: ph * 0.06,
    );
  }
}
