import 'package:flutter/material.dart';
import 'package:login_app/views/login/login_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: 'Lato',
        primarySwatch: Colors.deepPurple,
        brightness: Brightness.light,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      // darkTheme: ThemeData(
      //   fontFamily: 'Lato',
      //     primarySwatch: Colors.deepPurple, brightness: Brightness.dark),
      home: LoginScreen(),
    );
  }
}
