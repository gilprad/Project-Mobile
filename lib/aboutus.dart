import 'package:flutter/material.dart';
import 'package:gurita/components/constant.dart';
import 'package:gurita/components/responsive.dart';
import 'package:gurita/components/teks.dart';

class AboutUsPage extends StatefulWidget {
  @override
  _AboutUsPageState createState() => _AboutUsPageState();
}

class _AboutUsPageState extends State<AboutUsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
              color: Colors.black,
            ),
            onPressed: () {
              Navigator.pop(context);
            }),
        backgroundColor: primaryColor,
        title: Teks(
          isi: "Tentang kami",
          size: 20,
          warna: Colors.black,
        ),
      ),
      backgroundColor: primaryColor,
      body: Container(
        width: displayWidth(context),
        height: displayHeight(context),
        padding: EdgeInsets.symmetric(horizontal: displayWidth(context) * 0.02),
        child: Column(
          children: [
            SizedBox(
              height: 15,
            ),
            Container(
                width: displayWidth(context) * 0.4,
                height: displayHeight(context) * 0.3,
                child: Image.asset("assets/icons/main.png")),
            Teks(
              isi: "Aplikasi Gurita",
              size: 24,
              weight: FontWeight.bold,
            ),
            SizedBox(height: 25),
            Teks(
              isi:
                  "Gurita singkatan dari Guru Kita merupakan aplikasi berbasis mobile yang mendukung SDGS ke 4 yaitu berkaitan dengan edukasi. Gurita merupakan platform belajar dengan user target yaitu siswa sekolah. Dalam aplikasi Gurita, kami menyediakan berbagai modul serta pembahasan terkait mata pelajaran yang diperlukan oleh siswa.",
              size: 20,
              line: 20,
              arah: TextAlign.center,
            )
          ],
        ),
      ),
    );
  }
}
