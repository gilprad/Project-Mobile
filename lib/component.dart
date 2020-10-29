import 'package:flutter/material.dart';
import 'package:gurita/constant.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Background();
  }
}

class Background extends StatelessWidget {
  final Widget child;
  const Background({
    Key key,
    @required this.child
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      color: primaryColor,
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
