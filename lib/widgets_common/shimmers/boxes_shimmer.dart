import 'package:flutter/material.dart';
import 'package:lk_cric_park/core/constants/app_sizes.dart';
import 'package:lk_cric_park/widgets_common/shimmers/shimmer_effect.dart';

class SiajBoxesShimmer extends StatelessWidget {
  const SiajBoxesShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Row(
          children: [
            Expanded(child: SiajShimmerEffect(width: 150, height: 110,)),
            SizedBox(width: AppSizes.spaceBtwItems),
            Expanded(child: SiajShimmerEffect(width: 150, height: 110)),
            SizedBox(width: AppSizes.spaceBtwItems),
            Expanded(child: SiajShimmerEffect(width: 150, height: 110))
          ],
        )
      ],
    );
  }
}
