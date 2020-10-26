import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      color: Color.fromRGBO(255, 154, 68, 1),
      height: size.height,
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image(
            image: AssetImage("assets/icons/gs.png"),
            width: 280,
          ),
          Text("G U R I T A", style: TextStyle(fontSize: 48, fontWeight: FontWeight.w800),)],
      ),
    );
  }
}
