import 'package:flutter/material.dart';

class AppColors {
  static const primaryColor = Color.fromRGBO(0, 14, 43, .5);
  static const woodColor = Color.fromRGBO(150, 111, 51, 1);
  static const darkPurple = Color(0xFF591057);
  static const appWhite = Color(0xFFFFFFFF);
  static const appBlack = Color(0xFF171D1B);

  static Color green = Colors.green.shade600;

  static const Color yellowStart = Color(0xFFFFDD00);
  static const Color orangeEnd = Color(0xFFF49600);

  static const Color greyLight = Color(0xFF6C7278);

  // Gradients
  static const LinearGradient yellowToOrangeGradient = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [yellowStart, orangeEnd],
  );

  static const yellowTextGradient = LinearGradient(
    colors: [
      Color(0xFFFCCE00), // Start color
      Color(0xFFF49600), // End color
    ],
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    stops: [0.2806, 0.9899], // Gradient stops
  );

  // Text Colors
  static const Color textPrimary = Color(0xFF333333);
  static const Color textSecondary = Color(0xFF6C757D);
  static const Color textWhite = Colors.white70;

  // Background Colors
  static const Color light = Color(0xFFF6F6F6);
  static const Color dark = Color(0xFF272727);
  static const Color primaryBackground = Color(0xFFF3F5FF);

  // Background Containers Colors
  static const Color lightContainer = Color(0xFFF6F6F6);
  static Color darkContainer = white.withValues(alpha: 0.1);

  // Button Colors
  static Color buttonPrimary = const Color(0xFF4b68ff);
  static Color buttonSecondary = const Color(0xFF6C757D);
  static Color buttonDisabled = const Color(0xFFC4C4C4);

  // Border Colors
  static const Color borderPrimary = Color(0xFFD9D9D9);
  static const Color borderSecondary = Color(0xFFE6E6E6);

  // Error and validation colors
  static const Color error = Color(0xFFD32F2F);
  static const Color success = Color(0xFF388E3C);
  static const Color warning = Color(0xFFF57C00);
  static const Color info = Color(0xFF1976D2);

  // Neutral Shades
  static const Color black = Color(0xFF232323);
  static const Color darkerGrey = Color(0xFF4F4F4F);
  static const Color darkGrey = Color(0xFF939393);
  static const Color grey = Color(0xFFE0E0E0);
  static const Color softGrey = Color(0xFFF4F4F4);
  static const Color lightGrey = Color(0xFFF9F9F9);
  static const Color white = Color(0xFFFFFFFF);
}
