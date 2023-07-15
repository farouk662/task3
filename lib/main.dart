import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:task3/core/utils/colors.dart';
import 'package:task3/screens/on_boarding.dart';
import 'package:task3/screens/splash.dart';
import 'package:task3/screens/welcome.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: const ColorScheme.dark(),
        scaffoldBackgroundColor: AppColors.backgroundColor,
      fontFamily: GoogleFonts.oxygen().fontFamily
      ),

      home:  SplashScreen(),
    );
  }
}
