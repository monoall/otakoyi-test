import 'package:flutter/material.dart';

abstract class AppTextStyles {
  static const TextStyle headline1 =
      TextStyle(fontFamily: 'WorkSans', fontSize: 24, fontWeight: FontWeight.w600, letterSpacing: -0.02);
  static const TextStyle headline2 =
      TextStyle(fontFamily: 'WorkSans', fontSize: 20, fontWeight: FontWeight.w600, letterSpacing: -0.02);
  static const TextStyle headline3 =
      TextStyle(fontFamily: 'WorkSans', fontSize: 18, fontWeight: FontWeight.w600, letterSpacing: -0.02);
  static const TextStyle subtitle1 =
      TextStyle(fontFamily: 'WorkSans', fontSize: 16, fontWeight: FontWeight.w500, letterSpacing: -0.5);
  static const TextStyle body1 =
      TextStyle(fontFamily: 'WorkSans', fontSize: 16, fontWeight: FontWeight.normal, letterSpacing: -0.5);
  static const TextStyle subtitle2 =
      TextStyle(fontFamily: 'WorkSans', fontSize: 14, fontWeight: FontWeight.w600, letterSpacing: -0.5);
  static const TextStyle body2 =
      TextStyle(fontFamily: 'WorkSans', fontSize: 14, fontWeight: FontWeight.normal, letterSpacing: -0.5);
  static const TextStyle caption1 =
      TextStyle(fontFamily: 'WorkSans', fontSize: 13, fontWeight: FontWeight.w500, letterSpacing: -0.03);
  static const TextStyle caption2 =
      TextStyle(fontFamily: 'WorkSans', fontSize: 12, fontWeight: FontWeight.w500, letterSpacing: -0.01);
  static const TextStyle helper =
      TextStyle(fontFamily: 'WorkSans', fontSize: 10, fontWeight: FontWeight.w500, letterSpacing: -0.01);
  static const TextStyle notificationCounter =
      TextStyle(fontFamily: 'WorkSans', fontSize: 8, fontWeight: FontWeight.w500, letterSpacing: -0.01);
  static const TextStyle label = TextStyle(fontFamily: 'WorkSans', fontWeight: FontWeight.w500, letterSpacing: -0.03);
}
