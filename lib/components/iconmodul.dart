import 'package:flutter/material.dart';
import 'package:gurita/components/teks.dart';

class IconModul extends StatelessWidget {
  final String gambar;
  final String matpel;
  IconModul({this.gambar, this.matpel});
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          CircleAvatar(
            radius: 28,
            backgroundImage: AssetImage("assets/icons/${gambar}.png"),
          ),
          SizedBox(
            height: 5,
          ),
          Teks(
            isi: "${matpel}",
            weight: FontWeight.bold,
          )
        ],
      ),
    );
  }
}
