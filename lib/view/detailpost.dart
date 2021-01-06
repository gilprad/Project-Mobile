import 'package:flutter/material.dart';
import 'package:gurita/components/constant.dart';
import 'package:gurita/components/responsive.dart';
import 'package:gurita/components/teks.dart';

class DetailPost extends StatefulWidget {
  final String img;
  DetailPost({this.img});
  @override
  _DetailPostState createState() => _DetailPostState();
}

class _DetailPostState extends State<DetailPost> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
              icon: Icon(Icons.arrow_back),
              onPressed: () {
                Navigator.pop(context);
              }),
          title: Teks(isi: "Detail Post"),
          backgroundColor: primaryColor,
        ),
        body: Container(
            width: displayWidth(context),
            height: displayHeight(context),
            child: ListView(
              children: [
                Container(
                  child: Image.asset('assets/images/6.png'),
                ),
                SizedBox(
                  height: 15,
                ),
                Teks(
                  isi: 'Judul',
                  size: 24,
                  weight: FontWeight.bold,
                  arah: TextAlign.center,
                ),
                SizedBox(
                  height: 20,
                ),
                Teks(
                  isi:
                      "aowkoakwdokaokdoakdwokaokwdoakwdokawodkoakwdoakwdokawodkaowkdoakwdokaw",
                  arah: TextAlign.center,
                  size: 18,
                )
              ],
            )));
  }
}
