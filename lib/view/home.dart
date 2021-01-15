import 'package:gurita/models/artikel.dart';
import 'package:gurita/servers/url.dart';
import 'package:flutter/material.dart';
import 'package:gurita/components/bottom-nav.dart';
import 'package:gurita/components/card.dart';
import 'package:gurita/components/constant.dart';
import 'package:gurita/components/profile.dart';
import 'package:gurita/components/responsive.dart';
import 'package:gurita/components/routes.dart';
import 'package:gurita/components/teks.dart';
import 'package:gurita/servers/url.dart';
import 'package:gurita/view/detailpost.dart';
import 'package:http/http.dart' as http;

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Artikel> _artikels = [];
  bool stillLoad = false;

  @override
  void initState() {
    // TODO: implement initState
    Servers.getArtikels().then((artikels) {
      setState(() {
        _artikels = artikels;
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // if (_artikels.contains(null) || _artikels.length < 0 || stillLoad) {
    //   return Center(
    //     child: CircularProgressIndicator(
    //         valueColor: AlwaysStoppedAnimation<Color>(primaryColor)),
    //   );
    // }

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
                image: "assets/icons/main.png",
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
                  child: _artikels.length == null ||
                          _artikels.isEmpty ||
                          _artikels == null
                      ? Center(
                          child: CircularProgressIndicator(),
                        )
                      : ListView.builder(
                          itemCount: _artikels.length,
                          itemBuilder: (BuildContext context, index) {
                            Artikel artikel = _artikels[index];
                            return Container(
                              margin: EdgeInsets.only(bottom: 10),
                              height: 210,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(15)),
                              child: Column(
                                children: [
                                  Container(
                                    height: displayHeight(context) * 0.2,
                                    decoration: BoxDecoration(
                                        image: DecorationImage(
                                            fit: BoxFit.fill,
                                            image: AssetImage(
                                                "assets/images/1.png"))),
                                  ),
                                  Teks(
                                    isi: artikel.body,
                                    size: 17,
                                  )
                                ],
                              ),
                            );
                          },
                        ))
            ],
          ),
        ),
      ),
    );
  }
}
