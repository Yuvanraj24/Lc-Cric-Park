import 'package:flutter/material.dart';
import 'package:lk_cric_park/core/constants/app_sizes.dart';
import 'package:lk_cric_park/presentation/home/screens/widgets/tournament_notice_banner.dart';
import 'package:lk_cric_park/presentation/home/screens/widgets/home_appbar.dart';
import 'package:lk_cric_park/presentation/home/screens/widgets/promo_slider.dart';
import 'package:lk_cric_park/widgets_common/custom_shapes/containers/primary_header_container.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SiajPrimaryHeaderContainer(
            child: Column(children: [
              /// Appbar
              SiajHomeAppBar(),

              SizedBox(height: AppSizes.spaceBtwSections),
            ]),
          ),

          Padding( padding: const EdgeInsets.all(AppSizes.defaultSpace),
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
    );
  }
}
