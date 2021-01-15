import 'package:flutter/material.dart';
import 'package:gurita/components/teks.dart';

class DetailBab extends StatefulWidget {
  @override
  _DetailBabState createState() => _DetailBabState();
}

class _DetailBabState extends State<DetailBab> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Teks(),
      ),
    );
  }
}
