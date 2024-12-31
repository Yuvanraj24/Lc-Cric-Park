import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:get/get.dart';
import 'package:lk_cric_park/core/assets/images.dart';
import 'package:lk_cric_park/core/theme/color.dart';
import 'package:lk_cric_park/presentation/splash/controller.dart';



class SplashView extends GetView<SplashController> {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Image.asset(
            AppImages.appLogoWithoutBg,
            height: Get.height / 5,
          )
              .animate().scaleXY(
              begin: .5,
              end: 1,
              duration: const Duration(milliseconds: 800),
              delay: const Duration(milliseconds: 500),
              curve: Curves.decelerate),
        ]),
      ),
    );
  }
}
