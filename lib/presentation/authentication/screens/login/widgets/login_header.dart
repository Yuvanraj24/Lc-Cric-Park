import 'package:flutter/material.dart';
import 'package:lk_cric_park/core/assets/images.dart';
import 'package:lk_cric_park/core/assets/texts.dart';
import 'package:lk_cric_park/core/constants/app_sizes.dart';
import 'package:lk_cric_park/utils/helpers/helper_functions.dart';

class SiajLoginHeader extends StatelessWidget {
  const SiajLoginHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Image(
          height: 150,
          image: AssetImage(
              AppImages.appLogo)),
      Text(AppTextStrings.loginTitle,
          style: Theme.of(context).textTheme.headlineMedium),
      const SizedBox(height: AppSizes.sm),
      Text(AppTextStrings.loginSubTitle,
          style: Theme.of(context).textTheme.bodyMedium),
    ]);
  }
}