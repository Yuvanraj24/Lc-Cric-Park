import 'package:flutter/material.dart';
import 'package:lk_cric_park/core/theme/color.dart';

class SiajTextButtonTheme {
  SiajTextButtonTheme._();

  static final lightTextButtonTheme = TextButtonThemeData(
    style: TextButton.styleFrom(
      textStyle: const TextStyle(fontSize: 10,color: AppColors.primaryColor, fontWeight: FontWeight.w600),
    )
  );
}