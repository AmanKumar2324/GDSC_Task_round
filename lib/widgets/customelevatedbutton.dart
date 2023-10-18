import 'package:flutter/material.dart';

class CustomElevatedButtonWidget extends StatelessWidget {
  final String buttonText;
  final VoidCallback onPressed;

  CustomElevatedButtonWidget({required this.buttonText, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.4,
      // color: Theme.of(context).primaryColor,
      child: ElevatedButton(
        onPressed: onPressed,
        child: Text(
          buttonText,
          style: TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontFamily: 'Lato',
              fontWeight: FontWeight.w500),
        ),
        style: ElevatedButton.styleFrom(
            backgroundColor: Theme.of(context).primaryColor),
      ),
    );
  }
}
