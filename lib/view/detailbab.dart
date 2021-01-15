import 'package:flutter/material.dart';
import 'package:gurita/components/constant.dart';
import 'package:gurita/components/responsive.dart';
import 'package:gurita/components/teks.dart';

class DetailBab extends StatefulWidget {
  @override
  _DetailBabState createState() => _DetailBabState();
}

class _DetailBabState extends State<DetailBab> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: primaryColor,
        title: Teks(
          isi: "Detail bab Vektor",
        ),
      ),
      body: Container(
        width: displayWidth(context),
        height: displayHeight(context),
        padding: EdgeInsets.symmetric(
            vertical: displayHeight(context) * 0.03,
            horizontal: displayWidth(context) * 0.03),
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Teks(
              isi: "Vektor",
              size: 40,
              weight: FontWeight.bold,
            ),
            SizedBox(
              height: 20,
            ),
            Teks(
              size: 20,
              arah: TextAlign.center,
              line: 99,
              isi:
                  "Pengertian Vektor Matematika. Vektor adalah sebuah besaran yang memiliki arah. Vektor juga dapat digambarkan sebagai panah yang menunjukan arah vektor dan panjang garisnya disebut juga Besar Vektor. Vektor juga memiliki beberapa jenis tersendiri, yaitu sebagai berikut : 1. Vektor Posisi : Adalah Suatu vektor yang posisi titik awalnya di titik 0 (0,0) dan titik ujungnya di A (a1, a2). Vektor Nol : Adalah Suatu vektor yang panjangnya nol dan dinotasikan. Vektor nol tidak memiliki arah vektor yang jelas. Vektor Satuan :Adalah Suatu vektor yang panjangnya satu satuan. Vektor satuan ",
            )
          ],
        ),
      ),
    );
  }
}
