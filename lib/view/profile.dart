import 'dart:io';
import 'package:flutter/material.dart';
import 'package:gurita/components/buton.dart';
import 'package:gurita/components/constant.dart';
import 'package:gurita/components/form.dart';
import 'package:gurita/components/responsive.dart';
import 'package:gurita/components/teks.dart';
import 'package:image_picker/image_picker.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  File _image;

  final imagePicker = ImagePicker();
  Future takePhoto() async {
    final image = await imagePicker.getImage(source: ImageSource.camera);
    setState(() {
      _image = File(image.path);
    });
  }

  Future chooseFile() async {
    final image = await imagePicker.getImage(source: ImageSource.gallery);
    setState(() {
      _image = File(image.path);
    });
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: primaryColor,
        leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
              color: Colors.black,
            ),
            onPressed: () {
              Navigator.pop(context);
            }),
        title: Teks(
          isi: "Profil",
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          width: displayWidth(context),
          height: displayHeight(context),
          padding: EdgeInsets.symmetric(
              horizontal: displayWidth(context) * 0.03,
              vertical: displayHeight(context) * 0.03),
          child: Column(
            children: [
              SizedBox(
                height: 10,
              ),
              ProfilePicture(context),
              SizedBox(height: 20),
              Forms(
                forms: "Nama",
              ),
              SizedBox(height: 10),
              Forms(
                forms: "Email",
              ),
              SizedBox(height: 10),
              Forms(
                forms: "No. Telpon",
              ),
              SizedBox(
                height: 250,
              ),
              Buttons(
                isiButton: "Save",
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget ProfilePicture(BuildContext context) {
    return Stack(
      children: [
        CircleAvatar(
            radius: 50,
            backgroundImage: _image == null
                ? AssetImage("assets/icons/math.png")
                : FileImage(_image)),
        Positioned(
          bottom: 0,
          right: 0,
          child: InkWell(
            onTap: () {
              pressed(context);
            },
            child: Icon(
              Icons.camera_alt,
              color: Colors.black,
              size: 30,
            ),
          ),
        )
      ],
    );
  }

  void pressed(BuildContext context) {
    showModalBottomSheet(
        context: context,
        builder: (context) {
          return Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20))),
            height: 120,
            width: displayWidth(context) * 1,
            child: Column(
              children: [
                SizedBox(
                  height: 10,
                ),
                Teks(
                  isi: "Pilih foto profil dari",
                  size: 23,
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    FlatButton.icon(
                      icon: Icon(Icons.camera),
                      onPressed: () {
                        takePhoto();
                      },
                      label: Teks(
                        isi: "Kamera",
                        size: 18,
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    FlatButton.icon(
                      icon: Icon(Icons.image),
                      onPressed: () {
                        chooseFile();
                      },
                      label: Teks(isi: "Galeri", size: 18),
                    )
                  ],
                )
              ],
            ),
          );
        });
  }
}
