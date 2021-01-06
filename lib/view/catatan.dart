import 'package:flutter/material.dart';
import 'package:gurita/components/bottom-nav.dart';
import 'package:gurita/components/constant.dart';
import 'package:gurita/components/profile.dart';
import 'package:gurita/components/responsive.dart';
import 'package:gurita/components/teks.dart';

class CatatanPage extends StatefulWidget {
  @override
  _CatatanPageState createState() => _CatatanPageState();
}

class _CatatanPageState extends State<CatatanPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      bottomNavigationBar: BottomNav(2),
      body: WillPopScope(
        onWillPop: () {},
        child: Container(
          width: displayWidth(context),
          height: displayHeight(context),
          padding: EdgeInsets.symmetric(
              horizontal: displayWidth(context) * 0.05,
              vertical: displayHeight(context) * 0.01),
          child: Column(
            children: [
              SizedBox(
                height: 35,
              ),
              Profile(
                image: "assets/icons/chemical.png",
                user: "Anda",
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                width: displayWidth(context),
                height: displayHeight(context) * 0.715,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(9),
                    color: Colors.white),
                child: Column(
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    Teks(
                      isi: "Catatan belajarku",
                      size: 25,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
