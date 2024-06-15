import 'dart:async';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../Constant/color_constant.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
      const Duration(seconds: 1),
          () {
        Get.offAndToNamed('/language');
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: Center(
        child: Text(
          'HF',
          style: TextStyle(
            fontFamily: 'Jaro',
            fontSize: 70,
            fontWeight: FontWeight.bold,
            color: AppColors.textHeadingColor,
          ),
        ),
      ),
    );
  }
}
