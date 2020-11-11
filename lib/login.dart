import 'package:flutter/material.dart';
import 'package:gurita/constant.dart';

class login extends StatefulWidget {
  @override
  _loginState createState() => _loginState();
}

class _loginState extends State<login> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        width: size.width,
        color: primaryColor,
        child: Container(
          width: size.width * 0.5,
          height: size.height * 0.3,
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(20)),
          padding: EdgeInsets.symmetric(vertical: 90.0),
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.only(topLeft: Radius.zero)),
              )
            ],
          ),
        ),
      ),
    );
  }
}
