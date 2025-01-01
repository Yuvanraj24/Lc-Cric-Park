import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lk_cric_park/core/assets/texts.dart';
import 'package:lk_cric_park/core/constants/app_sizes.dart';
import 'package:lk_cric_park/core/theme/color.dart';
import 'package:lk_cric_park/presentation/authentication/controllers/signup/signup_controller.dart';
import 'package:lk_cric_park/utils/helpers/helper_functions.dart';


class SiajTermsAndConditionCheckBox extends StatelessWidget {
  const SiajTermsAndConditionCheckBox({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = SignupController.instance;
    final dark = SiajHelperFunctions.isDarkMode(context);
    return Row(
      children: [
        SizedBox(
          width: 24,
          height: 24,
          child: Obx(() => Checkbox(value: controller.privacyPolicy.value, onChanged: (value) => controller.privacyPolicy.value = !controller.privacyPolicy.value)),
        ),
        const SizedBox(
          width: AppSizes.spaceBtwItems,
        ),
        Text.rich(TextSpan(children: [
          TextSpan(
              text: "${AppTextStrings.iAgreeTo} ",
              style: Theme.of(context).textTheme.bodySmall),
          TextSpan(
              text: "${AppTextStrings.privacyPolicy} ",
              style:
              Theme.of(context).textTheme.bodyMedium!.apply(
                color: dark
                    ? AppColors.white
                    : AppColors.primaryColor,
                decoration: TextDecoration.underline,
                decorationColor: dark
                    ? AppColors.white
                    : AppColors.primaryColor,
              )),
          TextSpan(
              text: "${AppTextStrings.and} ",
              style: Theme.of(context).textTheme.bodySmall),
          TextSpan(
              text: "${AppTextStrings.termsOfUse} ",
              style:
              Theme.of(context).textTheme.bodyMedium!.apply(
                color: dark
                    ? AppColors.white
                    : AppColors.primaryColor,
                decoration: TextDecoration.underline,
                decorationColor: dark
                    ? AppColors.white
                    : AppColors.primaryColor,
              )),
        ]))
      ]
    );
  }
}