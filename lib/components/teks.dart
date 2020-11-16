import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Teks extends StatelessWidget {
  final String isi;
  final double size;
  final FontWeight weight;
  final TextAlign arah;
  final Color warna;
  Teks({this.isi, this.size, this.weight, this.arah, this.warna});
  @override
  Widget build(BuildContext context) {
    return Text(
      "${isi}",
      style: GoogleFonts.montserrat(
          fontSize: size, fontWeight: weight, color: warna),
      maxLines: 3,
      overflow: TextOverflow.ellipsis,
      textAlign: arah,
    );
  }
}
