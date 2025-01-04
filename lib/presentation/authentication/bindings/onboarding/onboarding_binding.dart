import 'package:get/get.dart';
import 'package:lk_cric_park/presentation/authentication/controllers/onboarding/onboarding_controller.dart';

class OnboardingBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(OnBoardingController());
  }
}