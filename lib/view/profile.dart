import 'package:flutter/material.dart';
import 'package:gurita/components/buton.dart';
import 'package:gurita/components/constant.dart';
import 'package:gurita/components/form.dart';
import 'package:gurita/components/responsive.dart';
import 'package:gurita/components/teks.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: primaryColor,
        leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
              color: Colors.black,
            ),
            onPressed: () {
              Navigator.pop(context);
            }),
        title: Teks(
          isi: "Profil",
        ),
      ),
      body: Container(
        width: displayWidth(context),
        height: displayHeight(context),
        padding: EdgeInsets.symmetric(
            horizontal: displayWidth(context) * 0.03,
            vertical: displayHeight(context) * 0.03),
        child: Column(
          children: [
            SizedBox(
              height: 10,
            ),
            CircleAvatar(
              child: Image.asset("assets/icons/math.png"),
            ),
            SizedBox(height: 20),
            Forms(
              forms: "Nama",
            ),
            SizedBox(height: 10),
            Forms(
              forms: "Email",
            ),
            SizedBox(height: 10),
            Forms(
              forms: "No. Telpon",
            ),
            SizedBox(
              height: 250,
            ),
            Buttons(
              isiButton: "Save",
            )
          ],
        ),
      ),
    );
  }
}
