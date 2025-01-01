import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lk_cric_park/core/assets/images.dart';
import 'package:lk_cric_park/core/assets/texts.dart';
import 'package:lk_cric_park/core/constants/app_sizes.dart';
import 'package:lk_cric_park/presentation/authentication/controllers/forget_password/forget_password_controller.dart';
import 'package:lk_cric_park/presentation/authentication/screens/login/login.dart';
import 'package:lk_cric_park/utils/helpers/helper_functions.dart';

class ResetPasswordScreen extends StatelessWidget {
  const ResetPasswordScreen({super.key, required this.email});

  final String email;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(onPressed: () => Get.back(), icon: const Icon(CupertinoIcons.clear))
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(padding: const EdgeInsets.all(AppSizes.defaultSpace),
          child: Column(
            children: [

              ///Image
              Image(
                image:   AssetImage(AppImages.deliveredEmailIllustration),
                width: SiajHelperFunctions.screenWidth() * 0.6,
              ),
              const SizedBox(height: AppSizes.spaceBtwSections),

              /// Email, Title & Subtitle
              Text(AppTextStrings.changeYourPasswordTitle,
                  style: Theme
                      .of(context)
                      .textTheme
                      .headlineMedium,
                  textAlign: TextAlign.center),
              const SizedBox(height: AppSizes.spaceBtwItems),

              Text(AppTextStrings.changeYourPasswordSubTitle,
                  style: Theme
                      .of(context)
                      .textTheme
                      .labelMedium,
                  textAlign: TextAlign.center),
              const SizedBox(height: AppSizes.spaceBtwSections),

              ///Buttons
              SizedBox(width: double.infinity,
                child: ElevatedButton(
                    onPressed: () => Get.offAll(() => const LoginScreen()),
                    child:  Text(AppTextStrings.done)),),
              const SizedBox(height: AppSizes.spaceBtwItems),
              SizedBox(width: double.infinity,
                child: TextButton(
                    onPressed: () => ForgetPasswordController.instance.resendPasswordResetEmail(email),
                    child:  Text(AppTextStrings.resendEmail)))
            ]),
      ),
    ));
  }
}
