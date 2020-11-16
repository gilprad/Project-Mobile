import 'package:flutter/material.dart';

class Forms extends StatelessWidget {
  final String forms;
  final bool hide;

  Forms({this.forms, this.hide = false});
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        hintText: "$forms",
      ),
      style: TextStyle(fontSize: 20),
      obscureText: hide,
    );
  }
}
