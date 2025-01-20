import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lk_cric_park/core/assets/texts.dart';
import 'package:lk_cric_park/core/theme/color.dart';
import 'package:lk_cric_park/presentation/personalization/controllers/user_controller.dart';
import 'package:lk_cric_park/widgets_common/appbar/appbar.dart';
import 'package:lk_cric_park/widgets_common/shimmers/shimmer_effect.dart';

class SiajHomeAppBar extends StatelessWidget {
  const SiajHomeAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(UserController());
    return SiajAppBar(
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Good Morning",
              style: Theme.of(context)
                  .textTheme
                  .labelMedium!
                  .apply(color: AppColors.grey)),
          Obx(
            () {
              if(controller.profileLoading.value){
                // Display a shimmer loader
                return const SiajShimmerEffect(width: 80, height: 15);
              }else {
                return Text(controller.user.value.fullName,
                    style: Theme.of(context)
                        .textTheme
                        .headlineSmall!
                        .apply(color: AppColors.white));
              }

            },
          ),
        ],
      ),
    );
  }
}
