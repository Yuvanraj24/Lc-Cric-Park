import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lk_cric_park/core/assets/images.dart';
import 'package:lk_cric_park/core/assets/texts.dart';
import 'package:lk_cric_park/core/constants/app_sizes.dart';
import 'package:lk_cric_park/data/repositories/authentication/authentication_repository.dart';
import 'package:lk_cric_park/presentation/authentication/controllers/signup/verify_email_controller.dart';
import 'package:lk_cric_park/utils/helpers/helper_functions.dart';

class VerifyEmailScreen extends GetView<VerifyEmailController> {
  const VerifyEmailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final userEmail = Get.arguments['email'];
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
              onPressed: () => AuthenticationRepository.instance.logout(),
              icon: const Icon(CupertinoIcons.clear))
        ],
      ),
      body: SingleChildScrollView(
          // Padding to Give Default Equal Space on all sides in all screens
          child: Padding(
        padding: const EdgeInsets.all(AppSizes.defaultSpace),
        child: Column(
          children: [
            ///Image
            Image(
              image: AssetImage(AppImages.deliveredEmailIllustration),
              width: SiajHelperFunctions.screenWidth() * 0.6
            ),
            const SizedBox(height: AppSizes.spaceBtwSections),

            ///Title & Subtitle
            Text(AppTextStrings.confirmEmail,
                style: Theme.of(context).textTheme.headlineMedium,
                textAlign: TextAlign.center),
            const SizedBox(height: AppSizes.spaceBtwItems),
            Text(userEmail ?? "",
                style: Theme.of(context).textTheme.labelLarge,
                textAlign: TextAlign.center),
            const SizedBox(height: AppSizes.spaceBtwItems),
            Text(AppTextStrings.confirmEmailSubTitle,
                style: Theme.of(context).textTheme.labelMedium,
                textAlign: TextAlign.center),
            const SizedBox(height: AppSizes.spaceBtwSections),

            ///Buttons
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                  onPressed: () => controller.checkEmailVerificationStatus(),
                  child: Text(AppTextStrings.siajContinue)),
            ),

            const SizedBox(height: AppSizes.spaceBtwItems),

            SizedBox(
              width: double.infinity,
              child: TextButton(
                  onPressed: () => controller.sendEmailVerification(),
                  child: Text(AppTextStrings.resendEmail)),
            ),
          ])
      )));
  }
}
