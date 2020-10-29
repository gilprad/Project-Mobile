import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gurita/component.dart';
import 'package:gurita/constant.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return MaterialApp(
      // debugShowCheckedModeBanner: ,
      home: Scaffold(
          body: Container(
        color: primaryColor,
        height: size.height,
        width: size.width,
        child: Container(
          margin:
              EdgeInsets.only(left: 15.0, top: 50.0, right: 15.0, bottom: 65.0),
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(15))),
          child: Column(
            children: [
              Row(
                children: [
                  ButtonBar(
                    children: [
                      FlatButton(
                        textColor: Colors.black,
                        disabledColor: Colors.white,
                        disabledTextColor: Colors.grey,
                        child: Text("Daftar", style: TextStyle(fontSize: 20),),
                      ),
                      FlatButton()
                    ],
                  )
                ],
              )
            ],
          ),
        ),
      )),
    );
  }
}
