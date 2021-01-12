import 'package:flutter/material.dart';
import 'package:gurita/components/routes.dart';
import 'package:gurita/components/teks.dart';
import 'package:gurita/view/home.dart';
import 'package:gurita/view/modul.dart';
import 'package:gurita/view/more.dart';

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
    MorePage(),
  ];
  // int selectedIndex = widget.i;
  void _navbarTapped(int index) {
    Routes.changePage(context, _listPage[index]);
  }

  @override
  Widget build(BuildContext context) {
    final _bottomNavbarItem = <BottomNavigationBarItem>[
      BottomNavigationBarItem(
          icon: Icon(Icons.home),
          title: Teks(isi: "Home", warna: Colors.black)),
      BottomNavigationBarItem(
          icon: Icon(Icons.menu_book),
          title: Teks(isi: "Modul", warna: Colors.black)),
      BottomNavigationBarItem(
          icon: Icon(Icons.more_horiz_rounded),
          title: Teks(
            isi: "More",
            warna: Colors.black,
          ))
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
