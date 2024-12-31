import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lk_cric_park/core/theme/color.dart';
import 'package:lk_cric_park/utils/helpers/helper_functions.dart';
import 'package:lk_cric_park/widgets_common/loaders/animation_loader.dart';

class SiajFullScreenLoader {
  static void openLoadingDialog(String text, String animation) {
    showDialog(
      context: Get.overlayContext!,
      barrierDismissible: false,
      builder: (_) => PopScope(
          canPop: false,
          child: Container(
              color: SiajHelperFunctions.isDarkMode(Get.context!)
                  ? AppColors.dark
                  : AppColors.light,
              width: double.infinity,
              height: double.infinity,
              child: SiajAnimationLoaderWidget(text: text, animation: animation)
          )),
    );
  }

  /// Stop te currently open loading dialog
  static stopLoading() {
    Navigator.of(Get.overlayContext!).pop();
  }
}
