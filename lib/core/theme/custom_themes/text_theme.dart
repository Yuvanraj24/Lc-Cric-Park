import 'package:flutter/material.dart';

class SiajTextTheme {
  SiajTextTheme._();

  static TextTheme lightTextTheme = TextTheme(
    headlineLarge: const TextStyle().copyWith(fontSize: 32.0,fontWeight: FontWeight.bold, color: Colors.black87),
    headlineMedium: const TextStyle().copyWith(fontSize: 24.0,fontWeight: FontWeight.w600, color: Colors.black87),
    headlineSmall: const TextStyle().copyWith(fontSize: 18.0,fontWeight: FontWeight.w600, color: Colors.black87),

    titleLarge: const TextStyle().copyWith(fontSize: 16.0,fontWeight: FontWeight.w600, color: Colors.black87),
    titleMedium: const TextStyle().copyWith(fontSize: 16.0,fontWeight: FontWeight.w500, color: Colors.black87),
    titleSmall: const TextStyle().copyWith(fontSize: 16.0,fontWeight: FontWeight.w400, color: Colors.black87),

    bodyLarge: const TextStyle().copyWith(fontSize: 14.0,fontWeight: FontWeight.w500, color: Colors.black87),
    bodyMedium: const TextStyle().copyWith(fontSize: 14.0,fontWeight: FontWeight.normal, color: Colors.black87),
    bodySmall: const TextStyle().copyWith(fontSize: 14.0,fontWeight: FontWeight.w500, color: Colors.black87.withOpacity(0.5)),

    labelLarge: const TextStyle().copyWith(fontSize: 13.5,fontWeight: FontWeight.normal, color: Colors.black87),
    labelMedium: const TextStyle().copyWith(fontSize: 12.8,fontWeight: FontWeight.normal, color: Colors.black87),
    labelSmall: const TextStyle().copyWith(fontSize: 12.0,fontWeight: FontWeight.normal, color: Colors.black87),


  );

  static TextTheme darkTextTheme = TextTheme(
    headlineLarge: const TextStyle().copyWith(fontSize: 32.0,fontWeight: FontWeight.bold, color: Colors.white70),
    headlineMedium: const TextStyle().copyWith(fontSize: 24.0,fontWeight: FontWeight.w600, color: Colors.white70),
    headlineSmall: const TextStyle().copyWith(fontSize: 18.0,fontWeight: FontWeight.w600, color: Colors.white70),

    titleLarge: const TextStyle().copyWith(fontSize: 16.0,fontWeight: FontWeight.w600, color: Colors.white70),
    titleMedium: const TextStyle().copyWith(fontSize: 16.0,fontWeight: FontWeight.w500, color: Colors.white70),
    titleSmall: const TextStyle().copyWith(fontSize: 16.0,fontWeight: FontWeight.w400, color: Colors.white70),

    bodyLarge: const TextStyle().copyWith(fontSize: 14.0,fontWeight: FontWeight.w500, color: Colors.white70),
    bodyMedium: const TextStyle().copyWith(fontSize: 14.0,fontWeight: FontWeight.normal, color: Colors.white70),
    bodySmall: const TextStyle().copyWith(fontSize: 14.0,fontWeight: FontWeight.w500, color: Colors.white70.withOpacity(0.5)),

    labelLarge: const TextStyle().copyWith(fontSize: 13.5,fontWeight: FontWeight.normal, color: Colors.white70),
    labelMedium: const TextStyle().copyWith(fontSize: 12.8,fontWeight: FontWeight.normal, color: Colors.white70),
    labelSmall: const TextStyle().copyWith(fontSize: 12.0,fontWeight: FontWeight.normal, color: Colors.white70),


  );
}