import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lk_cric_park/core/constants/app_sizes.dart';
import 'package:lk_cric_park/presentation/home/screens/widgets/tournament_notice_banner.dart';
import 'package:lk_cric_park/presentation/home/screens/widgets/home_appbar.dart';
import 'package:lk_cric_park/presentation/home/screens/widgets/promo_slider.dart';
import 'package:lk_cric_park/presentation/personalization/controllers/user_controller.dart';
import 'package:lk_cric_park/widgets_common/custom_shapes/containers/primary_header_container.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(UserController());
    return Scaffold(
      // appBar: SiajAppBar(
      //     title: Column(
      //   crossAxisAlignment: CrossAxisAlignment.start,
      //   children: [
      //     Text("Good Morning",
      //         style: Theme.of(context)
      //             .textTheme
      //             .labelMedium!.apply(fontWeightDelta: 2)),
      //     Obx(
      //       () {
      //         if (controller.profileLoading.value) {
      //           // Display a shimmer loader
      //           return const SiajShimmerEffect(width: 80, height: 15);
      //         } else {
      //           return Text(controller.user.value.fullName,
      //               style: Theme.of(context)
      //                   .textTheme
      //                   .headlineSmall!.apply(fontWeightDelta: 8));
      //         }
      //       },
      //     ),
      //   ],
      // ),
      //     actions: [
      //       Icon(Iconsax.notification),
      //       SiajRoundedImage(imageUrl: AppImages.userProfilePic)
      //     ],
      // ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SiajPrimaryHeaderContainer(
              child: Column(children: [
                SizedBox(height: AppSizes.spaceBtwItems),

                /// Appbar
                SiajHomeAppBar(),

                SizedBox(height: AppSizes.spaceBtwSections),
              ]),
            ),
            Padding(
              padding: const EdgeInsets.all(AppSizes.defaultSpace),
              child: Column(
                children: [
                  /// Promo Slider
                  const SiajPromoSlider(isNetworkImages: false),
                  const SizedBox(height: AppSizes.spaceBtwItems),
                  TournamentNoticeBanner()
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
