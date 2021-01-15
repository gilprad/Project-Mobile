import 'dart:math';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:gurita/components/constant.dart';
import 'package:gurita/components/teks.dart';

class OpenMaps extends StatefulWidget {
  @override
  _OpenMapsState createState() => _OpenMapsState();
}

class _OpenMapsState extends State<OpenMaps> {
  GoogleMapController _controller;

  final CameraPosition _initialPosition =
      CameraPosition(target: LatLng(-8.0436074, 111.8619554));

  final List<Marker> markers = [];

  addMarker(cordinate) {
    int id = Random().nextInt(100);

    setState(() {
      markers
          .add(Marker(position: cordinate, markerId: MarkerId(id.toString())));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: primaryColor,
        title: Teks(
          isi: "Fitur Tambahan",
        ),
      ),
      body: GoogleMap(
        initialCameraPosition: _initialPosition,
        mapType: MapType.normal,
        onMapCreated: (controller) {
          setState(() {
            _controller = controller;
          });
        },
        markers: markers.toSet(),
        onTap: (cordinate) {
          _controller.animateCamera(CameraUpdate.newLatLng(cordinate));
          addMarker(cordinate);
        },
      ),
      // floatingActionButton: FloatingActionButton(

      //   backgroundColor: primaryColor,
      //   onPressed: () {
      //     _controller.animateCamera(CameraUpdate.zoomOut());
      //   },
      //   child: Icon(Icons.zoom_out, color: Colors.black),
      // ),
    );
  }
}
