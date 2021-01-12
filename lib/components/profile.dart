import 'package:flutter/material.dart';
import 'package:gurita/components/responsive.dart';
import 'package:gurita/components/teks.dart';

class Profile extends StatelessWidget {
  final String user;
  final String image;
  Profile({
    this.user,
    this.image,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
        width: displayWidth(context),
        height: displayHeight(context) * 0.11,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(9), color: Colors.white),
        child: Stack(
          children: [
            Positioned(
                bottom: 15,
                left: 20,
                top: 15,
                child: CircleAvatar(
                  radius: 22,
                  child: Image.asset("${image}"),
                )),
            Positioned(
              top: 15,
              left: 80,
              child: Teks(
                isi: "Halo ${user}",
                size: 18,
              ),
            ),
            Positioned(
              bottom: 20,
              left: 80,
              child: Teks(
                isi: "Mau belajar apa hari ini?",
                size: 18,
              ),
            )
          ],
        ));
  }
}
