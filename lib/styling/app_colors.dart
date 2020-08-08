import 'package:flutter/material.dart';

abstract class AppColors {
  static const Color darkBlue = Color(0xFF0D2834);
  static const Color darkBlue60 = Color(0x990D2834);
  static const Color darkBlue38 = Color(0x610D2834);
  static const Color darkBlue24 = Color(0x3D0D2834);
  static const Color gold = Color(0xFFC8A574);
  static const Color grey = Color(0xFFB6BFC2);
  static const Color grey60 = Color(0x99B6BFC2);
  static const Color white = Color(0xFFFFFFFF);
  static const Color lightGrey = Color(0xFFE8ECEE);
  static const Color lightGrey38 = Color(0x61E8ECEE);
  static const Color red = Color(0xFFEB5757);
  static const Color orange = Color(0xFFFFAB00);
  static const Color green = Color(0xFF21CA7C);

  ///Make [MaterialColor] from regular [Color]
  static MaterialColor makeSwatch(Color color) => MaterialColor(color.value, {
        50: color.withOpacity(0.1),
        100: color.withOpacity(0.2),
        200: color.withOpacity(0.3),
        300: color.withOpacity(0.4),
        400: color.withOpacity(0.5),
        500: color.withOpacity(0.6),
        600: color.withOpacity(0.7),
        700: color.withOpacity(0.8),
        800: color.withOpacity(0.9),
        900: color.withOpacity(1),
      });
}
