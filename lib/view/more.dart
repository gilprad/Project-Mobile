import 'package:flutter/material.dart';
import 'package:gurita/view/aboutus.dart';
import 'package:gurita/components/bottom-nav.dart';
import 'package:gurita/components/constant.dart';
import 'package:gurita/components/responsive.dart';
import 'package:gurita/components/routes.dart';
import 'package:gurita/components/teks.dart';
import 'package:gurita/view/login.dart';
import 'package:gurita/view/profile.dart';

class MorePage extends StatefulWidget {
  @override
  _MorePageState createState() => _MorePageState();
}

class _MorePageState extends State<MorePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNav(2),
      appBar: AppBar(
        leading: Container(),
        backgroundColor: primaryColor,
        title: Teks(
          isi: "More",
          size: 22,
        ),
        centerTitle: true,
      ),
      backgroundColor: Colors.white,
      body: Container(
        width: displayWidth(context),
        height: displayHeight(context),
        padding:
            EdgeInsets.symmetric(horizontal: displayHeight(context) * 0.03),
        child: Column(
          children: [
            SizedBox(
              height: 60,
            ),
            InkWell(
              onTap: () {
                Routes.changePage(context, ProfilePage());
              },
              child: Card(
                child: ListTile(
                  leading: Teks(
                    isi: "Profile",
                    size: 18,
                  ),
                  trailing: Icon(Icons.arrow_forward_ios),
                ),
              ),
            ),
            InkWell(
              onTap: () {
                Routes.changePage(context, AboutUsPage());
              },
              child: Card(
                child: ListTile(
                  leading: Teks(
                    isi: "Tentang kami",
                    size: 18,
                  ),
                  trailing: Icon(Icons.arrow_forward_ios),
                ),
              ),
            ),
            SizedBox(
              height: 320,
            ),
            InkWell(
              onTap: () {
                Routes.changePage(context, LoginPage());
              },
              child: Card(
                color: Colors.red,
                child: ListTile(
                  leading: Teks(
                    isi: "Keluar",
                    warna: Colors.white,
                    size: 18,
                  ),
                  trailing: Icon(Icons.arrow_forward_ios),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
