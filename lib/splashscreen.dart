import 'dart:async';
import 'package:flutter/material.dart';
import 'package:gurita/components/constant.dart';
import 'package:gurita/components/responsive.dart';
import 'package:gurita/components/teks.dart';
import 'package:gurita/login.dart';

class splashScreen extends StatefulWidget {
  @override
  _splashScreenState createState() => _splashScreenState();
}

class _splashScreenState extends State<splashScreen> {
  start() async {
    var duration = Duration(seconds: 2);
    return Timer(duration, () {
      Navigator.push(context, MaterialPageRoute(builder: (context) => login()));
    });
  }

  @override
  void initState() {
    start();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: primaryColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Image.asset(
              "assets/icons/main.png",
              width: displayWidth(context) * 0.7,
            ),
          ),
          SizedBox(height: displayHeight(context) * 0.08),
          Center(
            child: Teks(
              isi: "G U R I T A",
              size: 40,
            ),
          )
        ],
      ),
    );
  }
}
