import 'package:flutter/material.dart';
import 'package:gurita/components/responsive.dart';
import 'package:gurita/components/teks.dart';

class Cardss extends StatelessWidget {
  final String image;
  final String content;

  Cardss({this.image, this.content});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: displayWidth(context),
      height: displayHeight(context) * 0.3,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Colors.white,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: displayWidth(context),
            height: displayHeight(context) * 0.2,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(5), topRight: Radius.circular(5)),
                image: DecorationImage(
                    image: AssetImage(
                      "${image}",
                    ),
                    fit: BoxFit.cover)),
          ),
          Teks(
            isi: "${content}",
            size: 20,
          )
          // SizedBox(
          //   height: displayHeight(context) * 0.03,
          // )
        ],
      ),
    );
  }
}
