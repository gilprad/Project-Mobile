import 'package:flutter/material.dart';
import 'package:gurita/components/bottom-nav.dart';
import 'package:gurita/components/constant.dart';
import 'package:gurita/components/profile.dart';
import 'package:gurita/components/responsive.dart';
import 'package:gurita/components/teks.dart';

class ModulPage extends StatefulWidget {
  @override
  _ModulPageState createState() => _ModulPageState();
}

class _ModulPageState extends State<ModulPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNav(1),
      backgroundColor: primaryColor,
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
                image: "assets/icons/bio.png",
                user: "Anda",
              ),
              SizedBox(height: 10),
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
                      isi: "Modul",
                      size: 30,
                    )
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
