import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lk_cric_park/core/assets/texts.dart';
import 'package:lk_cric_park/core/constants/app_sizes.dart';
import 'package:lk_cric_park/utils/helpers/helper_functions.dart';
import 'package:lk_cric_park/utils/styles/spacing_styles.dart';
import 'package:lottie/lottie.dart';

class SuccessScreen extends StatelessWidget {
  const SuccessScreen({super.key, required this.image, required this.title, required this.subTitle, required this.onPressed});

  final String image, title, subTitle;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(padding: SiajSpacingStyle.paddingWithAppBarHeight,
            child: Column(
              children: [


                ///Image
                // Image(
                //   image:  AssetImage(image),
                //   width: SiajHelperFunctions.screenWidth() * 0.6,
                // ),
                Lottie.asset(image),


                const SizedBox(height: AppSizes.spaceBtwSections),

                ///Title & Subtitle
                Text(title,
                    style: Theme
                        .of(context)
                        .textTheme
                        .headlineMedium,
                    textAlign: TextAlign.center),
                const SizedBox(height: AppSizes.spaceBtwItems),

                Text(subTitle,
                    style: Theme
                        .of(context)
                        .textTheme
                        .labelMedium,
                    textAlign: TextAlign.center),
                const SizedBox(height: AppSizes.spaceBtwSections),

                ///Buttons
                SizedBox(width: double.infinity,
                  child: ElevatedButton(
                      onPressed: onPressed,
                      child:  Text(AppTextStrings.siajContinue)),),
              ],
            )
        ),

      ),
    );
  }
}
