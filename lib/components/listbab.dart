import 'package:flutter/material.dart';
import 'package:gurita/components/teks.dart';

class ListBab extends StatelessWidget {
  final IconData icon;
  final String bab;
  ListBab({this.bab, this.icon});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 75,
      decoration: BoxDecoration(
          border: Border.all(color: Colors.black),
          borderRadius: BorderRadius.circular(18),
          boxShadow: [
            BoxShadow(
                color: Colors.grey.withOpacity(0.1),
                spreadRadius: 2,
                blurRadius: 5,
                offset: Offset(0, 8))
          ]),
      child: Row(
        children: [
          SizedBox(
            width: 15,
          ),
          Icon(
            icon,
            size: 30,
          ),
          SizedBox(
            width: 25,
          ),
          Teks(
            isi: "Vektor",
            size: 24,
          ),
          SizedBox(
            width: 220,
          ),
          Icon(Icons.arrow_forward_ios)
        ],
      ),
    );
  }
}
