import 'package:flutter/material.dart';
import 'package:otakoyi_test/styling/app_colors.dart';
import 'package:otakoyi_test/styling/app_text_styles.dart';

ThemeData appTheme = ThemeData(
  primaryColor: AppColors.darkBlue,
  primarySwatch: AppColors.makeSwatch(AppColors.gold),
  errorColor: AppColors.red,
  appBarTheme: _buildAppBarTheme(),
  sliderTheme: _buildSliderTheme(),
  inputDecorationTheme: _buildInputDecorationTheme(),
  cursorColor: AppColors.gold,
  dividerTheme: _buildDividerThemeData(),
  buttonTheme: _buildButtonTheme(),
  floatingActionButtonTheme: _buildFABTheme(),
  bottomNavigationBarTheme: _buildBottomNavigationBarTheme(),
);

BottomNavigationBarThemeData _buildBottomNavigationBarTheme() => BottomNavigationBarThemeData(
      elevation: 14,
      selectedItemColor: AppColors.darkBlue,
      unselectedItemColor: AppColors.darkBlue.withOpacity(0.38),
      showUnselectedLabels: true,
      selectedLabelStyle: AppTextStyles.caption2.copyWith(color: AppColors.darkBlue),
      unselectedLabelStyle: AppTextStyles.caption2.copyWith(color: AppColors.darkBlue.withOpacity(0.38)),
      selectedIconTheme: IconThemeData(
        color: AppColors.darkBlue,
      ),
      type: BottomNavigationBarType.fixed,
    );

FloatingActionButtonThemeData _buildFABTheme() => FloatingActionButtonThemeData(
      backgroundColor: AppColors.green,
      foregroundColor: AppColors.white,
      elevation: 12,
    );

AppBarTheme _buildAppBarTheme() => AppBarTheme(elevation: 0);

SliderThemeData _buildSliderTheme() => SliderThemeData(
      inactiveTrackColor: AppColors.grey,
      trackHeight: 3,
    );

InputDecorationTheme _buildInputDecorationTheme() => InputDecorationTheme(
      filled: true,
      fillColor: AppColors.white,
      border: _inputBorderByColor(AppColors.darkBlue.withOpacity(0.24)),
      focusedBorder: _inputBorderByColor(AppColors.gold),
      errorBorder: _inputBorderByColor(AppColors.red),
      helperStyle: AppTextStyles.helper,
      errorStyle: AppTextStyles.helper.copyWith(color: AppColors.red),
      hintStyle: AppTextStyles.subtitle1.copyWith(color: AppColors.darkBlue.withOpacity(0.38)),
    );

DividerThemeData _buildDividerThemeData() => DividerThemeData(
      color: AppColors.grey.withOpacity(0.6),
      thickness: 1,
    );

ButtonThemeData _buildButtonTheme() => ButtonThemeData(
      buttonColor: AppColors.darkBlue,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(4),
      ),
    );

OutlineInputBorder _inputBorderByColor(Color color) => OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(3)),
      borderSide: BorderSide(
        width: 1,
        color: color,
      ),
    );
