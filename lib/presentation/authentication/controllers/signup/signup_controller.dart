import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:lk_cric_park/core/assets/images.dart';
import 'package:lk_cric_park/core/routes/pages.dart';
import 'package:lk_cric_park/data/firebase/authentication/authentication_repository.dart';
import 'package:lk_cric_park/data/firebase/user/user_repository.dart';
import 'package:lk_cric_park/data/services/network_manager/network_manager.dart';
import 'package:lk_cric_park/presentation/authentication/controllers/signup/verify_email_controller.dart';
import 'package:lk_cric_park/presentation/authentication/models/user/user_model.dart';
import 'package:lk_cric_park/utils/popups/full_screen_loader.dart';
import 'package:lk_cric_park/widgets_common/custom_toasts/toasts.dart';

class SignupController extends GetxController {
  static SignupController get instance => Get.find();

  /// Variables
  final hidePassword = true.obs;
  final privacyPolicy = true.obs;
  final email = TextEditingController();
  final firstName = TextEditingController();
  final lastName = TextEditingController();
  final teamName = TextEditingController();
  final teamCaptainName = TextEditingController();
  final password = TextEditingController();
  final phoneNumber = TextEditingController();
  GlobalKey<FormState> signupFormKey = GlobalKey<FormState>();

  /// SignUp
  void signUp() async {
    try {
      // Start Loading
      SiajFullScreenLoader.openLoadingDialog(
          "We are processing your information", AppImages.authLottie);

      // Check Internet Connectivity
      final isConnected = await NetworkManager.instance.isConnected();
      if (!isConnected) {
        // Remove Loader
        SiajFullScreenLoader.stopLoading();
        return;
      }

      // Form Validation
      if (!signupFormKey.currentState!.validate()) {
        // Remove Loader
        SiajFullScreenLoader.stopLoading();
        return;
      }

      // Privacy Policy Check
      if (!privacyPolicy.value) {
        SiajToasts.warningSnackBar(
            title: "Accept Privacy Policy",
            message:
            "In order to create account, you must have to read and accept the Privacy Policy & Terms of Use.");
        // SiajFullScreenLoader.stopLoading();
        return;
      }

      print("error");
      // Register User in Firebase Authentication & Save user data in the Firebase
      final userCredential = await AuthenticationRepository.instance
          .registerWithEmailAndPassword(
              email.text.trim(), password.text.trim());

      // Save Authenticated user data in the Firebase FireStore
      final newUser = UserModel(
          id: userCredential.user!.uid,
          firstName: firstName.text.trim(),
          lastName: lastName.text.trim(),
          email: email.text.trim(),
          phoneNumber: phoneNumber.text.trim(),
          teamName: teamName.text.trim(),
          teamCaptainName: teamCaptainName.text.trim(),
          profilePicture: "");

      final userRepository = Get.put(UserRepository());
      await userRepository.saveUserRecord(newUser);

      // Remove Loader
      SiajFullScreenLoader.stopLoading();

      // Show success message
      SiajToasts.successSnackBar(
          title: "Congratulations",
          message: "Your account has been created Verify email to continue.");

      // VerifyEmailController.instance.userEmail = email.text;

      // Move to verify email screen
      Get.toNamed(Routes.verifyEmailView,arguments: {'email': email.text.trim()});
    } catch (e) {
      // show some Generic Error to the user
      SiajToasts.errorSnackBar(title: "On Snap!", message: e.toString());
    }
  }
}
