import 'dart:async';
import 'package:flutter/material.dart';
import 'package:gurita/constant.dart';
import 'package:gurita/login.dart';

class splashScreen extends StatefulWidget {
  @override
  _splashScreenState createState() => _splashScreenState();
}

class _splashScreenState extends State<splashScreen> {
  start() async {
    var duration = Duration(seconds: 2);
    return Timer(duration, () {
      // if (token==null){
      Navigator.push(context, MaterialPageRoute(builder: (context) => login()));
    });

    @override
    void initState() {
      start();
      super.initState();
    }
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: primaryColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset("assets/icons/gs.png"),
          Text(
            "G U R I T A",
            style: TextStyle(fontSize: 50),
          )
        ],
      ),
    );
  }
}
