import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nestsuche2/Constant/color_constant.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: false,
        backgroundColor: AppColors.primaryColor,
        title: Text(
          'Log IN',
          style: GoogleFonts.kanit(
              textStyle: const TextStyle(color: Colors.black,fontSize: 18)),
        ),
        actions: [
          TextButton(
            style: TextButton.styleFrom(
              foregroundColor: Colors.black,
              textStyle: GoogleFonts.kanit(fontSize: 18),
            ),
            onPressed: () {
              Get.offAndToNamed('/home');
            },
            child: const Text('Skip'),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Column(
                  children: [
                    const Text(
                      'Haus Finder',
                      style: TextStyle(fontFamily: 'Jaro', fontSize: 35),
                    ),
                    Text(
                      'Austria',
                      style: GoogleFonts.kanit(
                          textStyle: const TextStyle(fontSize: 16)),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 30),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Text(
                  'Email',
                  style: GoogleFonts.kanit(
                      textStyle: const TextStyle(fontSize: 14)),
                ),
              ),
              const SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.only(left: 10, right: 10),
                child: TextFormField(
                  controller: emailController,
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.symmetric(horizontal: 12),
                    focusedBorder: const OutlineInputBorder(
                        borderSide: BorderSide(color: AppColors.buttonColor)),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Text(
                  'Password',
                  style: GoogleFonts.kanit(
                      textStyle: const TextStyle(fontSize: 14)),
                ),
              ),
              const SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.only(left: 10, right: 10),
                child: TextFormField(
                  controller: passwordController,
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.symmetric(horizontal: 12),
                    focusedBorder: const OutlineInputBorder(
                        borderSide: BorderSide(color: AppColors.buttonColor)),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                ),
              ),
              TextButton(
                  style: TextButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                      splashFactory: NoSplash.splashFactory),
                  onPressed: () {},
                  child: Text(
                    'Forgot your password?',
                    style: GoogleFonts.kanit(
                        textStyle:
                            const TextStyle(color: AppColors.primaryColor)),
                  )),
              const SizedBox(height: 30),
              Center(
                child: Padding(
                  padding: const EdgeInsets.only(left: 12, right: 12),
                  child: SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {
                        Get.offAndToNamed('/home');
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: AppColors.buttonColor,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        padding: const EdgeInsets.symmetric(vertical: 12),
                      ),
                      child: Text(
                        'Log In',
                        style: GoogleFonts.kanit(
                          textStyle: const TextStyle(
                              color: Colors.white, fontSize: 18),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 60,
              ),
              Column(
                children: [
                  Center(
                    child: Text(
                      "Don't have an account?",
                      style: GoogleFonts.kanit(
                          textStyle: const TextStyle(fontSize: 18)),
                    ),
                  ),
                  const SizedBox(height: 20),
                  SizedBox(
                    width: double.infinity,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 12, right: 12),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            padding: const EdgeInsets.symmetric(vertical: 12),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)),
                            backgroundColor: AppColors.buttonColor),
                        onPressed: () {
                          Get.toNamed('/signup');
                        },
                        child: Text(
                          'Create Account',
                          style: GoogleFonts.kanit(
                              textStyle: const TextStyle(
                                  color: Colors.white, fontSize: 18)),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
