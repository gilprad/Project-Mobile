import 'package:flutter/material.dart';
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
