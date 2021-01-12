import 'package:flutter/material.dart';
import 'package:gurita/components/constant.dart';
import 'package:gurita/components/responsive.dart';
import 'package:gurita/components/teks.dart';

class MasukModul extends StatefulWidget {
  @override
  _MasukModulState createState() => _MasukModulState();
}

class _MasukModulState extends State<MasukModul> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Container(
            width: displayWidth(context),
            height: 500,
            color: primaryColor,
            child: Column(
              children: [
                SizedBox(
                  height: 10,
                ),
                CircleAvatar(
                  radius: 15,
                  backgroundImage: AssetImage("assets/icons/math.png"),
                ),
                SizedBox(
                  height: 10,
                ),
                Teks(
                  isi: "MATEMATIKA",
                  size: 18,
                  weight: FontWeight.bold,
                )
              ],
            ),
          ),
          leading: IconButton(
              icon: Icon(
                Icons.arrow_back,
                color: Colors.black,
              ),
              onPressed: () {
                Navigator.pop(context);
              })),
      body: Container(
        width: displayWidth(context),
        height: displayHeight(context),
        padding: EdgeInsets.symmetric(
            vertical: displayHeight(context) * 0.03,
            horizontal: displayWidth(context) * 0.03),
        child: Column(
          children: [
            Container(
              height: 200,
              decoration: BoxDecoration(
                  color: Colors.yellow, borderRadius: BorderRadius.circular(9)),
              child: Stack(
                children: [],
              ),
            )
          ],
        ),
      ),
    );
  }
}
