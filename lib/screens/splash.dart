import 'dart:async';

import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:task3/core/utils/assets.dart';
import 'package:task3/screens/on_boarding.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 2), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const OnBoardingScreen()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      height: double.infinity,
      width: double.infinity,
      decoration: const BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.fill,
          image: AssetImage(AppAssets.splash),
        ),
      ),
      child: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 128,
          ),
          child: FadeIn(
            duration: const Duration(seconds: 1),
            child: Text(
              'Wakey',
              textAlign: TextAlign.center,
              style:
                  GoogleFonts.oxygen(fontSize: 56, fontWeight: FontWeight.bold),
            ),
          )),
    ));
  }
}
