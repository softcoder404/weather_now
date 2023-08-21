import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:weather_app/themes/colors.dart';
import 'package:weather_app/themes/styles.dart';

class AppThemes {
  static final ThemeData lightTheme = ThemeData(
    fontFamily: 'PlusJakartaSans',
    scaffoldBackgroundColor: AppColors.primaryLightColor,
    appBarTheme: const AppBarTheme(
      color: AppColors.primaryLightColor,
    ),
    colorScheme: const ColorScheme.light(
      primary: AppColors.primaryLightColor,
      onPrimary: AppColors.primaryLightColor,
      secondary: AppColors.accentYellowColor,
    ),
    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: Colors.white,
      focusColor: AppColors.primaryLightColor,
      contentPadding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 8.h),
      counterStyle: AppTextStyle.body1,
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(25.0),
        borderSide: const BorderSide(color: AppColors.primaryLightColor),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(25.0),
        borderSide: const BorderSide(
          color: AppColors.grey,
        ),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(25.0),
        borderSide: const BorderSide(color: AppColors.primaryLightColor),
      ),
      floatingLabelBehavior: FloatingLabelBehavior.never,
      hintStyle: const TextStyle(fontStyle: FontStyle.normal),
    ),
  );

  static final ThemeData darkTheme = ThemeData(
    fontFamily: 'PlusJakartaSans',
    scaffoldBackgroundColor: AppColors.primaryDarkColor,
    appBarTheme: const AppBarTheme(
      color: AppColors.primaryDarkColor,
    ),
    colorScheme: const ColorScheme.light(
      primary: AppColors.primaryDarkColor,
      onPrimary: AppColors.primaryDarkColor,
      secondary: AppColors.accentYellowColor,
    ),
    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: Colors.white,
      focusColor: AppColors.primaryLightColor,
      counterStyle: AppTextStyle.body1,
      contentPadding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 8.h),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(25),
        borderSide: const BorderSide(color: AppColors.primaryLightColor),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(25),
        borderSide: const BorderSide(
          color: AppColors.grey,
        ),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(25),
        borderSide: const BorderSide(color: AppColors.primaryLightColor),
      ),
      floatingLabelBehavior: FloatingLabelBehavior.never,
      hintStyle: const TextStyle(fontStyle: FontStyle.normal),
    ),
  );
}
