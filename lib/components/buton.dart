import 'package:flutter/material.dart';
import 'package:gurita/components/responsive.dart';
import 'package:gurita/components/teks.dart';

class Buttons extends StatelessWidget {
  final String isiButton;
  Buttons({this.isiButton});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: displayHeight(context) * 0.05,
      width: displayWidth(context) * 0.6,
      decoration: BoxDecoration(
          color: Colors.blueGrey,
          borderRadius: BorderRadius.all(Radius.circular(10))),
      child: Center(
          child: Teks(
        isi: "${isiButton}",
        size: 20,
        warna: Colors.white,
      )),
    );
  }
}
