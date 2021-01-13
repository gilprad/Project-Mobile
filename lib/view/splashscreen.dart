import 'dart:async';
import 'package:flutter/material.dart';
import 'package:gurita/components/constant.dart';
import 'package:gurita/components/responsive.dart';
import 'package:gurita/components/routes.dart';
import 'package:gurita/components/teks.dart';
import 'package:gurita/view/home.dart';
import 'package:gurita/view/login.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void startTimer() {
    Timer(Duration(seconds: 3), () {
      Routes.changePage(context, LoginPage());
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    startTimer();
  }

  @override
  Widget build(BuildContext context) {
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
