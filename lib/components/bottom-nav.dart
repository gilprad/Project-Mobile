import 'package:flutter/material.dart';
import 'package:gurita/catatan.dart';
import 'package:gurita/components/routes.dart';
import 'package:gurita/components/teks.dart';
import 'package:gurita/home.dart';
import 'package:gurita/modul.dart';
import 'package:gurita/more.dart';

class BottomNav extends StatefulWidget {
  final int i;
  BottomNav(this.i);
  @override
  _BottomNavState createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  final _listPage = <StatefulWidget>[
    HomePage(),
    ModulPage(),
    CatatanPage(),
    MorePage(),
  ];
  // int selectedIndex = widget.i;
  void _navbarTapped(int index) {
    Routes.changePage(context, _listPage[index]);
  }

  @override
  Widget build(BuildContext context) {
    final _bottomNavbarItem = <BottomNavigationBarItem>[
      BottomNavigationBarItem(icon: Icon(Icons.home), title: Teks(isi: "Home")),
      BottomNavigationBarItem(
          icon: Icon(Icons.menu_book), title: Teks(isi: "Modul")),
      BottomNavigationBarItem(
          icon: Icon(Icons.sticky_note_2_outlined),
          title: Teks(isi: "Catatan")),
      BottomNavigationBarItem(
          icon: Icon(Icons.more_horiz_rounded), title: Teks(isi: "More")),
    ];
    return BottomNavigationBar(
      backgroundColor: Colors.white,
      items: _bottomNavbarItem,
      currentIndex: widget.i,
      selectedItemColor: Colors.black,
      unselectedItemColor: Colors.grey,
      onTap: _navbarTapped,
    );
  }
}
