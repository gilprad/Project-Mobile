import 'package:flutter/material.dart';
import 'package:gurita/components/bottom-nav.dart';
import 'package:gurita/components/constant.dart';
import 'package:gurita/components/iconmodul.dart';
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
              Container(
                  width: displayWidth(context),
                  height: displayHeight(context) * 0.11,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(9),
                      color: Colors.white),
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
                  )),
              SizedBox(height: 10),
              // Container(
              //   width: displayWidth(context),
              //   height: displayHeight(context) * 0.715,
              //   decoration: BoxDecoration(
              //       borderRadius: BorderRadius.circular(9),
              //       color: Colors.white),
              //   child: Column(
              //     children: [
              //       SizedBox(
              //         height: 10,
              //       ),
              //       Teks(
              //         isi: "Modul",
              //         size: 30,
              //       )
              //     ],
              //   ),
              // ),
              Container(
                width: displayWidth(context),
                height: displayHeight(context) * 0.715,
                padding: EdgeInsets.symmetric(
                    horizontal: displayWidth(context) * 0.01,
                    vertical: displayHeight(context) * 0.01),
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
                    ),
                    SizedBox(height: 20),
                    Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            IconModul(
                              gambar: "math",
                              matpel: "Matematika",
                            ),
                            IconModul(
                              gambar: "bio",
                              matpel: "Biologi",
                            ),
                            IconModul(
                              gambar: "physics",
                              matpel: "Fisika",
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            IconModul(
                              gambar: "chemical",
                              matpel: "Kimia",
                            ),
                          ],
                        )
                      ],
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
              side: BorderSide(color: textColor, width: 0.4),
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
