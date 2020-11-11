import 'package:flutter/material.dart';
import 'package:gurita/login.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Gurita",
      home: login(),
    );
  }
}
