import 'package:flutter/material.dart';

class AppColors {
  Color black = Color(0xFF171717);
  Color white = Color(0xFFFFFFFF);
  Color gray = Color(0xFFA0A0A0);
}

class AppTheme {
  static AppColors color = AppColors();

  static ThemeData lightTheme = ThemeData(
    primaryColor: color.white,

    scaffoldBackgroundColor: color.white,

    appBarTheme: AppBarTheme(
      backgroundColor: color.white,
      foregroundColor: color.black,
      centerTitle: true,
      titleTextStyle: TextStyle(
        fontSize: 20,
        fontWeight: .w500,
        color: color.black,
      ),
    ),

    textTheme: TextTheme(
      headlineSmall: TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.w500,
        color: color.black,
      ),
      titleLarge: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.w700,
        color: color.black,
      ),
      titleMedium: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w700,
        color: color.black,
      ),
      titleSmall: TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w500,
        color: color.black,
      ),
      labelMedium: TextStyle(
        fontSize: 12,
        fontWeight: FontWeight.w500,
        color: color.black,
      ),
    ),
  );

  static ThemeData darkTheme = ThemeData(
    primaryColor: color.black,

    scaffoldBackgroundColor: color.black,

    appBarTheme: AppBarTheme(
      backgroundColor: color.black,
      foregroundColor: color.white,
      centerTitle: true,
      titleTextStyle: TextStyle(
        fontSize: 20,
        fontWeight: .w500,
        color: color.white,
      ),
    ),    

    textTheme: TextTheme(
      headlineSmall: TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.w500,
        color: color.white,
      ),
      titleLarge: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.w700,
        color: color.white,
      ),
      titleMedium: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w700,
        color: color.white,
      ),
      titleSmall: TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w500,
        color: color.white,
      ),
      labelMedium: TextStyle(
        fontSize: 12,
        fontWeight: FontWeight.w500,
        color: color.white,
      ),
    ),
  );
}
