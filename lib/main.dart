import 'package:flutter/material.dart';
import 'package:portfolio/ui/landing_page.dart';
import 'package:portfolio/util/app_colors.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My Portfolio',
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: AppColors.primaryColor,
        textTheme: GoogleFonts.kanitTextTheme().copyWith(
          headlineLarge: GoogleFonts.kanit(
            fontWeight: FontWeight.w400,
            fontSize: 25,
          ),
          headlineMedium: GoogleFonts.kanit(
            fontWeight: FontWeight.w300,
            fontSize: 20,
          ),
          bodyLarge: GoogleFonts.kanit(
            fontWeight: FontWeight.bold,
            fontSize: 40,
          ),
          bodyMedium: GoogleFonts.kanit(
            fontWeight: FontWeight.bold,
            fontSize: 30,
          ),
          bodySmall: GoogleFonts.kanit(
            fontWeight: FontWeight.w500,
            fontSize: 16,
          ),
        ),
      ),
      home: LandingPage(),
    );
  }
}
