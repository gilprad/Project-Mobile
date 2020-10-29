import 'package:flutter/material.dart';
import 'package:gurita/constant.dart';
import 'package:gurita/login_screen.dart';
import 'package:gurita/welcome_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Gurita",
      theme: ThemeData(
        primaryColor: primaryColor,
        scaffoldBackgroundColor: Colors.white
      ),
      home: Login(),
    );
  }
}

