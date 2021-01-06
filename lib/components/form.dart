import 'package:flutter/material.dart';

class Forms extends StatelessWidget {
  final String forms;
  final bool hide;
  final TextEditingController controller;

  Forms({this.forms, this.hide = false, this.controller});
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        hintText: "$forms",
      ),
      style: TextStyle(fontSize: 20),
      obscureText: hide,
      controller: controller,
    );
  }
}
