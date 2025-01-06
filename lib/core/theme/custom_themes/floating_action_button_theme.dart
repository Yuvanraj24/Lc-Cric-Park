import 'package:flutter/material.dart';
import 'package:lk_cric_park/core/theme/color.dart';


class SiajFloatingActionButtonTheme {
  SiajFloatingActionButtonTheme._();

  static final lightFloatingActionButtonTheme = FloatingActionButtonThemeData(
    shape:  CircleBorder(
      side: BorderSide(
        color: AppColors.appWhite.withOpacity(.5)
      )
    ),
    backgroundColor: AppColors.appWhite,
    elevation: 1,
    foregroundColor: AppColors.appWhite,
    // splashColor: AppColors.darkPurple.withOpacity(10),
  );
}