import 'package:flutter/material.dart';
import 'package:gurita/components/card.dart';

class DetailPost extends StatefulWidget {
  final String img;
  DetailPost({this.img});
  @override
  _DetailPostState createState() => _DetailPostState();
}

class _DetailPostState extends State<DetailPost> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Detail Page")),
      body: Cardss(
        image: widget.img,
      ),
    );
  }
}
