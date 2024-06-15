import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nestsuche2/Constant/color_constant.dart';

class Options extends StatelessWidget {
  const Options({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: false,
          backgroundColor: AppColors.primaryColor,
          title: Text('Search in Austria',style: GoogleFonts.kanit(textStyle: const TextStyle(fontSize: 18)),),
          leading: GestureDetector(
              onTap: () {
                Get.back();
              },
              child: const Icon(Icons.arrow_back_ios_new)),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.only(left: 22, right: 22, top: 22),
              child: TextField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.search),
                  hintText: 'Town, district, address',
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.only(left: 22, right: 22),
                child: SizedBox(
                  width: double.maxFinite,
                  child: InkWell(
                    onTap: () {
                      Get.toNamed('/map');
                    },
                    child: Ink(
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Row(
                          children: [
                            Image.network(
                              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSBNCsoUtxz9kDefyQPvmy4eQXMewXZsgQHig&s',
                              height: 40,
                              fit: BoxFit.cover,
                            ),
                            const SizedBox(width: 16.0),
                            SizedBox(
                              width: 200,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Draw your area',style: GoogleFonts.kanit(textStyle: const TextStyle(fontWeight: FontWeight.bold,fontSize: 16),)),
                                  Text('Draw your search area on the map',style: GoogleFonts.kanit(),)
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 22, right: 22),
              child: SizedBox(
                width: double.maxFinite,
                child: InkWell(
                  onTap: () {
                    // Handle draw area action
                  },
                  child: Ink(
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Row(
                        children: [
                          Image.network(
                            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTJV3wy3s_pKnXp3DHu348oypShXvq0icagtQ&s',
                            height: 50,
                            fit: BoxFit.fill,
                          ),
                          const SizedBox(width: 16.0),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Search on the map',style: GoogleFonts.kanit(textStyle: const TextStyle(fontWeight: FontWeight.bold,fontSize: 16),)),
                              SizedBox(
                                  width: 200,
                                  child: Text(
                                      'Move on the map to see available properties',style: GoogleFonts.kanit(),))
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 22, right: 22),
              child: SizedBox(
                width: double.maxFinite,
                child: InkWell(
                  onTap: () {
                    // Handle draw area action
                  },
                  child: Ink(
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Row(
                        children: [
                          Image.network(
                            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR5s-m4ZOz89OLksiPJYNZ6nSsv-O2-kaU7pQ&s',
                            height: 50,
                          ),
                          const SizedBox(width: 16.0),
                          SizedBox(
                            width: 200,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Around you',style: GoogleFonts.kanit(textStyle: const TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),),
                                Text('View available properties near you',style: GoogleFonts.kanit(),)
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 22, right: 22),
              child: SizedBox(
                width: double.maxFinite,
                child: InkWell(
                  onTap: () {
                    // Handle draw area action
                  },
                  child: Ink(
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Row(
                        children: [
                          Image.network(
                            'https://i.pinimg.com/736x/f1/4c/f9/f14cf99c9c6f445779da46eeb1b0003d.jpg',
                            height: 50,
                          ),
                          const SizedBox(width: 16.0),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Search by phone',style: GoogleFonts.kanit(textStyle: const TextStyle(fontWeight: FontWeight.bold,fontSize: 16),)),
                              SizedBox(
                                  width: 200,
                                  child: Text(
                                      'Insert a phone number to see the property it corresponds to',style: GoogleFonts.kanit(),))
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
            // Add other widgets for search on map, around you, and search by phone
          ],
        ));
  }
}
