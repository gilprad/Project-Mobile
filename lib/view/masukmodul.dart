import 'package:flutter/material.dart';
import 'package:gurita/components/listbab.dart';
import 'package:gurita/components/responsive.dart';
import 'package:gurita/components/teks.dart';

class MasukModul extends StatefulWidget {
  @override
  _MasukModulState createState() => _MasukModulState();
}

class _MasukModulState extends State<MasukModul> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        physics: BouncingScrollPhysics(),
        slivers: [
          SliverAppBar(
            backgroundColor: Colors.purple,
            expandedHeight: 160,
            flexibleSpace: FlexibleSpaceBar(
              title: Stack(
                children: [
                  Positioned(
                    bottom: 40,
                    left: 65,
                    child: CircleAvatar(
                      backgroundImage: AssetImage("assets/icons/math.png"),
                    ),
                  ),
                  Positioned(
                    bottom: 20,
                    left: 46,
                    child: Teks(
                      size: 15,
                      isi: "MATEMATIKA",
                      weight: FontWeight.bold,
                      warna: Colors.white,
                    ),
                  )
                ],
              ),
            ),
          ),
          SliverFillRemaining(
            child: Container(
              width: displayWidth(context),
              height: displayHeight(context),
              padding: EdgeInsets.symmetric(
                  horizontal: displayWidth(context) * 0.035,
                  vertical: displayHeight(context) * 0.035),
              child: Column(
                children: [ListBab()],
              ),
            ),
          )
        ],
      ),
    );
  }
}
