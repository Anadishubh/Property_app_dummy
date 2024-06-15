import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:nestsuche2/Constant/color_constant.dart';

class MapPage extends StatefulWidget {
  const MapPage({super.key});

  @override
  MapPageState createState() => MapPageState();
}

class MapPageState extends State<MapPage> {
  late GoogleMapController mapController;
  final LatLng _center = const LatLng(47.5162, 14.5501);
  MapType _currentMapType = MapType.normal;

  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
  }

  void _onToggleMapType() {
    setState(() {
      _currentMapType =
      _currentMapType == MapType.normal ? MapType.satellite : MapType.normal;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Your custom area',
          style: GoogleFonts.kanit(textStyle: const TextStyle(fontSize: 18)),
        ),
        backgroundColor: AppColors.primaryColor,
        leading: GestureDetector(
          onTap: () {
            Get.back();
          },
          child: const Icon(Icons.arrow_back_ios_new),
        ),
      ),
      body: Stack(
        children: [
          GoogleMap(
            myLocationButtonEnabled: true,
            zoomControlsEnabled: false,
            onMapCreated: _onMapCreated,
            mapType: _currentMapType,
            initialCameraPosition: CameraPosition(
              target: _center,
              zoom: 7.0,
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 17),
              child: Container(
                height: 40,
                width: 150,
                decoration: BoxDecoration(
                  color: AppColors.primaryColorlight,
                  borderRadius: BorderRadius.circular(5),
                ),
                child: TextButton(
                  onPressed: () {},
                  child: Text(
                    'Draw your area',
                    style: GoogleFonts.kanit(textStyle: const TextStyle(color: Colors.white),)
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          SizedBox(
            height: 45,
            child: FloatingActionButton(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5),
              ),
              backgroundColor: AppColors.primaryColorlight,
              onPressed: _onToggleMapType,
              child: const Icon(Icons.layers,color: Colors.white,),
            ),
          ),
          const SizedBox(height: 10),
          SizedBox(
            height: 45,
            child: FloatingActionButton(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5),
              ),
              backgroundColor: AppColors.primaryColorlight,
              onPressed: () {
                mapController.animateCamera(
                  CameraUpdate.newLatLng(_center),
                );
              },
              child: const Icon(Icons.location_on_outlined,color: Colors.white,),
            ),
          ),
        ],
      ),
    );
  }
}