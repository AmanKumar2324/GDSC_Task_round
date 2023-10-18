import 'package:flutter/material.dart';

class CustomTextfieldWidget extends StatefulWidget {
  final String hinttext;
  final Icon leadingIcon;
  final bool isPassword;
  
  CustomTextfieldWidget({required this.hinttext, required this.leadingIcon, this.isPassword = false});

  @override
  _CustomTextfieldWidgetState createState() => _CustomTextfieldWidgetState();
}

class _CustomTextfieldWidgetState extends State<CustomTextfieldWidget> {
  bool _obscureText = true;

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
        obscureText: widget.isPassword ? _obscureText : false,
        decoration: InputDecoration(
            border: InputBorder.none,
            hintText: widget.hinttext,
            prefixIcon: widget.leadingIcon,
            suffixIcon: widget.isPassword 
              ? IconButton(
                  icon: Icon(
                    _obscureText ? Icons.visibility : Icons.visibility_off,
                  ),
                  onPressed: () {
                    setState(() {
                      _obscureText = !_obscureText;
                    });
                  })
              : null),
      ),
      height: ph * 0.06,
    );
  }
}
