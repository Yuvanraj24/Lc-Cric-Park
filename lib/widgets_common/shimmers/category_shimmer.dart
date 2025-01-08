import 'package:flutter/material.dart';
import 'package:lk_cric_park/core/constants/app_sizes.dart';
import 'package:lk_cric_park/widgets_common/shimmers/shimmer_effect.dart';

class SiajCategoryShimmer extends StatelessWidget {
  const SiajCategoryShimmer({super.key, this.itemCount = 6 });

  final int itemCount;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: ListView.separated(
        shrinkWrap: true,
        itemCount: itemCount,
        scrollDirection: Axis.horizontal,
        separatorBuilder: (_, __) => const SizedBox(width: AppSizes.spaceBtwItems),
        itemBuilder: (_, __) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              /// Image
              SiajShimmerEffect(width: 55, height: 55, radius: 55),
              const SizedBox(height: AppSizes.spaceBtwItems / 2),

              /// Text
              SiajShimmerEffect(width: 55, height: 8)
            ]);
        },
      ),
    );
  }
}
