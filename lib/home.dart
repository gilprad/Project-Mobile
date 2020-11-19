import 'package:flutter/material.dart';
import 'package:gurita/components/card.dart';
import 'package:gurita/components/constant.dart';
import 'package:gurita/components/profile.dart';
import 'package:gurita/components/responsive.dart';
import 'package:gurita/components/teks.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      body: Container(
        width: displayWidth(context),
        height: displayHeight(context),
        padding: EdgeInsets.symmetric(
            horizontal: displayWidth(context) * 0.05,
            vertical: displayHeight(context) * 0.07),
        child: Column(
          children: [
            Profile(
              user: "Anda",
              image: "assets/icons/math.png",
            ),
            SizedBox(
              height: displayHeight(context) * 0.03,
            ),
            Teks(
              isi: "Tahukah kamu?",
              size: 25,
              warna: Colors.white,
            ),
            SizedBox(height: displayHeight(context) * 0.03),
            // ListView(children: [],)

            Cardss(
              image: "assets/images/1.png",
              content: "awokaowkoakwoakwokawok",
            ),
            SizedBox(
              height: displayHeight(context) * 0.03,
            ),
            Cardss(
              image: "assets/images/1.png",
              content: "awokaowkoakwoakwokawok",
            ),
            SizedBox(
              height: displayHeight(context) * 0.03,
            ),
            Cardss(
              image: "assets/images/1.png",
              content: "awokaowkoakwoakwokawok",
            )
          ],
        ),
      ),
    );
  }
}
