import 'package:flutter/material.dart';
import 'package:gurita/components/buton.dart';
import 'package:gurita/components/constant.dart';
import 'package:gurita/components/form.dart';
import 'package:gurita/components/responsive.dart';
import 'package:gurita/components/teks.dart';

class login extends StatefulWidget {
  @override
  _loginState createState() => _loginState();
}

class _loginState extends State<login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      body: SingleChildScrollView(
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
                          ),
                          Forms(
                            forms: "Kata Sandi",
                            hide: true,
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: displayHeight(context) * 0.09,
                    ),
                    InkWell(
                      onTap: () {},
                      child: Buttons(
                        isiButton: "Masuk",
                      ),
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
                          onTap: () {},
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
    );
  }
}
