import 'package:flutter/material.dart';
import 'package:gurita/home.dart';
import 'package:gurita/login.dart';
import 'package:gurita/signup.dart';
import 'package:gurita/splashscreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Gurita",
      home: HomePage(),
    );
  }
}
