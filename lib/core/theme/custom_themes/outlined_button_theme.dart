import 'package:flutter/material.dart';
import 'package:lk_cric_park/core/theme/color.dart';

class SiajOutlinedButtonTheme {
  SiajOutlinedButtonTheme._();

  static final lightOutlinedButtonTheme = OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
          elevation: 0,
          foregroundColor: AppColors.primaryColor,
          side:  const BorderSide(color: AppColors.primaryColor),
          padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 20),
          textStyle: const TextStyle(fontSize: 16,color: Colors.black, fontWeight: FontWeight.w600),
          // shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14))
      )
  );

  static final darkOutlinedButtonTheme = OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
          elevation: 0,
          foregroundColor: Colors.white,
          side: const BorderSide(color: AppColors.appWhite),
          padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 20),
          textStyle: const TextStyle(fontSize: 16,color: Colors.white, fontWeight: FontWeight.w600),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14))
      )
  );


}