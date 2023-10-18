import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Detect the brightness of the current theme
    var brightness = Theme.of(context).brightness;

    Color? backgroundColor = (brightness == Brightness.light)
        ? Colors.blue[50] // Light blue for light theme
        : Colors.blue[900]; // Dark blue for dark theme

    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        title: Text('Theme Color App'),
      ),
      body: Center(
        child: Text('Change your phone\'s theme to see the magic!'),
      ),
    );
  }
}
