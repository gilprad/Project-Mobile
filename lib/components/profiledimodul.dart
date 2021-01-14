import 'package:flutter/material.dart';
import 'package:gurita/components/constant.dart';
import 'package:gurita/components/responsive.dart';
import 'package:gurita/components/teks.dart';

class ProfileDiModul extends StatelessWidget {
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
                  child: Image.asset(""),
                )),
            Positioned(
              top: 15,
              left: 80,
              child: Teks(
                isi: "Halo Anda",
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
            ),
            Positioned(
              right: 13,
              top: 25,
              child: _childPopup(),
            )
          ],
        ));
  }

  Widget _childPopup() => PopupMenuButton<int>(
        itemBuilder: (context) => [
          PopupMenuItem(
            value: 1,
            child: Text(
              "Kelas 1",
              style: TextStyle(color: textColor, fontWeight: FontWeight.w700),
            ),
          ),
          PopupMenuItem(
            value: 2,
            child: Text(
              "Kelas 2",
              style: TextStyle(color: textColor, fontWeight: FontWeight.w700),
            ),
          ),
          PopupMenuItem(
            value: 3,
            child: Text(
              "Kelas 3",
              style: TextStyle(color: textColor, fontWeight: FontWeight.w700),
            ),
          ),
        ],
        child: Container(
          height: 30,
          width: 100,
          decoration: ShapeDecoration(
            color: Colors.grey,
            shape: StadiumBorder(
              side: BorderSide(color: textColor, width: 0.2),
            ),
          ),
          child: Center(
              child: Teks(
            isi: "Kelas: -",
            size: 18,
          )),
        ),
      );
}
