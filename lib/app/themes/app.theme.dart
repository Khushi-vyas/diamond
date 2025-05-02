import 'package:diamond_data/utils/constants/app.dimensions.dart';
import 'package:flutter/material.dart';

class AppTheme {
  static const themeColor = Color(0xff8cd5ec);
  static const themeColorShade900 = Color(0xff317b9b);
  //static const themeColorShade600 = Color(0xff70aabc);
  static const themeColorShade100 = Color(0xffD8EBF3);
  static const themeSurfaceColor = Color(0xfff5f5f5);
  static const themeSecondaryColor = Color(0xff6ed0d4);
  static const themeLightColor = Color.fromARGB(255, 137, 207, 240);
  static const themeDarkColor = Color(0xff24b0db);
  static const themeAccentColor = Color.fromARGB(255, 14, 234, 255);
  static const themeTextColor = Color(0xff424242);
  static const themeInactiveTextColor = Color(0xfffefcfd);
  static const themePrimaryIconColor = Color.fromARGB(255, 65, 105, 225);
  static const themeSecondaryTextColor = Color(0xff6f6f6f);
  static const themeInActiveIndicatorColor = Color.fromARGB(120, 0, 0, 0);
  static const themeBackgroundColor = Color.fromARGB(255, 250, 250, 250);
  static const themeDividerColor = Color.fromARGB(20, 0, 0, 0);
  static const themeBorderColor = Color.fromARGB(50, 0, 0, 0);
  static const themeSuccessColor = Colors.green;
  static const themeAppbarColor = themeColor;
  static const themeErrorColor = Colors.red;

  static const myColorScheme = ColorScheme(
    primary: themeColor,
    secondary: themeAccentColor,
    surface: Colors.white,
    error: Colors.red,
    onPrimary: Colors.white,
    onSecondary: Colors.white,
    onSurface: Colors.black,
    onError: Colors.white,
    brightness: Brightness.light,
  );

  static final lightTheme = ThemeData(
    useMaterial3: true,
    primaryColor: themeColor,
    fontFamily: 'Inter',
    textTheme: const TextTheme(
      bodySmall: TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w400,
        color: themeTextColor,
      ),
      bodyMedium: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w400,
        color: themeTextColor,
      ),
      bodyLarge: TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.w400,
        color: themeTextColor,
      ),
      titleSmall: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w400,
        color: themeTextColor,
      ),
      titleMedium: TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.w400,
        color: themeTextColor,
      ),
      titleLarge: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.w400,
        color: themeTextColor,
      ),
      labelSmall: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w500,
        color: themeTextColor,
      ),
      labelMedium: TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.w500,
        color: themeTextColor,
      ),
      labelLarge: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.w500,
        color: themeTextColor,
      ),
      headlineSmall: TextStyle(
        fontSize: 22,
        fontWeight: FontWeight.w500,
        color: themeTextColor,
      ),
      headlineMedium: TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.w500,
        color: themeTextColor,
      ),
      headlineLarge: TextStyle(
        fontSize: 26,
        fontWeight: FontWeight.w500,
        color: themeTextColor,
      ),
    ),
    appBarTheme: const AppBarTheme(
      backgroundColor: themeAppbarColor,
      elevation: 2,
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppTheme.themeColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(AppDimension.kRadius - 6.0),
        ),
      ),
    ),
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
        padding: EdgeInsets.zero,
        visualDensity: VisualDensity.compact,
      ),
    ),
    dividerColor: themeDividerColor,
    dividerTheme: const DividerThemeData(
      color: themeDividerColor,
      thickness: 1,
    ),
    colorScheme: myColorScheme.copyWith(surface: themeSurfaceColor),
  );
}
