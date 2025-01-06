import 'dart:async';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:lk_cric_park/core/assets/images.dart';
import 'package:lk_cric_park/core/assets/texts.dart';
import 'package:lk_cric_park/data/firebase/authentication/authentication_repository.dart';
import 'package:lk_cric_park/widgets_common/custom_toasts/toasts.dart';
import 'package:lk_cric_park/widgets_common/success_screen/success_screen.dart';

class VerifyEmailController extends GetxController {
  static VerifyEmailController get instance => Get.find();


  String userEmail = "";

  /// Send Email whenever verify screen appears & set timer for auto redirect
  @override
  void onInit() {
    // TODO: implement onInit
    // sendEmailVerification();
    // setTimeForAutoRedirect();
    super.onInit();
  }


  /// Send Email Verification link
  sendEmailVerification() async {
    try {
      await AuthenticationRepository.instance.sendEmailVerification();
      SiajToasts.successSnackBar(
          title: "Email sent",
          message: "Please check your inbox and verify your email.");
    } catch (e) {
      SiajToasts.errorSnackBar(title: "Oh Snap!", message: e.toString());
    }
  }

  /// Timer to automatically redirect on Email verification
  setTimeForAutoRedirect() {
    Timer.periodic(const Duration(seconds: 1), (timer) async {
      await FirebaseAuth.instance.currentUser?.reload();
      final user = FirebaseAuth.instance.currentUser;
      if (user?.emailVerified ?? false) {
        timer.cancel();
        Get.off(() => SuccessScreen(
            image: AppImages.successfullyRegisterAnimation,
            title: AppTextStrings.yourAccountCreatedTitle,
            subTitle: AppTextStrings.yourAccountCreatedSubTitle,
            onPressed: () => AuthenticationRepository.instance.screenRedirect()
        ));
      }
    });
  }

  /// Manually check if Email verified
 checkEmailVerificationStatus() async {
    final currentUser = FirebaseAuth.instance.currentUser;
    if(currentUser != null && currentUser.emailVerified){
      Get.off(() => SuccessScreen(
          image: AppImages.successfullyRegisterAnimation,
          title: AppTextStrings.yourAccountCreatedTitle,
          subTitle: AppTextStrings.yourAccountCreatedSubTitle,
          onPressed: () => AuthenticationRepository.instance.screenRedirect()
      ));
    }
 }
}
