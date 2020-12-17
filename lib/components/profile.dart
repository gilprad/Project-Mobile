import 'package:flutter/material.dart';
import 'package:gurita/components/responsive.dart';
import 'package:gurita/components/teks.dart';

class Profile extends StatelessWidget {
  final String user;
  final String image;
  Profile({this.user, this.image});
  @override
  Widget build(BuildContext context) {
    return Container(
        width: displayWidth(context),
        height: displayHeight(context) * 0.1,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(9), color: Colors.white),
        child: Column(
          children: [
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                SizedBox(
                  width: displayWidth(context) * 0.07,
                ),
                CircleAvatar(
                  child: Image.asset("${image}"),
                ),
                SizedBox(
                  width: displayWidth(context) * 0.07,
                ),
                Teks(
                  isi: "Halo ${user}",
                  size: 20,
                )
              ],
            )
          ],
        ));
  }
}
