import 'package:flutter/material.dart';
import 'package:gurita/authservice.dart';
import 'package:gurita/components/buton.dart';
import 'package:gurita/components/constant.dart';
import 'package:gurita/components/form.dart';
import 'package:gurita/components/responsive.dart';
import 'package:gurita/components/teks.dart';
import 'package:gurita/view/signup.dart';
import 'package:gurita/components/routes.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      body: WillPopScope(
        onWillPop: () {},
        child: SingleChildScrollView(
          child: Container(
            height: displayHeight(context),
            padding: EdgeInsets.symmetric(
                horizontal: displayWidth(context) * 0.05,
                vertical: displayHeight(context) * 0.07),
            width: displayWidth(context),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: displayHeight(context) * 0.6,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10)),
                  child: Column(
                    children: [
                      Container(
                        height: displayHeight(context) * 0.07,
                        decoration: BoxDecoration(
                            color: Colors.blueGrey,
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10),
                                topRight: Radius.circular(10))),
                        child: Center(
                            child: Teks(
                          isi: "MASUK",
                          size: 25,
                          warna: Colors.white,
                        )),
                      ),
                      SizedBox(
                        height: displayHeight(context) * 0.04,
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(
                            horizontal: displayWidth(context) * 0.08),
                        child: Column(
                          children: [
                            Forms(
                              forms: "Email",
                              controller: emailController,
                            ),
                            Forms(
                              forms: "Kata Sandi",
                              controller: passwordController,
                              hide: true,
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: displayHeight(context) * 0.09,
                      ),
                      RaisedButton(
                        color: Colors.blueGrey,
                      ),
                      SizedBox(
                        height: displayHeight(context) * 0.1,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Teks(
                            isi: "Belum punya akun? Klik ",
                            size: 20,
                          ),
                          InkWell(
                            onTap: () {
                              Routes.changePage(context, signUp());
                            },
                            child: Teks(
                              isi: "disini",
                              size: 20,
                              warna: Colors.blue,
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
