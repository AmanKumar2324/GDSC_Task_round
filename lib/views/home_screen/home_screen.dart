import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Detect the brightness of the current theme
    var brightness = Theme.of(context).brightness;

    Color? backgroundColor = (brightness == Brightness.light)
        ? Theme.of(context).primaryColorLight // Light blue for light theme
        : Theme.of(context).primaryColorDark; // Dark blue for dark theme

    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        title: Text(
          'Task Round',
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 26),
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back),
          color: Colors.white,
        ),
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          Text(
            'Welcome',
            style: TextStyle(
                color: Theme.of(context).primaryColorDark,
                fontSize: 28,
                fontFamily: 'Lato',
                fontWeight: FontWeight.bold),
          ),
          Text(
            'to the home screen',
            style: TextStyle(
                color: Theme.of(context).primaryColorDark,
                fontSize: 28,
                fontFamily: 'Lato',
                fontWeight: FontWeight.bold),
          ),
          Center(
            child: Container(
              height: MediaQuery.of(context).size.height * 0.3,
              child: Image.asset(
                'assets/images/png/thankyou.gif',
              ),
            ),
          ),
        ],
      ),
    );
  }
}
