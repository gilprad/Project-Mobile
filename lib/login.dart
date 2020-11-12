import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gurita/constant.dart';

class login extends StatefulWidget {
  @override
  _loginState createState() => _loginState();
}

class _loginState extends State<login> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: primaryColor,
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(
              horizontal: size.width * 0.05, vertical: size.height * 0.07),
          width: size.width,
          height: size.height,
          child: Column(
            children: [
              Container(
                width: size.width * 1,
                height: size.height * 0.85,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20)),
                child: Column(
                  children: [
                    Container(
                      width: size.width * 1,
                      height: size.height * 0.07,
                      decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20),
                              topRight: Radius.circular(20))),
                      child: Center(
                        child: Text(
                          "MASUK",
                          style: TextStyle(fontSize: 25),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: size.height * 0.04,
                    ),
                    Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: size.width * 0.08),
                      child: Column(
                        children: [
                          TextFormField(
                            decoration: (InputDecoration(
                                hintText: "Email",
                                hintStyle: TextStyle(fontSize: 20))),
                          ),
                          TextFormField(
                            decoration: (InputDecoration(
                                hintText: "Password",
                                hintStyle: TextStyle(fontSize: 20))),
                            obscureText: true,
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: size.height * 0.09,
                    ),
                    Container(
                        child: Center(
                          child: Text(
                            "Masuk",
                            style: TextStyle(fontSize: 20),
                          ),
                        ),
                        height: size.height * 0.04,
                        width: size.width * 0.6,
                        decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius:
                                BorderRadius.all(Radius.circular(20)))),
                    SizedBox(
                      height: size.height * 0.1,
                    ),
                    Text(
                      "Atau masuk dengan",
                      style: TextStyle(fontSize: 20),
                    ),
                    SizedBox(
                      height: size.height * 0.1,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(FontAwesomeIcons.google),
                        SizedBox(
                          width: size.width * 0.1,
                        ),
                        Icon(FontAwesomeIcons.facebook)
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
