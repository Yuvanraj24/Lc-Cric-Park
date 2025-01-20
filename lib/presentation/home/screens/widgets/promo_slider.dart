import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lk_cric_park/core/constants/app_sizes.dart';
import 'package:lk_cric_park/core/theme/color.dart';
import 'package:lk_cric_park/presentation/home/controllers/banner_controller.dart';
import 'package:lk_cric_park/widgets_common/custom_shapes/containers/circular_container.dart';
import 'package:lk_cric_park/widgets_common/images/siaj_rounded_image.dart';
import 'package:lk_cric_park/widgets_common/shimmers/shimmer_effect.dart';

class SiajPromoSlider extends StatelessWidget {
  final bool isNetworkImages;

  const SiajPromoSlider({super.key, this.isNetworkImages = true});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(BannerController());
    return Obx(
      () {

        // Loader
        if (controller.isLoading.value) {
          return const SiajShimmerEffect(width: double.infinity, height: 190);
        }

        // No Data
        if (controller.banners.isEmpty) {
          return const Center(child: Text("No Data Found!"));
        }
        else {
          return Column(
            children: [
              CarouselSlider(
                  options: CarouselOptions(
                    autoPlay: true,
                    viewportFraction: 1.02,
                    onPageChanged: (index, reason) =>
                        controller.updatePageIndicator(index),
                  ),
                  items: controller.banners
                      .map((banner) => SiajRoundedImage(
                          width: Get.width - 50,
                          fit: BoxFit.fill,
                          imageUrl: banner.imageUrl, isNetworkImage: isNetworkImages)).toList()),

              const SizedBox(height: AppSizes.spaceBtwItems),

              Obx(() => Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      for (int i = 0; i < controller.banners.length; i++)
                        SiajCircularContainer(
                          width: 20,
                          height: 4,
                          margin: const EdgeInsets.only(right: 10),
                          backgroundColor:
                              controller.carousalCurrentIndex.value == i
                                  ? AppColors.primaryColor
                                  : Colors.grey,
                        ),
                    ],
                  ))

            ]);

        }});
  }
}
