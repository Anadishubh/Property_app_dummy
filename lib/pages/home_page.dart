import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nestsuche2/Constant/color_constant.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<DropdownMenuItem<String>> items = [
    const DropdownMenuItem(
        value: '1',
        child: Text(
          'New Home',
        )),
     DropdownMenuItem(value: '2', child: Text('Home',style: GoogleFonts.kanit(),)),
     DropdownMenuItem(value: '3', child: Text('Offices',style: GoogleFonts.kanit())),
     DropdownMenuItem(value: '4', child: Text('Commercial property',style: GoogleFonts.kanit())),
     DropdownMenuItem(value: '5', child: Text('Garages',style: GoogleFonts.kanit())),
     DropdownMenuItem(value: '6', child: Text('Land',style: GoogleFonts.kanit())),
     DropdownMenuItem(value: '7', child: Text('Storage',style: GoogleFonts.kanit())),
     DropdownMenuItem(value: '8', child: Text('Buildings',style: GoogleFonts.kanit())),
  ];

  String? selectedItem;
  bool isBuySelected = true;

  void onChanged(String? value) {
    setState(() {
      selectedItem = value;
    });
  }

  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.primaryColor,
        title: const Text(
          'Haus Finder',
          style: TextStyle(fontFamily: 'Jaro'),
        ),
      ),
      body: Column(
        children: [
          SizedBox(
            width: double.infinity,
            height: 200,
            child: Image.network(
              'https://media0.giphy.com/media/v1.Y2lkPTc5MGI3NjExdXQ3ajJicjU0aDV4c3B4eWd1ank3anE1ZGxxMWprZjloZnRlamxxdCZlcD12MV9pbnRlcm5hbF9naWZfYnlfaWQmY3Q9Zw/eH3yXkrghNkqctzcr4/giphy.webp',
              fit: BoxFit.fill,
            ),
          ),
          Expanded(
            child: Container(
              color: AppColors.textHeadingColor,
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 22, right: 22),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Expanded(
                            child: InkWell(
                              onTap: () {
                                setState(() {
                                  isBuySelected = true;
                                });
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                    color: isBuySelected
                                        ? AppColors.primaryColor
                                            .withOpacity(0.5)
                                        : Colors.white,
                                    borderRadius: BorderRadius.circular(5),
                                    border: Border.all(
                                        color: AppColors.primaryColor)),
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 20, vertical: 15),
                                child: Center(
                                  child: Text('Buy',
                                      style: GoogleFonts.kanit(
                                        textStyle: TextStyle(
                                            color: isBuySelected
                                                ? AppColors.buttonColor
                                                : Colors.black,
                                            fontSize: 14,
                                            fontWeight: FontWeight.bold),
                                      )),
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(width: 0.5),
                          Expanded(
                            child: InkWell(
                              onTap: () {
                                setState(() {
                                  isBuySelected = false;
                                });
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                    color: isBuySelected
                                        ? Colors.white
                                        : AppColors.primaryColor
                                            .withOpacity(0.5),
                                    borderRadius: BorderRadius.circular(5),
                                    border: Border.all(
                                        color: AppColors.primaryColor)),
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 20, vertical: 15),
                                child: Center(
                                  child: Text('Rent',
                                      style: GoogleFonts.kanit(
                                        textStyle: TextStyle(
                                            color: isBuySelected
                                                ? Colors.black
                                                : AppColors.buttonColor,
                                            fontSize: 14,
                                            fontWeight: FontWeight.bold),
                                      )),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 20),
                    SingleChildScrollView(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Center(
                              child: DropdownButton(
                                hint: const Text('New home'),
                                enableFeedback: true,
                                underline: const SizedBox(),
                                isDense: true,
                                dropdownColor: AppColors.primaryColorlight,
                                icon: const Icon(
                                    Icons.keyboard_arrow_down_rounded),
                                items: items,
                                onChanged: onChanged,
                                value: selectedItem,
                              ),
                            ),
                            const SizedBox(height: 20),
                            SizedBox(
                              width: double.maxFinite,
                              child: GestureDetector(
                                onTap: () {
                                  Get.toNamed('/option');
                                },
                                child: Container(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 14),
                                  decoration: BoxDecoration(
                                    border: Border.all(color: Colors.grey),
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(left: 10),
                                        child: Text(
                                          'Your drawn search area in Austria',
                                          style: GoogleFonts.kanit(
                                              textStyle: const TextStyle(
                                            color: Colors.black,
                                          )),
                                        ),
                                      ),
                                      const Padding(
                                        padding: EdgeInsets.only(right: 10),
                                        child: Icon(Icons.map_outlined,
                                            color: Colors.black),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(height: 20),
                            SizedBox(
                              width: double.infinity,
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    backgroundColor:
                                        AppColors.primaryColorlight,
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 14),
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(5))),
                                onPressed: () {
                                  // Handle search button press
                                },
                                child:  Text(
                                  'Search',
                                  style: GoogleFonts.kanit(textStyle: const TextStyle(color: Colors.white),)
                                ),
                              ),
                            ),
                            const SizedBox(height: 40),
                            SizedBox(
                              width: double.infinity,
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    backgroundColor:
                                        AppColors.primaryColorlight,
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 14),
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(5))),
                                onPressed: () {
                                  // Handle post your listing button press
                                },
                                child:  Text(
                                  'Post your listing',
                                  style: GoogleFonts.kanit(textStyle: const TextStyle(color: Colors.white),)
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: AppColors.primaryColor,
        showUnselectedLabels: true,
        enableFeedback: false,
        unselectedItemColor: Colors.white,
        unselectedFontSize: 14,
        selectedFontSize: 14,
        selectedItemColor: Colors.black,
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined),
              label: 'Home',
              backgroundColor: AppColors.primaryColor),
          BottomNavigationBarItem(
              icon: Icon(Icons.notifications_none),
              label: 'Search',
              backgroundColor: AppColors.primaryColor),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite_border),
              label: 'Favourite',
              backgroundColor: AppColors.primaryColor),
          BottomNavigationBarItem(
              icon: Icon(Icons.chat_outlined),
              label: 'Chat',
              backgroundColor: AppColors.primaryColor),
          BottomNavigationBarItem(
              icon: Icon(Icons.person_outline),
              label: 'Menu',
              backgroundColor: AppColors.primaryColor),
        ],
      ),
    );
  }
}
