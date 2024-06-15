import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nestsuche2/Constant/color_constant.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({super.key});

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController nameController = TextEditingController();

  bool acceptTerms = false;
  bool commercial = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: false,
          backgroundColor: AppColors.primaryColor,
          title: Text(
            'Sign UP',
            style: GoogleFonts.kanit(
              textStyle: const TextStyle(color: Colors.black, fontSize: 16),
            ),
          ),
        ),
        body: SingleChildScrollView(
            child: Padding(
          padding: const EdgeInsets.only(left: 20.0, right: 20, top: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0, right: 8),
                      child: Text(
                        'Create your account to save everything you do on Haus Finder.',
                        style: GoogleFonts.kanit(
                          textStyle: const TextStyle(fontSize: 16),
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Text(
                        'Email',
                        style: GoogleFonts.kanit(
                          textStyle: const TextStyle(fontSize: 16),
                        ),
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
                            borderSide:
                                BorderSide(color: AppColors.buttonColor),
                          ),
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
                        'Name',
                        style: GoogleFonts.kanit(
                          textStyle: const TextStyle(fontSize: 16),
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
                    Padding(
                      padding: const EdgeInsets.only(left: 10, right: 10),
                      child: TextFormField(
                        controller: nameController,
                        decoration: InputDecoration(
                          contentPadding: const EdgeInsets.symmetric(horizontal: 12),
                          focusedBorder: const OutlineInputBorder(
                            borderSide:
                                BorderSide(color: AppColors.buttonColor),
                          ),
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
                          textStyle: const TextStyle(fontSize: 16),
                        ),
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
                            borderSide:
                                BorderSide(color: AppColors.buttonColor),
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 14, top: 10),
                      child: Text(
                        'The password must be at least 8 characters long, include uppercase, lowercase, numbers, and at least one special character',
                        style: GoogleFonts.kanit(
                          textStyle: TextStyle(
                              color: Colors.grey.shade500, fontSize: 12),
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    Padding(
                      padding: const EdgeInsets.only(left: 0),
                      child: Column(
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Checkbox(
                                activeColor: AppColors.primaryColor,
                                value: acceptTerms,
                                onChanged: (value) {
                                  setState(() {
                                    acceptTerms = value!;
                                  });
                                },
                              ),
                              Expanded(
                                child: Text(
                                  'Accept the privacy policy and the general terms and conditions',
                                  style: GoogleFonts.kanit(
                                    textStyle: const TextStyle(fontSize: 14),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Checkbox(
                                activeColor: AppColors.primaryColor,
                                value: commercial,
                                onChanged: (value) {
                                  setState(() {
                                    commercial = value!;
                                  });
                                },
                              ),
                              Expanded(
                                child: Text(
                                  'Receive commercial information about properties,news and service offers from Haus Finder.',
                                  style: GoogleFonts.kanit(
                                    textStyle: const TextStyle(fontSize: 14),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 30),
                    SizedBox(
                      width: double.infinity,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 12, right: 12),
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            padding: const EdgeInsets.symmetric(vertical: 12),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            backgroundColor: AppColors.buttonColor,
                          ),
                          onPressed: () {
                            Get.offAndToNamed('/home');
                          },
                          child: Text(
                            'Create new account',
                            style: GoogleFonts.kanit(
                              textStyle: const TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        )));
  }
}
