import 'package:flutter/material.dart';
import 'package:gurita/components/bottom-nav.dart';
import 'package:gurita/components/card.dart';
import 'package:gurita/components/constant.dart';
import 'package:gurita/components/profile.dart';
import 'package:gurita/components/responsive.dart';
import 'package:gurita/components/routes.dart';
import 'package:gurita/components/teks.dart';
import 'package:gurita/detailpost.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      bottomNavigationBar: BottomNav(0),
      body: WillPopScope(
        onWillPop: () {},
        child: Container(
          width: displayWidth(context),
          height: displayHeight(context),
          padding: EdgeInsets.symmetric(
              horizontal: displayWidth(context) * 0.05,
              vertical: displayHeight(context) * 0.01),
          child: ListView(
            children: [
              SizedBox(
                height: 10,
              ),
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
                arah: TextAlign.center,
                weight: FontWeight.bold,
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: displayHeight(context) * 0.67,
                width: displayWidth(context),
                child: ListView.builder(
                  itemCount: 5,
                  itemBuilder: (BuildContext context, int i) {
                    return Container(
                      margin: EdgeInsets.only(bottom: 10),
                      child: InkWell(
                        onTap: () {
                          Routes.changePage(
                              context,
                              DetailPost(
                                img: "assets/images/${(i + 1)}.png",
                              ));
                        },
                        child: Cardss(
                          image: "assets/images/${(i + 1)}.png",
                          content: "awokaowkoakwoakwokawok",
                        ),
                      ),
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
