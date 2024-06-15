import 'package:flutter/material.dart';
import 'package:flutter_localization/flutter_localization.dart';
import 'package:get/get.dart';
import 'package:nestsuche2/Constant/color_constant.dart';
import 'package:nestsuche2/custom/language_selection.dart';
import 'package:nestsuche2/custom/region_selection.dart';
import 'package:nestsuche2/custom/thanks_page.dart';

import '../Localization/locales.dart';

class LanguageScreen extends StatefulWidget {
  const LanguageScreen({super.key});

  @override
  LanguageScreenState createState() => LanguageScreenState();
}

class LanguageScreenState extends State<LanguageScreen> {
  final PageController _pageController = PageController();
  int _currentIndex = 0;

  void _onNext() {
    if (_currentIndex < 2) {
      setState(() {
        _currentIndex++;
      });
      _pageController.animateToPage(
        _currentIndex,
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    } else {
      // Navigate to login page
      Get.offAndToNamed('/login'); // Using GetX for navigation
    }
  }

  void _onBack() {
    if (_currentIndex > 0) {
      setState(() {
        _currentIndex--;
      });
      _pageController.animateToPage(
        _currentIndex,
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    } else {
      // Optional: You can handle the back action when on the first page, like closing the app or going to a previous screen
      Get.back(); // Using GetX for navigation
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: Stack(
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Column(
              children: [
                const Padding(
                  padding: EdgeInsets.only(top: 90),
                  child: Text(
                    'Haus Finder',
                    style: TextStyle(
                      fontFamily: 'Jaro',
                      fontSize: 50,
                      color: AppColors.textHeadingColor,
                    ),
                  ),
                ),
                const SizedBox(height: 50),
                Expanded(
                  child: Container(
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30),
                      ),
                    ),
                    width: double.infinity,
                    child: PageView(
                      physics: const NeverScrollableScrollPhysics(),
                      controller: _pageController,
                      onPageChanged: (index) {
                        setState(() {
                          _currentIndex = index;
                        });
                      },
                      children: const [
                        LanguageSelection(),
                        RegionSelection(),
                        ThanksPage(),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.all(25.0),
              child: Row(
                children: [
                  if (_currentIndex > 0)
                    Expanded(
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: AppColors.buttonColor,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5),
                          ),
                        ),
                        onPressed: _onBack,
                        child: const Text(
                          'Back',
                          style: TextStyle(
                            fontSize: 18,
                            color: AppColors.textSubHeadingColor,
                          ),
                        ),
                      ),
                    ),
                  const SizedBox(width: 10),
                  Expanded(
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: AppColors.buttonColor,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                        ),
                      ),
                      onPressed: _onNext,
                      child: Text(
                        _currentIndex == 2
                            ? 'Finish'
                            : LocaleData.button.getString(context),
                        style: const TextStyle(
                          fontSize: 18,
                          color: AppColors.textSubHeadingColor,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}