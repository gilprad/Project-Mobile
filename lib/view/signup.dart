import 'package:flutter/material.dart';
import 'package:gurita/components/buton.dart';
import 'package:gurita/components/constant.dart';
import 'package:gurita/components/form.dart';
import 'package:gurita/components/responsive.dart';
import 'package:gurita/components/teks.dart';
import 'package:gurita/view/home.dart';
import 'package:gurita/view/login.dart';
import 'package:gurita/components/routes.dart';

class signUp extends StatefulWidget {
  @override
  _signUpState createState() => _signUpState();
}

class _signUpState extends State<signUp> {
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
                height: displayHeight(context) * 0.8,
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
                        isi: "DAFTAR",
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
                            forms: "Nama",
                          ),
                          Forms(
                            forms: "Email",
                          ),
                          Forms(
                            forms: "No HP",
                          ),
                          Forms(
                            forms: "Kata Sandi",
                            hide: true,
                          ),
                          Forms(
                            forms: "Konfirmasi Kata Sandi",
                            hide: true,
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: displayHeight(context) * 0.09,
                    ),
                    InkWell(
                      onTap: () {
                        Routes.changePage(context, HomePage());
                      },
                      child: Buttons(
                        isiButton: "Buat Akun",
                      ),
                    ),
                    SizedBox(
                      height: displayHeight(context) * 0.1,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Teks(
                          isi: "Sudah punya akun? Masuk ",
                          size: 20,
                        ),
                        InkWell(
                          onTap: () {
                            // Routes.changePage(context, LoginPage());
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
    );
  }
}
