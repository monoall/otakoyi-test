import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

abstract class AppTextStyles {
  static TextStyle headline1 = GoogleFonts.workSans(fontSize: 24, fontWeight: FontWeight.w600, letterSpacing: -0.02);
  static TextStyle headline2 = GoogleFonts.workSans(fontSize: 20, fontWeight: FontWeight.w600, letterSpacing: -0.02);
  static TextStyle headline3 = GoogleFonts.workSans(fontSize: 18, fontWeight: FontWeight.w600, letterSpacing: -0.02);
  static TextStyle subtitle1 = GoogleFonts.workSans(fontSize: 16, fontWeight: FontWeight.w500, letterSpacing: -0.5);
  static TextStyle body1 = GoogleFonts.workSans(fontSize: 16, fontWeight: FontWeight.normal, letterSpacing: -0.5);
  static TextStyle subtitle2 = GoogleFonts.workSans(fontSize: 14, fontWeight: FontWeight.w600, letterSpacing: -0.5);
  static TextStyle body2 = GoogleFonts.workSans(fontSize: 14, fontWeight: FontWeight.normal, letterSpacing: -0.5);
  static TextStyle caption1 = GoogleFonts.workSans(fontSize: 13, fontWeight: FontWeight.w500, letterSpacing: -0.03);
  static TextStyle caption2 = GoogleFonts.workSans(fontSize: 12, fontWeight: FontWeight.w500, letterSpacing: -0.01);
  static TextStyle helper = GoogleFonts.workSans(fontSize: 10, fontWeight: FontWeight.w500, letterSpacing: -0.01);
  static TextStyle notificationCounter =
      GoogleFonts.workSans(fontSize: 8, fontWeight: FontWeight.w500, letterSpacing: -0.01);
  static TextStyle label = GoogleFonts.workSans(fontWeight: FontWeight.w500, letterSpacing: -0.03);
}
