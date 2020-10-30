import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gurita/constant.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  String _email, _password;
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
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    // margin: EdgeInsets.only(top: 1),
                    padding: EdgeInsets.only(
                        left: 66, top: 15, right: 66, bottom: 10),
                    decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius:
                            BorderRadius.only(topLeft: Radius.circular(15))),
                    // color: Colors.blue,
                    child: Text(
                      "Daftar",
                      style: TextStyle(fontSize: 25),
                    ),
                  ),
                  Container(
                    // margin: EdgeInsets.only(top: 1),
                    padding: EdgeInsets.only(
                        left: 66, top: 15, right: 66, bottom: 10),
                    decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius:
                            BorderRadius.only(topRight: Radius.circular(15))),
                    // color: Colors.blue,
                    child: Text(
                      "Masuk",
                      style: TextStyle(fontSize: 25),
                    ),
                  )
                ],
              ),
              Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(
                        left: 20, top: 10, right: 20, bottom: 10),
                    child: TextFormField(
                      decoration: InputDecoration(labelText: "Email"),
                      validator: (input) => !input.contains("@")
                          ? "Masukkan email yang valid"
                          : null,
                      onSaved: (input) => _email = input,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(
                        left: 20, top: 10, right: 20, bottom: 10),
                    child: TextFormField(
                      decoration: InputDecoration(labelText: "Kata Sandi"),
                      validator: (input) =>
                          input.length < 8 ? "Kata sandi salah/kurang" : null,
                      onSaved: (input) => _password = input,
                      obscureText: true,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 40, bottom: 50),
                    padding: EdgeInsets.only(
                        left: 120, top: 5, right: 120, bottom: 5),
                    decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                    child: Text(
                      "Masuk",
                      style: TextStyle(fontSize: 25),
                    ),
                  ),
                  Text("Atau masuk dengan:"),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Center(
                        child: SvgPicture.asset("assets/icons/fb.svg"),
                      ),
                      Center(
                        child: SvgPicture.asset("assets/icons/google.svg"),
                      )
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
