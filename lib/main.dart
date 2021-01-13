import 'package:flutter/material.dart';
import 'package:gurita/view/splashscreen.dart';
import 'package:gurita/view/splashscreen.dart';

Future<void> main() async {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Gurita',
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}
