import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

final ThemeData diamondAppTheme = ThemeData(
  scaffoldBackgroundColor: const Color(0xFFF1F5F9), // Background
  primaryColor: const Color(0xFF1E293B),            // Deep Navy
  colorScheme: const ColorScheme.light(
    primary: Color(0xFF1E293B),
    secondary: Color(0xFF38BDF8),            // Sky Blue
    error: Color(0xFFF43F5E),                // Rose Red
  ),
  textTheme: GoogleFonts.latoTextTheme().copyWith(
    bodyLarge: const TextStyle(color: Color(0xFF1E293B)),
    bodyMedium: const TextStyle(color: Color(0xFF1E293B)),
    titleLarge: const TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.bold,
      color: Color(0xFF1E293B),
    ),
  ),
  appBarTheme: const AppBarTheme(
    backgroundColor: Color(0xFF1E293B),
    foregroundColor: Colors.white,
    elevation: 0,
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      backgroundColor: const Color(0xFF38BDF8),   // Sky Blue
      foregroundColor: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 20),
      textStyle: GoogleFonts.lato(
        fontWeight: FontWeight.w600,
        fontSize: 16,
      ),
    ),
  ),
  inputDecorationTheme: InputDecorationTheme(
    filled: true,
    fillColor: Colors.white,
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      borderSide: const BorderSide(color: Color(0xFF64748B)),
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      borderSide: const BorderSide(color: Color(0xFF38BDF8), width: 2),
    ),
    labelStyle: const TextStyle(color: Color(0xFF1E293B)),
    hintStyle: const TextStyle(color: Color(0xFF64748B)),
  ),
  chipTheme: ChipThemeData(
    backgroundColor: const Color(0xFF38BDF8).withOpacity(0.2),
    selectedColor: const Color(0xFF38BDF8),
    labelStyle: GoogleFonts.lato(
      color: const Color(0xFF1E293B),
      fontWeight: FontWeight.w500,
    ),
    secondaryLabelStyle: GoogleFonts.lato(
      color: Colors.white,
      fontWeight: FontWeight.w500,
    ),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(8),
    ),
  ),
  cardColor: Colors.white,
  dividerColor: const Color(0xFF64748B), // Gray Blue
);
