import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lk_cric_park/core/assets/images.dart';
import 'package:lk_cric_park/core/assets/texts.dart';
import 'package:lk_cric_park/presentation/authentication/controllers/onboarding/onboarding_controller.dart';
import 'package:lk_cric_park/presentation/authentication/screens/onboarding/widgets/onboard_dot_navigation.dart';
import 'package:lk_cric_park/presentation/authentication/screens/onboarding/widgets/onboarding_next_button.dart';
import 'package:lk_cric_park/presentation/authentication/screens/onboarding/widgets/onboarding_page.dart';
import 'package:lk_cric_park/presentation/authentication/screens/onboarding/widgets/onboarding_skip.dart';

class OnboardingScreen extends GetView<OnBoardingController> {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        ///Horizontal Scrollable pages
        PageView(
            controller: controller.pageController,
            onPageChanged: controller.updatePageIndicator,
            children: [
              OnBoardingPage(
                  image: AppImages.onBoardingImage1,
                  title: AppTextStrings.onBoardingTitle1,
                  subTitle: AppTextStrings.onBoardingSubTitle1),
              OnBoardingPage(
                  image: AppImages.onBoardingImage2,
                  title: AppTextStrings.onBoardingTitle2,
                  subTitle: AppTextStrings.onBoardingSubTitle2),
              OnBoardingPage(
                  image: AppImages.onBoardingImage3,
                  title: AppTextStrings.onBoardingTitle3,
                  subTitle: AppTextStrings.onBoardingSubTitle3),
            ]),

        /// Skip Button
        const OnBoardingSkip(),

        /// Dot Navigation SmoothPageIndicator
        const OnBoardDotNavigation(),

        /// Circular button
        const OnBoardingNextButton()
      ]),
    );
  }
}
