import 'package:flutter/material.dart';
import 'package:gurita/components/bottom-nav.dart';
import 'package:gurita/components/constant.dart';
import 'package:gurita/components/form.dart';
import 'package:gurita/components/responsive.dart';
import 'package:gurita/components/teks.dart';

class MorePage extends StatefulWidget {
  @override
  _MorePageState createState() => _MorePageState();
}

class _MorePageState extends State<MorePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNav(3),
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
            // Stack(
            //   children: [
            //     Positioned(
            //       // left: 10,
            //       // top: 10,
            //       child: CircleAvatar(
            //         child: Image.asset("assets/icons/physics.png"),
            //       ),
            //     )
            //   ],
            // )
            Card(
              child: ListTile(
                leading: Teks(isi: "Profile"),
                trailing: Icon(Icons.arrow_forward_ios),
              ),
            ),
            Card(
              child: ListTile(
                leading: Teks(isi: "Tentang kami"),
                trailing: Icon(Icons.arrow_forward_ios),
              ),
            ),
            Card(
              child: ListTile(
                leading: Teks(isi: "Keluar", warna: Colors.red),
                trailing: Icon(Icons.arrow_forward_ios),
              ),
            )
          ],
        ),
      ),
    );
  }
}
